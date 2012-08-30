<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<div class="pageTitle">
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
</div>

<div class="container leftSidebar">
	<section>
		<section class="leftColumn area">
			<?php 
			$a = new Area('LeftSidebar');
			$a->display($c);
			?>
		</section>
		<section class="rightColumn area">
			<?php 
			$as = new Area('Main');
			$as->display($c);
			?>
		</section>
	</section>

<?php  $this->inc('elements/footer.php'); ?>