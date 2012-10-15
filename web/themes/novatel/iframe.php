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

<div class="container oneColumn">
	<section class="column area">
		<?php 
		$as = new Area('Main');
		$as->display($c);
		?>
	</section>

	<?php 
		//check for iframe url 
		$url = ($page->getAttribute('iframe_url') != '') ? $page->getAttribute('iframe_url') : '';
	?>
	<!-- iframe goes here -->
	<?php if($url != ''):?>	
		<iframe src="<?php echo $url; ?>" seamless allowtransparency="0" frameborder="0" class="embeddedContent" id="iframeContent" width="1024" height="1200"></iframe>
	<?php endif; ?>

	<section class="column area">
		<?php 
		$as = new Area('Secondary Main');
		$as->display($c);
		?>
	</section>

<?php  $this->inc('elements/footer.php'); ?>