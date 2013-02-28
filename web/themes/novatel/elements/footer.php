<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
	</div><!-- .container" -->
</div><!-- end .wrap -->
<div class="footerWrap">
	<footer>
		<div class="container">
			<div class="row footer area">
				<?php	
					$a = new GlobalArea('Footer');
					$a->display($c); 
				?>
			</div>
		</div>
	</footer>
</div>
	<!-- JavaScript at the bottom for fast page loading -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="<?php echo $this->getThemePath(); ?>/js/libs/jquery-1.7.2.min.js"><\/script>')</script>

	<script src="<?php echo $this->getThemePath(); ?>/js/libs/underscore-min.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/bootstrap/bootstrap.min.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/jquery.easing.1.3.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/jquery.jswipe.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/gridslider.js"></script>

	<script src="<?php echo $this->getThemePath(); ?>/js/plugins.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/script.js"></script>

	<!-- google-analytics -->
	<script>
		var _gaq=[['_setAccount','UA-38882020-1'],['_trackPageview']];
		(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
		g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
		s.parentNode.insertBefore(g,s)}(document,'script'));
	</script>
	<?php Loader::element('footer_required'); ?>

</body>
</html>