<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<header class="pageTitle container">
    <?php
	    $a = new Area('Header Banner');
	    if (($a->getTotalBlocksInArea($c) > 0) || ($c->isEditMode())) {
	    	echo '<div class="row banner">';
	        $a->setBlockLimit(1);
	        $a->display($c);
	    } else { ?>
			<div class="row defaultBanner banner">
		    	<h1 class="defaultTitle span12">
					<?php
						$page = Page::getCurrentPage();
						echo $page->getCollectionName();
					?>
				</h1>
	    <?php } ?>
	</div>
	<div class="subNav area">
		<?php 
			$ah = new Area("Sub Nav");
			$ah->display($c);
		?>
	</div>
</header>

<div class="container oneColumn">
	<section class="column area">
		<?php 
		$as = new Area('Main');
		$as->display($c);
		?>
	</section>

<?php  $this->inc('elements/footer.php'); ?>