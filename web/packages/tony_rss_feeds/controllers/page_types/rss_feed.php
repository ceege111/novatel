<?php 

defined('C5_EXECUTE') or die(_("Access Denied.")); 


class RssFeedPageTypeController extends Controller {

	public function on_start() {
		
	}
	
	public function view(){  
	
		//$this->trackHit(); 
		
		$c = $this->getCollectionObject(); 
		
		Loader::model('tony_rss_feed','tony_rss_feeds'); 
		$rssFeed = TonyRssFeed::getByID($c->getCollectionID()); 
		
		//is a cached version available?   Disabled within concrete5.6 due to permissions issues 
		//if( $rssFeed->getCacheHours()>0 && !intval($_REQUEST['pageSize']) ) 
		//	$rssXML = Cache::get( 'rssFeed', intval($c->cID).'_'.intval($c->getVersionID()) ); 
			
		if( strlen($rssXML) ){  
			header('Content-type: text/xml'); 
			echo $rssXML;
			die;
		}
		
		define('RSS_FEED_VIEW',1);
		
		Loader::model('page_list');   
		$pl = new PageList(); 
		
		if( defined('RSS_MANAGER_IGNORE_PERMISSIONS') && intval(RSS_MANAGER_IGNORE_PERMISSIONS) )
			$pl->ignorePermissions(true); 
			
		//$pl->debug(); 
		
		
		//exclude rss feed page type 
		if( floatval(Config::get('SITE_APP_VERSION')) >= 5.6 ) 
			$pl->filter(false, 'cv.ctID!='.intval($rssFeed->getCollectionTypeID()));
		else 
			$pl->filter(false, 'p1.ctID!='.intval($rssFeed->getCollectionTypeID()));
 
		
		//exclude current page 
		$pl->filter(false, 'p1.cID!='.intval($rssFeed->getCollectionID()));
		
		$pl->filterByAttribute( 'exclude_page_list', 0);  
		
		/*
		//caching disabled in concrete5.6 due to permission complexity 
		if( $rssFeed->getCacheHours()>0 ){
			$pl->ignorePermissions(); 
			$groupIDs = array( GUEST_GROUP_ID );
			$pl->addToQuery('left join PagePermissions pp1 on (pp1.cID = p1.cInheritPermissionsFromCID) left join PagePermissions pp2 on (pp2.cID = p2.cInheritPermissionsFromCID)');
			$pl->filter(false, "((pp1.cgPermissions like 'r%' and pp1.gID in (" . implode(',', $groupIDs) . ") ) or (pp2.cgPermissions like 'r%' and pp2.gID in (" . implode(',', $groupIDs) .  ") ) or (p1.cPointerExternalLink !='' AND p1.cPointerExternalLink IS NOT NULL ))");		
		}
		*/ 
		
		//limit results
		$pageSize = (intval($_REQUEST['pageSize'])) ? intval($_REQUEST['pageSize']) : intval($rssFeed->getNumToDisplay());  
		if( $pageSize >0 ) 	
			$pl->setItemsPerPage( $pageSize );
		else $pl->setItemsPerPage( 10000000000 ); 
	
		//Filter by Parent 
		if( $rssFeed->getFeedParentCID()>0 || $rssFeed->getFeedParentCID()==-1 ){ 	
			$parentID = $rssFeed->getFeedParentCID()>0 ?  $rssFeed->getFeedParentCID() : $rssFeed->getCollectionParentID(); 
			if(  $rssFeed->includeChildren() ){  
				$parent = Page::getByID($parentID); 
				$pl->filterByPath( $parent->getCollectionPath() );	
			}else{ 
				$pl->filterByParentID( $parentID ); 
			}
		} 
	
			
		//Filter by Page Type	
		if( $rssFeed->getResultsPageTypeID() >0 ) 	
			$pl->filterByCollectionTypeID( $rssFeed->getResultsPageTypeID() ); 
		
		//filter by Author 
		if( $rssFeed->getResultsUID() >0 ) 	
			$pl->filterByUserID( $rssFeed->getResultsUID() );
			
		if( $rssFeed->getOrderBy()=='title' ) $pl->sortByName();
		elseif( $rssFeed->getOrderBy()=='titleDesc' ) $pl->sortByNameDescending();
		elseif( $rssFeed->getOrderBy()=='display' ) $pl->sortByDisplayOrder();
		//elseif( $rssFeed->getOrderBy()=='displayDesc' ) $pl->sortByDisplayOrderDescending();
		elseif( $rssFeed->getOrderBy()=='oldest' ) $pl->sortByPublicDate();
		else $pl->sortByPublicDateDescending(); //newest 
		
		
		$this->excludeSystemPages($pl);
	
	
		$cArray = $pl->getPage();  
		
		$nh = Loader::helper('navigation'); 
		$textHelper = Loader::helper('text'); 
		
		$rssFeedLink = View::url( $c->getCollectionPath() ); 
		
		define("RSS_FEED_DISPLAY",1);
		
		if( $rssFeed->getFeedParentCID()==-1 ){
			$parentPage = Page::getByID( $c->getCollectionParentID() );  
			$channelLink = View::url($parentPage->getCollectionPath());
		}elseif( $rssFeed->getFeedParentCID()>0 ){
			$sourcePage = Page::getByID(  $rssFeed->getFeedParentCID() );  
			$channelLink = View::url($sourcePage->getCollectionPath());
		}else // $feedPage->getFeedParentCID() == 0
			$channelLink = '';

		header('Content-type: text/xml');
		
		//use object buffer to get XML for caching 
		ob_start(); 
		echo "<"."?xml version=\"1.0\"?".">\n"; 
?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
	<channel>
		<title><?php echo $c->getCollectionName() ?></title>
		<link><?php echo BASE_URL.htmlspecialchars($channelLink) ?></link> 
		<description><![CDATA[ <?php echo $c->getCollectionDescription() ?> ]]></description> 
		<?php  /* <generator uri="http://inneroptics.net/concrete5/">Created with the concrete5 RSS Manager Package by InnerOptics.net</generator> */ ?>
		<lastBuildDate><?php echo  date("D, d M Y H:i:s T") ?></lastBuildDate>
		<atom:link href="<?php echo BASE_URL.htmlspecialchars($rssFeedLink) ?>" rel="self" type="application/rss+xml" />
		
		<?php  for ($i = 0; $i < count($cArray); $i++ ) {
			$cobj = $cArray[$i]; 
			$title = $cobj->getCollectionName(); 
			
			$pageDesc = $cobj->getCollectionDescription();  
			
			if( $rssFeed->getDescSource()!=0 && ( ( !strlen(trim($pageDesc)) && $rssFeed->getDescSource()==2 ) || $rssFeed->getDescSource()==1 ) ){  
				$usingAreaDesc=1;
				$feedC = $c; 
				$c = $cobj; 
				ob_start();
				$ah = new Area( $rssFeed->getDescSourceAreaHandle() ); 
				$ah->display($cobj);
				$pageDesc = ob_get_contents(); 
				ob_end_clean();
				$pageDesc = RssFeedPageTypeController::relativeToAbsoluteLinks($pageDesc);
				$c = $feedC; 
			}else $usingAreaDesc=0;
			
			$pageDesc = $this->strip_bad_tags( $pageDesc );
			//$pageDesc = RssFeedPageTypeController::html2text( $pageDesc );
			
			//$pageDesc = strip_tags( $pageDesc );
			
			
			
			//$pageDesc = htmlspecialchars( $pageDesc );
			
			if( $rssFeed->getRichText()) 
				$pageDesc = tonyRssFeed_removeEvilTags( $pageDesc, tonyRssFeed_getAllowedTags(), tonyRssFeed_getStripAttrib() );
			else
				$pageDesc = strip_tags( $pageDesc ); 
			
			if( $rssFeed->getTruncateChars()>0 && ($rssFeed->getDescSource()==0 || !$rssFeed->getRichText() ) ) 
				$pageDesc = $textHelper->shortText( $pageDesc, $rssFeed->getTruncateChars() ); 
			?>
			
		<item>
			  <title><?php echo htmlspecialchars($title);?></title>
			  <link><?php echo  BASE_URL.$nh->getLinkToCollection($cobj) ?></link>
			  <description><?php echo  ($rssFeed->getRichText()) ? htmlspecialchars( $pageDesc ) : '<![CDATA['.$pageDesc.']]>' ?> </description>  
			  <pubDate><?php echo date( 'D, d M Y H:i:s T',strtotime($cobj->getCollectionDatePublic())) ?></pubDate>
			  <guid isPermaLink="true"><?php echo  BASE_URL.$nh->getLinkToCollection($cobj) ?></guid>
		</item>
<?php  } ?>
	</channel>
</rss>  
		<?php  
		
		$rssXML = ob_get_contents();
		ob_end_clean();
		
		echo $rssXML; 
		
		$cacheHours= $rssFeed->getCacheHours();		
		if($cacheHours>0 && !intval($_REQUEST['pageSize']) ) Cache::set( 'rssFeed', intval($c->cID).'_'.intval($c->getVersionID()), $rssXML, (time()+(60*60*$cacheHours)) ); 
		
		die;
	}
	
	
	protected function trackHit(){  
		if( file_exists(DIR_PACKAGES.'/tony_stats/helpers/stats.php') ){
			
			Loader::helper('stats','tony_stats');
			
			$c = $this->getCollectionObject(); 
			
			$data = array('title'=> t('Feed: ').$c->getCollectionName(), 'url'=>View::url($c->getCollectionPath()), 'realUserCheck'=>1, 'eventOnly'=>1) ;	
			
			StatsHelper::quickTrack( $data );  
		} 
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
function tonyRssFeed_getAllowedTags(){ return '<h1><h2><h3><h4><h5><p><b><i><a><ul><ol><li><pre><hr><blockquote><img><strong><em><u><div><br><center><font><span><table><tbody><th><td><tr>'; }
$tonyRssFeed_allowedTags = tonyRssFeed_getAllowedTags();
// Disallow these attributes/prefix within a tag
function tonyRssFeed_getStripAttrib(){return 'javascript:|onclick|ondblclick|onmousedown|onfocus|onblur|onmouseup|onmouseover|'.
			   'onmousemove|onmouseout|onkeypress|onkeydown|onkeyup';}
$tonyRssFeed_stripAttrib = tonyRssFeed_getStripAttrib();
// Strip forbidden tags and delegate tag-source check to removeEvilAttributes(), allowedTags=string
function tonyRssFeed_removeEvilTags($source,$allowedTags,$stripAttrib){
   $source = strip_tags($source, $allowedTags);
   return preg_replace('/<(.*?)>/ie', "'<'.tonyRssFeed_removeEvilAttributes('\\1',\$stripAttrib).'>'", $source);
}
// Strip forbidden attributes from a tag - stripAttrib=string
function tonyRssFeed_removeEvilAttributes($tagSource,$stripAttrib){
   return stripslashes(preg_replace("/$stripAttrib/i", 'forbidden', $tagSource));
}