<?php  
defined('C5_EXECUTE') or die(_("Access Denied.")); 

Loader::model('collection_types');
Loader::model('collection_attributes');  


class TonyJobsBoard {

	
	static function addListing( $parentPage, $params=array() ){ 
		
		$txtHelper = Loader::helper('text');  
		Loader::model('collection_types');
		Loader::model('collection_attributes'); 
		
		$mainAreaName = TonyJobsBoard::getMainAreaName();  
		
		//check for required objects
		if(!is_object($parentPage)) throw new Exception(t('Parent page not given in TonyJobsBoard::addListing()'));
		
		if( !is_array($params) || !count($params) ) 
			throw new Exception(t('No parameters found in TonyJobsBoard::addListing()'));		
		
		$listingPageType = CollectionType::getByHandle('jobs_board_listing'); 
		if(!is_object($listingPageType)) throw new Exception(t('Listing page type not found in TonyJobsBoard::addListing()'));

		$params['address']=$params['address_data']['address'].' '.$params['address_data']['city'].' '.$params['address_data']['state_province'].' '.
						   $params['country']['state_province'].' '.$params['country']['postal_code'];
 
	
		//create page 
		$data = array();
		$data['name'] = strlen($params['name']) ? $params['name'] : $params['employment_category']; 
		$data['cHandle'] = strlen($params['handle']) ? $params['handle'] : $txtHelper->sanitizeFileSystem($params['address']);  
		if(intval($params['uID'])) $data['uID'] = intval($params['uID']);
		if($params['summary']) $data['cDescription']= $params['summary']; 
		$listingPage = $parentPage->add( $listingPageType, $data);    
		
		//add attributes 
		//$address_data = array( 'address1' => '455 Sw Hamilton Ct', 'city'=>'Portland', 'state_province' =>'OR', 'country'=>'US', 'postal_code'=>'97239'); 
		if(is_array($params['address_data']) && count($params['address_data']))  
			$listingPage->setAttribute('address', $params['address_data'] );		
			
		if(is_array($params['employment_type']) && count($params['employment_type']))  
			$listingPage->setAttribute('employment_type', $params['employment_type']);
		elseif($params['employment_type']) 
			$listingPage->setAttribute('employment_type', explode(',',$params['employment_type']) );
			
		if(is_array($params['employment_locations']) && count($params['employment_locations']))  
			$listingPage->setAttribute('employment_locations', $params['employment_locations']);
		elseif($params['employment_locations-']) 
			$listingPage->setAttribute('employment_locations', explode(',',$params['employment_locations']) );
			
		if(is_array($params['minimum_education']) && count($params['minimum_education']))  
			$listingPage->setAttribute('minimum_education', $params['minimum_education']);
		elseif($params['minimum_education']) 
			$listingPage->setAttribute('minimum_education', explode(',',$params['minimum_education']) );
			
		if(floatval($params['salary'])) $listingPage->setAttribute('salary', floatval($params['salary'])); 
		if(intval($params['minimum_experience'])) $listingPage->setAttribute('minimum_experience', intval($params['minimum_experience']));   
		if(intval($params['job_id'])) $listingPage->setAttribute('job_id', intval($params['job_id']));
		if(strlen($params['employment_category'])) $listingPage->setAttribute('employment_category', $params['employment_category']); 
		if(intval($params['featured_listing'])) $listingPage->setAttribute('featured_listing', intval($params['featured_listing'])); 	 
		
		if( $params['description'] ){
			$contentBlockType = BlockType::getByHandle('content'); 
			$data['content']  = $params['description']; 
			
			
			//update existing composer enabled content block if available 
			$composerContentBlockFound=0; 
			$a = new Area($mainAreaName); 
			$areaBlocks = $a->getAreaBlocksArray($listingPage);
			
			foreach($areaBlocks as $block){  
				if( strtolower($block->getBlockTypeHandle())!='content' || 
					(method_exists($block,'isBlockIncludedInComposer') && !$block->isBlockIncludedInComposer()) )
						continue;   
				//get new version of block to modify 	
				$nvc = $listingPage->getVersionToModify();
				//$block = Block::getByID( $block->getBlockID(), $nvc, $a); 
				$nb = $block->duplicate($nvc);
				$block->deleteBlock();
				$block = &$nb;
				$block->update($data); 
				$composerContentBlockFound=1;
				break; 
			}
			//add new block if composer block isn't found 
			if(!$composerContentBlockFound) {  
				$descBlock = $listingPage->addBlock($contentBlockType, $mainAreaName, $data); 
				
				if( $descBlock && method_exists($descBlock,'updateBlockComposerSettings') ){ 
					$descBlock->updateBlockComposerSettings( array('bIncludeInComposer'=>true) ); 
					$descBlock->updateBlockName( t('Job Description') );  
				} 
			}
		} 

		
		//add attachments  
		if( is_array($params['file_paths']) ){
			Loader::model('file_set'); 
			Loader::library("file/importer"); 
			$fi = new FileImporter();  
			$listingFileSet = FileSet::getByName(t('Jobs Board File Attachments')); 
			$listing_fIDs=array();
			foreach($params['file_paths'] as $path){
				$listing_img = $fi->import( $path );
				if($params['uID']) $listing_img->getFile()->setUserID( $params['uID'] );  
				if(is_object($listingFileSet )) $listingFileSet->addFileToSet( $listing_img->getFileID() );
				$listing_fIDs[]= $listing_img->getFileID();
			} 
			if(is_array($listing_fIDs)) $listingPage->setAttribute('attachments', $listing_fIDs);	 
		}   
		
		$listingPage->refreshCache();
		
		return $listingPage; 
		
	} 
	
