<?php 
defined('C5_EXECUTE') or die("Access Denied.");

	//check for external url 
	$url = ($page->getAttribute('iframe_url') != '') ? $page->getAttribute('iframe_url') : $this->getBaseURL();
?>

<script type="text/javascript">
	window.location.href = '<?php echo $url; ?>';
</script>