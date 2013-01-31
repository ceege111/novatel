<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
	<div class="subNav area">
			<?php 
				$ah = new Area("Sub Nav");
				$ah->display($c);
			?>
		<script type="text/javascript">
			$(document).ready(function(){
				var breadOffset = $(".banner").find('img').first().attr('height');
				breadOffset = parseInt(breadOffset);
				breadOffset -= 25;
				console.log('breadcrumb offset: '+'-'+breadOffset+'px');
				if ( breadOffset > 200 ){
					$(".breadcrumb").css('margin-top','-'+breadOffset+'px').css('margin-left','0').fadeIn();
				} else {
					$(".breadcrumb").find('i').removeClass('icon-white');
					$(".breadcrumb").addClass('default').fadeIn();
				}
			});
		</script>
	</div>