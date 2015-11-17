<?php 
defined('C5_EXECUTE') or die(_("Access Denied.")); 

Loader::model('attribute/types/jobs_board_multiple_files/controller','tony_jobs_board'); 
Loader::model('tony_jobs_board','tony_jobs_board'); 
Loader::model('collection_attributes');

class JobApplicationController extends Controller {
	
	public function view(){
		
		$htmlHelper = Loader::helper('html');
		$this->addHeaderItem($htmlHelper->javascript('jobs_board_application.js','tony_jobs_board'));  
		
		$c = $this->getCollectionObject(); 
		
		$mainAreaName = TonyJobsBoard::getMainAreaName();  
		$this->set('mainAreaName', $mainAreaName );
		 
		$jobPage = Page::getByID(intval($_REQUEST['job_cID'])); 
		$this->set('jobPage', $jobPage );
		
		if( is_object($jobPage) && $jobPage->getCollectionID() ){   
		
			$this->set('job_id', $jobPage->getAttribute('job_id') );  
			$this->set('employment_category', $jobPage->getAttribute('employment_category') );
			$this->set('employmentTypesArray', TonyJobsBoard::getAttributeValues($jobPage,'employment_type') );
			$this->set('location', TonyJobsBoard::getLocationString($jobPage) );
		
		}
		
		
	} 
	
}