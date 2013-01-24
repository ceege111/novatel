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
	var container = $("#ccm-SlideshowBlock-display<?=intval($bID)?>");
	_.each(imgInfos.slides, function(item,key,list){
		console.log("adding slide to dom...");
		console.log(item);
		console.log(key);
		console.log(list);
		var slide = $("<div class='item'></div>");
		slide.addClass('slider-group-'+item.groupSet);
		var link = $("<a></a>");
		if (item.url == ''){
			item.url = '#';
		}
		link.attr('href',item.url);
		if (key == 0){
			slide.addClass('active');
		}
		var image = $("<img>");
		image.attr('src',item.fullFilePath);
		link.append(image);
		container.append(link);
		if (key == list.length-1){
			console.log("starting carousel...");
			$("#ccm-SlideshowBlock-display<?=intval($bID)?>").gridSlider({autoplay_enable:true,autoplay_interval:6,scroll_axis:'x',loop:true,ctrl_arrows:false,ctrl_pag:true,ctrl_always_visible:true});
		}
	});
});

//]]>
</script>

<div class="ccm-SlideshowBlock-display carousel slide">
	<div id="ccm-SlideshowBlock-display<?=intval($bID)?>" class="carousel-inner">
		<?php 

		?>
	</div>
	<div id="ccm-SlideshowBlock-heightSetter<?=intval($bID)?>" class="ccm-SlideshowBlock-heightSetter"></div>
	<div class="ccm-SlideshowBlock-clear" ></div>
</div>
