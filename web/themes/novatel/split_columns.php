<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<header class="pageTitle container">
	<?php $this->inc('elements/content_banner.php'); ?>
	<?php $this->inc('elements/subnav.php'); ?>
</header>

<div class="container oneColumn">
	<section class="column area row">
		<div class="span6 gray-block">
			<?php 
			$as = new Area('Main');
			$as->display($c);
			?>		
		</div>
		<div class="span6 gray-block" style="margin-left: 10px;">
			<?php 
			$af = new Area('Main Right');
			$af->display($c);
			?>
		</div>

	</section>

<?php  $this->inc('elements/footer.php'); ?>