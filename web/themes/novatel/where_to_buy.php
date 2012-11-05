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

		<!-- main content -->
		<div>
			<?php 
				$as = new Area('Main');
				$as->display($c);
			?>
		</div>

		<!-- Tab Header -->
		<?php if ($c->isEditMode()): ?>
			<div class="editMode">
				<?php 
					$tabs = new Area('Table Tabs'); 
					$tabs->display($c);
				?>
			</div>		
			<br><br>
		<?php else: ?>
			<ul class="tableTabs nav-header-tabs">
				<?php 
					$tabs = new Area('Table Tabs');
					$tabs->setBlockWrapperStart('<li class="tab"><a href="#" onclick="return false;">');
					$tabs->setBlockWrapperEnd('</a></li>');
					$tabs->display($c);
				?>
			</ul>
		<?php endif ?>

		<!-- Table Content -->
		<?php if ($c->isEditMode()): ?>
			<div class="editMode">
				<?php 
					$tableHeader = new Area('Table Header'); 
					$tableHeader->display($c);
				?>
				<br>

				<!-- Edit Section 1 -->
				<?php 
					$tableSection1 = new Area('Table Section 1'); 
					$tableSection1->display($c);
				?>
				<br><br>

				<!-- Edit Section 2 -->
				<?php 
					$tableSection2 = new Area('Table Section 2'); 
					$tableSection2->display($c);
				?>
				<br><br>

				<!-- Edit Section 3 -->
				<?php 
					$tableSection3 = new Area('Table Section 3'); 
					$tableSection3->display($c);
				?>
				<br><br>						

				<!-- Edit Section 4 -->
				<?php 
					$tableSection4 = new Area('Table Section 4'); 
					$tableSection4->display($c);
				?>
				<br><br>

				<!-- Edit Section 5 -->
				<?php 
					$tableSection5 = new Area('Table Section 5'); 
					$tableSection5->display($c);
				?>
				<br><br>
				
			</div>	
		<?php else: ?>	
			<table class="table table-striped tableHeader tableContent">
				<?php 
					$tableHeader = new Area('Table Header');
					$tableHeader->setBlockWrapperStart('<tr class="tableHeader">');
					$tableHeader->setBlockWrapperEnd('</tr>');
					$tableHeader->display($c);
				?>

				<!-- Display Section 1 -->
				<?php 
					$tableSection1= new Area('Table Section 1');
					if ($tableSection1->getTotalBlocksInArea($c) > 0){
						$tableSection1->setBlockWrapperStart('<tr class="tableSection1"><td>');
						$tableSection1->setBlockWrapperEnd('</td></tr>');
						$tableSection1->display($c);
					}
				?>

				<!-- Display Section 2 -->
				<?php 
					$tableSection2= new Area('Table Section 2');
					if ($tableSection2->getTotalBlocksInArea($c) > 0){
						$tableSection2->setBlockWrapperStart('<tr class="tableSection2" style="display:none;"><td>');
						$tableSection2->setBlockWrapperEnd('</td></tr>');
						$tableSection2->display($c);
					}
				?>

				<!-- Display Section 3 -->
				<?php 
					$tableSection3= new Area('Table Section 3');
					if ($tableSection3->getTotalBlocksInArea($c) > 0){
						$tableSection3->setBlockWrapperStart('<tr class="tableSection3" style="display:none;"><td>');
						$tableSection3->setBlockWrapperEnd('</td></tr>');
						$tableSection3->display($c);
					}
				?>

				<!-- Display Section 4 -->
				<?php 
					$tableSection4= new Area('Table Section 4');
					if ($tableSection4->getTotalBlocksInArea($c) > 0){
						$tableSection4->setBlockWrapperStart('<tr class="tableSection4" style="display:none;"><td>');
						$tableSection4->setBlockWrapperEnd('</td></tr>');
						$tableSection4->display($c);
					}
				?>

				<!-- Display Section 5 -->
				<?php 
					$tableSection5= new Area('Table Section 5');
					if ($tableSection5->getTotalBlocksInArea($c) > 0){
						$tableSection5->setBlockWrapperStart('<tr class="tableSection5" style="display:none;"><td>');
						$tableSection5->setBlockWrapperEnd('</td></tr>');
						$tableSection5->display($c);
					}
				?>

			</table>
		<?php endif ?>

	</section>

	<!-- Right Sidebar -->
	<?php $this->inc('elements/sidebar_right.php'); ?>

<!-- Footer -->
<?php  $this->inc('elements/footer.php'); ?>