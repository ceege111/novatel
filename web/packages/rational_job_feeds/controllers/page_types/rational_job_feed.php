<?php 

defined('C5_EXECUTE') or die(_("Access Denied.")); 


class RationalJobFeedPageTypeController extends Controller {

	public function on_start() {
		
	}
	
	public function view(){  
	
		$c = $this->getCollectionObject(); 
		
		Loader::model('rational_job_feed','rational_job_feeds'); 
		$jobFeed = RationalJobFeed::getByID($c->getCollectionID()); 
			
		if( strlen($rssXML) ){  
			header('Content-type: text/xml'); 
			echo $rssXML;
			die;
		}
		
		define('RSS_FEED_VIEW',1);
		
		Loader::model('page_list');   
		$pl = new PageList(); 
		
		
		//exclude rss feed page type 
		if( floatval(Config::get('SITE_APP_VERSION')) >= 5.6 ) 
			$pl->filter(false, 'cv.ctID!='.intval($jobFeed->getCollectionTypeID()));
		else 
			$pl->filter(false, 'p1.ctID!='.intval($jobFeed->getCollectionTypeID()));
 
		
		//exclude current page 
		$pl->filter(false, 'p1.cID!='.intval($jobFeed->getCollectionID()));
		
		$pl->filterByAttribute( 'exclude_page_list', 0);  
		
		
		//limit results
		$pageSize = (intval($_REQUEST['pageSize'])) ? intval($_REQUEST['pageSize']) : intval($jobFeed->getNumToDisplay());  
		if( $pageSize >0 ) 	
			$pl->setItemsPerPage( $pageSize );
		else $pl->setItemsPerPage( 10000000000 ); 
	
		//Filter by Parent 
		if( $jobFeed->getFeedParentCID()>0 || $jobFeed->getFeedParentCID()==-1 ){ 	
			$parentID = $jobFeed->getFeedParentCID()>0 ?  $jobFeed->getFeedParentCID() : $jobFeed->getCollectionParentID(); 
			if(  $jobFeed->includeChildren() ){  
				$parent = Page::getByID($parentID); 
				$pl->filterByPath( $parent->getCollectionPath() );	
			}else{ 
				$pl->filterByParentID( $parentID ); 
			}
		}
			
		//Filter by Page Type	
		if( $jobFeed->getResultsPageTypeID() >0 ) 	
			$pl->filterByCollectionTypeID( $jobFeed->getResultsPageTypeID() ); 
		
		//filter by Author 
		if( $jobFeed->getResultsUID() >0 ) 	
			$pl->filterByUserID( $jobFeed->getResultsUID() );
			
		if( $jobFeed->getOrderBy()=='title' ) $pl->sortByName();
		elseif( $jobFeed->getOrderBy()=='titleDesc' ) $pl->sortByNameDescending();
		elseif( $jobFeed->getOrderBy()=='display' ) $pl->sortByDisplayOrder();
		//elseif( $jobFeed->getOrderBy()=='displayDesc' ) $pl->sortByDisplayOrderDescending();
		elseif( $jobFeed->getOrderBy()=='oldest' ) $pl->sortByPublicDate();
		else $pl->sortByPublicDateDescending(); //newest 
		
		
		$this->excludeSystemPages($pl);
	
		$cArray = $pl->getPage();  
		
		$jobFeedLink = View::url( $c->getCollectionPath() ); 
		
		define("RSS_FEED_DISPLAY",1);
		
		if( $jobFeed->getFeedParentCID()==-1 ){
			$parentPage = Page::getByID( $c->getCollectionParentID() );  
			$channelLink = View::url($parentPage->getCollectionPath());
		}elseif( $jobFeed->getFeedParentCID()>0 ){
			$sourcePage = Page::getByID(  $jobFeed->getFeedParentCID() );  
			$channelLink = View::url($sourcePage->getCollectionPath());
		}else // $feedPage->getFeedParentCID() == 0
			$channelLink = '';

		// package feed info into an object
		$feed = new stdClass();
		$feed->name = $c->getCollectionName();
		$feed->company = $jobFeed->getCompany();
		$feed->description = $c->getCollectionDescription();
		$feed->link = BASE_URL.htmlspecialchars($jobFeedLink);
		$feed->channelLink = BASE_URL.htmlspecialchars($channelLink);

		// jobs
		$textHelper = Loader::helper('text');
		$nh = Loader::helper('navigation'); 

		$jobs = array();
		foreach ($cArray AS $jobPage) {
			$cJob = new stdClass();
			$cJob->title = $jobPage->getCollectionName(); 
			$cJob->link = BASE_URL.$nh->getLinkToCollection($jobPage);
			$cJob->date = strtotime($jobPage->getCollectionDatePublic());
			$cJob->description = $jobPage->getCollectionDescription();  
			$cJob->id = $jobPage->getCollectionID();
			$cJob->address = $jobPage->getCollectionAttributeValue('rational_job_feeds_address');
			$cJob->category = $jobPage->getCollectionAttributeValue('rational_job_feeds_category');
			
			if( $jobFeed->getDescSource()!=0 && ( ( !strlen(trim($pageDesc)) && $jobFeed->getDescSource()==2 ) || $jobFeed->getDescSource()==1 ) ){  
				$cJob->isAreaDescription=true;
				$feedC = $c; 
				$c = $jobPage; 
				ob_start();
				$ah = new Area( $jobFeed->getDescSourceAreaHandle() ); 
				$ah->display($jobPage);
				$pageDesc = ob_get_contents(); 
				ob_end_clean();
				$cJob->description = RationalJobFeedPageTypeController::relativeToAbsoluteLinks($pageDesc);
				$c = $feedC; 
			}else $cJob->isAreaDescription=false;
			
			$cJob->description = $this->strip_bad_tags( $cJob->description );
			
			$cJob->richDescription = rationalJobFeeds_removeEvilTags( $cJob->description, rationalJobFeeds_getAllowedTags(), rationalJobFeeds_getStripAttrib() );
			$cJob->plainDescription = strip_tags( $cJob->description ); 

			if( $jobFeed->getRichText()) 
				$cJob->description = $cJob->richDescription;
			else
				$cJob->description = $cJob->plainDescription;
			
			if( $jobFeed->getTruncateChars()>0 && ($jobFeed->getDescSource()==0 || !$jobFeed->getRichText() ) ) {
				$cJob->description = $textHelper->shortText( $cJob->description, $jobFeed->getTruncateChars() );
				$cJob->plainDescription = $textHelper->shortText( $cJob->plainDescription, $jobFeed->getTruncateChars() );
			}
			
			$jobs[] = $cJob;
		}

		header('Content-type: text/xml');
		
		//use object buffer to get XML for caching 
		ob_start(); 

		Loader::packageElement($jobFeed->getFormat(), 'rational_job_feeds', array(
			'feed' => $feed,
			'jobs' => $jobs,
			'jobFeed' => $jobFeed
		));

		$rssXML = ob_get_contents();
		ob_end_clean();
		
		echo $rssXML; 
		
		$cacheHours= $jobFeed->getCacheHours();		
		if($cacheHours>0 && !intval($_REQUEST['pageSize']) ) Cache::set( 'jobFeed', intval($c->cID).'_'.intval($c->getVersionID()), $rssXML, (time()+(60*60*$cacheHours)) ); 
		
		die;
	}
	
