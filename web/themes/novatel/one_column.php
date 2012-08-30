<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<header class="pageTitle">
	<h1>
	<?php
		$page = Page::getCurrentPage();
		echo $page->getCollectionName();
	?>
	</h1>
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