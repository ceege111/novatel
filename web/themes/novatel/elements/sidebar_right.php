<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
	<section class="rightColumn area">
		<?php 
		$as = new Area('RightSidebar');
		$as->setBlockWrapperStart('<div class="gray-block sidebar-block">');
		$as->setBlockWrapperEnd('</div>');	
		$as->display($c);
		?>
		<script type="text/javascript">
			$(document).ready(function(){
				// if($("html").hasClass('lt-ie9')){
					var rightColumn = $('.product .rightColumn .sidebar-block:first-child');
					rightColumn.removeClass('gray-block');
					rightColumn.css('margin','0').css('padding','0').css('width','250px');
				// }
			});
		</script>
	</section>