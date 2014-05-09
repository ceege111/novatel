<?php 
	defined('C5_EXECUTE') or die(_("Access Denied."));
	class RssLinkBlockController extends BlockController {
		
		var $pobj;

		protected $btTable = 'btTonyRssLink';
		protected $btInterfaceWidth = "400";
		protected $btInterfaceHeight = "400";
		
		public $itemsToDisplay = "5";
		public $showSummary = "1"; 
		public $launchInNewWindow = "1"; 
		public $title = "";	
		public $rss_image=1;
		
		public static $iconFileNames=array('RSS_16','RSS_32','comment_rss_16','comment_rss_32','rss_pill_orange_16','rss_pill_orange_32','subscribe_16','subscribe_32');
		
		/** 
		 * Used for localization. If we want to localize the name/description we have to include this
		 */
		public function getBlockTypeDescription() {
			return t("Display a link to your rss feeds");
		}
		
		public function getBlockTypeName() {
			return t("RSS Link");
		}		
		
		public function getJavaScriptStrings() {
			return array( );
		}
		
		function __construct($obj = null) {		
			parent::__construct($obj);
		}
		
		function view(){ 
			
		}
		
		function save($data) { 
			
			$args['rssPage_cID'] = intval($data['rssPage_cID']) ;
			
			$args['rss_image'] = intval($data['rss_image']) ;
			
			$args['fID'] = intval($data['fID']) ;
			
			$args['launchInNewWindow'] = ($data['launchInNewWindow']==1) ? 1 : 0; 
			
			$args['iconRight'] = ($data['iconRight']==1) ? 1 : 0; 
			
			$args['linkTxt'] = isset($data['linkTxt']) ? $data['linkTxt'] : '';
			
			parent::save($args);
		}
		
	}
	
?>