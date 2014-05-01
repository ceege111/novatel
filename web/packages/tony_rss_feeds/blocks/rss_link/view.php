<?php  
defined('C5_EXECUTE') or die(_("Access Denied.")); 

global $c;
?> 

<style>
.tonyRssLink table { border:0px none; border-collapse:collapse; background:none; width:auto; }
.tonyRssLink table td { vertical-align:center; text-align:left; background:none; }
.tonyRssLink table td.label { padding-right:8px; }
<?php  if($iconRight){ ?>#tonyRssLink<?php echo intval($bID)?> table { width:100% !important; } <?php  } ?>
</style>

<div id="tonyRssLink<?php echo intval($bID)?>" class="tonyRssLink">  
	<?php  
	$rssPage = Page::getByID( intval($rssPage_cID) );
	
	if( !is_object($rssPage) || !$rssPage->getCollectionID() ){
		if( $c->isEditMode() ){
			echo t('RSS feed not found.');
		} 
	}else{ 
		$linkURL = View::url( $rssPage->getCollectionPath() ); ?>
	
		<table> 
			<tr> 
			<?php  if(strlen(trim($linkTxt))){ 
				$linkTextShown=1;
				?> 
				<td class="label"> 
					<a href="<?php echo $linkURL ?>"><?php echo $linkTxt ?></a>
				</td>
			<?php  } ?>		
				
			<?php  if(intval($rss_image)!=0){ 
			
				if(intval($rss_image)==-1 && intval($fID)){
					$rssIconFile=File::getById($fID);
					$filePath = $rssIconFile->getRelativePath();
				}else{
					$fileName = RssLinkBlockController::$iconFileNames[intval($rss_image)-1];
					$filePath = DIR_REL.'/packages/tony_rss_feeds/blocks/rss_link/images/'.$fileName.'.png';
				}
				?>
				<td <?php echo ($linkTextShown) ? 'style="text-align: right;"' : '' ?> > 
					<a href="<?php echo $linkURL ?>"><img src="<?php echo $filePath ?>"  /></a>
				</td>
			<?php  } ?>	 
			</tr>
		</table>
		
		<link rel="alternate" type="application/rss+xml"  href="<?php echo $linkURL ?>" title="<?php echo str_replace('"','',$rssPage->getCollectionName()) ?>">
	<?php  } ?>
</div>