  
<script>
function assignChooseMultiFileAttrFunc<?php echo $this->attributeKey->getAttributeKeyID() ?>(){

	ccm_chooseAsset = function (data){
		if(!parseInt(data.fID)) return false;  
		var html = '<div class="fileAttachmentRow" id="ak<?php echo $this->attributeKey->getAttributeKeyID() ?>_fileAttachmentRow'+data.fID+'">'; 
		html = html+'<input name="akID[<?php echo $this->attributeKey->getAttributeKeyID() ?>][fID][]" type="checkbox" checked="checked" value="'+data.fID+'" />'; 
		html = html+'<a class="fileAttachmentTitle" href="'+data.filePathDirect+'" target="_blank">'+data.title+'</a>';
		html = html+'</div>'; 
		$('#ak<?php echo $this->attributeKey->getAttributeKeyID() ?>_attachedFilesList').append(html); 
	}
}

function addMultiFileSorting(){ 
	$('.multiFileAttribute_attachedFilesList').sortable({
		cursor: 'move',
		opacity: 0.5,
	}); 
}

</script>
 
<a onclick="assignChooseMultiFileAttrFunc<?php echo $this->attributeKey->getAttributeKeyID() ?>();ccm_alLaunchSelectorFileManager(''); return false" href="#"><?php echo t('Add a File or Image &raquo;') ?></a>
 
<div id="ak<?php echo $this->attributeKey->getAttributeKeyID() ?>_attachedFilesList" class="multiFileAttribute_attachedFilesList"> 
 
<?php   

if (is_object($this->attributeValue)){
	$multiFilesValueObj = $this->attributeValue->getValue().'';
	//echo get_class( $fIDsStr );
	//$dirtyFIDs = explode(',',$fIDsStr); 
	foreach(JobsBoardMultipleFilesAttributeTypeController::getFiles($multiFilesValueObj) as $file){ 
		$fv = $file->getApprovedVersion();
		?>
		<div class="fileAttachmentRow" id="ak<?php echo $this->attributeKey->getAttributeKeyID() ?>_fileAttachmentRow<?php echo  $file->getFileID() ?>">
			<input name="akID[<?php echo $this->attributeKey->getAttributeKeyID() ?>][fID][]" type="checkbox" checked="checked" value="<?php echo  $file->getFileID() ?>" /> 
			<a class="fileAttachmentTitle" href="<?php echo  $fv->getRelativePath() ?>" target="_blank"><?php echo  $fv->getTitle() ?></a>
			
		</div> 
	<?php  }  
} ?> 

</div> 

<script>
addMultiFileSorting(); 
</script>