<?php  defined('C5_EXECUTE') or die(_("Access Denied."));

$sh = Loader::helper('concrete/dashboard/sitemap');
if (!$sh->canRead()) {
	die(t('Access Denied'));
}

$u = new User();
$form = Loader::helper('form');
Loader::model('attribute/categories/collection');

$selectedAKIDs = array();

$cnt = Loader::controller('/dashboard/jobs_board');
$slist = $cnt->getColumnHeaders();
foreach($slist as $sk) {
	$selectedAKIDs[] = $sk->getAttributeKeyID();
}

$searchInstance = $_REQUEST['searchInstance'];

if ($_POST['task'] == 'update_columns') {
	Loader::model('attribute/category');
	
	$headerAttrIds=array();
	if (is_array($_POST['akID'])) {
		foreach($_POST['akID'] as $akID) {
			$ak = CollectionAttributeKey::getByID($akID);
			if(is_object($ak))
				$headerAttrIds[]=$akID; 
		}
	}
	Config::save('TONY_JOBS_BOARD_COLUMN_HEADER_ATTRIBUTES', join(',',$headerAttrIds) );  
	
	exit;
}

$list = CollectionAttributeKey::getList();

?>

<form method="post" id="ccm-<?php echo $searchInstance?>-customize-search-columns-form" action="<?php echo View::url('/tools/packages/tony_jobs_board/customize_search_columns/')?>">
<?php echo $form->hidden('task', 'update_columns')?>

<h1><?php echo t('Additional Searchable Attributes')?></h1>

<p><?php echo t('Choose the additional attributes you wish to include as column headers.')?></p>

<?php  foreach($list as $ak) { ?>

	<div><?php echo $form->checkbox('akID[]', $ak->getAttributeKeyID(), in_array($ak->getAttributeKeyID(), $selectedAKIDs), array('style' => 'vertical-align: middle'))?> <?php echo $ak->getAttributeKeyDisplayHandle()?></div>
	
<?php  } ?>

<br/><br/>
<?php 
$h = Loader::helper('concrete/interface');
$b1 = $h->button_js(t('Save'), 'ccm_submitCustomizeSearchColumnsForm()', 'left');
print $b1;
?>

</form>

<script type="text/javascript">
ccm_submitCustomizeSearchColumnsForm = function() {
	ccm_deactivateSearchResults('<?php echo $searchInstance?>');
	$("#ccm-<?php echo $searchInstance?>-customize-search-columns-form").ajaxSubmit(function(resp) {
		jQuery.fn.dialog.closeTop();
		$("#ccm-<?php echo $searchInstance?>-advanced-search").ajaxSubmit(function(resp) {
			ccm_parseAdvancedSearchResponse(resp, '<?php echo $searchInstance?>');
		});
	});
}

$(function() {
	$('#ccm-<?php echo $searchInstance?>-customize-search-columns-form').submit(function() {
		ccm_submitCustomizeSearchColumnsForm();
	});
});


</script>