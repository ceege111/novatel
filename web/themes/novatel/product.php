<?php 
	defined('C5_EXECUTE') or die("Access Denied.");
	$this->inc('elements/header.php'); 
	$ih = Loader::helper('image'); //<--uncomment this line if displaying image attributes (see below)

	$page = Page::getCurrentPage();
	$img = $page->getAttribute('product_image');

	if ($img){
		$thumb = $ih->getThumbnail($img, 250, 9999, false);
		$fullsize = $img->getRelativePath();
	}
?>

<header class="pageTitle container">
	<?php $this->inc('elements/content_banner.php'); ?>
	<?php $this->inc('elements/subnav.php'); ?>
</header>

<div class="container rightSidebar product">
	<section class="centerColumn area">
		<div class="row">
			<div class="span8 offset1 productTitle">
				<?php 
					$aj = new Area('Product Title');
					$aj->display($c);
				?>
			</div>
		</div>

		<div class="row">
			<div class="span3 offset1 productImages">
				<!-- TODO: If no images found load the image from Custom Attributes -->
				<?php  
					$ag = new Area("Product Images");
				?>
				<?php if ($ag->getTotalBlocksInArea($c) == 0 && isset($thumb)): ?>
					<img src="<?php echo $thumb->src ?>" width="<?php echo $thumb->width ?>" height="<?php echo $thumb->height ?>" alt="" data-fullimage="<?php echo $fullsize; ?>"/>
				<?php else: ?>
				<div class="productImages">
					<?php 
						$ag->display($c);
					?>
				</div>
				<?php endif; ?>
				<div class="productMoreImages">
					<?php 
						$ak = new Area("Product More Images");
						$ak->display($c);
					?>
				</div>
				<script type="text/javascript">
					$(document).ready(function(){
						$(".productImages img, .productMoreImages img").each(function(){
							$(this).css('cursor','pointer');
							$(this).click(function(){
								var imageModal = $("<div></div>");
								$(imageModal).html("<div class=\"modal-header\"><button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button></div><div><img src=\""+$(this).data('fullimage')+"\"></div>");
								$(imageModal).addClass('modal hide fade');
								$(this).parent().append(imageModal);
								$(imageModal).modal({backdrop: true});
								$(imageModal).on('hidden', function(){
									$(this).remove();
									$('div.modal-backdrop').remove();
								})
							});
						});
					});
				</script>
				<!-- social plugins go here -->
				<div class="socialButtons">
				    <a href="https://twitter.com/intent/tweet?url=http%3A%2F%2Fwww.webinterfacelab.com%2Fsnippets%2Fshare-buttons&amp;via=WebInterfaceLab&amp;text=CSS3%20snippet%3A%20share%20buttons" class="share-btn" target="_blank">
				      <span class="share-btn-action share-btn-tweet">Tweet</span>
				      <span id="twitterCount" class="share-btn-count">0</span>
				    </a>
				    <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.webinterfacelab.com%2Fsnippets%2Fshare-buttons" class="share-btn" target="_blank">
				      <span class="share-btn-action share-btn-like">Like</span>
				      <span id="facebookCount" class="share-btn-count">0</span>
				    </a>
				    <script type="text/javascript">
				    	$(document).ready(function(){
				    		var currentUrl = document.URL;
				    		console.log("current URL: "+currentUrl);
				    	});
				    </script>
			    </div>
			</div>
			<div class="span5 productDescription">
				<?php 
					$ah = new Area('Product Description');
					$ah->display($c);
				?>
			</div>			
		</div>


		<?php //Product Details Tabs: When in edit mode we display these as a table, in normal viewing mode we display them as tabs
			if ($c->isEditMode()): //edit mode rendering ?>

			<div class="row edit-info">
				<div class="span8">
					<?php 
						$ap = new Area('Product More Info');
						$ap->display($c);
					?>	
				</div>
			</div>

			<div class="row edit-tabs">

				<div class="span8 tab-title">
					<?php 
						$tab_title_01 = new Area('Product Tab Title 01');
						$tab_title_01->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_01 = new Area('Product Tab 01');
						$tab_01->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_02 = new Area('Product Tab Title 02');
						$tab_title_02->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_02 = new Area('Product Tab 02');
						$tab_02->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_03 = new Area('Product Tab Title 03');
						$tab_title_03->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_03 = new Area('Product Tab 03');
						$tab_03->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_04 = new Area('Product Tab Title 04');
						$tab_title_04->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_04 = new Area('Product Tab 04');
						$tab_04->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_05 = new Area('Product Tab Title 05');
						$tab_title_05->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_05 = new Area('Product Tab 05');
						$tab_05->display($c);
					?>
				</div>

				<div class="span8 tab-title">
					<?php 
						$tab_title_06 = new Area('Product Tab Title 06');
						$tab_title_06->display($c);
					?>
				</div>
				<div class="span8 tab">
					<?php 
						$tab_06 = new Area('Product Tab 06');
						$tab_06->display($c);
					?>
				</div>

			</div>
		<?php else:  //normal template rendering?>

			<div class="row">
				<?php 
					$ap = new Area('Product More Info');
					$ap->display($c);
				?>	
			</div>
			<hr>
			<ul id="productTabs" class="tab-titles">
				<?php $tab_title_01 = new Area('Product Tab Title 01'); if($tab_title_01->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title active'><a data-toggle='tab' href='#tabOne'>";   $tab_title_01->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_02 = new Area('Product Tab Title 02'); if($tab_title_02->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabTwo'>";   $tab_title_02->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_03 = new Area('Product Tab Title 03'); if($tab_title_03->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabThree'>"; $tab_title_03->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_04 = new Area('Product Tab Title 04'); if($tab_title_04->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabFour'>";  $tab_title_04->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_05 = new Area('Product Tab Title 05'); if($tab_title_05->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabFive'>";  $tab_title_05->display($c); echo "</a></li>\n"; } ?>
				<?php $tab_title_06 = new Area('Product Tab Title 06'); if($tab_title_06->getTotalBlocksInArea($c) > 0){ echo "<li class='tab-title       '><a data-toggle='tab' href='#tabSix'>";   $tab_title_06->display($c); echo "</a></li>\n"; } ?>
			</ul>
			<div id="productTabsContenl" class="tab-content tabs">
				<?php $tab_01 = new Area('Product Tab 01'); if($tab_01->getTotalBlocksInArea($c) > 0){ echo "<div id='tabOne'   class='tab-pane tab active'>"; $tab_01->display($c); echo "</div>\n"; } ?>
				<?php $tab_02 = new Area('Product Tab 02'); if($tab_02->getTotalBlocksInArea($c) > 0){ echo "<div id='tabTwo'   class='tab-pane tab       '>"; $tab_02->display($c); echo "</div>\n"; } ?>
				<?php $tab_03 = new Area('Product Tab 03'); if($tab_03->getTotalBlocksInArea($c) > 0){ echo "<div id='tabThree' class='tab-pane tab       '>"; $tab_03->display($c); echo "</div>\n"; } ?>
				<?php $tab_04 = new Area('Product Tab 04'); if($tab_04->getTotalBlocksInArea($c) > 0){ echo "<div id='tabFour'  class='tab-pane tab       '>"; $tab_04->display($c); echo "</div>\n"; } ?>
				<?php $tab_05 = new Area('Product Tab 05'); if($tab_05->getTotalBlocksInArea($c) > 0){ echo "<div id='tabFive'  class='tab-pane tab       '>"; $tab_05->display($c); echo "</div>\n"; } ?>
				<?php $tab_06 = new Area('Product Tab 06'); if($tab_06->getTotalBlocksInArea($c) > 0){ echo "<div id='tabSix'   class='tab-pane tab       '>"; $tab_06->display($c); echo "</div>\n"; } ?>
			</div>		
		<?php endif; ?>
	</section>
	<section class="rightColumn area">
		<?php 
		$aq = new Area('RightSidebar');
		$aq->display($c);
		?>
	</section>

<?php  $this->inc('elements/footer.php'); ?>