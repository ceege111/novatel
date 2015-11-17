<?php  

defined('C5_EXECUTE') or die(_("Access Denied.")); 


Loader::model('collection_types'); 
Loader::model('collection_attributes'); 
Loader::model('page_list');
Loader::model('tony_jobs_board','tony_jobs_board');  

class TonyJobsBoardSearchBlockController extends BlockController { 

	protected $btTable = 'btTonyJobsBoardSearch';
	protected $btInterfaceWidth = "500";
	protected $btInterfaceHeight = "350";
	
	protected $btCacheBlockRecord=0; 
	protected $btCacheBlockOutput=0;
	//protected $btCacheBlockOutputTimeout=3600;
	protected $btCacheBlockOutputForRegisteredUsers=0;
		
	public $page_size=10; 
	
	
	/** 
	 * Used for localization. If we want to localize the name/description we have to include this
	 */
	public function getBlockTypeDescription() {
		return t("search jobs listings");
	}
	
	public function getBlockTypeName() {
		return t("Jobs Board Search");
	}	

	public function getDefaultSortableOpts(){
		$details=array();
		//$details['title'] = t('Title');
		$details['newest'] = t('Newest');
		$details['oldest'] = t('Oldest');		 
		return $details;
	}

	public function getDefaultSearchableAttrs(){
		$details=array();
		$details['Keywords']=t('Keywords');  
		$details['cID']=t('Page ID'); 
		$details['Zip']=t('Zip/Postal Code');  
		$details['State']=t('State/Province');  
		$details['City']=t('City');  
		return $details;
	}	

	public function getDefaultDetails(){
		$details=array();
		$details['Image']=t('Image');
		$details['Title']=t('Title');
		$details['Description']=t('Description'); 
		$details['Date']=t('Date Added');  
		return $details;
	}	 
	
	public function getJavaScriptStrings() {
		return array();
	} 
	
	public function save($args) { 
		$db = Loader::db(); 
		
		$searchableAttrs = $args['searchAttrs'];
		if( is_array($searchableAttrs) ){
			$searchableAttrsClean=array();
			foreach($searchableAttrs as $handle){
				$searchableAttrsClean[]=$handle;
			}
			$args['searchableAttributes'] =  join(',',$searchableAttrsClean);
		}

		$args['setIds']=''; 
		if( is_array($args['fsIDs']) ){
			$cleanSetIds=array();
			foreach($args['fsIDs'] as $fsID) $cleanSetIds[]=intval($fsID);
			$args['setIds']=join(',',$cleanSetIds);
		}
		
		$args['pageTypeIds']='';
		if( is_array($args['typeIDs']) ){
			$cleanPageTypesIds=array();
			foreach($args['typeIDs'] as $typeID) $cleanPageTypesIds[]=intval($typeID);
			$args['pageTypeIds']=join(',',$cleanPageTypesIds);
		}		
		
		$args['showSortBy'] = intval($args['showSortBy']);
		$args['sortByOpts'] = ( is_array($args['sortableBy']) ) ? join(',',$args['sortableBy']) :''; 
		
		$args['searchedCountries'] = ( is_array($args['searchedCountries']) ) ? join(',',$args['searchedCountries']) :'';
		
		$shownAttrsClean=array();
		$showAttrs = $args['shownAttrs'];
		if(is_array($showAttrs)) foreach($showAttrs as $handle){
			$shownAttrsClean[]=$handle;
		}
		$args['shownAttributes'] =  join(',',$shownAttrsClean); 
		
		$shownLabelsClean=array();
		$showLabels = $args['shownLabels'];
		if(is_array($showLabels)) foreach($showLabels as $handle){
			$shownLabelsClean[]=$handle;
		}
		$args['shownLabels'] =  join(',',$shownLabelsClean);	
		
		$args['hideEmptyAttrs']=intval($args['hideEmptyAttrs']); 
		
		$args['showReset']=intval($args['showReset']); 
		
		$args['addressAsTitle']=intval($args['addressAsTitle']);  
		
		$args['searchTargetCID'] = ( !intval($args['showSearchTarget']) || !intval($args['searchTargetCID']) ) ? 0 : intval($args['searchTargetCID']); 
		
		$args['cParentID']=($args['cParentID']); 
		if($args['cParentID']=='OTHER'){
			$args['cParentID']=intval($args['cParentIDValue']); 
		}else{
			$args['cParentID']=intval($args['cParentID']); 
		}
		
		$args['displayOrderDesc'] = (intval($args['displayOrderDesc']) > 0) ? intval($args['displayOrderDesc']) : 0;	
		
		$args['orderBy'] = (strlen($args['orderBy']) > 0) ? $args['orderBy'] : 'title'; 		
		
		parent::save($args); 
	} 
	
