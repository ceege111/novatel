<?php 
defined('C5_EXECUTE') or die(_("Access Denied.")); 
 

$controller->maxThumbWidth=150;
$controller->maxThumbHeight=200;

$controller->mode='full';
$controller->page_size=10; 

$controller->searchTitle=t('Search Listings');

$controller->searchedCountries='US,CA';

//$controller->searchableAttributes='Keywords,employment_type,employment_category,employment_locations,job_id';  
$controller->searchableAttributes='Keywords'; 
$controller->displayOrder='newest'; 

$controller->showSortBy=1;  

$bt->inc('form_setup_html.php', array('controller' => $controller )); 
?>