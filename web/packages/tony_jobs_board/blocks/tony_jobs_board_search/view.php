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
<div id="tonyJobsBoardSearch<?php echo intval($bID)?>">  
	
	<?php  if( $controller->mode!='results' ){ ?>
	
		<div class="table_cover">
            <div class="top_head">
			<form id="jobs_board_search_form_<?php echo intval($bID) ?>" method="get" action="<?php echo View::url( $searchActionPath ) ?>"> 
				<?php  if(strlen(trim($controller->searchTitle))){ ?>
					<h1><?php echo  $controller->searchTitle ?></h1>
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
					
					
				<?php  } ?> 
			
               		<div class="serach_words">
						<label><?php echo  $keyName . t(': '); ?></label>
						<?php echo  $fieldHTML ?>
					<?php  if($controller->showReset){ ?> 
						<input name="ResetBtn" type="button" value="<?php echo t('Reset') ?>" onclick="window.location='<?php echo str_replace("'",'',View::url( $c->getCollectionPath() ) ) ?>';return false;" /> 
					<?php  } ?>				
					<input name="Search" type="submit" value="<?php echo t('Search') ?>" /> 
				 </div>
			</form> 
		</div>
	
	<?php  } ?>
	
	
	
	
	<?php  if( $controller->mode!='search' ){ ?> 
	
			<?php  if( ($results_mode!='map' || $paginator->getTotalPages() > 1) && $controller->showSortBy){  
			
				$qStrParams = $_GET; 
				unset($qStrParams['resortQStr']); 
				unset($qStrParams['sortBy']); 
				?>
			<?php  } ?>
			
			<div id="jobsBoardSearchResults<?php echo intval($bID) ?>" class="table_inn" <?php  if($results_mode=='map') echo "style='display:none'"; ?> > 
                <div class="table_head">
                <?php  if( !intval($resultsCount) ){ ?>
			    <div>
					<?php echo '<h4>'.t('Sorry, no current jobs matched your search.').'</h4>';?><br />  <br />
					<?php echo t('Feel free to register with us and leave your information on file.') ?>
			    </div>
		       <?php  }else{ ?> 
                    <table id="myTable" width="100%" class="tablesorter">
                    <tr>
                            <th><? print t('Posted'); ?><!--<a id="sort-order" href="javascript:void(0);" class="sort"></a>--></th>
                            <th><? print t('Job Title'); ?></th>
                            <th><? print t('Location') ?></th>
                            <th><? print t('City'); ?></th>
                            <th><? print t('State'); ?></th>
                            <th><? print t('Zip'); ?></th>
                    </tr>
					<?php   
					//loop through all pages
					
					$txtHelper = Loader::helper('text');
					$numDescChars = ( defined('JOBS_BOARD_DESCRIPTION_CHARS') ) ? JOBS_BOARD_DESCRIPTION_CHARS : 255;
					$rowNum=0;
					if(is_array($resultPages)) foreach($resultPages as $resultPage){ 
					$resultPages = array_reverse($resultPages); 
					
					
						 if($rowNum%2 ==0){
		                 $trclass = 'rowOdd';
		                 }else {
			             $trclass = 'rowEven';  
		                 }
					
						$rowNum++; 
						
						$pageLinkTargetUrl = View::url($resultPage->getCollectionPath());   
						
						//$salary = $resultPage->getAttribute('salary'); 
						$job_id = $resultPage->getAttribute('job_id'); 
						$employment_category = trim( $resultPage->getAttribute('employment_category') );  
						$employmentTypesArray = TonyJobsBoard::getAttributeValues($resultPage,'employment_type'); 
						$location = TonyJobsBoard::getLocationString($resultPage);  
						$city = $resultPage->getAttribute('employment_city'); 
						$state = $resultPage->getAttribute('employment_state'); 
						$zipCode = $resultPage->getAttribute('zip_code'); 
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
							 <tr class="<? echo $trclass; ?>"> 
								<td>
	                                        <?php echo date( 'M  d', strtotime($resultPage->getCollectionDatePublic()) ) ?>
								</td>
                
                                <td>
                                   <a href="<?php echo  $pageLinkTargetUrl ?>"><?php echo htmlspecialchars($title );  ?></a> 
                                </td> 
                                
							    <td>
                                    <?php  if( $location ){ ?> 
                                            <?php echo htmlspecialchars($location );  ?>
                                    <?php  } ?> 
							    </td>
							    <td>
									<?php  if( $city ){ ?>
                                            <?php echo htmlspecialchars($city );  ?>
                                    <?php  } ?>	
							    </td>
							    <td>
									<?php  if( $state ){ ?>
                                            <?php echo htmlspecialchars($state );  ?>
                                    <?php  } ?>	
							    </td>
							    <td>
									<?php  if( $zipCode ){ ?>
                                            <?php echo htmlspecialchars($zipCode );  ?>
                                    <?php  } ?>	
							    </td>
							 </tr>
							<tr class="<? echo $trclass; ?>"> 
							<td colspan="6">
                                    <?php  if($description){ ?>								
                                    <?php echo  t('Position Overview: ').$txtHelper->shorten($description,$numDescChars); ?>
                                <?php  } ?>	
							</td>
							</tr>
                         <?php  } ?>
                    </table>
                </div>  
			</div>
			<div class="spacer"></div>
		<?php  } ?>	
		
	<div class="pagination_cvr">
		<?php  if($paginator && strlen($paginator->getPages())>0){ ?>	
			<div class="pagination">	
				 <span class="pageRight"><?php  echo $paginator->getNext(t('Next &raquo;'))?></span>
				 <span class="pageLeft"><?php  echo $paginator->getPrevious(t('&laquo; Previous'))?></span>
				 <?php  echo $paginator->getPages()?>				 
			</div>	
		<?php  } ?>		</div>
	<?php  } ?> 
</div>
<script src="https://rawgithub.com/padolsey/jQuery-Plugins/master/sortElements/jquery.sortElements.js"></script>
