<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); 
$page = Page::getCurrentPage();
?>

<header class="pageTitle container">
	<?php $this->inc('elements/content_banner.php'); ?>
	<?php $this->inc('elements/subnav.php'); ?>
</header>

<div class="container oneColumn">

	<!-- Main Content -->
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

	<!-- Secondary Main Content (After iframe) -->
	<section class="column area">
		<?php 
		$as = new Area('Secondary Main');
		$as->display($c);
		?>
	</section>

<!-- Footer -->
<?php  $this->inc('elements/footer.php'); ?>