<?php 
defined('C5_EXECUTE') or die("Access Denied.");
?>
    <?php
	    $a = new Area('Header Banner');
	    if (($a->getTotalBlocksInArea($c) > 0) || ($c->isEditMode())) {
	    	echo '<div class="row banner">';
	        $a->setBlockLimit(1);
	        $a->display($c);
	    } else { ?>
			<div class="row defaultBanner banner">
		    	<h1 class="defaultTitle span12">
					<?php
						$page = Page::getCurrentPage();
						echo $page->getCollectionName();
					?>
				</h1>
	    <?php } ?>
	</div>