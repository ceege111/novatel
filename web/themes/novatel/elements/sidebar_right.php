<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
	<section class="rightColumn area">
		<?php 
		$as = new Area('RightSidebar');
		$as->setBlockWrapperStart('<div class="sidebar-block">');
		$as->setBlockWrapperEnd('</div>');	
		$as->display($c);
		?>
	</section>