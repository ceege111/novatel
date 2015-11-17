<?php  

defined('C5_EXECUTE') or die(_("Access Denied.")); 

Loader::model('attribute/types/jobs_board_multiple_files/controller','tony_jobs_board'); 

class JobsBoardListingsPageTypeController extends Controller {

	public function on_start() {  
	
		$this->addHeaderItem( '<link rel="stylesheet" type="text/css" href="'.DIR_REL.'/packages/tony_jobs_board/css/jobs_board_listing.css" />' ); 
		
		$c = $this->getCollectionObject();
		$cp = new Permissions($c);
		if( $cp->canWrite() || $cp->canAdmin() )  
			$this->addHeaderItem( '<script type="text/javascript" src="'.DIR_REL.'/concrete/models/attribute/types/address/country_state.js" ></script>'   ); 		
		
	}
	
	
	public function view(){ 
		
	}
	
}

?>