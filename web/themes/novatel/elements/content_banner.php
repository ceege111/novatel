<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
    <?php
	    $a = new Area('Header Banner');
	    if (($a->getTotalBlocksInArea($c) > 0) || ($c->isEditMode())) {
	    	echo '<div class="row banner">';
	        $a->setBlockLimit(1);
	        $a->display($c); ?>
        	<script type="text/javascript">
				$(document).ready(function(){
					$(".row.banner img").each(function(){
						console.log("banner image alt: "+$(this).attr('alt'));
						if ($(this).attr('alt')){
							var bannerTitle = $("<h1>"+$(this).attr('alt')+"</h1>")
							$(bannerTitle).addClass('bannerTitle').css('display','none');
							$(this).parent().append(bannerTitle);
							$(bannerTitle).delay(100).fadeIn();
						}
					});
				});
			</script>
	    <?php
	    } else { ?>
			<div class="row defaultBanner banner">
		    	<h1 class="defaultTitle">
					<?php
						$page = Page::getCurrentPage();
						echo $page->getCollectionName();
					?>
				</h1>
	    <?php } ?>
	</div>