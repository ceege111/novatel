<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));

Loader::model('page_list');
Loader::model('tony_jobs_board','tony_jobs_board');

class DashboardJobsBoardController extends Controller {
	
	public $helpers = array('form');
	
	public function view($action = false) {
		$html = Loader::helper('html');
		
		//get jobs applications form responses question set id & url 
		$mainAreaName = TonyJobsBoard::getMainAreaName(); 
		$applyPath = TonyJobsBoard::getApplyPath(); 
		$applyPage=Page::getByPath($applyPath);
		if( is_object($applyPage) && intval($applyPage->getCollectionID()) ){ 
			$a = new Area($mainAreaName);
			$blocks = $a->getAreaBlocksArray($applyPage);  
			foreach($blocks as $b){
				$bt = BlockType::getByID( $b->getBlockTypeID() ); 
				if( strtolower($bt->getBlockTypeHandle())=='form'  ){ 
					$jobApplcationsResultsURL = '' ; 
					$questionSetId = $b->getController()->questionSetId;  
					$jobApplcationsResultsURL = View::url('/dashboard/reports/forms/').'?qsid='.$questionSetId; 
					$this->set('jobApplcationsResultsURL', $jobApplcationsResultsURL); 
				} 
			}  
		}
		
		$pageList = $this->getRequestedSearchResults();
		if (is_object($pageList)) {
			$this->addHeaderItem(Loader::helper('html')->javascript('ccm.sitemap.js'));
			$searchInstance = 'page' . time();

			$this->addHeaderItem('<script type="text/javascript">$(function() { ccm_sitemapSetupSearch(\'' . $searchInstance . '\'); });</script>');
			$pages = $pageList->getPage();
					
			$this->set('pageList', $pageList);		
			$this->set('pages', $pages);		
			$this->set('searchInstance', $searchInstance);
			$this->set('pagination', $pageList->getPagination()); 
			
		}
		
		$automatedJobsURL = '/dashboard/system/optimization/jobs'; 
		$automatedJobsPage = Page::getByPath($automatedJobsURL); 
		if( !$automatedJobsPage->getCollectionID() ) 
			$automatedJobsURL  = '/dashboard/system/jobs';  
		$this->set( 'automatedJobsURL', View::url($automatedJobsURL) ); 
		
		$indexingURL = '/dashboard/system/seo/search_index'; 
		$indexingPage = Page::getByPath($indexingURL); 
		if( !$indexingPage->getCollectionID() ) 
			$indexingURL  = '/dashboard/sitemap/search/manage_index';  
		$this->set( 'indexingURL', View::url($indexingURL) ); 
		
	} 
	
	public function getRequestedSearchResults() { 
		
		$pageList = new PageList();
		$pageList->ignoreAliases();
		$pageList->enableStickySearchRequest();
		
		if ($_REQUEST['submit_search']) {
			$pageList->resetSearchRequest();
		}

		$req = $pageList->getSearchRequest();
		$pageList->displayUnapprovedPages();

		$pageList->sortBy('cDateModified', 'desc');
		
		$keywords = htmlentities($req['keywords'], ENT_QUOTES, APP_CHARSET);
		$cvName = htmlentities($req['cvName'], ENT_QUOTES, APP_CHARSET);
		
		if ($keywords != '') {
			$pageList->filterByKeywords($keywords);
		}

		if ($cvName != '') {
			$pageList->filterByName($cvName);
		}
		
		if ($req['job_id']) {
			$pageList->filterByAttribute('job_id', $req['job_id']);
		}		

		if ($req['numResults']) {
			$pageList->setItemsPerPage($req['numResults']);
		}

		Loader::model('collection_types');
		$listingPageType = CollectionType::getByHandle('jobs_board_listing'); 
		if ( !$listingPageType->getCollectionTypeID() ) {
			throw new Exception(t("Jobs Board Listing page type not found!"));
		}else{
			$pageList->filterByCollectionTypeID($listingPageType->getCollectionTypeID());
		}

		if (is_array($req['selectedSearchField'])) {
			foreach($req['selectedSearchField'] as $i => $item) {
				// due to the way the form is setup, index will always be one more than the arrays
				if ($item != '') {
					switch($item) {
						case 'num_children':
							$symbol = '=';
							if ($req['cChildrenSelect'] == 'gt') {
								$symbol = '>';
							} else if ($req['cChildrenSelect'] == 'lt') {
								$symbol = '<';
							}
							$pageList->filterByNumberOfChildren($req['cChildren'], $symbol);						
							break;
						case 'owner':
							$ui = UserInfo::getByUserName($req['owner']);
							if (is_object($ui)) {
								$pageList->filterByUserID($ui->getUserID());
							} else {
								$pageList->filterByUserID(-1);
							}
							break;
						case 'parent':
							if (isset($req['_cParentAll'])) {
								$req['cParentAll'] = $req['_cParentAll'];
							}
							if ($req['cParentIDSearchField'] > 0) {
								if ($req['cParentAll'] == 1) {
									$pc = Page::getByID($req['cParentIDSearchField']);
									$cPath = $pc->getCollectionPath();
									$pageList->filterByPath($cPath);
								} else {
									$pageList->filterByParentID($req['cParentIDSearchField']);
								}
							}
							break;
						case 'version_status':
							if (isset($req['_cvIsApproved'])) {
								$req['cvIsApproved'] = $req['_cvIsApproved'];
							}
							$pageList->filterByIsApproved($req['cvIsApproved']);
							break;
						case "date_public":
							$dateFrom = $req['date_public_from'];
							$dateTo = $req['date_public_to'];
							if ($dateFrom != '') {
								$dateFrom = date('Y-m-d', strtotime($dateFrom));
								$pageList->filterByPublicDate($dateFrom, '>=');
								$dateFrom .= ' 00:00:00';
							}
							if ($dateTo != '') {
								$dateTo = date('Y-m-d', strtotime($dateTo));
								$dateTo .= ' 23:59:59';								
								$pageList->filterByPublicDate($dateTo, '<=');
							}
							break;
						case "date_added":
							$dateFrom = $req['date_added_from'];
							$dateTo = $req['date_added_to'];
							if ($dateFrom != '') {
								$dateFrom = date('Y-m-d', strtotime($dateFrom));
								$pageList->filterByDateAdded($dateFrom, '>=');
								$dateFrom .= ' 00:00:00';
							}
							if ($dateTo != '') {
								$dateTo = date('Y-m-d', strtotime($dateTo));
								$dateTo .= ' 23:59:59';								
								$pageList->filterByDateAdded($dateTo, '<=');
							}
							break;

						default:
							Loader::model('attribute/categories/collection');
							$akID = $item;
							$fak = CollectionAttributeKey::get($akID);
							if( is_object($fak) ){ 
								$type = $fak->getAttributeType();
								$cnt = $type->getController();
								$cnt->setRequestArray($req);
								$cnt->setAttributeKey($fak);
								$cnt->searchForm($pageList);
							}
							break;
					}
				}
			}
		}

		$this->set('searchRequest', $req);
		return $pageList;
	}
	
	public function getColumnHeaders(){ 
	
		$attrObjs = array();
		$attrIds = explode(',',Config::get('TONY_JOBS_BOARD_COLUMN_HEADER_ATTRIBUTES')); 
		foreach($attrIds as $attrId){
			if(!intval($attrId)) continue; 
			$attr = CollectionAttributeKey::get($attrId);
			if(is_object($attr)) $attrObjs[]=$attr; 
		}
		return $attrObjs; 
	}
	
	
}

?>