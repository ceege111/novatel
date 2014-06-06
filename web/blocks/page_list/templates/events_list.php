<?php
defined('C5_EXECUTE') or die("Access Denied.");
$rssUrl = $showRss ? $controller->getRssUrl($b) : '';
$th = Loader::helper('text');
// $ih = Loader::helper('image'); //<--uncomment this line if displaying image attributes (see below)
//Note that $nh (navigation helper) is already loaded for us by the controller (for legacy reasons)
?>

<?php if ($showPagination): ?>
	<div id="pagination" class="newsPagination">
		<div class="ccm-spacer"></div>
		<div class="ccm-pagination">
			<span class="ccm-page-left"><?php echo $paginator->getPrevious('&laquo; ' . t('Previous')) ?></span>
			<?php echo $paginator->getPages() ?>
			<span class="ccm-page-right"><?php echo $paginator->getNext(t('Next') . ' &raquo;') ?></span>
		</div>
	</div>
<?php endif; ?>

<table class="table news-list table-striped tableHeader tableContent">
	<?php foreach ($pages as $page):
		// Prepare data for each page being listed...
		$title = $th->entities($page->getCollectionName());
		// $url = $nh->getLinkToCollection($page);
		$target = ($page->getCollectionPointerExternalLink() != '' && $page->openCollectionPointerExternalLinkInNewWindow()) ? '_blank' : $page->getAttribute('nav_target');
		$target = empty($target) ? '_self' : $target;
		$description = $page->getCollectionDescription();
		$description = $controller->truncateSummaries ? $th->shorten($description, $controller->truncateChars) : $description;
		//$description = $th->entities($description);	

		$url = ($page->getAttribute('iframe_url') != '') ? $page->getAttribute('iframe_url') : '';
		$source = ($page->getAttribute('external_content_title') != '') ? $page->getAttribute('external_content_title') : '';
		$date = ($page->getAttribute('external_content_posted_date') != '') ? $page->getAttribute('external_content_posted_date') : '';
		//$description = ($page->getAttribute('event') != '') ? $page->getAttribute('event') : '';

		// $img = $page->getAttribute('product_image');
		// $thumb = $ih->getThumbnail($img, 250, 9999, false);
		
		//Other useful page data...
		//$date = date('F j, Y', strtotime($page->getCollectionDatePublic()));
		//$last_edited_by = $page->getVersionObject()->getVersionAuthorUserName();
		//$original_author = Page::getByID($page->getCollectionID(), 1)->getVersionObject()->getVersionAuthorUserName();
		
		/* CUSTOM ATTRIBUTE EXAMPLES:
		 * $example_value = $page->getAttribute('example_attribute_handle');
		 *
		 * HOW TO USE IMAGE ATTRIBUTES:
		 * 1) Uncomment the "$ih = Loader::helper('image');" line up top.
		 * 2) Put in some code here like the following 2 lines:
		 *      $img = $page->getAttribute('example_image_attribute_handle');
		 *      $thumb = $ih->getThumbnail($img, 64, 9999, false);
		 *    (Replace "64" with max width, "9999" with max height. The "9999" effectively means "no maximum size" for that particular dimension.)
		 *    (Change the last argument from false to true if you want thumbnails cropped.)
		 * 3) Output the image tag below like this:
		 *		<img src="<?php echo $thumb->src ?>" width="<?php echo $thumb->width ?>" height="<?php echo $thumb->height ?>" alt="" />
		 *
		 * ~OR~ IF YOU DO NOT WANT IMAGES TO BE RESIZED:
		 * 1) Put in some code here like the following 2 lines:
		 * 	    $img_src = $img->getRelativePath();
		 * 	    list($img_width, $img_height) = getimagesize($img->getPath());
		 * 2) Output the image tag below like this:
		 * 	    <img src="<?php echo $img_src ?>" width="<?php echo $img_width ?>" height="<?php echo $img_height ?>" alt="" />
		 */
		
		/* End data preparation. */

		/* The HTML from here through "endforeach" is repeated for every item in the list... */ ?>
		<tr><td class="row product-item">
			<h3 class="ccm-page-list-title">
				<?php if ($url == ''): ?>
					<?php echo $title; ?>
				<?php else: ?>
					<a href="<?php echo $url ?>" target="<?php echo $target ?>"><?php echo $title ?></a>
				<?php endif; ?>
			</h3>
			<div class="ccm-page-list-description">
				<?php echo $source ?>	
			</div>
			<div><?php echo $date; ?></div>
			<div><?php echo $description; ?></div>			
		</td></tr>
	<?php endforeach; ?>
</table><!-- end .ccm-page-list -->
