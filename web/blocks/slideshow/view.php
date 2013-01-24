<? defined('C5_EXECUTE') or die("Access Denied."); ?>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
	console.log('slideshow init...');
	$("#ccm-SlideshowBlock-display<?=intval($bID)?>").carousel();
};

//]]>
</script>

<div id="ccm-SlideshowBlock-display<?=intval($bID)?>" class="ccm-SlideshowBlock-display">
<div id="ccm-SlideshowBlock-heightSetter<?=intval($bID)?>" class="ccm-SlideshowBlock-heightSetter"></div>
<div class="ccm-SlideshowBlock-clear" ></div>
</div>
