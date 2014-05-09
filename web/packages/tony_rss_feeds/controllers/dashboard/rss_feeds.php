<?php 

defined('C5_EXECUTE') or die(_("Access Denied.")); 

Loader::model('tony_rss_feed','tony_rss_feeds'); 
Loader::model('collection_types'); 

class DashboardRssFeedsController extends Controller { 
	
	function __construct(){ 
		$this->rssFeedPageType = CollectionType::getByHandle('rss_feed'); 	
		if(!$this->rssFeedPageType)
			throw new Exception(t('The page type rss_feed was not found. Please reinstall the RSS Feeds package. '));
		$this->set('rssFeedPageType',$this->rssFeedPageType);	
		
		$html = Loader::helper('html');
		@$this->addHeaderItem($html->javascript('jquery.ui.js'));  
		@$this->addHeaderItem($html->css('ccm.filemanager.css'));
		@$this->addHeaderItem($html->javascript('ccm.filemanager.js')); 
		$this->addHeaderItem('<script type="text/javascript">$(function() { ccm_activateFileManager(\'DASHBOARD\');ccm_setupAdvancedSearchFields();ccm_setupAdvancedSearch("user"); ccm_setupUserSearch(); });</script>');		
	}
	
	public function view(){ 
		Loader::model('page_list');  
		
		$pl = new PageList();
		$pl->sortByName();
		
		//$pl->filterByParentID( $c->cParentID );  
		//if($this->excludeSystemPages) 
			//$this->excludeSystemPages($pl); 
		
		$pl->filterByCollectionTypeID( $this->rssFeedPageType->getCollectionTypeID() );	
			
		$rssFeeds = $pl->get(); 
		
		$this->set('rssFeeds',$rssFeeds);
	}
	
