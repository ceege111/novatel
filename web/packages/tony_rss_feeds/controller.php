<?php 

defined('C5_EXECUTE') or die(_("Access Denied.")); 

// *** <lastBuildDate>Mon, 12 Sep 2005 18:37:00 GMT</lastBuildDate>   ddd, dd mmm yyyy  HH:mm:ss  

// * author node   

/* 

Optional Global Variables:
RSS_MANAGER_IGNORE_PERMISSIONS - will return all pages regardless of whether user can view page 

*/ 


class TonyRssFeedsPackage extends Package {

	protected $pkgHandle = 'tony_rss_feeds';
	protected $appVersionRequired = '5.3.3';
	protected $pkgVersion = '1.23';
	
	public function getPackageDescription() { 
		return t("Create and configure rich-text feeds for your site, with clean URLs");
	}
	
	public function getPackageName() {
		return t("RSS Feed Creator"); 
	}
	 
	public function install() {
		$pkg = parent::install(); 
		
		//install dashboard page
		Loader::model('single_page');
		$feedPage=Page::getByPath('/dashboard/rss_feeds');
		if( !intval($feedPage->cID) ){  
			$feedPage=SinglePage::add('/dashboard/rss_feeds', $pkg);
		}
		$feedPage->update(array('cName'=>t('RSS Feed Manager'), 'cDescription'=>t('Add and Configure RSS Feeds on your site')));		
		
		
		//add the new page type 
		Loader::model('collection_types'); 
		$rssFeedPageType = CollectionType::getByHandle('rss_feed'); 
		if( !$rssFeedPageType ){ 
			$data['ctHandle'] = 'rss_feed'; 
			$data['ctName'] = t('RSS Feed'); 
			$rssFeedPageType = CollectionType::add($data, $pkg); 	 	
		}
		
		//if reinstalling, make sure the rss feed page type is pointing to the right package id 
		$db = Loader::db();
		$db->query('UPDATE PageTypes Set pkgID=? WHERE ctHandle="rss_feed"',array($pkg->getPackageID()));

		// install block		
		BlockType::installBlockTypeFromPackage('rss_link', $pkg); 
	}

}