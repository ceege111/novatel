<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
$html = Loader::helper('html');
$v = View::getInstance();
?>
<div class="container">
	<div class="row homeFeatured area">
		<?php 
			$fc = new Area('Home Featured');
			$fc->display($c); 
		?>
	</div>
	<div class="row homeMain area">
		<?php 
			$as = new Area('Main');
			$as->display($c);
		?>
	</div>
</div>
<?php  $this->inc('elements/footer.php'); ?>