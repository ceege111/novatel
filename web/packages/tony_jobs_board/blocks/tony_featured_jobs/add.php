<?php 
defined('C5_EXECUTE') or die(_("Access Denied.")); 
 

$controller->maxThumbWidth=350;
$controller->maxThumbHeight=300;

$controller->mode='slideshow';
$controller->page_size=3; 

$controller->animationDuration=5; 

$controller->title=t('Featured Jobs'); 

$controller->displayOrder='random';  

$bt->inc('form_setup_html.php', array('controller' => $controller )); 
?>