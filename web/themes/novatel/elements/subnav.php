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
				var offset = $(".banner").height() - 20;
				$(".breadcrumb").css('margin-top',offset+'px').fadeIn();
			});
		</script>
	</div>