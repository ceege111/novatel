<?php 

defined('C5_EXECUTE') or die(_("Access Denied."));


/*

To Do List:  

Featured Listings block  




You may add these config variables to the jobs board package to override default behavior:   

//the number of characters of a listings description to display on in the search listings results 
JOBS_BOARD_DESCRIPTION_CHARS

//the number of characters of a listings description to display on in the search listings results 
JOBS_BOARD_CURRENCY_SYMBOL

//is your main area not called "Main"?  Then set it here: 
JOBS_BOARD_LIST_MAIN_AREA_NAME

//same deal for the sidebar.  you may want to set these before installing the package.  
JOBS_BOARD_LIST_SIDEBAR_AREA_NAME

//set a new url for the job application form page, defaults to /job_application 
JOBS_BOARD_APPLICATION_PAGE_PATH

*/ 

class TonyJobsBoardPackage extends Package {

	protected $pkgHandle = 'tony_jobs_board';
	protected $appVersionRequired = '5.4.0.5';
	protected $pkgVersion = '1.01';  
	
	public function getPackageDescription() { 
		return t("Search & Display Jobs Board Listings");
	}
	
	public function getPackageName() {
		return t("Job Board"); 
	}
	
	public function upgrade(){
		$result = parent::upgrade();
		$this->configure(1); 
		return $result;
	}
	
	public function uninstall() {
		
		parent::uninstall(); 
		  
		$applyPath = '/job_application';  
		$applyPage = Page::getByPath($applyPath);
		if (is_object($p1) && (!$p1->isError())) {
			$p1->delete();
		}
		$p2 = Page::getByPath('/jobs-board');
		if (is_object($p2) && (!$p2->isError())) {
			$p2->delete();
		} 
		
		Cache::flush();
	}
	
	public function install() {
		$pkg = parent::install();
		$this->configure();
	}
	
