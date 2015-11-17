<?php  

defined('C5_EXECUTE') or die(_("Access Denied.")); 

Loader::model('attribute/types/jobs_board_multiple_files/controller','tony_jobs_board'); 
Loader::model('tony_jobs_board','tony_jobs_board'); 

class JobsBoardListingPageTypeController extends Controller {

	public function on_start() {  
	
		$c = $this->getCollectionObject();
		$cp = new Permissions($c);
	
		$this->addHeaderItem( '<script type="text/javascript" src="'.DIR_REL.'/packages/tony_jobs_board/js/jobs_board_listing.js" ></script>'   );
		$this->addHeaderItem( '<link rel="stylesheet" type="text/css" href="'.DIR_REL.'/packages/tony_jobs_board/css/jobs_board_listing.css" />' ); 
		
		Loader::model('collection_attributes');   

		if( $cp->canWrite() || $cp->canAdmin() )  
			$this->addHeaderItem( '<script type="text/javascript" src="'.DIR_REL.'/concrete/models/attribute/types/address/country_state.js" ></script>'   );
		 
		
	}
	
	
	public function view(){ 
	
		$c = $this->getCollectionObject();
		  
		$mainAreaName = TonyJobsBoard::getMainAreaName(); 
		$sidebarAreaName = TonyJobsBoard::getSidebarAreaName(); 
		$this->set('mainAreaName', $mainAreaName );
		$this->set('sidebarAreaName', $sidebarAreaName );
		
		$this->set('job_id', $c->getAttribute('job_id') );
		$this->set('salary', $c->getAttribute('salary') );
		$this->set('employment_category', $c->getAttribute('employment_category') );
		$this->set('employmentTypesArray', TonyJobsBoard::getAttributeValues($c,'employment_type') );
		$this->set('location', TonyJobsBoard::getLocationString($c) );
		$this->set('minimum_experience', $c->getAttribute('minimum_experience') );
		$this->set('employment_category', $c->getAttribute('employment_category') );
		$this->set('educationArray', TonyJobsBoard::getAttributeValues($c,'minimum_education') );	
		$this->set('cParent', Page::getByID($c->getCollectionParentID()) );	 		
	}
	
	
	protected function trackHit($title=''){ 
		$pkg = Package::getByHandle('tony_stats'); 
		if( $pkg && file_exists(DIR_PACKAGES.'/tony_stats/helpers/stats.php') ){ 
			Loader::helper('stats','tony_stats'); 
			$c = $this->getCollectionObject();  
			$data = array('title'=> $title, 'url'=>View::url($c->getCollectionPath()), 'realUserCheck'=>1 ) ;	 
			StatsHelper::quickTrack( $data );  
		} 
	}   
	
}

