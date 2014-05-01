<?php  
defined('C5_EXECUTE') or die(_("Access Denied.")); 

Loader::model('page_list');  
Loader::model('collection_types'); 
$al = Loader::helper('concrete/asset_library'); 
?>

<style>
#ccm-block-fields { font-size:13px; line-height:18px; } 
#ccm-block-fields h2 { font-size:16px; line-height:21px; font-weight:bold; margin-bottom:8px; padding-bottom:0; }

table#rssLinkSetup th {font-weight: bold; text-style: normal; padding-right: 8px; white-space: nowrap;  vertical-align:top;}
table#rssLinkSetup td{ font-size:12px; padding-bottom:12px; vertical-align:top;  } 
table#rssLinkSetup table#rssIcons td { vertical-align:middle; padding-bottom:0px; }
</style> 

<table id="rssLinkSetup" width="100%"> 
	<tr>
		<th><?php echo t('Select Feed')?>:</th>
		<td width="100%"> 
			<select name="rssPage_cID">
				<?php  
				$rssFeedPageType = CollectionType::getByHandle('rss_feed'); 	
				$pl = new PageList();
				$pl->sortByName();
				$pl->filterByCollectionTypeID( $rssFeedPageType->getCollectionTypeID() );	 
				$rssFeeds = $pl->get(); 
				foreach($rssFeeds as $rssPage){ ?> 
					<option value="<?php echo $rssPage->getCollectionID() ?>" <?php echo ($rssObj->rssPage_cID==$rssPage->getCollectionID())?'selected="selected"':''?>>
						<?php echo  $rssPage->getCollectionName() ?>
					</option>
				<?php  } ?>
			</select><br />
			<div class="ccm-note" ><a href="<?php echo View::url('/dashboard/rss_feeds/') ?>" target="_blank"><?php echo t('Manage your RSS Feeds') ?></a></div>
		</td>
	</tr>
	
	<tr>
		<th><?php echo t('Link Text')?>: (<?php echo t('Optional')?>)</th>
		<td><input id="linkTxt" name="linkTxt" value="<?php echo $rssObj->linkTxt ?>" maxlength="255" type="text" style="width:95%"></td>
	</tr>	
	
	<tr>
		<th><?php echo t('fID')?>:</th>
		<td> 
		
			<table id="rssIcons"> 
				<?php  
				$i=0;
				foreach(RssLinkBlockController::$iconFileNames as $filename){ 
					$i++;
					?>
					<tr>
						<td><input name="rss_image" type="radio" value="<?php echo $i ?>" <?php echo ($rssObj->rss_image==$i)?'checked="checked"':''?> /></td>
						<td><img src="<?php echo DIR_REL?>/packages/tony_rss_feeds/blocks/rss_link/images/<?php echo $filename?>.png"  /></td>
					</tr> 											
				<?php  } ?> 
				<tr>
					<td><input name="rss_image" type="radio" value="-1" <?php echo ($rssObj->rss_image==-1)?'checked="checked"':''?> /></td>
					<td> 
						<?php 
						if( intval($rssObj->fID) )
							$rssIconFile=File::getById($rssObj->fID);
						echo $al->image('fID', 'fID', t('Choose your own'), $rssIconFile);
						?>
					</td>
				</tr> 
				<tr>
					<td><input name="rss_image" type="radio" value="0" <?php echo (!$rssObj->rss_image)?'checked="checked"':''?> /></td>
					<td><?php echo  t('None') ?></td>
				</tr> 				
			</table>
			
			<div class="ccm-note" style="margin-top:4px; font-size:9px; line-height:11px; ">Icons by <a href="http://www.zeusboxstudio.com/blog/feedicons-2" target="_blank">Zeusbox Studio</a></div>
		</td>
	</tr>
	
	<tr>
		<th><?php echo t('Right Align Icon')?></th>
		<td>
			<input name="iconRight" type="checkbox" value="1" <?php echo ($rssObj->iconRight)?'checked':''?>>
		</td>
	</tr>	
	
	<tr>
		<th><?php echo t('Open in a new window')?></th>
		<td>
			<input name="launchInNewWindow" type="checkbox" value="1" <?php echo ($rssObj->launchInNewWindow)?'checked':''?>>
		</td>
	</tr>		
</table>