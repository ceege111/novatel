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
				console.log('breadcrumb offset: '+'-'+breadOffset+'px');
				if ( breadOffset > 200 ){
					$(".breadcrumb").css('margin-top','-'+breadOffset+'px').fadeIn();
				} else {
					$(".breadcrumb").find('i').removeClass('icon-white');
					$(".breadcrumb").addClass('default').fadeIn();
				}
			});
		</script>
	</div>