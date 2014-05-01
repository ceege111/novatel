<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$rssObj=$controller;

$rssObj->linkTxt=t('Subscribe');
$rssObj->rss_image=1;
?>

<?php   $bt->inc('form_setup_html.php',array('rssObj'=>$rssObj)); ?> 