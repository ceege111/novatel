<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));

global $c;
?>

<style>
#jobs_board_application_header { margin-bottom:24px; } 
#jobs_board_application_header var { display:none; }
</style>

<div id="jobs_board_application"> 

	<div id="jobs_board_application_header">
		<?php  if( is_object($jobPage) && $jobPage->getCollectionID() ){ ?> 	
            <h1><?php echo t('Job Application:') ?> <?php echo htmlspecialchars($jobPage->getCollectionName()) ?></h1> 
            <div id="job_board_application_details"> 
            
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
                <a href="<?php echo View::url( $jobPage->getCollectionPath() )?>"><?php echo t('View Job Details &raquo;') ?></a>
                
                
                <?php  /* Note that in order to auto-populate the form block with job data, the job_???_name values must match the form field name */ ?> 
            	<var id="job_url_value"><?php echo BASE_URL.View::url( $jobPage->getCollectionPath() )?></var> 
                <var id="job_url_key_name" class=""><?php echo t('Job URL') ?></var>
            
            	<var id="job_id_value"><?php echo $job_id?></var>
                <var id="job_id_key_name" class=""><?php echo t('Job ID') ?></var>
                
            	<var id="job_title_value"><?php echo $jobPage->getCollectionName() ?></var>
                <var id="job_title_key_name" class=""><?php echo t('Job Title') ?></var> 
                               
                
            </div>
        <?php  }else{ ?> 
            <h1><?php echo t('Job Application:') ?></h1> 
        <?php  } ?> 
    </div>

	
    <div id="jobs_board_application_body">
		<?php  
        $a = new Area($mainAreaName);
        $a->display($c);
        ?>
    </div>

</div>