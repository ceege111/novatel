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
	<div class="homeSocial">
		<div class="homeNews area">
			<?php 
				$ac = new Area("Main News");
				$ac->display($c);
			?>
		</div>
		<div class="icons">
			<div class="homeNews area">
				<?php 
					$aj = new Area("Main Social");
					$aj->display($c);
				?>
			</div>
<!-- 			<a href="#"><img src="<?php echo $this->getThemePath(); ?>/img/icons/email-icon.png"></a>
			<a href="#"><img src="<?php echo $this->getThemePath(); ?>/img/icons/facebook-icon.png"></a>
			<a href="#"><img src="<?php echo $this->getThemePath(); ?>/img/icons/twitter-icon.png"></a>
			<a href="#"><img src="<?php echo $this->getThemePath(); ?>/img/icons/rss-icon.png"></a> -->
		</div>
	</div>
	<div class="row homeMain area">
		<?php 
			$as = new Area('Main');
			$as->display($c);
		?>
	</div>
</div>
<?php  $this->inc('elements/footer.php'); ?>