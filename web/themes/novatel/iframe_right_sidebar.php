<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>

<!-- Header -->
<?php $this->inc('elements/header.php'); ?>

<header class="pageTitle container">
	<?php $this->inc('elements/content_banner.php'); ?>
	<?php $this->inc('elements/subnav.php'); ?>	
</header>

<div class="container rightSidebar">

	<!-- Main Content -->
	<section class="centerColumn area">
		<?php 
		$as = new Area('Main');
		$as->display($c);
		?>
		
		<?php 
			//check for iframe url 
			$url = ($page->getAttribute('iframe_url') != '') ? $page->getAttribute('iframe_url') : '';
		?>
		<!-- iframe goes here -->
		<?php if($url != ''):?>	
			<iframe src="<?php echo $url; ?>" seamless allowtransparency="0" frameborder="0" class="embeddedContent" id="iframeContent" width="1024" height="1200"></iframe>
		<?php endif; ?>
	</section>

	<!-- Right Sidebar -->
	<?php $this->inc('elements/sidebar_right.php'); ?>

<!-- Footer -->
<?php  $this->inc('elements/footer.php'); ?>