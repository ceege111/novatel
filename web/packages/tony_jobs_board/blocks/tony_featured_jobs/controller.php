<?php  

defined('C5_EXECUTE') or die(_("Access Denied.")); 


Loader::model('collection_types'); 
Loader::model('collection_attributes'); 
Loader::model('page_list');
Loader::model('tony_jobs_board','tony_jobs_board');  

class TonyFeaturedJobsBlockController extends BlockController { 

	protected $btTable = 'btTonyFeaturedJobs';
	protected $btInterfaceWidth = "500";
	protected $btInterfaceHeight = "350";
	
	protected $btCacheBlockRecord=1; 
	//protected $btCacheBlockOutput=1;
	//protected $btCacheBlockOutputTimeout=3600;
	//protected $btCacheBlockOutputForRegisteredUsers=1;
	
	public $page_size=1;
	
	
	/** 
	 * Used for localization. If we want to localize the name/description we have to include this
	 */
	public function getBlockTypeDescription() {
		return t("Display featured jobs board listings");
	}
	
	public function getBlockTypeName() {
		return t("Featured Jobs");
	}	
	
	public function getJavaScriptStrings() {
		return array();
	} 
	
	public function getDefaultSortableOpts(){
		$details=array();
		$details['random'] = t('Random');
		$details['newest'] = t('Newest');
		$details['oldest'] = t('Oldest');		
		$details['price'] = t('Price: Low to High');
		$details['price_desc'] = t('Price: High to Low');
		return $details;
	}		
	
	public function save($args) { 
		$db = Loader::db(); 
		
		$args['title'] = (strlen($args['title']) > 0) ? $args['title'] : '';
		
		$args['cParentID']=($args['cParentID']); 
		if($args['cParentID']=='OTHER'){
			$args['cParentID']=intval($args['cParentIDValue']); 
		}else{
			$args['cParentID']=intval($args['cParentID']); 
		}		
		
		$args['animationDuration'] = floatval($args['animationDuration']);
		
		$args['orderBy'] = (strlen($args['orderBy']) > 0) ? $args['orderBy'] : 'random'; 	
		
		$args['featuredOnly']=intval($args['featuredOnly']);
		
		parent::save($args); 
	} 
	
	public function on_page_view(){ 
		if($this->mode!='list'){
			$htmlhelper = Loader::helper('html'); 
			
			//this should be automatically included
			//$this->addHeaderItem($htmlhelper->javascript('jquery.cycle.all.min.js','tony_featured_jobs')); 
			//$this->addHeaderItem('<script type="text/javascript" src="'.DIR_REL.'/packages/tony_jobs_board/blocks/tony_featured_jobs/js/jquery.cycle.all.min.js"></script>'); 
			
		}		
	}	
	
	public function view(){ 		
	
		global $c;	
		$db=Loader::db();  
		
		$page_base=$c->getCollectionPath();
		if( !strlen($page_base) ) $page_base='/?cID='.$c->getCollectionID(); 
		if(!strstr($page_base,'?')) $page_base.='?';	 	
			
		//SORT BY 
		$sortBy=$this->displayOrder;   
	
		$pagelist = new PageList();
		
		if($this->cParentID==-1){ 
			$pagelist->filterByParentID(intval($c->getCollectionID()));
		}elseif(intval($this->cParentID)>=1){ 
			$pagelist->filterByParentID(intval($this->cParentID));
		}
		
		$listingPageType = CollectionType::getByHandle('jobs_board_listing'); 
		if( !is_object($listingPageType) ) throw new Exception(t('jobs_board_listing page type not found')); 
		$pagelist->filterByCollectionTypeID( intval($listingPageType->getCollectionTypeID()) ); 
		
		if($this->featuredOnly) $pagelist->filterByAttribute('featured_listing',"1","="); 			
		
		//SEARCHING & FILTERING  
		
		//sorting    
		if($sortBy=='price_desc'){
			$ak =  CollectionAttributeKey::getByHandle( 'price' ); 
			if(is_object($ak)) $pagelist->sortBy( $ak, 'desc'); 
		}elseif( $sortBy=='price' ){ 
			$ak =  CollectionAttributeKey::getByHandle( 'price' ); 
			if(is_object($ak)) $pagelist->sortBy( $ak, 'asc');   
		}elseif($sortBy=='oldest'){ 
			$pagelist->sortBy('cDateAdded', 'asc');  
		}elseif($sortBy=='newest'){  
			$pagelist->sortBy('cDateAdded', 'desc'); 
		}else{ //random
			$pagelist->sortBy('rand()','');
			$this->btCacheBlockOutputForRegisteredUsers=0; 
			$this->btCacheBlockOutput=0;			 
		}
		
		$pageSize = (!intval($this->page_size)) ? 3 : intval($this->page_size);   
		
		$paging_qstr = '&sortBy='.$sortBy.'&pageSize='.$pageSize; 
		
		//if( $filterByDateFrom ) $paging_qstr.='&date_from='.urlencode($_REQUEST['date_from']); 
		//if( $filterByDateTo ) $paging_qstr.='&date_to='.urlencode($_REQUEST['date_to']);   
		if( count($filteredAttrsData) ) $paging_qstr .= '&'.http_build_query($filteredAttrsData);  
		if( $filterByKeywords ) $paging_qstr.='&keywords='.urlencode($keywords); 
		
		$paging_url = $page_base.$paging_qstr; 

		$resultsCount = $pagelist->getTotal(); 
		$resultPages = $pagelist->get( $pageSize, 0 );	
		
		
		$this->set('resultsCount',intval($resultsCount));						
		$this->set('resultPages',$resultPages);   
			
		
		$this->set('sortBy', $sortBy ); 
		$this->set('requestData', $_REQUEST );
		
	}
	
	
}

?>