<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<header class="pageTitle container">
	<?php $this->inc('elements/content_banner.php'); ?>
	<?php $this->inc('elements/subnav.php'); ?>
</div>

<div class="container leftSidebar">

	<!-- Left Sidebar -->
	<?php $this->inc('elements/sidebar_left.php'); ?>

	<!-- Main Content -->
	<section class="centerColumn area">
		<?php 
		$as = new Area('Main');
		$as->display($c);
		?>
	</section>

<?php  $this->inc('elements/footer.php'); ?>