	protected function strip_bad_tags( $text ) {
		$text = preg_replace(
			array(
			  // Remove invisible content
				'@<head[^>]*?>.*?</head>@siu',
				'@<style[^>]*?>.*?</style>@siu',
				'@<script[^>]*?.*?</script>@siu',
				'@<object[^>]*?.*?</object>@siu',
				'@<embed[^>]*?.*?</embed>@siu',
				'@<applet[^>]*?.*?</applet>@siu',
				'@<noframes[^>]*?.*?</noframes>@siu',
				'@<noscript[^>]*?.*?</noscript>@siu',
				'@<noembed[^>]*?.*?</noembed>@siu' 
			), ' ', $text );
		return  $text;
	}
	
	
	public static function relativeToAbsoluteLinks($text){ 
		// search for single quotes and replace them by double quotes $search = '\''; 
		$prefix = BASE_URL.DIR_REL; 
		
		$text = str_ireplace(array(' href=" http',' src=" http'),array(' href="http',' src="http'),$text);
		 
		// replace relative urls by absolute (prefix them with $prefix)
		$pattern = '/href="(?!http|https|ftp|irc|feed|mailto|#)([\/]?)(.*)"/i';
		$replace = 'href="'.$prefix.'/$2"';
		$text = preg_replace($pattern, $replace, $text); 
		 
		// replace relative img urls by absolute (prefix them with $prefix)
		$pattern = '/src="(?!http|https|ftp|irc|feed|mailto|#)([\/]?)(.*)"/i';
		$replace = 'src="'.$prefix.'/$2"';
		$text = preg_replace($pattern, $replace, $text);
		
		$text=str_replace(BASE_URL.DIR_REL.DIR_REL,BASE_URL.DIR_REL,$text);
		
		return $text; 
	}	
	
	
	protected function excludeSystemPages($pageList){  
		$systemPages=array('login.php', 'register.php', 'download_file.php', 'profile/%', 'dashboard/%','page_forbidden%','page_not_found%'); 
		//$cIDs = Cache::get('next_previous_page_list_exclude_ids', false);
		//if ($cIDs == false) {
			$db = Loader::db();
			$filters = ''; 
			for ($i = 0; $i < count($systemPages); $i++) {
				$spe = $systemPages[$i];
				$filters .= 'cFilename like \'/' . $spe . '\' ';
				if ($i + 1 < count($systemPages)) {
					$filters .= 'or ';
				}
			}
			
			//exclude dashboard pages matching the above paths
			$cIDs = $db->GetCol("select p.cID from Pages as p, PagePaths as pp where pp.cID=p.cID and pp.cPath like '/dashboard%' and (" . $filters . ")");
				
			if (count($cIDs) > 0) {
				Cache::set('next_previous_page_list_exclude_ids', false, $cIDs);
			}
		//}
		$cIDStr = implode(',', $cIDs); 
		
		if($cIDStr) 
			$pageList->filter(false, "(p1.cID not in ({$cIDStr}) or p2.cID not in ({$cIDStr}))");	
	}	
	
}


