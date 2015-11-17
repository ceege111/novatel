<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); ?> 

<h2><?php echo t('Install Sample Content')?></h2>

<?php  $form = Loader::helper('form'); ?>
<?php  print $form->checkbox('installSampleContent', 1, true)?>
<?php echo t('Yes, install sample search page, related blocks, and listings')?>

<br/><br/> 

<input type="hidden" name="installSampleContentCheck" value="1" />  