	public function view(){ 		
	
		$htmlhelper = Loader::helper('html');  
		
		//auto-including view.js wasn't working on concrete5.4.1  
		//$this->addHeaderItem($htmlhelper->javascript('view.js','tony_jobs_board_search'));
	
		global $c;	
		$db=Loader::db();  
		
		$page_base=$c->getCollectionPath();
		if( !strlen($page_base) ) $page_base='/?cID='.$c->getCollectionID(); 
		if(!strstr($page_base,'?')) $page_base.='?';	
		
		if($_REQUEST['resortQStr']){ 
			$qStrData = unserialize( stripslashes($_REQUEST['resortQStr']) ); 
			foreach($qStrData as $key=>$val){
				if($key=='sortBy') continue; 
				$_GET[$key] = $val;
				$_REQUEST[$key] = $val; 
			}
		}		
			
		//SORT BY 
		$sortBy = $_REQUEST['sortBy'];   
		if( !strlen($sortBy) ){ 
			$sortBy=$this->displayOrder; 
		}
		
		
		if( $this->mode!='search' ){ 
		
			$pagelist = new PageList();
			
			if($this->cParentID==-1){ 
				$pagelist->filterByParentID(intval($c->getCollectionID()));
			}elseif(intval($this->cParentID)>=1){ 
				$pagelist->filterByParentID(intval($this->cParentID));
			}
			
			$listingPageType = CollectionType::getByHandle('jobs_board_listing'); 
			if( !is_object($listingPageType) ) throw new Exception(t('jobs_board_listing page type not found')); 
			$pagelist->filterByCollectionTypeID( intval($listingPageType->getCollectionTypeID()) ); 			
			
			//SEARCHING & FILTERING 
			
			//filter by keywords
			$keywords=$_REQUEST['keywords']; 
			//$keywords = htmlentities($keywords, ENT_QUOTES, APP_CHARSET);
			if( $keywords ){ // && in_array('Keywords',$searchAttrs) ){  
				$pagelist->filterByKeywords( $keywords );
				$filterByKeywords=1;
			}	
			
			$listingCID=intval($_REQUEST['listingCID']);  
			if( $listingCID ){  
				$pagelist->filter('p1.cID', $listingCID);
			}
			
			$zip=$_REQUEST['zip'];  
			if( $zip ){  
				$pagelist->filter( false, 'CollectionSearchIndexAttributes.ak_address_postal_code = "'.$db->escape($zip).'"'  ); 
				$filterByZip=1; 
			}	
			
			$city=$_REQUEST['city'];  
			if( $city ){  
				$pagelist->filter( false, 'CollectionSearchIndexAttributes.ak_address_city = "'.$db->escape($city).'"'  ); 
				$filterByCity=1; 
			}	
			
			$state=$_REQUEST['state'];  
			if( $state ){  
				$pagelist->filter( false, 'CollectionSearchIndexAttributes.ak_address_state_province = "'.$db->escape($state).'"'  ); 
				$filterByState=1; 
			}				 

			
			//filter by date added search
			/*
			$dateFrom = $_REQUEST['date_from']; 
			if ($dateFrom != '' ){ //&& in_array('Date',$searchAttrs)  ) {
				$dateFrom = date('Y-m-d', strtotime($dateFrom));
				$pagelist->filterByDateAdded($dateFrom, '>=');
				$dateFrom .= ' 00:00:00';
				$filterByDateFrom = 1;
			}
			$dateTo = $_REQUEST['date_to']; 
			if ($dateTo != '' ){ //&& in_array('Date',$searchAttrs)  ) {
				$dateTo = date('Y-m-d', strtotime($dateTo));
				$dateTo .= ' 23:59:59';			
				$pagelist->filterByDateAdded($dateTo, '<=');
				$filterByDateTo = 1;
			} 
			*/ 
			 
			//exclude filled jobs  
			//$pagelist->filterByAttribute('job_status',"%filled%","not like"); 
			
			//filter by custom file attribute 
			if( is_array($_REQUEST['akID'])) foreach($_REQUEST['akID'] as $akID=>$val ){
				if( !intval($akID) ) continue; 
				$ak = CollectionAttributeKey::get( $akID );  
				if(!is_object($ak)) continue; 
				$type = $ak->getAttributeType(); 
				if(!is_object($type)) continue;    
				
				//all this chunk is related to a bug on the select attribute type when no option is given 
				$cleanSelectOptIds=array(); 
				if( $type->getAttributeTypeHandle() == 'select'){ 
					$dirtySelectOptIds = $_REQUEST['akID'][$akID]['atSelectOptionID']; 
					
					if( is_array($dirtySelectOptIds) ){ 
						foreach($dirtySelectOptIds as $optId){ 
							if( intval($optId) ) 
								$cleanSelectOptIds[]=intval($optId);
						}
					}
					if( !count($cleanSelectOptIds) ) continue;
					$_REQUEST['akID'][$akID]['atSelectOptionID'] = $cleanSelectOptIds; 
				}
				
				//handle job id numbers as a single value, not a range
				if($ak->getAttributeKeyHandle()=='job_id'){ 
					$_REQUEST['akID'][$akID]['from']=$_REQUEST['akID'][$akID]['value'];
					$_REQUEST['akID'][$akID]['to']=$_REQUEST['akID'][$akID]['value']; 
				}
				
				if( $type->getAttributeTypeHandle() == 'number' ){ 
					$_REQUEST['akID'][$akID]['from']=str_replace(array(',','$'),'',$_REQUEST['akID'][$akID]['from']);
					$_REQUEST['akID'][$akID]['to']=str_replace(array(',','$'),'',$_REQUEST['akID'][$akID]['to']);  
				} 
				
				$filteredAttrsData['akID'][$akID] = $_REQUEST['akID'][$akID];  
				$cnt = $type->getController();  
				$cnt->setAttributeKey($ak);
				$req = $pagelist->getSearchRequest();
				$cnt->setRequestArray($req);  			
				
				if( ( $type->getAttributeTypeHandle() == 'select' && count($cleanSelectOptIds)  ) ||
				    ( $type->getAttributeTypeHandle() == 'number' && (intval($cnt->request('from')) || intval($cnt->request('to')) ) ) || 
				    ( $cnt->request('value') ) ){ 
					$cnt->searchForm($pagelist);
				}
			} 
			
			
			//sorting    
			if($sortBy=='price_desc'){
				$ak =  CollectionAttributeKey::getByHandle( 'price' ); 
				if(is_object($ak)) $pagelist->sortBy( $ak, 'desc'); 
			}elseif( $sortBy=='price' ){ 
				$ak =  CollectionAttributeKey::getByHandle( 'price' ); 
				if(is_object($ak)) $pagelist->sortBy( $ak, 'asc');  
			/*}elseif( substr($sortBy,0,4)=='fak_' ){
				$fakID=substr($sortBy,4); 
				$ak =  CollectionAttributeKey::get( intval($fakID) ); 
				if(is_object($ak)) $pagelist->sortByAttributeKey( $ak, $sortAscDesc);  */ 
			}elseif($sortBy=='oldest'){ 
				$pagelist->sortByPublicDate();  
			}else{  //newest 
				$pagelist->sortByPublicDateDescending(); 
			}  
			
			
			//Paging 
			$pagingVar = 'pg_bID_'.intval($this->bID);
			$defaultPageSize = (!intval($this->page_size)) ? 10 : intval($this->page_size); 
			$pageSize= (intval($_REQUEST['pageSize_'.intval($this->bID)])>0 ) ? intval($_REQUEST['pageSize_'.intval($this->bID)]) : $defaultPageSize;
			$pageNum=(intval($_REQUEST[$pagingVar])>0)?intval($_REQUEST[$pagingVar]):1;  	
			
			$paging_qstr = '&sortBy='.$sortBy.'&pageSize_'.intval($this->bID).'='.$pageSize;  
			//if( $filterByDateFrom ) $paging_qstr.='&date_from='.urlencode($_REQUEST['date_from']); 
			//if( $filterByDateTo ) $paging_qstr.='&date_to='.urlencode($_REQUEST['date_to']);   
			if( count($filteredAttrsData) ) $paging_qstr .= '&'.http_build_query($filteredAttrsData);  
			if( $filterByKeywords ) $paging_qstr.='&keywords='.urlencode($keywords); 
			if( $filterByZip ) $paging_qstr.='&zip='.urlencode($zip); 
			if( $filterByCity ) $paging_qstr.='&city='.urlencode($city); 
			if( $filterByState ) $paging_qstr.='&state='.urlencode($state); 
			
			$paging_url = $page_base.$paging_qstr; 

			$resultsCount = $pagelist->getTotal();
			$pagination = Loader::helper('pagination');	 
			$pagination->queryStringPagingVariable=$pagingVar;	
			$pagination->init( $pageNum, $resultsCount, View::url($paging_url), $pageSize ); 
			$resultPages = $pagelist->get( $pageSize, $pagination->result_offset );	 
			
			$this->set('resultsCount',intval($resultsCount));						
			$this->set('resultPages',$resultPages);
			$this->set('pageSize', $pageSize);
			$this->set('paginator', $pagination);
			$this->set('new_paging_url', str_replace('%pageNum%','1',$paging_url) ); 
			$this->set('paging_url', $paging_url );
			$this->set('page_base', $page_base );
			$this->set('paging_qstr', $paging_qstr );
			
			
		} 
		
		$this->set('sortBy', $sortBy ); 
		$this->set('requestData', $_REQUEST );
	}
	
	
}

?>
