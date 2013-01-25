<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<header class="pageTitle container">
	<?php $this->inc('elements/content_banner.php'); ?>
	<?php $this->inc('elements/subnav.php'); ?>
</header>

<div class="container oneColumn">
	<section class="column area row">
		<div class="span5">
			<?php 
			$as = new Area('Main');
			$as->display($c);
			?>		
		</div>
		<div class="span5" style="margin-left: 5px;">
			<?php 
			$as = new Area('Main Right');
			$as->display($c);
			?>
		</div>

	</section>

<?php  $this->inc('elements/footer.php'); ?>