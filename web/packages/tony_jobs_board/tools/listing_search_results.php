<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$u = new User();

$sh = Loader::helper('concrete/dashboard/sitemap');
if (!$sh->canRead()) {
	die(t('Access Denied'));
}

Loader::model('attribute/categories/collection');
$cnt = Loader::controller('/dashboard/jobs_board');
$pageList = $cnt->getRequestedSearchResults();

$pages = $pageList->getPage();
$pagination = $pageList->getPagination();


Loader::packageElement('dashboard/listing_search_results', 'tony_jobs_board', array('listingsController' => $cnt, 'pages' => $pages, 'pageList' => $pageList, 'pagination' => $pagination));
