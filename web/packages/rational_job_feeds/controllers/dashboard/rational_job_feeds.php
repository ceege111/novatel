<?php 

defined('C5_EXECUTE') or die(_("Access Denied.")); 

Loader::model('rational_job_feed','rational_job_feeds'); 
Loader::model('collection_types'); 

class DashboardRationalJobFeedsController extends Controller { 
	
	function __construct(){ 
		$this->jobFeedPageType = CollectionType::getByHandle('rational_job_feed'); 	
		if(!$this->jobFeedPageType)
			throw new Exception(t('The page type rational_job_feed was not found. Please reinstall the Rational Job Feeds package. '));
		$this->set('jobFeedPageType',$this->jobFeedPageType);	
		
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

		$pl->filterByCollectionTypeID( $this->jobFeedPageType->getCollectionTypeID() );	
			
		$jobFeeds = $pl->get(); 
		
		$this->set('jobFeeds',$jobFeeds);
	}
	
	public function configure($feedID=0){
		
		if( intval($feedID) ){
			$feedPage = RationalJobFeed::getByID(intval($feedID));  
			if( !is_object($feedPage) || !$feedPage->getCollectionID() )
				throw new Exception(t('Job Feed Not Found.')); 
		}else{ 
			$feedPage = new RationalJobFeed(); 
		}
		
		
		if( $_POST['submitted'] ){ 
		
			$token = Loader::helper('validation/token'); 
		
			$errors=array();
			
			$this->populateFeedPage($feedPage);
			
			if( !strlen(trim($_POST['title'])) )
				$errors[]=t('A Feed Title is required');

			if( !strlen(trim($_POST['company'])) )
				$errors[]=t('A company name is required');
				
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
					$jobFeedPageType = CollectionType::getByHandle('rational_job_feed');
					$feedTempPage = $parentPage->add( $jobFeedPageType, $pendingCollectionData); 
					$feedPage = RationalJobFeed::getByID( intval( $feedTempPage->getCollectionID() ) );
					
					$feedPage->setAttribute('exclude_page_list', 1 );
					$feedPage->setAttribute('exclude_nav', 1 );
				}else{  
					Cache::delete( 'jobFeed', intval($feedPage->cID).'_'.intval($feedPage->getVersionID()) ); 
				
					$newFeedPage = Page::getByID( intval( $feedPage->getCollectionID() ) )->getVersionToModify();
					$newFeedPage->update($pendingCollectionData); 	
					$newFeedPage->move($parentPage); 	
					$v = CollectionVersion::get($newFeedPage, "RECENT");
					$v->approve(); 
					$feedPage = RationalJobFeed::getByID(intval($newFeedPage->getCollectionID()));   
				}
				
				//repopulate, since we got a new Job Feed page object 
				$this->populateFeedPage($feedPage); 
				$feedPage->save(); 
				
				$this->set('pageMsg',t('Job Feed Configuration Saved'));
				return $this->view();
			}
			$this->set('errorMsgs',$errors);
		}
		
		$this->set('feedPage',$feedPage);
		$this->set('mode','configure');
	}
	
	
	public function populateFeedPage($feedPage){
		$feedPage->setCompany($_POST['company']);

		$feedPage->setNumToDisplay($_POST['numToDisplay']);
		
		$feedPage->setOrderBy($_POST['orderBy']); 
		$feedPage->setResultsPageTypeID($_POST['ctID']);

		$feedPage->setFormat($_POST['format']);  
		
		$authorUID = (intval($_REQUEST['oneAuthor']))?intval($_POST['resultsUID']):0;
		$feedPage->setResultsUID( $authorUID ); 
		
		$parentCID = ( intval($_POST['resultsParentID'])==-2 )?intval($_POST['customParentCID']):intval($_POST['resultsParentID']);
		$feedPage->setFeedParentCID($parentCID); 
		
		$feedPage->setDescSource($_REQUEST['descSource']); 
		$feedPage->setDescSourceAreaHandle($_REQUEST['descSourceAreaHandle']); 
		
		$feedPage->setRichText($_REQUEST['richText']); 
		$feedPage->setTruncateChars($_REQUEST['truncateChars']); 
		
		$feedPage->setIncludeChildren(intval($_REQUEST['includeChildren']));  
	}
	
	
	public function delete($feedID){
		
		$feedPage = RationalJobFeed::getByID(intval($feedID)); 
		
		if(!is_object($feedPage) || !$feedPage->getCollectionID() )
			throw new Exception(t('Job Feed Not Found.'));
			
		if( $feedPage->getCollectionTypeID() != $this->jobFeedPageType->getCollectionTypeID() )
			throw new Exception(t('Invalid Job Feed page type'));			

		if( $_POST['confirmDelete'] ){
			
			$c = Page::getByID($feedID); 
			if( is_object($c) ) $c->delete();
			
			$this->set('pageMsg',t('Job Feed Deleted'));
			return $this->view();
		}
		
		$this->set('mode','delete');
		$this->set('feedPage',$feedPage);
	}
}

?>