<?php 
	defined('C5_EXECUTE') or die(_("Access Denied."));
?>
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width">
	<title><?php echo SITE; ?> - <?php
		$page = Page::getCurrentPage();
		echo $page->getCollectionName();
	?></title>
	<?php Loader::element('header_required'); ?>

	<!-- Site Header Content //-->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,700,300,600,800' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" media="screen" type="text/css" href="<?php echo $this->getStyleSheet('less/style.css')?>" />

	<!-- All JavaScript at the bottom, except this Modernizr build.
	Modernizr enables HTML5 elements & feature detects for optimal performance.
	Create your own custom Modernizr build: www.modernizr.com/download/ -->
	<script src="<?php echo $this->getThemePath(); ?>/js/libs/modernizr-2.5.3-respond-1.1.0.min.js"></script>
</head>

<body>
<h2>testing</h2>
<div class="headerWrap">
	<div class="mainHeader container">
		<div class="row">
	<!-- 		<div class="logo span6"><a href="/"><img src="http://rtio.nl/i/?w=400&h=125&message=Novatel Wireless"></a></div> -->		
			<div class="logo span4"><?php  $al = new GlobalArea('Company Logo'); $al->display($c);?></div>
			<div class="altNav area offset2 span6">
				<?php 
					$b = new GlobalArea('Header Alt Nav');
					$b->display($c);
				?>
			</div>
		</div>
		<div class="row mainMenu area">
			<?php	
				$a = new GlobalArea('Header Nav');
				$a->display($c); 
			?>
		</div>
	</div>
</div>
<div class="wrap <?php if ($c->isEditMode()) echo "editMode"; ?>">
