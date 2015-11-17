<?php   
defined('C5_EXECUTE') or die(_("Access Denied.")); 

$uh = Loader::helper('concrete/urls'); 
$statesHelper = Loader::helper('lists/states_provinces'); 
$countriesHelper = Loader::helper('lists/countries'); 

$attrColsArray = explode( ',', $controller->shownAttributes );

if( !function_exists('jobsBoardSearch_entities') ){ 
	function jobsBoardSearch_entities($v){ 
		$textHelper = Loader::helper('text');
		if(  method_exists($textHelper,'entities') )
			 return $textHelper->entities($v);  
		else return htmlentities($v, ENT_QUOTES, 'UTF-8'); 
	} 
} 

$sortableByArray = explode( ',', $controller->sortByOpts ); 
$searchedCountriesList = explode( ',', $controller->searchedCountries ); 

?>  

<style>
#ccm-block-fields { font-size:13px; line-height:18px; } 
#ccm-block-fields h2 { font-size:16px; line-height:21px; font-weight:bold; margin-bottom:8px; padding-bottom:0; }
#ccm-jobs-board-search-edit-pane #jobsBoardSearchAvailableAttributes, 
#ccm-jobs-board-search-edit-pane #jobsBoardSearch_searchAttributes { margin-top:8px; }
#ccm-jobs-board-search-edit-pane .jobsBoardSearch_detailRow { margin-bottom: 4px; cursor:move; border:1px solid #ddd; padding:3px 6px; background:#f6f6f6 }
#ccm-jobs-board-search-edit-pane .jobsBoardSearch_detailRow a.fileDetails_removeRow { float:right; font-size:11px; line-height:13px; padding-top:2px; }
#ccm-jobs-board-search-edit-pane .jobsBoardSearch_detailRow .fileDetails_withLabel { padding-right:16px; font-size:11px; line-height:13px; color:#666; float:right  }
#ccm-jobs-board-search-edit-pane #jobsBoardSearch_manualSelectWrap { padding-top:4px; padding-bottom:8px; }
#ccm-jobs-board-search-edit-pane #jobsBoardSearch_qStrSelectWrap { padding-top:4px; }
#ccm-jobs-board-search-edit-pane .jobsBoardSearch_colorPickerWrap { float:left; padding-right:16px; }
#ccm-jobs-board-search-edit-pane .jobsBoardSearch_setListLimitHeight { /*overflow: hidden; overflow-x: auto; overflow-y: auto; height:auto; max-height:50px; border:1px solid #ccc; padding:2px;*/ }
#ccm-jobs-board-search-edit-pane #jobsBoardSearch_countryWrap { display:none; padding-top:16px; }
</style>


