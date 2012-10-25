<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
	<section class="rightColumn area">
		<?php 
		$as = new Area('RightSidebar');
		$as->display($c);
		?>
	</section>