	static function getLocationString($resultPage){ 
		//work with defined locations select attribute or with an address attributes
		$employment_locations = $resultPage->getAttribute('employment_locations');
		$locationArray=array();  
		if( is_object($employment_locations) ){ 
			//backward compatibility hack 
			if(method_exists($employment_locations,'getOptions')) $locationsTmpArray = $employment_locations->getOptions();
			else $locationsTmpArray = array($employment_locations); 
			if(is_array($locationsTmpArray)) foreach($locationsTmpArray as $locationTmp){ 
				$locationArray[]= ( is_object($locationTmp) && method_exists($locationTmp,'__toString') ) ? $locationTmp->__toString() : $locationTmp; 
			}
			$location = join(' / ',$locationArray); 
		}else{
			$address = $resultPage->getAttribute('address');
			if( is_object($address) ){ 
				$city = $address->getCity();
				$state = $address->getStateProvince();
				$country = $country = $address->getFullCountry();  
				if(  strlen($city) ) $locationArray[]=$city; 
				if(  strlen($state) ) $locationArray[]=$state; 
				if(  strlen($country) ) $locationArray[]=$country; 
				$location = join(', ',$locationArray); 
			}
		}
		return $location; 
	}
	
	static function getAttributeValues($resultPage,$attrHandle){   
		$employment_type = $resultPage->getAttribute($attrHandle); 
		$employmentTypesArray = array(); 
		if( is_object($employment_type)){ 
			//backward compatibility hack 
			if(method_exists($employment_type,'getOptions')) $employmentTypesTmpArray = $employment_type->getOptions();
			else $employmentTypesTmpArray = array($employment_type);
			if(is_array($employmentTypesTmpArray)) foreach($employmentTypesTmpArray as $type){ 
				$employmentTypesArray[]= ( is_object($type) && method_exists($type,'__toString') ) ? $type->__toString() : $type;
			}
		}
		return $employmentTypesArray; 
	}
	
	static function getMainAreaName(){ return defined('JOBS_BOARD_LIST_MAIN_AREA_NAME') ? JOBS_BOARD_LIST_MAIN_AREA_NAME : 'Main'; }
	static function getSidebarAreaName(){ return defined('JOBS_BOARD_LIST_SIDEBAR_AREA_NAME') ? JOBS_BOARD_LIST_SIDEBAR_AREA_NAME : 'Sidebar'; } 
	static function getApplyPath(){ return defined('JOBS_BOARD_APPLICATION_PAGE_PATH') ? JOBS_BOARD_APPLICATION_PAGE_PATH : '/job_application';  }
	
}

?>