//MISCELLANEOUS FUNCTIONS 

// Allow these tags
function rationalJobFeeds_getAllowedTags(){ return '<h1><h2><h3><h4><h5><p><b><i><a><ul><ol><li><pre><hr><blockquote><img><strong><em><u><div><br><center><font><span><table><tbody><th><td><tr>'; }
$rationalJobFeeds_allowedTags = rationalJobFeeds_getAllowedTags();
// Disallow these attributes/prefix within a tag
function rationalJobFeeds_getStripAttrib(){return 'javascript:|onclick|ondblclick|onmousedown|onfocus|onblur|onmouseup|onmouseover|'.
			   'onmousemove|onmouseout|onkeypress|onkeydown|onkeyup';}
$rationalJobFeeds_stripAttrib = rationalJobFeeds_getStripAttrib();
// Strip forbidden tags and delegate tag-source check to removeEvilAttributes(), allowedTags=string
function rationalJobFeeds_removeEvilTags($source,$allowedTags,$stripAttrib){
   $source = strip_tags($source, $allowedTags);
   return preg_replace('/<(.*?)>/ie', "'<'.rationalJobFeeds_removeEvilAttributes('\\1',\$stripAttrib).'>'", $source);
}
// Strip forbidden attributes from a tag - stripAttrib=string
function rationalJobFeeds_removeEvilAttributes($tagSource,$stripAttrib){
   return stripslashes(preg_replace("/$stripAttrib/i", 'forbidden', $tagSource));
}