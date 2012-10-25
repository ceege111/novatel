<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
	<div class="subNav area">
			<?php 
				$ah = new Area("Sub Nav");
				$ah->display($c);
			?>
	</div>