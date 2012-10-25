<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>

<!-- Header -->
<?php $this->inc('elements/header.php'); ?>

<header class="pageTitle container">
	<?php $this->inc('elements/content_banner.php'); ?>
	<?php $this->inc('elements/subnav.php'); ?>	
</header>

<div class="container rightSidebar tables">
	
	<!-- Main Content -->
	<section class="centerColumn area">

		<!-- Tab Header -->
		<?php if ($c->isEditMode()): ?>
			<div class="editMode">
				<?php 
					$tabs = new Area('Table Tabs'); 
					$tabs->display($c);
				?>
			</div>		
		<?php else: ?>
			<ul class="tableTabs nav-header-tabs">
				<?php 
					$tabs = new Area('Table Tabs');
					$tabs->setBlockWrapperStart('<li class="tab">');
					$tabs->setBlockWrapperEnd('</li>');
					$tabs->display($c);
				?>
			</ul>
		<?php endif ?>

		<!-- Table Content -->
		<?php if ($c->isEditMode()): ?>
			<div class="editMode">
				<?php 
					$tableContent = new Area('Table Content'); 
					$tableContent->display($c);
				?>
			</div>	
		<?php else: ?>	
			<table class="table table-striped tableContent">
				<?php 
					$tableContent = new Area('Table Content');
					$tableContent->setBlockWrapperStart('<tr>');
					$tableContent->setBlockWrapperEnd('</tr>');
					$tableContent->display($c);
				?>
			</table>
		<?php endif ?>
		<?php 
		$as = new Area('Main');
		$as->display($c);
		?>
	</section>

	<!-- Right Sidebar -->
	<?php $this->inc('elements/sidebar_right.php'); ?>

<!-- Footer -->
<?php  $this->inc('elements/footer.php'); ?>