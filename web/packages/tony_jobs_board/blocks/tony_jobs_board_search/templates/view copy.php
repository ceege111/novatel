<?php  
defined('C5_EXECUTE') or die(_("Access Denied."));  
$ih = Loader::helper('image'); 

global $c;

$mainAreaName = TonyJobsBoard::getMainAreaName(); 
$sidebarAreaName = TonyJobsBoard::getSidebarAreaName(); 

if (!defined('JOBS_BOARD_CURRENCY_SYMBOL'))  
	define('JOBS_BOARD_CURRENCY_SYMBOL','$');  

$targetPage = Page::getById(intval($controller->searchTargetCID)); 

if( !is_object($targetPage) || !$targetPage->getCollectionId() ) $targetPage = $c;

if(intval($controller->detailTargetCID)){
	$linkTargetPage = Page::getById($controller->detailTargetCID);
	if(is_object($linkTargetPage)){
		$linkTargetUrl=$linkTargetPage->getCollectionPath();	
		$linkTargetUrl = ( strlen($linkTargetUrl) ) ? $linkTargetUrl : '/?cID='.$linkTargetPage->getCollectionID().'&'; 
		if(!strstr($linkTargetUrl,'?')) $linkTargetUrl.='?';
	}
}


$shownAttrs = explode( ',' , $controller->shownAttributes );
$searchAttrs = explode( ',' , $controller->searchableAttributes );
$searchedCountriesList = explode( ',' , $controller->searchedCountries );
$labelAttrs = explode( ',' , $controller->shownLabels );
$defaultDetails=$controller->getDefaultDetails(); 
$defaultSearchDetails=$controller->getDefaultSearchableAttrs(); 
$results_mode=$controller->results_mode; 

$searchActionPath = ( strlen($targetPage->getCollectionPath()) ) ? $targetPage->getCollectionPath() : '/?cID='.$targetPage->getCollectionID().'&'; 

