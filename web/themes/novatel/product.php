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
</header>

<div class="container rightSidebar products">
		<section class="centerColumn area">
			<div class="row">
				<div class="span12 productTitle">
					<?php 
						$aj = new Area('Product Title');
						$aj->display($c);
					?>
				</div>
			</div>

			<div class="row">
				<div class="span3 productImages">
					<?php 
						$ag = new Area('Product Images');
						$ag->display($c);
					?>
				</div>
				<div class="span6 productDescription">
					<?php 
						$ah = new Area('Product Description');
						$ah->display($c);
					?>
				</div>			
			</div>
			<div class="row">
				<?php 
					$as = new Area('Main');
					$as->display($c);
				?>	
			</div>

		</section>
		<section class="rightColumn area">
			<?php 
			$as = new Area('RightSidebar');
			$as->display($c);
			?>
		</section>

<?php  $this->inc('elements/footer.php'); ?>