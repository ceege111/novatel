<?php 
defined('C5_EXECUTE') or die(_("Access Denied.")); 

$dashboardHelper = Loader::helper('concrete/dashboard');
$token = Loader::helper('validation/token');
$ih = Loader::helper('concrete/interface');
$uh = Loader::helper('form/user_selector'); 
$urlsHelper = Loader::helper('concrete/urls');
?>
<style>
#feedsList { margin-top:16px; }
table { width:99% }
table tr.header td { font-weight:bold; background:#F1F1F1; padding:2px;  }
table tr td { padding-right:16px; vertical-align:top; padding-bottom:12px; }
table#configureFeedData { margin-bottom:16px; }
table#configureFeedData td { padding-bottom:16px; vertical-align:top }
table#configureFeedData td input, table#configureFeedData td textarea { vertical-align:top;  padding:4px;  }
.ccm-notification { background:#FFFFCC; color:#555; padding:4px; margin-bottom:8px; border:1px solid #ddd;  }
.ccm-summary-selected-item { padding:4px !important; }

#save-rss-feed-form h2 { margin-bottom:16px; }
#save-rss-feed-form #urlBasePath { line-height:24px; font-size:14px; }
#save-rss-feed-form #urlPathField { height:14px; font-size:14px; line-height:18px; }

</style>

<script>
var FeedManager = {
	
	init:function(){
		$('input[name=resultsParentID]').each(function(i,el){  
			$(el).click(function(){FeedManager.showPageSelector();});
			$(el).change(function(){FeedManager.showPageSelector();});
		}); 
		
		$('input[name=descSource]').each(function(i,el){  
			$(el).click(function(){FeedManager.showAreaSelector();});
			$(el).change(function(){FeedManager.showAreaSelector();});
		});
		
		$('input[name=richText]').each(function(i,el){  
			$(el).click(function(){FeedManager.showTruncateChars();});
			$(el).change(function(){FeedManager.showTruncateChars();});
		}); 				
		
	}, 
	
	showUserSelector:function(){
		var d = ($('input[name=oneAuthor]').attr('checked'))?'block':'none';
		$('#resultsUserSelector').css('display',d);	
	},
	
	showPageSelector:function(){ 
		var d = ($('input[name=resultsParentID]:checked').val()==-2)?'block':'none';
		$('#resultsParentSelector').css('display',d);
		
		d = ($('input[name=resultsParentID]:checked').val()!=0)?'block':'none';
		$('#resultsIncludeChildren').css('display',d);
	},
	
	showAreaSelector:function(){
		var d = ($('input[name=descSource]:checked').val()>=1) ? 'block' : 'none';
		$('#descSourceAreaSelector').css('display',d);	
		
		FeedManager.showTruncateChars();
	},
	
	showTruncateChars:function(){ 
		var d='none';
		if($('input[name=descSource]:checked').val()==0) d='block';
		else d = ($('input[name=richText]:checked').val()==0) ? 'block' : 'none';
		$('#truncateSummaryWrap').css('display',d);	

	}
	
}
$(function(){ FeedManager.init(); })
</script>

<?php  if( method_exists( $dashboardHelper, 'getDashboardPaneHeaderWrapper') ){  
	echo $dashboardHelper->getDashboardPaneHeaderWrapper(t('RSS Feed Manager'),t("Create and configure rich-text feeds for your site, with clean URLs")); 
}else{ ?> 
    <h1><span><?php echo t('RSS Feed Manager')?></span></h1> 
    <div class="ccm-dashboard-inner" > 
<?php  } ?> 

	<?php  if($pageMsg){ ?>
		<div class="ccm-notification">
			<strong><?php echo $pageMsg ?></strong>
			
			<?php  if( is_array($errorMsgs) ) foreach($errorMsgs as $errorMsg){ ?> 
				<div><?php echo $errorMsg ?></div>
			<?php  } ?>
		</div>
	<?php  } ?> 
    
	<?php  if( $mode=='configure' ){ ?>
	
		<form id="save-rss-feed-form" action="<?php echo View::url($c->getCollectionPath().'/-/configure',intval($feedPage->getCollectionID())) ?>" method="post">
		
			<?php echo $token->output('save_feed')?>
		
			<input name="submitted" type="hidden" value="1" />
			
			<input name="rssID" type="hidden" value="<?php echo $feedPage->getRssID() ?>" />
	
			<h2><?php echo t('Configure Your RSS Feed') ?></h2>
	
			<table id="configureFeedData">
				<tr>
					<td>
						<?php echo t('Title') ?>
					</td>
					<td>
						<input name="title" type="text" value="<?php echo (strlen($_REQUEST['title'])) ? htmlentities($_REQUEST['title'], ENT_QUOTES, 'UTF-8') : htmlentities($feedPage->getCollectionName(), ENT_QUOTES, 'UTF-8'); ?>" />
					</td>					
				</tr> 
				<tr>
					<td>
						<?php echo t('URL Path') ?>
					</td>
					<td>
						<span id="urlBasePath"><?php echo BASE_URL.DIR_REL ?>/</span><input id="urlPathField" name="cHandle" type="text" value="<?php echo (strlen($_REQUEST['url'])) ? htmlentities($_REQUEST['url'], ENT_QUOTES, 'UTF-8') : htmlentities(substr($feedPage->getCollectionPath(),1), ENT_QUOTES, 'UTF-8'); ?>" />
						
						<?php  if(strlen($feedPage->getCollectionPath())){ ?>&nbsp;<a href="<?php echo View::url( $feedPage->getCollectionPath() )?>" target="_blank">view &raquo;</a><?php  } ?>
					</td>					
				</tr> 
				<tr>
					<td>
						<?php echo t('Description') ?>
					</td>
					<td>
						<textarea name="desc" cols="50" rows="3"><?php echo (strlen($_REQUEST['desc'])) ? htmlentities($_REQUEST['desc'], ENT_QUOTES, 'UTF-8') : htmlentities($feedPage->getCollectionDescription(), ENT_QUOTES, 'UTF-8'); ?></textarea>
					</td>
				</tr> 
				
				<tr>
					<td>
						<?php echo t('Show pages from') ?>
					</td>
					<td> 
						<input name="resultsParentID" type="radio" value="0" <?php echo ( $feedPage->getFeedParentCID()==0 )?'checked="checked"':''?> /> <?php echo t('Everywhere') ?> <br /> 
						<input name="resultsParentID" type="radio" value="-1" <?php echo ( $feedPage->getFeedParentCID()==-1 )?'checked="checked"':''?> /> <?php echo t("Beneath feed's parent") ?> <br /> 
						<input name="resultsParentID" type="radio" value="-2" <?php echo ( $feedPage->getFeedParentCID()>0 )?'checked="checked"':''?> /> <?php echo t('Beneath another page') ?> 
							
						<div id="resultsParentSelector" style="display:<?php echo ($feedPage->getFeedParentCID()>0)?'block':'none' ?>">
							<?php  
							$formPgSelector = Loader::helper('form/page_selector');
							echo $formPgSelector->selectPage('customParentCID', $feedPage->getFeedParentCID() );
							?>
						</div>
                        
						<div id="resultsIncludeChildren" style="display:<?php echo ($feedPage->getFeedParentCID()!=0)?'block':'none' ?>">
							<input name="includeChildren" type="checkbox" value="1" <?php echo ($feedPage->includeChildren())?'checked="checked"':''?> /> <?php echo t('Include Children') ?>
						</div>
					</td>
				</tr>				
				
				<tr>
					<td>
						<?php echo t('Filter By Page Type') ?>
					</td>
					<td> 
						<select name="ctID">
							<option value="0"><?php echo All ?></option>
							<?php  foreach(CollectionType::getList() as $pageType ){ 
								if($pageType->getCollectionTypeID()==$rssFeedPageType->getCollectionTypeID()) continue; 
								?>
								<option value="<?php echo $pageType->getCollectionTypeID() ?>" <?php echo ($pageType->getCollectionTypeID()==$feedPage->getResultsPageTypeID())?'selected="selected"':'' ?>>
									<?php echo $pageType->getCollectionTypeName() ?>
								</option>
							<?php  } ?>  
						</select>
					</td>
				</tr>	
				
				<tr>
					<td>
						<?php echo t('Filter By Author') ?>
					</td>
					<td> 
						<input name="oneAuthor" type="checkbox" value="1" <?php echo ($feedPage->getResultsUID())?'checked="checked"':''?> onclick="FeedManager.showUserSelector()" onchange="FeedManager.showUserSelector()" /> <?php echo t('Limit by user') ?>
						<div id="resultsUserSelector" style="display:<?php echo ( $feedPage->getResultsUID())?'block':'none'?>" >
							<?php echo  $uh->selectUser('resultsUID', $feedPage->getResultsUID()  ); ?> 
						</div>
					</td>
				</tr>	
					
				
				
				<tr>
					<td>
						<?php echo t('Page Descriptions') ?>
					</td>
					<td> 
						<input name="descSource" type="radio" value="0" <?php echo ( $feedPage->getDescSource()==0 )?'checked="checked"':''?> /> <?php echo t('Summaries only') ?> <br /> 
						<input name="descSource" type="radio" value="1" <?php echo ( $feedPage->getDescSource()==1 )?'checked="checked"':''?> /> <?php echo t("Page area only") ?> <br /> 
						<input name="descSource" type="radio" value="2" <?php echo ( $feedPage->getDescSource()==2 )?'checked="checked"':''?> /> <?php echo t('Use summary if available') ?> 
						
						<div id="descSourceAreaSelector" style="display:<?php echo ($feedPage->getDescSource()>0)?'block':'none' ?>; margin-top:4px; ">
							<select name="descSourceAreaHandle">
								<?php   
								$db = Loader::db();
								$areasData = $db->getAll('SELECT arID, arHandle FROM Areas GROUP BY arHandle ORDER BY arHandle');  
								$defaultAreaHandle = strlen($feedPage->getDescSourceAreaHandle()) ? $feedPage->getDescSourceAreaHandle():'Main';  
								foreach($areasData as $areaData){ ?>
									<option value="<?php echo $areaData['arHandle'] ?>" <?php echo ($defaultAreaHandle==$areaData['arHandle']) ? 'selected="selected"':'' ?>>
										<?php echo $areaData['arHandle'] ?>
									</option>
								<?php  } ?>
							</select> 
							
							<div style="margin-top:4px; ">
								<input name="richText" type="radio" value="1" <?php echo ($feedPage->getRichText()==1)?'checked="checked"':''?> /> <?php echo t('Rich Text / HTML') ?> &nbsp; 
								<input name="richText" type="radio" value="0" <?php echo (!$feedPage->getRichText())?'checked="checked"':''?> /> <?php echo t('Plain Text') ?>
							</div>
						</div> 
						
						<div id="truncateSummaryWrap" style="margin-top:8px; display:<?php echo ($feedPage->getDescSource()==0 || $feedPage->getRichText()==0)?'block':'none' ?>"> 
							<?php echo t('Truncate after') ?> 
							<input name="truncateChars" type="text" value="<?php echo $feedPage->getTruncateChars() ?>" /> 
							<?php echo  t('characters') ?>
						</div>
					</td>
				</tr> 
				
				<tr>
					<td>
						<?php echo t('Max Displayed Posts') ?>
					</td>
					<td>
						<input name="numToDisplay" type="text" value="<?php echo $feedPage->getNumToDisplay() ?>" size="3" />
					</td>
				</tr> 
				
				
				<tr>
					<td>
						<?php echo t('Sort Order') ?>
					</td>
					<td> 
						<select name="orderBy">
							<?php  foreach(TonyRssFeed::$sortOptions as $key=>$val){ ?>
								<option value="<?php echo $key?>" <?php echo ($key==$feedPage->getOrderBy())?'selected="selected"':'' ?>>
									<?php echo t($val) ?>
								</option>
							<?php  } ?>  
						</select>
					</td>
				</tr>
				
                <?php  /* 
				//disabled in concrete5.6 due to permissions hell. 
				<tr>
					<td>
						<?php echo t('Cache Time') ?>
					</td>
					<td>
						<input name="cacheHours" type="text" value="<?php echo $feedPage->getCacheHours() ?>" size="3" />
						<?php echo  t('Hours') ?>
						<div class="ccm-note" style="margin-top:2px;">
							<?php echo  t('Note: With caching enabled, only pages that guests can view are returned') ?>
						</div>
					</td>
				</tr>
				*/ ?> 
										
			</table>
			
			
			<div class="ccm-buttons"> 
				<?php echo $ih->submit(t('Save'), 'save-rss-feed-form') ?>
				<?php echo $ih->button(t('Cancel'), $this->url($c->getCollectionPath()) , 'left')?>
				<div class="ccm-spacer"></div>
			</div>	
		
		</form>
	
	<?php  }elseif( $mode=='delete' ){ ?>
	
		<form id="delete-rss-feed-form" action="<?php echo View::url($c->getCollectionPath().'/-/delete',$feedPage->getCollectionID()) ?>" method="post">
		
			<input name="confirmDelete" type="hidden" value="1" />
		
			<div style="margin-bottom:16px;">
				<strong><?php echo  t('Are you sure you want to delete the following feed?!') ?></strong><br /><br />
			
				<a href="<?php echo View::url( $feedPage->getCollectionPath() ) ?>" target="_blank">"<?php echo $feedPage->getCollectionName() ?>"</a><br />
				<?php echo $feedPage->getCollectionDescription() ?>
			</div>
			
			<div class="ccm-buttons"> 
				<?php echo $ih->submit(t('Delete'), 'delete-rss-feed-form')?>
				<?php echo $ih->button(t('Cancel'), $this->url('/dashboard/rss_feeds'), 'left')?>
				<div class="ccm-spacer"></div>
			</div>	
		
		</form>
	
	<?php  }else{ ?>
	
	
		<div class="ccm-buttons">  
			<?php echo $ih->button(t('Create RSS Feed'), $this->url($c->getCollectionPath().'/-/configure'), 'left')?>
		</div>	 		
		
		<div class="ccm-spacer">&nbsp;</div>
	
		<?php  if( !is_array($rssFeeds) || !count($rssFeeds) ){ ?>
		
			<div style="margin:32px 0px 16px 4px"><?php echo t('No Feeds Found') ?></div> 
		
		<?php  }else{ ?>
		
			<table id="feedsList">
				<tr class="header">
					<td><?php echo t('Feed Name') ?></td>
					<td><?php echo t('URL') ?></td>
					<td style="width:20%"><?php echo t('Options') ?></td>
				</tr>
				<?php  foreach($rssFeeds as $rssFeed){ ?>
				<tr>
					<td><?php echo $rssFeed->getCollectionName() ?></td>
					<td><a href="<?php echo View::url($rssFeed->getCollectionPath()) ?>" target="_blank"><?php echo $rssFeed->getCollectionPath() ?></a></td>
					<td>
						<a href="<?php echo View::url($c->getCollectionPath().'/-/configure',$rssFeed->getCollectionID()) ?>"><?php echo t('Configure') ?></a>
							&nbsp;|&nbsp; 
						<a href="<?php echo View::url($c->getCollectionPath().'/-/delete',$rssFeed->getCollectionID()) ?>"><?php echo t('Delete') ?></a>
					</td>
				</tr>
				<?php  } ?> 
			</table>
	
		<?php  } ?>
		
		
	<?php  } ?> 

<?php  if( method_exists( $dashboardHelper, 'getDashboardPaneFooterWrapper') ){ 
	echo $dashboardHelper->getDashboardPaneFooterWrapper(); 
}else{ ?>  
    </div> 
<?php  } ?> 