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
</header>

<div class="container threeColumn">
	<section>
		<section class="leftColumn">
			<?php 
			$a = new Area('LeftSidebar');
			$a->display($c);
			?>
		</section>
		<section class="centerColumn">
			<?php 
			$as = new Area('Main');
			$as->display($c);
			?>
		</section>
		<section class="rightColumn">
			<?php 
			$as = new Area('RightSidebar');
			$as->display($c);
			?>
		</section>
	</section>

<?php  $this->inc('elements/footer.php'); ?>