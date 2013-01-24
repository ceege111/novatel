<? defined('C5_EXECUTE') or die("Access Denied."); ?>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
	console.log('slideshow init...');
	imgInfos = {slides:[
	<? 
	$notFirst=1;
	foreach($images as $imgInfo) {
		$f = File::getByID($imgInfo['fID']);
		$fp = new Permissions($f);
		if ($fp->canRead()) {
			if(!$notFirst) echo ',';
			$notFirst=0
			?>
			{
				fileName:"<?=$f->getFileName()?>",
				fullFilePath:"<?=$f->getRelativePath()?>",
				duration:<?=intval($imgInfo['duration'])?>,
				fadeDuration:<?=intval($imgInfo['fadeDuration'])?>,		
				url:"<?=$imgInfo['url']?>",
				groupSet:<?=intval($imgInfo['groupSet'])?>,
				imgHeight:<?=intval($imgInfo['imgHeight'])?>
			}
		<? }
		} ?>
	]};
	$("#ccm-SlideshowBlock-display<?=intval($bID)?>").carousel();
});

//]]>
</script>

<div id="ccm-SlideshowBlock-display<?=intval($bID)?>" class="ccm-SlideshowBlock-display">
<div id="ccm-SlideshowBlock-heightSetter<?=intval($bID)?>" class="ccm-SlideshowBlock-heightSetter"></div>
<div class="ccm-SlideshowBlock-clear" ></div>
</div>
