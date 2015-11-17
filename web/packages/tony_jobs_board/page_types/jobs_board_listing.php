<?php  
defined('C5_EXECUTE') or die(_("Access Denied.")); 
global $c;
$cp = new Permissions($c);
$ih = Loader::helper('image'); 

$multiFilePackage = Package::getByHandle('tony_multi_file_attribute');  
$attachmentsMultiFileVal = $c->getAttribute('attachments');  
if( is_object($multiFilePackage) && class_exists('MultipleFilesAttributeTypeController') ){ 
	$jobAttachmentFiles = MultipleFilesAttributeTypeController::getFiles($attachmentsMultiFileVal); 
}elseif( class_exists('JobsBoardMultipleFilesAttributeTypeController') ){
	$jobAttachmentFiles = JobsBoardMultipleFilesAttributeTypeController::getFiles($attachmentsMultiFileVal);  
}else{
	$jobAttachmentFiles = array(); 
}

	
?>

<?php  if( $cp->canWrite() || $cp->canAdmin() ){ ?>
<script> 
<?php  AddressAttributeTypeController::action_load_provinces_js(); ?>
</script>
<?php  } ?>

<div id="jobs_board_listing_page">
<form action="<?php echo View::url(TonyJobsBoard::getApplyPath()) ?>?job_cID=<?php echo $c->getCollectionID()?>" method="post" >
    		<input class="button" type="submit" name="Apply" value="<?php echo t('Apply to Job') ?> &raquo;" />
            <input type="hidden" name="job_cID" value="<?php echo $c->getCollectionID() ?>" />
    	</form>

	<div id="jobs_board_listing_page_sidebar">
    
    	<h2><?php echo t('Job Details') ?></h2>
    
		<?php  if($job_id){ ?>
            <div id="job_board_listing_job_id" class="job_board_listing_detail">
				<label><?php echo t('Job ID:') ?></label>
                <?php echo $job_id?>
            </div> 
        <?php  } ?> 
        
		<?php  if($employment_category){ ?>
            <div id="job_board_listing_category" class="job_board_listing_detail">
				<label><?php echo t('Category:') ?></label> 
                <?php echo htmlspecialchars($employment_category );  ?>
            </div> 
        <?php  } ?> 
        
		<?php  if( count($employmentTypesArray) ){ ?>
            <div id="job_board_listing_type" class="job_board_listing_detail">
				<label><?php echo t('Type:') ?></label> 
                <?php echo htmlspecialchars(join(', ',$employmentTypesArray) );  ?>
            </div>
        <?php  } ?> 
    
    	<?php  if($location){ ?> 
        	<div id="job_board_listing_location" class="job_board_listing_detail">
            	<label><?php echo t('Location:') ?></label>  
                 <?php echo htmlspecialchars($location);  ?>
            </div>
        <?php  } ?>
        
		<?php  if(floatval($salary)){ ?>
            <div id="job_board_listing_salary" class="job_board_listing_detail">
            	<label><?php echo t('Salary: ') ?></label>  
                <?php echo (defined('JOBS_BOARD_CURRENCY_SYMBOL'))  ? JOBS_BOARD_CURRENCY_SYMBOL  : '$' ?><?php echo number_format($salary)  ?>
            </div>
        <?php  } ?>
        
		<?php  if(floatval($minimum_experience)){ ?>
            <div id="job_board_listing_experience" class="job_board_listing_detail">
            	<label><?php echo t('Minimum Experience: ') ?></label>  
                <?php echo $minimum_experience ?> <?php echo t('Years') ?>
            </div>
        <?php  } ?>
        
		<?php  if( count($educationArray) ){ ?>
            <div id="job_board_listing_education" class="job_board_listing_detail">
				<label><?php echo t('Minimum Education:') ?></label> 
				<?php echo htmlspecialchars( join(', ',$educationArray) ) ?> 
            </div>
        <?php  } ?>  
        
        <div id="job_board_listing_date" class="job_board_listing_detail">
            <label><?php echo t('Posted:') ?></label> 
            <?php echo  date( 'F j, Y', strtotime($c->getCollectionDatePublic()) ) ?>
        </div> 
        
        <?php  if( is_array($jobAttachmentFiles) && count($jobAttachmentFiles) ){ ?> 
        	<div id="job_board_listing_attachments" class="job_board_listing_detail"> 
        	<label><?php echo t('Attachments: ') ?></label> 
            <ul> 
				<?php   foreach($jobAttachmentFiles as $file){      
                    $fv = $file->getApprovedVersion();   
                    ?> 			
                    <li>  
                        <a href="<?php echo $fv->getRelativePath()  ?>" target="_blank"><?php echo  $fv->getTitle() ?></a>
                    </li> 	 
                <?php  } ?>  
            </ul> 
            </div>  
        <?php  }  ?> 
	
		<?php  
		$a = new Area( $sidebarAreaName ); 
		$a->display($c);
		?> 
	
	</div>
    
    <div id="jobs_board_listing_page_body">
        
        <div id="listing_options"> 
            <a href="<?php echo View::url( $cParent->getCollectionPath() ) ?>">&laquo; <?php echo t('Back to Job Listings') ?></a>
        </div>
        
        <h1><?php echo htmlspecialchars( $c->getCollectionName() ) ?></h1> 
        
        <div id="listing_description"> 
            <?php  
            $a = new Area($mainAreaName);
            $a->display($c);
            ?>
        </div> 

	</div>
	
    <div class="spacer"></div>
    <div class="apply-btn-btm">
    <form action="<?php echo View::url(TonyJobsBoard::getApplyPath()) ?>?job_cID=<?php echo $c->getCollectionID()?>" method="post" >
    		<input class="button" type="submit" name="Apply" value="<?php echo t('Apply to Job') ?> &raquo;" />
            <input type="hidden" name="job_cID" value="<?php echo $c->getCollectionID() ?>" />
    	</form>
    </div>
    
</div>