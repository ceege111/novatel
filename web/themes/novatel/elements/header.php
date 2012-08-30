<?php 
	defined('C5_EXECUTE') or die(_("Access Denied."));
?>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><?php echo SITE; ?> - <?php
		$page = Page::getCurrentPage();
		echo $page->getCollectionName();
	?></title>
	<?php Loader::element('header_required'); ?>

	<!-- Site Header Content //-->
	<link rel="stylesheet" media="screen" type="text/css" href="<?php echo $this->getStyleSheet('less/styles.css')?>" />

	<!-- All JavaScript at the bottom, except this Modernizr build.
	Modernizr enables HTML5 elements & feature detects for optimal performance.
	Create your own custom Modernizr build: www.modernizr.com/download/ -->
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/modernizr-2.5.3-respond-1.1.0.min.js"></script>
</head>
<body>
<div class="mainHeader">
	<span class="logo"><img src="http://rtio.nl/i/?w=300&h=150"></span>
	<span>
		<?php	
			$fc = new Area('Main Menu');
			$fc->display($c); 
		?>
	</span>
</div>