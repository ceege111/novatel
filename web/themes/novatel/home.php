<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
$html = Loader::helper('html');
$v = View::getInstance();
?>

<div class="homeFeatured">
	<?php 
		$fc = new Area('Home Featured');
		$fc->display($c); 
	?>
</div>
<div class="homeMain">
	<?php 
		$as = new Area('Main');
		$as->display($c);
	?>
</div>

<?php  $this->inc('elements/footer.php'); ?>