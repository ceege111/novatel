<? defined('C5_EXECUTE') or die("Access Denied."); ?>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
	$("#ccm-SlideshowBlock-display<?=intval($bID)?>").gridSlider({autoplay_enable:true,autoplay_interval:6,scroll_axis:'x',loop:true,ctrl_arrows:false,ctrl_pag:true,ctrl_always_visible:true});
});

//]]>
</script>

<div class="ccm-SlideshowBlock-display slide">
	<div id="ccm-SlideshowBlock-display<?=intval($bID)?>" class="";>
		<?php $first = true; ?>
		<?php foreach($images as $imgInfo) {
		$f = File::getByID($imgInfo['fID']);
		$fp = new Permissions($f);
		if ($fp->canRead()) {?>
			<div <?php if($first){ $first = false; } else { echo(" style='display:none;' "); } ?>>
					<?php if($imgInfo['url]'] != ''){ ?>
						<a href="<?=$imgInfo['url']?>"><img alt="" src="<?=$f->getRelativePath()?>"></a>
					<?php } else { ?>
						<img alt="" src="<?=$f->getRelativePath()?>">
					<?php } ?>
			</div>
		<? }
		} ?>
	</div>
	<div id="ccm-SlideshowBlock-heightSetter<?=intval($bID)?>" class="ccm-SlideshowBlock-heightSetter"></div>
	<div class="ccm-SlideshowBlock-clear" ></div>
</div>
