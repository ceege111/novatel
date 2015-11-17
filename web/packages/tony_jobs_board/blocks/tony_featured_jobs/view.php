<?php  
defined('C5_EXECUTE') or die(_("Access Denied."));  
$ih = Loader::helper('image'); 
$txtHelper = Loader::helper('text');

global $c; 
?>

<div id="jobs_board_featured_listings_wrap<?php echo intval($bID) ?>" class="jobs_board_featured_listings_wrap jobs_board_featured_mode_<?php echo ($controller->mode=='list')?'list':'slideshow' ?>">
    
<?php  if( !is_array($resultPages) || !count($resultPages) ){ ?>

	<?php  if( $c->isEditMode() ){ ?>
	<div style="margin:32px 0px;">
		<?php echo t('No Featured Jobs Found.') ?> 
	</div>
	<?php  } ?>
	
<?php  }else{ ?> 

	<?php  if($controller->mode=='list'){ 
		$listMode=1; 
		
	}elseif(count($resultPages)>1){ ?> 
        <var class="animationDurationMilli"><?php echo (intval($controller->animationDuration)>0)?intval($controller->animationDuration)*1000:5000 ?></var>
        <var class="animationType"><?php echo ($controller->animationType)? $controller->animationType : 'fade' ?></var>
	<?php  } ?>
	
	
	<?php  if(strlen(trim($controller->title))){ ?>
		<h3 class="noTopSpace" style="margin-bottom:12px;"><?php echo  $controller->title ?></h3>
	<?php  } ?>	

	<div id="jobs_board_featured_listings<?php echo intval($bID) ?>" class="jobs_board_featured_listings">
	
		<?php  foreach($resultPages as $resultPage){  
				
				$pageLinkTargetUrl = View::url($resultPage->getCollectionPath());   
				 
				//$salary = $resultPage->getAttribute('salary'); 
				$job_id = $resultPage->getAttribute('job_id'); 
				//$employment_category = trim( $resultPage->getAttribute('employment_category') );  
				//$employmentTypesArray = TonyJobsBoard::getAttributeValues($resultPage,'employment_type'); 
				$location = TonyJobsBoard::getLocationString($resultPage);  
				$title=$resultPage->getCollectionName(); 
				
				
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
							
				<div id="jobs-board-listing-<?php echo $resultPage->getCollectionID() ?>" class="jobs-board-listing" >   
				
					<div class="jobs-board-listing-info"> 
						
						<?php  if(!$listMode && count($resultPages)>1){ ?> 
						<div class="jobs_board_featured_arrows" >
							<a class="jobs_board_featured_listings_leftArrow_<?php echo intval($bID) ?> jobs_board_featured_listings_leftArrow">&lt;</a><!--
							--><a class="jobs_board_featured_listings_rightArrow_<?php echo intval($bID) ?> jobs_board_featured_listings_rightArrow">&gt;</a>
						</div>
						<?php  } ?>
						
						<div class="jobs-board-listing-title">
							<a href="<?php echo  $pageLinkTargetUrl ?>"><?php echo $title ?></a>&nbsp; 
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
					
					<div class="spacer"></div>	
				
				</div>	
	
		<?php  } ?>
			
	</div>

<?php  } ?> 

</div>