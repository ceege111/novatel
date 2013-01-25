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
				var rightColumn = $('section.rightColumn.area div.gray-block:first-child');
				rightColumn.addClass('no-block');
			});
		</script>
	</section>