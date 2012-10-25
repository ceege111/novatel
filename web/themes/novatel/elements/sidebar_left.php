<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
	<section class="leftColumn area">
		<?php 
		$a = new Area('LeftSidebar');
		$a->display($c);
		?>
	</section>