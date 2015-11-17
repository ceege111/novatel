<?php 
defined('C5_EXECUTE') or die(_("Access Denied.")); 

$dashboardHelper = Loader::helper('concrete/dashboard'); 
?>

<style>
#ccm-search-form-table.jobs-board-results {width:900px;}
.preConcrete5point5 #ccm-search-form-table { width:100%; }
#ccm-search-form-table .ccm-search-form-advanced-col { width:250px; } 
#ccm-search-form-table .jobs-board-results-col { width:450px; }  
#ccm-search-form-table #ccm-search-advanced-results-wrapper { overflow-x:auto; width:600px; }
.preConcrete5point5 #ccm-search-form-table .jobs-board-results-col, 
.preConcrete5point5 #ccm-search-form-table #ccm-search-advanced-results-wrapper { width:auto; }
#ccm-search-form-table #ccm-search-advanced-results-wrapper table { width:99%; }
#ccm-search-form-table #ccm-search-advanced-results-wrapper #ccm-list-wrapper { overflow-x:auto; }
#ccm-search-form-table.jobs-board-results label { text-align:left; float:none; display:block; }
#ccm-search-form-table.jobs-board-results input, 
#ccm-search-form-table.jobs-board-results textarea, 
#ccm-search-form-table.jobs-board-results select, 
#ccm-search-form-table.jobs-board-results .uneditable-input { width:100px; }
#ccm-search-form-table.jobs-board-results input[type="checkbox"], 
#ccm-search-form-table.jobs-board-results input[type="radio"] { width:auto; }
#ccm-search-form-table.jobs-board-results table th, 
#ccm-search-form-table.jobs-board-results table td { padding:4px !important; } 
#ccm-search-form-table.jobs-board-results table .checkboxCol { width:20px; vertical-align:middle !important; }
#ccm-search-form-table.jobs-board-results table .checkboxCol input { width:auto; }
#addNewListingWrap { margin-bottom:10px; overflow:hidden; } 
#jobs-board-dashboard-bottomLinks { padding-top:8px; font-size:12px; }
#jobs-board-dashboard-bottomLinks .right { text-align:right; }
</style>

<?php  if( method_exists( $dashboardHelper, 'getDashboardPaneHeaderWrapper') ){  
	echo $dashboardHelper->getDashboardPaneHeaderWrapper(t('Search Jobs Board Listings'),t("Search & Display Jobs Board Listings")); 
}else{ ?> 
    <h1><span><?php echo t('Search Jobs Board Listings')?></span></h1> 
    <div class="ccm-dashboard-inner preConcrete5point5" > 
<?php  } ?>  

    <table id="ccm-search-form-table" class="jobs-board-results" >
        <tr>
            <td valign="top" class="ccm-search-form-advanced-col">
                <?php  Loader::packageElement('dashboard/listing_search_form_advanced', 'tony_jobs_board', array( 'listingsController' => $this->controller, 'searchInstance' => $searchInstance, 'searchRequest' => $searchRequest, 'searchType' => 'DASHBOARD')); ?>
            </td>		
            <td valign="top" class="jobs-board-results-col" >	
                
                <div id="ccm-search-advanced-results-wrapper">
                
                        <div id="ccm-<?php echo $searchInstance?>-search-results">
                    
                        <?php  Loader::packageElement('dashboard/listing_search_results', 'tony_jobs_board', array( 'listingsController' => $this->controller, 'searchInstance' => $searchInstance, 'searchType' => 'DASHBOARD', 'pages' => $pages, 'pageList' => $pageList, 'pagination' => $pagination)); ?>
                    
                    </div>
                
                </div> 
            
            </td>	
        </tr>
        <tr id="jobs-board-dashboard-bottomLinks">
            <td valign="top" > 
				<?php echo t('Search Indexing:') ?>&nbsp; 
                <a href="<?php echo $automatedJobsURL ?>"><?php echo t('Run')?></a> &nbsp;|&nbsp; 
                <a href="<?php echo $indexingURL ?>"><?php echo t('Configure')?></a> 
            </td>		
            <td valign="top" class="right" >
            	<?php  if($jobApplcationsResultsURL){ ?> 	  
               		<a href="<?php echo $jobApplcationsResultsURL ?>"><?php echo t('View Recent Job Applications &raquo;') ?></a>
                <?php  } ?>  
            </td>	
        </tr>
    </table> 	
    
<?php  if( method_exists( $dashboardHelper, 'getDashboardPaneFooterWrapper') ){ 
	echo $dashboardHelper->getDashboardPaneFooterWrapper(); 
}else{ ?>  
    </div> 
<?php  } ?> 