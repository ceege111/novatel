<?php   
defined('C5_EXECUTE') or die(_("Access Denied.")); 

$uh = Loader::helper('concrete/urls'); 

if( !function_exists('jobsBoardSearch_entities') ){ 
	function jobsBoardSearch_entities($v){ 
		$textHelper = Loader::helper('text');
		if(  method_exists($textHelper,'entities') )
			 return $textHelper->entities($v);  
		else return htmlentities($v, ENT_QUOTES, 'UTF-8'); 
	} 
} 


$sortableByArray = explode( ',', $controller->sortByOpts ); 
?>

<style>
#ccm-block-fields { font-size:13px; line-height:18px; } 
#ccm-block-fields h2 { font-size:16px; line-height:21px; font-weight:bold; margin-bottom:8px; padding-bottom:0; }
</style>


<div id="ccm-jobs-board-search-edit-pane" class="ccm-jobs-board-search-edit-pane"> 


		<div class="ccm-block-field-group">
			<h2><?php  echo t('Title')?></h2> 
			
			<input name="title" type="text" value="<?php echo  jobsBoardSearch_entities($controller->title)  ?>"  /> 
		</div>   
		

		<div class="ccm-block-field-group">
			<h2><?php  echo t('Mode') ?></h2>
			
			<div> 
				<input name="mode" type="radio" value="slideshow" <?php echo ($controller->mode=='slideshow' || !$controller->mode)?'checked="checked"':'' ?> /> <?php echo t('Slideshow')?><br />
				<input name="mode" type="radio" value="list" <?php echo ($controller->mode=='list')?'checked="checked"':'' ?> /> <?php echo t('List') ?><br /> 
			</div>
		</div>
		
		<div id="ccm-featured-listings-animation-settings" style="display:<?php echo ($controller->mode!='list')?'block':'none'?>" class="ccm-block-field-group">
			<h2><?php  echo t('Animation Settings') ?></h2>
			
			<div style="margin-bottom:4px;">
				<?php echo t('Transition:') ?> 
				<?php   
				$form = Loader::helper('form');
				$animationTypes = array("fade" => "Fade", "scrollDown" => "Scroll Down", "scrollUp" => "Scroll Up", "scrollRight" => "Scroll Right", "shuffle" => "Shuffle", "cover" => "Cover", "zoom" => "Zoom", "blindZ" => "Blindz");
				echo $form->select('animationType', $animationTypes, $controller->animationType);
				?>
			</div>			
			 
			<div>
				<?php echo t('Duration:') ?> <input name="animationDuration" type="text" value="<?php  echo intval($controller->animationDuration) ?>" size="3"> <?php echo t('seconds')?>
			</div>

		</div>

	
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
					<?php  $form = Loader::helper('form/page_selector');
					if ($controller->cParentID>0) {
						print $form->selectPage('cParentIDValue', intval($controller->cParentID));
					} else {
						print $form->selectPage('cParentIDValue');
					}
					?>
				</div> 
				
				<div style="margin-top:8px">
				<input name="featuredOnly" type="checkbox" value="1" <?php echo ($controller->featuredOnly)?'checked="checked"':'' ?> />
				<?php echo t('Require "Featured Listings" page attribute') ?>
				</div>							
			
			</div> 
		</div>	
		


		<div class="ccm-block-field-group">
			<h2><?php  echo t('Results') ?></h2> 
			<div style="margin-bottom:4px;">  
				<?php echo  t('Max number to show: ') ?><input name="page_size" type="text" value="<?php echo  intval($controller->page_size)?intval($controller->page_size):10  ?>" size="3" /><br /> 
			</div>  
            <?php  
            $orderBy=$controller->displayOrder; 
            $orderByOpts=$controller->getDefaultSortableOpts();
            ?>
			<div> 
			<?php echo  t('Sort by:') ?>
            <select name="displayOrder"> 
                <?php  foreach($orderByOpts as $key=>$display){  ?>
					 <option value="<?php echo $key ?>" <?php echo ($orderBy==$key)?'selected':''?> ><?php echo $display ?></option> 
                <?php  } ?> 
            </select>			
			</div>
			
		</div>	 
		
       
</div> 