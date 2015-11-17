<?php  
defined('C5_EXECUTE') or die(_("Access Denied."));
global $c; 
$cp = new Permissions($c);

if( !class_exists(TonyJobsBoard) ) 
	throw new Exception(t('TonyJobsBoard class & listings controller not found. Clear cache and reinstall.')); 


$mainAreaName = TonyJobsBoard::getMainAreaName(); 
$sidebarAreaName = TonyJobsBoard::getSidebarAreaName(); 

?>

<?php  if( $cp->canWrite() || $cp->canAdmin() ){ ?>
<script> 
<?php  AddressAttributeTypeController::action_load_provinces_js(); ?>
</script>
<?php  } ?>

<div id="jobs_board_listings_search_page">

	<div id="jobs_board_listings_search_page_sidebar">
	
		<?php  
		$a = new Area( $sidebarAreaName ); 
		$a->display($c);
		?> 
	
	</div>

	<div id="jobs_board_listings_search_page_body">

		<?php  
		$a = new Area( $mainAreaName );
		$a->display($c);
		?>

	</div>
	
	<div class="spacer"></div>
	
</div>