<div id="ccm-jobs-board-search-edit-pane" class="ccm-jobs-board-search-edit-pane"> 

    <ul id="ccm-blockEditPane-tabs" class="ccm-dialog-tabs"> 
        <li class="ccm-nav-active"><a id="ccm-blockEditPane-tab-search"  href="javascript:void(0);"><?php   echo t('Search Options')?></a></li> 
        <li class="" id="ccm-blockEditPane-tab-resultsWrap" style="display:<?php echo ($controller->mode!='search')?'block':'none' ?>"><a id="ccm-blockEditPane-tab-results"  href="javascript:void(0);"><?php   echo t('Results')?></a></li> 
    </ul>

 	<div id="ccm-blockEditPane-search" class="ccm-blockEditPane">
	
		<input id="jobsBoardSearch_removeLinkText" name="removeLinkText" type="hidden" value="<?php echo  jobsBoardSearch_entities( t('Remove') ) ?>" /> 
		<input id="jobsBoardSearch_withLabelText" name="withLabelText" type="hidden" value="<?php echo  jobsBoardSearch_entities( t('Show Label') ) ?>" />  
	 
		<div class="ccm-block-field-group">
			<h2><?php  echo t('Mode') ?></h2>
			
			<div> 
				<input name="mode" type="radio" value="full" <?php echo ($controller->mode=='full' || !$controller->mode)?'checked="checked"':'' ?> /> <?php echo t('Search Box and Results')?><br />
				<input name="mode" type="radio" value="search" <?php echo ($controller->mode=='search')?'checked="checked"':'' ?> /> <?php echo t('Search Box Only') ?><br />
				<input name="mode" type="radio" value="results" <?php echo ($controller->mode=='results')?'checked="checked"':'' ?> /> <?php echo t('Results Only')?>
			</div>
			<div class="ccm-note">
				<?php echo t("If you include the search form and the results as different blocks, the results block must at least include all of the search block's searchable properties.") ?>
			</div>
		</div> 
		
		
		<div class="ccm-block-field-group">
			<h2><?php  echo t('Searchable Properties')?></h2>
			
			<select id="jobsBoardSearch_searchAttrsSelector" name="jobsBoardSearch_searchAttrsSelector">
				<option value="none"><?php echo t('------') ?></option>
				
				<?php  foreach( $controller->getDefaultSearchableAttrs() as $key=>$val ){ ?>
					<option value="<?php echo  $key ?>"><?php echo $val ?></option>
				<?php  } ?>
				 
				<?php   
				$attribs = CollectionAttributeKey::getList(); 
				foreach( $attribs as $attrib ){ 
					$attrHandle=$attrib->getAttributeKeyHandle();
					$attrType=$attrib->getAttributeType();
					$typeHandle=$attrType->getAttributeTypeHandle(); 
					if( !$attrib->isAttributeKeySearchable() ) continue; 
					if( strtolower(trim($attrHandle))=='tag' || strtolower(trim($attrHandle))=='tags' ) continue;
					?>
					<option value="<?php echo $attrHandle ?>" ><?php echo  $attrib->getAttributeKeyName() ?></option>
				<?php  } ?>
			</select> 
			<input name="add" type="button" value="<?php echo t('+')?>" onclick="jobsBoardSearchEdit.addSearchAttribute()" />         
		
			<div id="jobsBoardSearch_searchAttributes">
				
			</div>   
			
			<script>
			<?php    
			$searchAttrs = explode( ',' , $controller->searchableAttributes ); 
			$defaultSearchDetails=$controller->getDefaultSearchableAttrs(); 
			
			foreach( $searchAttrs as $attrHandle ){ 
				if( array_key_exists( $attrHandle, $defaultSearchDetails) ){
					$keyName=$defaultSearchDetails[$attrHandle]; 
				}else{
					$attrKey = CollectionAttributeKey::getByHandle( $attrHandle );
					if( !is_object($attrKey) ) continue; 
					$keyName = $attrKey->getAttributeKeyName(); 
				}			
				?> 
				var attrObj=new Object();
				attrObj.handle = "<?php echo $attrHandle ?>";
				attrObj.nm = "<?php echo str_replace('"','',$keyName ) ?>"; 
				jobsBoardSearchEdit.existingSearchAttrObjs.push( attrObj ); 
			<?php  } ?>
			jobsBoardSearchEdit.addExistingSearchAttrs(); 
			</script>
			
			<div id="jobsBoardSearch_countryWrap"> 
				<?php echo  t('Which countries do you want to display states/provinces for?') ?><br />
				<?php  foreach($statesHelper->getAll() as $country=>$states){ ?>
					<input type="checkbox" name="searchedCountries[]" value="<?php echo $country?>" <?php echo (in_array($country,$searchedCountriesList))?'checked="checked"':'' ?> />&nbsp;<?php echo $country?>&nbsp; 
				<?php  } ?>
			</div>
			
			
			<div style="margin-top:16px;">
			<input name="showReset" type="checkbox" value="1" <?php echo (intval($controller->showReset))?'checked':'' ?> /> 
			<?php echo t('Show reset button') ?>
			</div>			
		</div> 	 
		
		
		<div id="jobsBoardSearch_searchOptions" style="display:<?php echo ($controller->mode!='results')?'block':'none'?>" class="ccm-blockEditPane">
		
			<div class="ccm-block-field-group">
				<h2><?php  echo t('Search Options')?></h2> 
				
				<?php echo  t('Search Box Title: ') ?><input name="searchTitle" type="text" value="<?php echo  jobsBoardSearch_entities($controller->searchTitle)  ?>"  />
				
				<div style="margin-top:8px;">
				<input id="showSearchTarget" onchange="jobsBoardSearchEdit.showSearchTarget(this);" name="showSearchTarget" type="checkbox" value="1" <?php echo (intval($controller->searchTargetCID))?'checked':'' ?> /> 
				<?php echo t('Use a seperate page to display search results') ?>
				</div>
				
				<div id="ccm-jobs-board-search-page-target-wrap" <?php  if (!intval($controller->searchTargetCID)){ ?> style="display: none"<?php   } ?>>
					<?php   
					$formPgSelector = Loader::helper('form/page_selector');
					echo $formPgSelector->selectPage('searchTargetCID_tmp', $controller->searchTargetCID, 'jobsBoardSearchEdit.setPageSelectorTarget'); 
					?>
					<input id="jobs_board_searchTargetCID"  name="searchTargetCID" type="hidden" value="<?php echo $controller->searchTargetCID ?>" />
					<div class="ccm-note"><?php echo t("The target page have another instance of this block, with results shown.")?></div>
					  
				</div> 
			</div> 
		
		</div>		 
		
	</div>		
			
	
	
	<div id="ccm-blockEditPane-results" style="display:none" class="ccm-blockEditPane">  
	
	
	
		<div class="ccm-block-field-group">
			<h2><?php  echo t('Included Listings') ?></h2> 
			<div>  
			
				<?php echo t('Display pages that are located')?>:<br/> 
				<div>
					<input type="radio" name="cParentID" id="cEverywhereField" value="0" <?php  if ($controller->cParentID == 0) { ?> checked<?php  } ?> />
					<?php echo t('everywhere')?>
					
					&nbsp;&nbsp; 
					<input type="radio" name="cParentID" id="cThisPageField" value="-1" <?php  if($controller->cParentID==-1){ ?> checked<?php  } ?>>
					<?php echo t('beneath this page')?>
					
					&nbsp;&nbsp;
					<input type="radio" name="cParentID" id="cOtherField" value="OTHER" <?php  if($controller->cParentID>0){ ?> checked<?php  } ?>>
					<?php echo t('beneath another page')?> 
				</div>
					
				<div id="ccm-jobs-board-included-other" <?php  if (intval($controller->cParentID)<1) { ?> style="display: none" <?php  } ?>>			
					<?php  
						$form = Loader::helper('form/page_selector'); 
						print $form->selectPage('cParentIDValue_tmp', intval($controller->cParentID), 'jobsBoardSearchEdit.setPageSelectorTarget');  
					?>
					<input id="jobs_board_cParentIDValue" name="cParentIDValue" type="hidden" value="<?php echo intval($controller->cParentID) ?>" />
				</div> 			
			
			</div> 
		</div>	
		


		<div class="ccm-block-field-group">
			<h2><?php  echo t('Results') ?></h2> 
			<div>  
				<?php echo  t('Page Size: ') ?><input name="page_size" type="text" value="<?php echo  intval($controller->page_size)?intval($controller->page_size):10  ?>" size="3" /><br /> 
			</div> 
		</div>
		
		<div class="ccm-block-field-group">
			<h2><?php  echo t('Listing Titles') ?></h2>
			
			<div>  
				<input name="addressAsTitle" type="radio" value="0" <?php echo (!$controller->addressAsTitle)?'checked="checked"':'' ?> />
				<?php echo t('Use Page Title') ?><br />
				
				<input name="addressAsTitle" type="radio" value="1" <?php echo ($controller->addressAsTitle)?'checked="checked"':'' ?> />
				<?php echo t('Use Listing Address (if available)') ?>
			</div>
		</div>		
		
        <div class="ccm-block-field-group">
            <h2><?php  echo t('Sort By')?></h2>  
            <?php  
            $orderBy=$controller->displayOrder; 
            $orderByOpts=$controller->getDefaultSortableOpts();
            ?>
            <select name="displayOrder"> 
                <?php  foreach($orderByOpts as $key=>$display){  ?>
					 <option value="<?php echo $key ?>" <?php echo ($orderBy==$key)?'selected':''?> ><?php echo $display ?></option> 
                <?php  } ?> 
            </select>		 
			<input name="showSortBy" type="checkbox" value="1" <?php echo (intval($controller->showSortBy))?'checked':'' ?> onchange="jobsBoardSearchEdit.showSortByAttrs(this)" onclick="jobsBoardSearchEdit.showSortByAttrs(this)" /> <?php echo  t('Show') ?>  
        </div>	 
		
		
	</div>  
       
</div> 