?>

    
<div id="tonyJobsBoardSearch<?php echo intval($bID)?>" class="tonyJobsBoardSearch">  
	
	<?php  if( $controller->mode!='results' ){ ?>
	
		<div class="jobsBoardSearchBox">
			<form id="jobs_board_search_form_<?php echo intval($bID) ?>" method="get" action="<?php echo View::url( $searchActionPath ) ?>"> 
			
				<input name="sortBy" type="hidden" value="<?php echo htmlentities( $sortBy, ENT_QUOTES, 'UTF-8') ?>" />
				
				<input name="cID" type="hidden" value="<?php echo intval($targetPage->getCollectionID()) ?>" />
			
				<?php  if(strlen(trim($controller->searchTitle))){ ?>
					<h3 class="noTopSpace" style="margin-bottom:12px;"><?php echo  $controller->searchTitle ?></h3>
				<?php  } ?>
				
				
				<?php  foreach( $searchAttrs as $attrHandle ){ 
					
						if( array_key_exists( $attrHandle, $defaultSearchDetails) ){
							$keyName=$defaultSearchDetails[$attrHandle];
							$fieldHTML='';
							switch ( $attrHandle ){ 								
								case 'Keywords': 	 
									$keywords = (!$requestData['keywords'] && !in_array( 'Tags', $searchAttrs)) ? $requestData['tag'] : $requestData['keywords'];
									$fieldHTML = '<input name="keywords" type="text" class="jobsBoardSearch-input-keywords ccm-input-text" value="' . htmlentities( $keywords, ENT_QUOTES, 'UTF-8') . '" />'; 
									break; 
									
								case 'cID': 	 
									$listingCID = (intval($requestData['listingCID'])>0) ? intval($requestData['listingCID']) : '' ;
									$fieldHTML = '<input name="listingCID" type="text" class="jobsBoardSearch-input-cID ccm-input-text" size="4" value="' . $listingCID . '" />'; 
									break; 									
									
								case 'Zip': 	 
									$zip = $requestData['zip'];
									$fieldHTML = '<input name="zip" type="text" class="jobsBoardSearch-input-zip ccm-input-text" value="' . htmlentities( $zip, ENT_QUOTES, 'UTF-8') . '" />'; 
									break; 
									
								case 'State': 	 
									$statesHelper = Loader::helper('lists/states_provinces'); 
									$countriesHelper = Loader::helper('lists/countries'); 
									$state = $requestData['state'];
									//$fieldHTML = '<input name="state" type="text" class="jobsBoardSearch-input-keywords ccm-input-text" value="' . htmlentities( $state, ENT_QUOTES, 'UTF-8') . '" />'; 
									$fieldHTML  = '<select name="state" class="jobsBoardSearch-input-state ccm-input-select">'; 
									$fieldHTML .= "<option value=\"\" />".t('All')."</option>";  
									foreach( $searchedCountriesList as $countryCode ){ 
										if(strlen($countryCode)) $searchableStates = $statesHelper->getStateProvinceArray($countryCode); 
										if(is_array($searchableStates)) foreach( $searchableStates as $stateCode=>$stateName ){ 
											$selected = ($state==$stateCode) ? 'selected="selected"' : '';
											$fieldHTML .= "<option value=\"" . htmlentities( $stateCode, ENT_QUOTES, 'UTF-8') . '" '.$selected.' />'.$stateName.'</option>';
										} 
									} 
									$fieldHTML .= '</select>';	
									break;
									
								case 'City': 	 
									$city = $requestData['city'];
									$fieldHTML = '<input name="city" type="text" class="jobsBoardSearch-input-city ccm-input-text" value="' . htmlentities( $cuty, ENT_QUOTES, 'UTF-8') . '" />'; 
									break;									
									
								/*
								case 'Date':
									$fieldHTML = $form->text('date_from', array('style' => 'width: 86px')); 
									$fieldHTML .=  ' '.t('to').' ';
									$fieldHTML .=  $form->text('date_to', array('style' => 'width: 86px'));
									break; 
								*/ 
							}  
						}else{  
							
							$attrKey = CollectionAttributeKey::getByHandle( $attrHandle );
							if( !is_object($attrKey) ) continue; 
							
							$keyName = $attrKey->getAttributeKeyName(); 
							$keyType = $attrKey->getAttributeType();
							$akID = $attrKey->getAttributeKeyID();
							

							//couldn't manage to get this information through the attribute interface 
							$db = Loader::db();
							$attributeDBData = $db->GetRow('select akSelectAllowMultipleValues as allowMultiple, akSelectAllowOtherValues as allowOther from atSelectSettings where akID = ?', $akID );
							
							//salary only show from value 
							if( $attrHandle=='salary' ){ 
								$salaryTiers=array(10,20,30,40,50,60,70,80,90,100,120,150); 
								ob_start(); ?> 
								<select name="akID[<?php echo $akID ?>][from]">
									<option value=""><?php echo t('Any') ?></option>
									<?php  foreach($salaryTiers as $salaryTier){ ?>
										<option value="<?php echo $salaryTier*1000 ?>" <?php echo ($salaryTier*1000==$requestData['akID'][$akID]['from'])?'selected':'' ?>><?php echo JOBS_BOARD_CURRENCY_SYMBOL . $salaryTier*1000 ?>+</option>
									<?php  } ?>
								</select><?php  
								$fieldHTML = ob_get_contents();  
								ob_end_clean(); 
								
							//years experience only show from value 
							}elseif( $attrHandle=='salary' ){ 
								$experienceYears=array(1,2,3,4,5,6,7,8,9,10,12,15); 
								ob_start(); ?> 
								<select name="akID[<?php echo $akID ?>][from]">
									<option value=""><?php echo t('Any') ?></option>
									<?php  foreach($experienceYears as $experienceYear){ ?>
										<option value="<?php echo $experienceYear ?>" <?php echo ($experienceYear==$requestData['akID'][$akID]['from'])?'selected':'' ?>><?php echo $experienceYears ?>+</option>
									<?php  } ?>
								</select><?php  
								$fieldHTML = ob_get_contents();  
								ob_end_clean(); 
								
							//handle job id numbers as a single value, not a range	
							}elseif($attrHandle=='job_id'){ 
								$job_id_val = intval($requestData['akID'][$akID]['value']) ? intval($requestData['akID'][$akID]['value']) : '';
								$fieldHTML = '<input name="akID['.$akID.'][value]" type="text" value="'.$job_id_val.'" />';
								
							//handle select fields differently	
							}elseif(is_object($keyType) && $keyType->getAttributeTypeHandle()=='select' && $attributeDBData['allowMultiple'] ){ 
							
								//$fieldHTML = str_replace('** None',t('All'),$attrKey->render('form', false, true)); 
								//$fieldHTML = preg_replace( '/\<a([^>]*)\>([^<]*)\<\/a\>/i', '', $fieldHTML); 
								 
								ob_start(); 
								$opts = $attrKey->getController()->getOptions()->getOptions(); 
								foreach($opts as $opt){ 
									$val = $opt->getSelectAttributeOptionID(); 
									$checked = ($requestData['akID'] && 
												$requestData['akID'][$akID] && 
												in_array($val, $requestData['akID'][$akID]['atSelectOptionID']) ) ? 'checked="checked"' : ''; 
									?>
                                    <div>
									<input type="checkbox" class="ccm-input-checkbox" name="akID[<?php echo $akID ?>][atSelectOptionID][]" value="<?php echo $val ?>" <?php echo $checked ?> /> <?php echo $opt->getSelectAttributeOptionValue() ?>
                                    </div>
								<?php  }   
								$fieldHTML = ob_get_contents();  
								ob_end_clean();  
									 
							}else $fieldHTML = $attrKey->render('search', false, true);
					
					} ?>
					
					<div class="jobsBoardListingSearch_ak_wrap_<?php echo $attrHandle ?> fieldPair">
						<label><?php echo  $keyName . t(': '); ?></label>
						<div class="fieldCol"><?php echo  $fieldHTML ?></div>
						<div class="spacer"></div>
					</div>
					
				<?php  } ?> 
				
				<div class="searchButtonWrap">
					<?php  if($controller->showReset){ ?> 
						<input name="ResetBtn" type="button" value="<?php echo t('Reset') ?>" onclick="window.location='<?php echo str_replace("'",'',View::url( $c->getCollectionPath() ) ) ?>';return false;" /> 
					<?php  } ?>				
					<input name="Search" type="submit" value="<?php echo t('Search') ?> &raquo;" /> 
				</div>
				
				<div class="spacer"></div>				
				
			</form> 
			
		</div>
	
	<?php  } ?>
	
	
	
	
	<?php  if( $controller->mode!='search' ){ ?> 
	
		<?php  if( !intval($resultsCount) ){ ?>
			<div style="margin:32px; text-align:center">
				<?php echo t('No results match your query.') ?><br />  <br />
				<?php echo t('Please try another search.') ?>
			</div>
		<?php  }else{ ?>  
			
		
			<?php  if( ($results_mode!='map' || $paginator->getTotalPages() > 1) && $controller->showSortBy){  
			
				$qStrParams = $_GET; 
				unset($qStrParams['resortQStr']); 
				unset($qStrParams['sortBy']); 
				?>
			
				<div class="jobsBoardSearch_orderByWrap"> 
					<form id="jobsBoardSearchSortingForm<?php echo intval($bID) ?>" method="get" action="<?php echo View::url($page_base) ?>"> 
						
						<input name="resortQStr" type="hidden" value="<?php echo htmlentities( serialize($qStrParams), ENT_QUOTES, 'UTF-8') ?>" /> 
						
						<?php echo  t('Sort By: ') ?> 
						<select id="jobsBoardSearch<?php echo intval($bID) ?>_sortBy" name="sortBy" onchange="$('#jobsBoardSearchSortingForm<?php echo intval($bID) ?>').submit()" >  
							<?php  
							$sortableOpts = $controller->getDefaultSortableOpts(); 
							foreach( $sortableOpts as $key=>$display ){  ?> 
								<option value="<?php echo $key ?>" <?php echo ($sortBy==$key)?'selected="selected"':'' ?>><?php echo $display ?></option>
							<?php  } ?>
						</select>
						
						<noscript>
						<input type="submit" name="submit" value="submit"  />
						</noscript>
							
					</form>
				</div>
			
			<?php  } ?>
			
		
			<h3>
				<?php 
				$searchTerm=(strlen($_GET['tag']))?$_GET['tag']:$_GET['keywords'];
				?>
				
				<?php echo $resultsCount ?> <?php echo  ($resultsCount!=1)?t('Results'):t('Result')?> 
				<?php  if( (strlen($_GET['tag']) && in_array('Tags',$searchAttrs) ) || (strlen($_GET['keywords']) && in_array('Keywords',$searchAttrs) )){ ?> 
					<?php echo  t('Match the') ?> <?php echo (strlen($_GET['tag']))?t('Tag'):t('Keywords') ?> "<?php echo htmlentities( $searchTerm, ENT_QUOTES, 'UTF-8')?>"
				<?php  }else{ ?> 
					<?php echo  t('Found') ?>
				<?php  } ?>
			</h3>
			
			<div class="spacer"></div>
		
			<div id="jobsBoardSearchResults<?php echo intval($bID) ?>" class="jobsBoardSearchResults" <?php  if($results_mode=='map') echo "style='display:none'"; ?> > 
					<?php   
					//loop through all pages
					
					$txtHelper = Loader::helper('text');
					$numDescChars = ( defined('JOBS_BOARD_DESCRIPTION_CHARS') ) ? JOBS_BOARD_DESCRIPTION_CHARS : 255;
					$rowNum=0;
					
					if(is_array($resultPages)) foreach($resultPages as $resultPage){ 
					
						$rowNum++; 
						
						$pageLinkTargetUrl = View::url($resultPage->getCollectionPath());   
						
						//$salary = $resultPage->getAttribute('salary'); 
						$job_id = $resultPage->getAttribute('job_id'); 
						$employment_category = trim( $resultPage->getAttribute('employment_category') );  
						$employmentTypesArray = TonyJobsBoard::getAttributeValues($resultPage,'employment_type'); 
						$location = TonyJobsBoard::getLocationString($resultPage);  
						$title=$resultPage->getCollectionName(); 
										
						$description = trim($resultPage->getCollectionDescription());  
						if( !strlen($description) ){
							ob_start();
							$ah = new Area( $mainAreaName ); 
							$ah->display($resultPage);
							$pageDesc = ob_get_contents(); 
							ob_end_clean();
							$description = strip_tags($pageDesc);
						}else{
							$description = htmlspecialchars($description); 	
						}
						?> 				
							<div id="jobs-board-search-listing-<?php echo $resultPage->getCollectionID() ?>" class="jobs-board-search-listing <?php echo ($rowNum%2)?'jobs-board-listing-odd':'jobs-board-listing-even'?>" > 
                
                                <div class="jobs-board-listing-title">
                                    <h3><a href="<?php echo  $pageLinkTargetUrl ?>"><?php echo htmlspecialchars($title );  ?></a></h3> 
                                </div>  
                                
                                <div class="jobs-board-listing-data"> 
                                    <?php  if( $location ){ ?> 
                                        <span class="jobs-board-listing-location">  
                                            <?php echo htmlspecialchars($location );  ?>
                                        </span> 
                                    <?php  } ?> 
                                
									<?php  if( $employment_category ){ ?>
                                        <span class="jobs-board-listing-category">
											<?php echo t('Category:') ?> 
                                            <?php echo htmlspecialchars($employment_category );  ?>&nbsp;&nbsp; 
                                        </span>
                                    <?php  } ?>	
                                
									<?php  if( count($employmentTypesArray) ){ ?>
                                        <span class="jobs-board-listing-type"> 
                                            <?php echo htmlspecialchars(join(', ',$employmentTypesArray) );  ?>
                                        </span>
                                    <?php  } ?> 
                                    
									<?php  if(floatval($salary)){ ?>
                                        <span class="jobs-board-listing-salary"> <?php echo JOBS_BOARD_CURRENCY_SYMBOL ?><?php echo number_format($salary) ?></span> 
                                    <?php  } ?>
                                </div> 

                                <?php  if($description){ ?>								
                                <div class="jobs-board-listing-description">
                                    <?php echo  $txtHelper->shorten($description,$numDescChars); ?>
                                </div>
                                <?php  } ?>										 
                            
                                <div class="jobs-board-listing-details">
                                    <span class="jobs-board-listing-date">
                                        <?php echo t('Posted').' '.date( 'F j, Y', strtotime($resultPage->getCollectionDatePublic()) ) ?>
                                    </span>
                                    
                                    <?php  if( $job_id ){ ?>
                                        <span class="jobs-board-listing-job-id"><?php echo t('Job #') ?> <?php echo $job_id ?></span> 
                                    <?php  } ?>
                                </div>
                                
                                <div class="listing-more-info">
                                    <a href="<?php echo View::url( TonyJobsBoard::getApplyPath() ).'?job_cID='.$resultPage->getCollectionID() ?>" ><?php echo t('Apply')?></a> &nbsp;|&nbsp; 
                                    
                                    <a href="<?php echo  $pageLinkTargetUrl ?>"><?php echo t('More Info')?> &raquo;</a>
                                </div> 
							
							</div>	
								
					<?php  } ?>
					  
			</div>
			<div class="spacer"></div>
		<?php  } ?>	
		
	
		<?php  if($paginator && strlen($paginator->getPages())>0){ ?>	
			<div class="pagination">	
				 <span class="pageRight"><?php  echo $paginator->getNext(t('Next &raquo;'))?></span>
				 <span class="pageLeft"><?php  echo $paginator->getPrevious(t('&laquo; Previous'))?></span>
				 <?php  echo $paginator->getPages()?>				 
			</div>	
		<?php  } ?>		
	
	
	<?php  } ?> 
	
</div>