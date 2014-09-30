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


	<!-- JavaScript at the bottom for fast page loading 

-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type='text/javascript' src='http://code.jquery.com/jquery-1.8.3.js'></script>
<script>var $j = jQuery.noConflict(true);</script>
<script>window.jQuery || document.write('<script src="<?php echo $this->getThemePath(); ?>/js/libs/jquery-1.7.2.min.js"><\/script>')</script>
  <link rel="stylesheet" type="text/css" href="//yandex.st/jquery/fancybox/1.3.4/jquery.fancybox.css">
  <script type='text/javascript' src="//yandex.st/jquery/fancybox/1.3.4/jquery.fancybox.min.js"></script>
  <script type='text/javascript' src="http://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.0/jquery.cookie.js"></script>
	<script type='text/javascript'>//<![CDATA[ 
	$(function(){
	function openFancybox() {
	    setTimeout(function () {
	        $('#ecommercepopup').trigger('click');
	    }, 500);
	};
	$(document).ready(function () {
	    var visited = $.cookie('visited');
	    if (visited == 'yes') {
	    return false; // second page load, cookie active
	    } else {
	        openFancybox(); // first page load, launch fancybox
	    }
	    $.cookie('visited', 'yes', {
	        expires: 1 // the number of days cookie  will be effective
	    });
	    $("#ecommercepopup").click(function () {
	        $.fancybox({
	            href: this.href,
	            type: "iframe",
							margin: "0",
							width: "82",
							height: "64",
							margin: "0",
							padding: "0"
	        });
	        return false;
	    });
	});
	});//]]>  
	</script>




	<script src="<?php echo $this->getThemePath(); ?>/js/libs/underscore-min.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/bootstrap/bootstrap.min.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/jquery.easing.1.3.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/gridslider.js"></script>

	<script src="<?php echo $this->getThemePath(); ?>/js/plugins.js"></script>
	<script src="<?php echo $this->getThemePath(); ?>/js/script.js"></script>

	<!-- google-analytics -->
	<script>
		var _gaq=[['_setAccount','UA-27888487-1'],['_trackPageview']];
		(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
		g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
		s.parentNode.insertBefore(g,s)}(document,'script'));
	</script>

<?php loader::element('footer_required'); ?>
</body>
</html>