	public function configure($feedID=0){
		
		if( intval($feedID) ){
			$feedPage = TonyRssFeed::getByID(intval($feedID));  
			if( !is_object($feedPage) || !$feedPage->getCollectionID() )
				throw new Exception(t('RSS Feed Not Found.')); 
		}else{ 
			$feedPage = new TonyRssFeed(); 
		}
		
		
		if( $_POST['submitted'] ){ 
		
			$token = Loader::helper('validation/token'); 
		
			$errors=array();
			
			$this->populateFeedPage($feedPage);
			
			if( !strlen(trim($_POST['title'])) )
				$errors[]=t('A Feed Title is required');
				
			$cHandle=trim($_POST['cHandle']);
			
			if( !$token->validate("save_feed") ){
				$errors[]= $token->getErrorMessage(); 	
				
			}elseif( !strlen($cHandle) ){
				$errors[]=t('A Feed URL is required');
				
			}elseif(stristr($cHandle,'index.php')){
				$errors[]=t('Remove index.php from your feed URL.');
				
			}else{
				$cHandlePath = strstr($cHandle,'?') ? substr($cHandle,0,strpos($cHandle,'?')) : $cHandle; 
				
				$lastSlashPos = strrpos($cHandlePath,'/');  
				if( $lastSlashPos==strlen($cHandlePath)-1 ){
					$cHandlePath=substr($cHandlePath,0,strlen($cHandlePath)-1);
					$lastSlashPos = strrpos($cHandlePath,'/');  
				} 
				
				if( $lastSlashPos>0 ){  
					$parentPath = substr($cHandle,0,$lastSlashPos);
					$cHandle = substr($cHandle,$lastSlashPos+1);
				}  
				//does the path to this url exist?
				if(strlen($parentPath)){
					if(substr($parentPath,0,1)!='/') $parentPath='/'.$parentPath;
					$parentPage = Page::getByPath($parentPath); 
					
					if( !is_object($parentPage) || !$parentPage->getCollectionID() ){ 
						$errors[]= t('Invalid Feed Url. The path to this feed must already exist.  You must create the parent pages.');	 
					}
					
					if( intval($parentPage->getCollectionID())==intval($feedPage->getCollectionID())  ){ 
						$errors[]= t("Error: You can't add this feed under itself.");	
					}					
				}else{
					$parentPage = Page::getByID(1); 
				}
			}
			
			if(count($errors)){ 
				$this->set('pageMsg',t('Oops, there were some errors with your feed configuration:'));
				
			}else{ 
				$pendingCollectionData['cName'] = $_POST['title'];
				$pendingCollectionData['cDescription'] = $_POST['desc']; 
				$pendingCollectionData['cHandle'] = $cHandle; 
				
				if( !$feedPage->getCollectionID() ){ 
					$rssFeedPageType = CollectionType::getByHandle('rss_feed');
					$feedTempPage = $parentPage->add( $rssFeedPageType, $pendingCollectionData); 
					$feedPage = TonyRssFeed::getByID( intval( $feedTempPage->getCollectionID() ) );
					
					$feedPage->setAttribute('exclude_page_list', 1 );
					$feedPage->setAttribute('exclude_nav', 1 );
				}else{  
					Cache::delete( 'rssFeed', intval($feedPage->cID).'_'.intval($feedPage->getVersionID()) ); 
				
					$newFeedPage = Page::getByID( intval( $feedPage->getCollectionID() ) )->getVersionToModify();
					$newFeedPage->update($pendingCollectionData); 	
					$newFeedPage->move($parentPage); 	
					$v = CollectionVersion::get($newFeedPage, "RECENT");
					$v->approve(); 
					$feedPage = TonyRssFeed::getByID(intval($newFeedPage->getCollectionID()));   
				}
				
				//repopulate, since we got a new rss feed page object 
				$this->populateFeedPage($feedPage); 
				$feedPage->save(); 
				
				$this->set('pageMsg',t('RSS Feed Configuration Saved'));
				return $this->view();
			}
			$this->set('errorMsgs',$errors);
		}
		
		$this->set('feedPage',$feedPage);
		$this->set('mode','configure');
	}
	
	
	public function populateFeedPage($feedPage){
		$feedPage->setNumToDisplay($_POST['numToDisplay']);
		
		$feedPage->setOrderBy($_POST['orderBy']); 
		$feedPage->setResultsPageTypeID($_POST['ctID']); 
		
		$authorUID = (intval($_REQUEST['oneAuthor']))?intval($_POST['resultsUID']):0;
		$feedPage->setResultsUID( $authorUID ); 
		
		$parentCID = ( intval($_POST['resultsParentID'])==-2 )?intval($_POST['customParentCID']):intval($_POST['resultsParentID']);
		$feedPage->setFeedParentCID($parentCID); 
		
		$feedPage->setDescSource($_REQUEST['descSource']); 
		$feedPage->setDescSourceAreaHandle($_REQUEST['descSourceAreaHandle']); 
		
		$feedPage->setRichText($_REQUEST['richText']); 
		$feedPage->setTruncateChars($_REQUEST['truncateChars']); 
		
		//disabling in concrete5.6 
		$feedPage->setCacheHours(0); //$_REQUEST['cacheHours']
		
		$feedPage->setIncludeChildren(intval($_REQUEST['includeChildren']));  
	}
	
	
	public function delete($feedID){
		
		$feedPage = TonyRssFeed::getByID(intval($feedID)); 
		
		if(!is_object($feedPage) || !$feedPage->getCollectionID() )
			throw new Exception(t('RSS Feed Not Found.'));
			
		if( $feedPage->getCollectionTypeID() != $this->rssFeedPageType->getCollectionTypeID() )
			throw new Exception(t('Invalid RSS Feed page type'));			

		if( $_POST['confirmDelete'] ){
			
			$c = Page::getByID($feedID); 
			if( is_object($c) ) $c->delete();
			
			$this->set('pageMsg',t('RSS Feed Deleted'));
			return $this->view();
		}
		
		$this->set('mode','delete');
		$this->set('feedPage',$feedPage);
	}
}

?>