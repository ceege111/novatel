<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<header class="pageTitle container">
	<div class="row banner">
	    <?php
	    $a = new Area('Header Banner');
	    if (($a->getTotalBlocksInArea($c) > 0) || ($c->isEditMode())) {
	        $a->setBlockLimit(1);
	        $a->display($c);
	    } else { ?>
	    	<h1 class="span12">
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
</div>

<div class="container rightSidebar">
	<section>
		<section class="centerColumn area">
			<?php 
			$as = new Area('Main');
			$as->display($c);
			?>
		</section>
		<section class="rightColumn area">
			<?php 
			$as = new Area('RightSidebar');
			$as->display($c);
			?>
		</section>
	</section>

<?php  $this->inc('elements/footer.php'); ?>