	public function configure($update=0) {  
	
		$pkg = Package::getByHandle('tony_jobs_board'); 
		
		Loader::model('collection_types');
		Loader::model('collection_attributes');
		Loader::model('tony_jobs_board','tony_jobs_board');
		Loader::model('file_set');
		Loader::model('single_page');
		$db = Loader::db();
		
		$u = new User();	 
		
		$mainAreaName = TonyJobsBoard::getMainAreaName(); 
		$sidebarAreaName = TonyJobsBoard::getSidebarAreaName(); 
		
		//install dashboard pages
		$dashboardListingsPage=Page::getByPath('/dashboard/jobs_board');
		if( !is_object($dashboardListingsPage) || !intval($dashboardListingsPage->getCollectionID()) ){ 
			$dashboardListingsPage=SinglePage::add('/dashboard/jobs_board', $pkg); 
		}	
		if( is_object($dashboardListingsPage) && intval($dashboardListingsPage->getCollectionID())  ){
			$dashboardListingsPage->update(array('cName'=>t('Jobs Board'), 'cDescription'=>t("Manage your job listings")));
		}else throw new Exception( t('Error: /dashboard/jobs_board page not created') );	
		
		
		//install apply for job page 
		$applyPath = TonyJobsBoard::getApplyPath(); 
		$applyPage=Page::getByPath($applyPath);
		if( !is_object($applyPage) || !intval($applyPage->getCollectionID()) ){ 
			$applyPage=SinglePage::add($applyPath, $pkg);   
		}	
		if( is_object($applyPage) && intval($applyPage->getCollectionID())  ){
			$applyPage->update(array('cName'=>t('Job Application'), 'cDescription'=>t("Apply for a position listed on the jobs board")));
			$excludeNavAttr=CollectionAttributeKey::getByHandle('exclude_nav'); 
			if( is_object($excludeNavAttr) ) $applyPage->setAttribute('exclude_nav',1);
			$excludePageListAttr=CollectionAttributeKey::getByHandle('exclude_page_list');
			if( is_object($excludePageListAttr) ) $applyPage->setAttribute('exclude_page_list',1); 
			$excludeSearchIndexAttr=CollectionAttributeKey::getByHandle('exclude_search_index');
			if( is_object($excludeSearchIndexAttr) ) $applyPage->setAttribute('exclude_search_index',1); 
			$excludeSitemapAttr=CollectionAttributeKey::getByHandle('exclude_sitemapxml');
			if( is_object($excludeSitemapAttr) ) $applyPage->setAttribute('exclude_sitemapxml',1);  
		}else throw new Exception( t('Error: %s page not created',$applyPath) );	
		
		
		//has the application form already been installed? 
		$a = new Area($mainAreaName);
		$blocks = $a->getAreaBlocksArray($applyPage);  
		foreach($blocks as $b){
			$bt = BlockType::getByID( $b->getBlockTypeID() ); 
			if( strtolower($bt->getBlockTypeHandle())=='form'  ){
				$applicationFormFound=1;   
			}
			if( strtolower($bt->getBlockTypeHandle())=='content'  ){
				$applicationContentFound=1;   
			}
		} 
		
		//install content block on job application page 
		if(!$applicationContentFound){ 	
			$contentBlockType = BlockType::getByHandle('content'); 
			$data['content']  = '<p>'.t('If you feel that you are qualified for this position please complete the following form:').'</p>'; 
			$applyPage->addBlock($contentBlockType, $mainAreaName, $data); 
		}
		
		//add form block to job application page  
		if(!$applicationFormFound){ 
			$formBlockType = BlockType::getByHandle('form'); 
			$data['surveyName'] = t('Job Application');
			$data['notifyMeOnSubmission'] = 1;
			if(is_object($u)){ 
				$ui = UserInfo::getById($u->uID); 
				$data['recipientEmail'] = $ui->getUserEmail();
			}
			$data['qsID']=time();
			$data['displayCaptcha'] = 1;
			$data['thankyouMsg'] = t('Thank you for applying. We will contact you if we feel you are a good fit for this position.');
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('Name'), 'inputType'=>'field', 'options'=>'', 'position'=>1, 'required' => 1 );
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('Phone'), 'inputType'=>'field', 'options'=>'', 'position'=>2, 'required' => 1 );
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('E-Mail'), 'inputType'=>'field', 'options'=>'', 'position'=>3, 'required' => 1 );
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('Upload Resume'), 'inputType'=>'fileupload', 'options'=>'', 'position'=>4, 'required' => 1 ); 
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('Cover Letter'), 'inputType'=>'text', 'options'=>'', 'position'=>5, 'width' => 50, 'height' => 10 );
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('Job Title'), 'inputType'=>'field', 'options'=>'', 'position'=>6, 'required' => 0 );
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('Job URL'), 'inputType'=>'field', 'options'=>'', 'position'=>7, 'required' => 0 );
			$data['questions'][] = array( 'qsID'=>$data['qsID'], 'question'=>t('Job ID'), 'inputType'=>'field', 'options'=>'', 'position'=>8, 'required' => 0 );
			$applyPage->addBlock($formBlockType, $mainAreaName, $data);	
		}
		  
		//install new multiple files attribute type  
		$multiFileAttrType = AttributeType::getByHandle('multiple_files');
		if( !is_object($multiFileAttrType) || !intval($multiFileAttrType->getAttributeTypeID()) ){ 
			$multiFileAttrType = AttributeType::getByHandle('jobs_board_multiple_files');
			if(!is_object($multiFileAttrType) || !intval($multiFileAttrType->getAttributeTypeID()) ) { 
				$multiFileAttrType = AttributeType::add('jobs_board_multiple_files', t('Jobs Board Multiple Files'), $pkg); 			  
			} 
		} 
		
		//check that the multi-files attribute type is associate with pages
		$collectionAttrCategory = AttributeKeyCategory::getByHandle('collection');
		$catTypeExists = $db->getOne('SELECT count(*) FROM AttributeTypeCategories WHERE atID=? AND akCategoryID=?', array( $multiFileAttrType->getAttributeTypeID(), $collectionAttrCategory->getAttributeKeyCategoryID() ));
		if(!$catTypeExists) $collectionAttrCategory->associateAttributeKeyType($multiFileAttrType);		  
		  
		  
		//check that the address attribute type exists 
		$addressAttrType = AttributeType::getByHandle('address');
		if(!is_object($addressAttrType) || !intval($multiFileAttrType->getAttributeTypeID())) 
			throw new Exception('The "address" attribute type was not found.');
		
		
		//check that the address attribute type is associated with pages  
		$catTypeExists = $db->getOne('SELECT count(*) FROM AttributeTypeCategories WHERE atID=? AND akCategoryID=?', array( $addressAttrType->getAttributeTypeID(), $collectionAttrCategory->getAttributeKeyCategoryID() ));
		if(!$catTypeExists) $collectionAttrCategory->associateAttributeKeyType($addressAttrType); 
		
		//make sure there is a collection attribute key  
		if( !$collectionAttrCategory->handleExists('address') ){ 
			//$addressAttrKey = $collectionAttrCategory->add( 'address', 'address', array('akName'=>t('Address')), null ); 
			$akName = t('Address');
			$args = array('akName'=>$akName,'akHandle'=>'address','akIsSearchable'=>1);
			$addressAttrKey = CollectionAttributeKey::add( $addressAttrType, $args, null );  
		} 
		$addressAttrKey=CollectionAttributeKey::getByHandle('address'); 
		
		
		//add listing attributes
		$selectFileAttrType = AttributeType::getByHandle('select');
		
		$employmentLocationsAttrKey=CollectionAttributeKey::getByHandle('employment_locations');
		if( !$employmentLocationsAttrKey || !intval($employmentLocationsAttrKey->getAttributeKeyID()) ){
			$employmentLocationsAttrKey = CollectionAttributeKey::add( $selectFileAttrType, array('akName'=>t("Locations"),'akHandle'=>'employment_locations','akSelectAllowMultipleValues'=>1,'akIsSearchable'=>1,'akIsSearchableIndexed'=>1,'akSelectAllowOtherValues'=>1), $pkg); 
			$opt = new SelectAttributeTypeOption(0, t('Auckland, New Zealand'), 1);
			$opt = $opt->saveOrCreate($employmentLocationsAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Dublin, Ireland'), 2);
			$opt = $opt->saveOrCreate($employmentLocationsAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t('Portland, Oregon, USA'), 3);
			$opt = $opt->saveOrCreate($employmentLocationsAttrKey);  	 
		}	
		
		
		$textn = AttributeType::getByHandle('text'); 
		
		$employmentCityAttrKey = CollectionAttributeKey::getByHandle('employment_city'); 
		if( !is_object($employmentCityAttrKey) ){
			$employmentCityAttrKey = CollectionAttributeKey::add($textn, 
			array('akName' => t('City'),'akHandle' => 'employment_city'),$pkg);
		}
		
		$employmentStateAttrKey = CollectionAttributeKey::getByHandle('employment_state'); 
		if( !is_object($employmentStateAttrKey ) ){
			$employmentStateAttrKey = CollectionAttributeKey::add($textn, 
			array('akName' => t('State'),'akHandle' => 'employment_state'),$pkg);
		}
		
		
		$employmentZipCodeAttrKey = CollectionAttributeKey::getByHandle('zip_code'); 
		if( !is_object($zipCode) ) {
			$employmentZipCodeAttrKey = CollectionAttributeKey::add($textn, 
			array('akHandle' => 'zip_code', 
			'akName' => t('Zip Code')
			),$pkg);
		}
		 
		$employmentTypeAttrKey=CollectionAttributeKey::getByHandle('employment_type');
		if( !$employmentTypeAttrKey || !intval($employmentTypeAttrKey->getAttributeKeyID()) ){
			$employmentTypeAttrKey = CollectionAttributeKey::add( $selectFileAttrType, array('akName'=>t("Employment Type"),'akHandle'=>'employment_type','akSelectAllowMultipleValues'=>1,'akIsSearchable'=>1), $pkg); 
			$opt = new SelectAttributeTypeOption(0, t('Full Time'), 1);
			$opt = $opt->saveOrCreate($employmentTypeAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t('Contractor'), 2);
			$opt = $opt->saveOrCreate($employmentTypeAttrKey); 			
			$opt = new SelectAttributeTypeOption(0, t('Part time'), 3);
			$opt = $opt->saveOrCreate($employmentTypeAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Intern'), 4);
			$opt = $opt->saveOrCreate($employmentTypeAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Seasonal/Temp'), 5);
			$opt = $opt->saveOrCreate($employmentTypeAttrKey);
		}	
		
		$employmentCategoryAttrKey=CollectionAttributeKey::getByHandle('employment_category');
		if( !$employmentCategoryAttrKey || !intval($employmentCategoryAttrKey->getAttributeKeyID()) ){
			$employmentCategoryAttrKey = CollectionAttributeKey::add( $selectFileAttrType, array('akName'=>t("Employment Category"),'akHandle'=>'employment_category','akSelectAllowMultipleValues'=>0,'akIsSearchable'=>1,'akIsSearchableIndexed'=>1,'akSelectAllowOtherValues'=>1), $pkg); 
			
			$opt = new SelectAttributeTypeOption(0, t('Accounting'), 1);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t('Admin - Clerical'), 2);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Business Development'), 3);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Consultant'), 4);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Customer Service'), 5);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t('Entry Level'), 6);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t('Executive'), 7);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t('Finance'), 8);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t('General Labor'), 9);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Human Resources'), 10);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Information Technology'), 11);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Legal'), 12);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Management'), 13);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Manufacturing'), 14);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Marketing'), 15);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);		
			$opt = new SelectAttributeTypeOption(0, t('Other'), 16);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);	
			$opt = new SelectAttributeTypeOption(0, t('Professional Services'), 17);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Purchasing - Procurement'), 18);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('QA / Quality Control'), 19);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Research'), 20);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Retail'), 21);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Sales'), 22);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Shipping / Warehouse'), 23);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);
			$opt = new SelectAttributeTypeOption(0, t('Supply Chain'), 24);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);	
			$opt = new SelectAttributeTypeOption(0, t('Training'), 25);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);	
			$opt = new SelectAttributeTypeOption(0, t('Transportation'), 26);
			$opt = $opt->saveOrCreate($employmentCategoryAttrKey);				
		}
		 
		$educationAttrKey=CollectionAttributeKey::getByHandle('minimum_education');
		if( !$educationAttrKey || !intval($educationAttrKey->getAttributeKeyID()) ){
			$educationAttrKey = CollectionAttributeKey::add( $selectFileAttrType, array('akName'=>t("Minimum Education"),'akHandle'=>'minimum_education','akSelectAllowMultipleValues'=>1,'akIsSearchable'=>1), $pkg); 
			$opt = new SelectAttributeTypeOption(0, t('High School'), 1);
			$opt = $opt->saveOrCreate($educationAttrKey); 
			$opt = new SelectAttributeTypeOption(0, t("Associate's Degree"), 2);
			$opt = $opt->saveOrCreate($educationAttrKey); 			
			$opt = new SelectAttributeTypeOption(0, t('Some College'), 3);
			$opt = $opt->saveOrCreate($educationAttrKey);
			$opt = new SelectAttributeTypeOption(0, t("Bachelor's Degree"), 4);
			$opt = $opt->saveOrCreate($educationAttrKey);
			$opt = new SelectAttributeTypeOption(0, t("Master's Degree"), 5);
			$opt = $opt->saveOrCreate($educationAttrKey);
			$opt = new SelectAttributeTypeOption(0, t("Doctorate"), 6);
			$opt = $opt->saveOrCreate($educationAttrKey);
		} 
		
		$salaryAttrKey=CollectionAttributeKey::getByHandle('salary');
		if( !$salaryAttrKey || !intval($salaryAttrKey->getAttributeKeyID()) ) 
			$salaryAttrKey = CollectionAttributeKey::add('NUMBER', array('akHandle'=>'salary', 'akName' =>t("Salary"), 'akIsSearchable'=>1), $pkg );
			
		$jobIdAttrKey=CollectionAttributeKey::getByHandle('job_id');
		if( !$jobIdAttrKey || !intval($jobIdAttrKey->getAttributeKeyID()) ) 
			$jobIdAttrKey = CollectionAttributeKey::add('NUMBER', array('akHandle'=>'job_id', 'akName' =>t("Job ID"), 'akIsSearchable'=>1, 'akIsSearchableIndexed'=>1), $pkg );  
			
		$multiFileAttrKey=CollectionAttributeKey::getByHandle('attachments');
		if( !$multiFileAttrKey || !intval($multiFileAttrKey->getAttributeKeyID()) )
			$multiFileAttrKey = CollectionAttributeKey::add( $multiFileAttrType, array('akName'=>t("File Attachments"),'akHandle'=>'attachments','akIsSearchable'=>0), $pkg) ;//null, 'MULTIPLE_FILES');	
			
		$experienceAttrKey=CollectionAttributeKey::getByHandle('minimum_experience');
		if( !$experienceAttrKey || !intval($experienceAttrKey->getAttributeKeyID()) ) 
			$experienceAttrKey = CollectionAttributeKey::add('NUMBER', array('akHandle'=>'minimum_experience', 'akName' =>t("Minimum Years Experience"), 'akIsSearchable'=>1), $pkg );
			
		$featuredListingAttrKey=CollectionAttributeKey::getByHandle('featured_listing');	
		if( !$featuredListingAttrKey || !intval($featuredListingAttrKey->getAttributeKeyID()) ) 
			$featuredListingAttrKey = CollectionAttributeKey::add('BOOLEAN', array('akHandle'=>'featured_listing', 'akName' =>t("Featured Listing"), 'akIsSearchable'=>1), $pkg );

		//add the new listing page type 
		Loader::model('collection_types'); 
		$listingPageType = CollectionType::getByHandle('jobs_board_listing'); 
		if( !$listingPageType ){ 
			$data['ctHandle'] = 'jobs_board_listing'; 
			$data['ctName'] = t('Jobs Board Listing'); 
			$listingPageType = CollectionType::add($data, $pkg);  
			 
			$listingPageMasterTemplate = $listingPageType->getMasterTemplate(); 
			$data = array(); 
			$contentBlockType = BlockType::getByHandle('content'); 
			$data['content']  = '<p>'.t('Enter job description...').'</p>'; 
			$defaultDescriptionBlock = $listingPageMasterTemplate->addBlock($contentBlockType, $mainAreaName, $data); 
			if( $defaultDescriptionBlock && method_exists($defaultDescriptionBlock,'updateBlockComposerSettings') ){ 
				$defaultDescriptionBlock->updateBlockComposerSettings( array('bIncludeInComposer'=>true) ); 
				$defaultDescriptionBlock->updateBlockName( t('Job Description') );  
			}  
		} 
		
		
		//add the new Listings Search page type 
		Loader::model('collection_types'); 
		$listingsPageType = CollectionType::getByHandle('jobs_board_listings'); 
		if( !$listingsPageType ){ 
			$data['ctHandle'] = 'jobs_board_listings';  
			$data['ctName'] = t('Jobs Board Search');  
			$listingsPageType = CollectionType::add($data, $pkg);  
		} 
		
		//associate various attribute types with the new jobs board listings page type 
		$listingPageType->populateAvailableAttributeKeys();
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($employmentCategoryAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($employmentCategoryAttrKey); 
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($employmentTypeAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($employmentTypeAttrKey);
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($employmentLocationsAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($employmentLocationsAttrKey); 
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($addressAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($addressAttrKey);  
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($salaryAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($salaryAttrKey);	
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($jobIdAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($jobIdAttrKey);
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($multiFileAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($multiFileAttrKey);	
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($featuredListingAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($featuredListingAttrKey); 
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($experienceAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($experienceAttrKey);  
			
		if(!$listingPageType->isAvailableCollectionTypeAttribute($educationAttrKey->getAttributeKeyID())) 
			$listingPageType->assignCollectionAttribute($educationAttrKey);  
		
		//if(!strlen(Config::get('TONY_JOBS_BOARD_COLUMN_HEADER_ATTRIBUTES'))) 
			Config::save('TONY_JOBS_BOARD_COLUMN_HEADER_ATTRIBUTES', $jobIdAttrKey->getAttributeKeyID().','.$employmentLocationsAttrKey->getAttributeKeyID() );  
			 
			
		// install blocks 
		$jobsBoardSearchBlockType = BlockType::getByHandle('tony_jobs_board_search', $pkg); 
		if(!is_object($jobsBoardSearchBlockType)) 
			$jobsBoardSearchBlockType = BlockType::installBlockTypeFromPackage('tony_jobs_board_search', $pkg);  
			
		$featuredListingsBlockType = BlockType::getByHandle('tony_featured_jobs', $pkg); 
		if(!is_object($featuredListingsBlockType)) 
			$featuredListingsBlockType = BlockType::installBlockTypeFromPackage('tony_featured_jobs', $pkg); 		 
			
		//add jobs board photos file set 
		$listingFileSet = FileSet::getByName(t('Jobs Board File Attachments'));
		if( !is_object($listingFileSet) ){
			$listingFileSet = FileSet::createAndGetSet( t('Jobs Board File Attachments'), 1, 1 );
		} 
		
		//install composer page, if composer is available
		if( method_exists($listingPageType,'saveComposerPublishTargetPageType') ){
			$listingPageType->saveComposerPublishTargetPageType($listingsPageType);
			
			$composerAttrIds=array(); 	 
			$composerAttrIds[]=$employmentCategoryAttrKey->getAttributeKeyID(); 
			$composerAttrIds[]=$employmentTypeAttrKey->getAttributeKeyID(); 
			//$composerAttrIds[]=$addressAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$salaryAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$jobIdAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$multiFileAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$featuredListingAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$employmentLocationsAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$employmentCityAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$employmentStateAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$employmentZipCodeAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$experienceAttrKey->getAttributeKeyID();
			$composerAttrIds[]=$educationAttrKey->getAttributeKeyID();
			
			$listingPageType->saveComposerAttributeKeys($composerAttrIds); 
		} 
		
		//sample page installation can be turned off 
		if( (!intval($_REQUEST['installSampleContentCheck']) || intval($_REQUEST['installSampleContent'])) && !$update ){ 
			
			// Add jobs board listings page below home page   
			$listingsPage=Page::getByPath('/jobs-board');
			if( !intval($listingsPage->cID) && is_object($listingsPageType) ){  
			
				$home = Page::getByID(HOME_CID);
				
				$data = array();
				$data['name'] = t('Jobs Board'); 
				$data['cHandle'] = 'jobs-board';  
				$listingsPage = $home->add( $listingsPageType, $data);  
				
			} else { 
				//set the page type, in case it was lost on uninstall  
				$listingsPage->update( array( 'ctID'=>$listingsPageType->getCollectionTypeID() ) ); 
			}
			
			if( !is_object($listingsPage) )
				throw new Exception(t('Jobs Board Listings page could not be created')); 
			 
			//is the jobs board search results block already there? 
			$a = new Area($mainAreaName);
			$blocks = $a->getAreaBlocksArray($listingsPage);  
			foreach($blocks as $b){
				$bt = BlockType::getByID( $b->getBlockTypeID() ); 
				if( strtolower($bt->getBlockTypeHandle())=='tony_jobs_board_search'  ){
					$jobsBoardResultsFound=1;  
					break; 
				}
			}   
			
			$jobsBoardSearchBlockType = BlockType::getByHandle('tony_jobs_board_search', $pkg); 
			
			//add jobs board search results block 
			if( !$jobsBoardResultsFound ){  
				
				$data=array();
				$data['mode']  = 'results'; 
				$data['displayOrder']  = 'newest';  
				$data['showSortBy']  = 1;  
				$data['addressAsTitle'] = 1; 
				$listingsPage->addBlock($jobsBoardSearchBlockType, $mainAreaName, $data); 
			}
			
			//is the jobs board listings sidebar blocks already there? 
			$a = new Area( $sidebarAreaName );
			$blocks = $a->getAreaBlocksArray($listingsPage);  
			foreach($blocks as $b){
				$bt = BlockType::getByID( $b->getBlockTypeID() );  
				if( strtolower($bt->getBlockTypeHandle())=='tony_jobs_board_search'  ){
					$jobsBoardSearchFound=1;  
				}
				if( strtolower($bt->getBlockTypeHandle())=='tony_featured_jobs'  ){
					$jobsBoardFeaturedFound=1;  
				}
			}  
				
			//add jobs board search results block 
			if( !$jobsBoardSearchFound ){ 	
				$data=array(); 
				$data['searchTitle']  = t("Search Listings");
				$data['mode']  = 'search'; 
				$data['searchableAttributes'] = 'Keywords,employment_type,employment_category,employment_locations,job_id'; 
				$data['searchedCountries'] = 'US,CA';
				$listingsPage->addBlock($jobsBoardSearchBlockType, $sidebarAreaName, $data); 
			} 
	
			//add Featured Jobs Blocks 
			if( !$jobsBoardFeaturedFound ){ 
				$featuredListingsBlockType = BlockType::getByHandle('tony_featured_jobs', $pkg);  
				$data=array(); 
				$data['title']  = t("Featured Jobs");
				$data['mode']  = 'slideshow'; 
				$data['addressAsTitle'] = 1; 
				$data['animationType'] = 'fade'; 
				$data['animationDuration'] = 5; 
				$data['maxThumbWidth'] = 200; 
				$data['maxThumbHeight'] = 400; 
				$data['page_size'] = 3; 
				$listingsPage->addBlock($featuredListingsBlockType, $sidebarAreaName, $data);  			
			}
			

			$listingPage1 = Page::getByPath('/jobs-board/data-entry-sample'); 
			$listingPage1->delete();
			$listingPage1->refreshCache();
			$listingPage2=Page::getByPath('/jobs-board/regional-manager-sample');
			$listingPage2->delete();
			$listingPage2->refreshCache();
			$listingPage3=Page::getByPath('/jobs-board/summer-intern-sample');
			$listingPage3->delete();
			$listingPage3->refreshCache();
			
			
			ob_start(); 
			Loader::packageElement('sample_job_content', 'tony_jobs_board', array());
			$sampleDescription = ob_get_contents(); 
			ob_end_clean(); 
            
			$params=array(); 
			$params['name']=t('Data Entry'); 
			$params['handle']='data-entry-sample';  
			//$params['address_data']= array( 'city'=>'Portland', 'state_province' =>'OR', 'country'=>'US', 'postal_code'=>'97239'); 
			$params['salary']=40000; 
			$params['job_id']=123; 
			$params['employment_category']= t('Admin - Clerical');
			$params['employment_type']= array( t('Part Time'), t("Full Time") ); 
			$params['employment_locations']= array( t('Auckland, New Zealand') ); 
			
			$params['featured_listing']=1;  
			$params['summary']="Looking for someone who is a fast typer to help us out with out backlog of accounting work. Must have a positive attitude and be willing to work weekends."; 
			$params['description']=$sampleDescription;
			$params['minimum_education']=array( t("Some College") , t("Associate's Degree") );
			$params['minimum_experience']=1; 
			$params['file_paths'][]=DIR_PACKAGES.'/tony_jobs_board/elements/sample_attachment.txt'; 
			$listingPage1 = TonyJobsBoard::addListing($listingsPage,$params); 


			$params=array(); 
			$params['name']= t('Regional Manager'); 
			$params['handle']='regional-manager-sample';  
			//$params['address_data']= array( 'city'=>'Portland', 'state_province' =>'OR', 'country'=>'US', 'postal_code'=>'') ; 
			$params['salary']=90000;  
			$params['job_id']=456; 
			$params['employment_category']= t('Management');
			$params['employment_type']= t('Full Time'); 
			$params['employment_locations']= array( t('Dublin, Ireland') );  
			$params['featured_listing']=1;  
			$params['summary']= "Want to manage this region's fastest growing super-chain of imported merchandise? Are you a team player with a talent for multi-tasking?"; 
			$params['description']=$sampleDescription; 
			$params['minimum_education']=t("Master's Degree");
			$params['minimum_experience']=3; 
			$params['file_paths'][]=DIR_PACKAGES.'/tony_jobs_board/elements/sample_attachment.txt'; 
			$listingPage2 = TonyJobsBoard::addListing($listingsPage,$params);
			
			//set a later creation date so sorting works 
			$listingPage2->update( array( 'cDatePublic'=> (date("Y-m-d H:i:s", date('U')+1)) ) ); 
				
				
			$params=array(); 
			$params['name']= t('Summer Intern'); 
			$params['handle']='summer-intern-sample';  
			//$params['address_data']= array( 'city'=>'Beaverton', 'state_province' =>'OR', 'country'=>'US', 'postal_code'=>''); 
			$params['salary']=10000; 
			$params['job_id']=789;  
			$params['employment_category']= t('Entry Level');
			$params['employment_type']= t('Intern'); 
			$params['employment_locations']= array( t('Portland, Oregon, USA') ); 
			$params['featured_listing']=1; 
			$params['summary']="It's that time of year again where we're accepting applications for our summer intern program. Responsibilities include making coffee & picking up pizza."; 
			$params['description']=$sampleDescription;
			$params['minimum_education']=t("Enter job description here...");
			$params['minimum_experience']=0; 
			$params['file_paths'][]=DIR_PACKAGES.'/tony_jobs_board/elements/sample_attachment.txt';  
			$listingPage3 = TonyJobsBoard::addListing($listingsPage,$params); 	
			
			//set a later creation date so sorting works 
			$listingPage3->update( array( 'cDatePublic'=> (date("Y-m-d H:i:s", date('U')-2)) ) ); 
				
		} 
		
		//enable content blocks for editing in composer
		$listingPageMasterTemplate = $listingPageType->getMasterTemplate(); 
		$areaBlocks = $a->getAreaBlocksArray($listingPageMasterTemplate);
		foreach($areaBlocks as $block){ 
			if( strtolower($block->getBlockTypeHandle())!='content' ) continue; 
			if( method_exists($block,'updateBlockComposerSettings')) { 
				$block->updateBlockComposerSettings( array( 'bIncludeInComposer'=>1,'cbFilename'=>t('Description') ) ); 
				$block->updateBlockName( t('Job Description') );  
			}
		}	

		//make main area content get added to search index
		$indexMethod = Config::get('SEARCH_INDEX_AREA_METHOD'); 
		$indexAreas = Config::get('SEARCH_INDEX_AREA_LIST'); 
		$indexAreas = ($indexAreas) ? unserialize($indexAreas) : array(); 
		if( $indexMethod!='whitelist' && $indexMethod!='blacklist' ){
			$indexMethod='whitelist';
			Config::save('SEARCH_INDEX_AREA_METHOD',$indexMethod); 
		}
		if($indexMethod=='whitelist' && !in_array($mainAreaName,$indexAreas) ){  
			$indexAreas[]=$mainAreaName;
		}elseif($indexMethod=='blacklist' && in_array($mainAreaName,$indexAreas) ){
			foreach($indexAreas as $key => $value) { 
				if ($value == $mainAreaName) 
					unset($indexAreas[$key]); 
			}
		}
		Config::save( 'SEARCH_INDEX_AREA_LIST', serialize($indexAreas) ); 
		
	}

}

?>