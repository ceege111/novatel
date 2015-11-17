
var jobsBoardSearchEdit ={   

	existingAttrObjs:[],
	existingSearchAttrObjs:[],
	
	init:function(){ 
		
		this.tabSetup();  
		
		this.removeText = $('#jobsBoardSearch_removeLinkText').val();
		this.withLabelText = $('#jobsBoardSearch_withLabelText').val();
		
		this.detailsList = $('#jobsBoardSearchAvailableAttributes');
		this.searchAttrsList = $('#jobsBoardSearch_searchAttributes'); 
		
		$('input[name=mode]').each(function(i,el){ 								
			$(el).click(function(){ jobsBoardSearchEdit.showSearchOptions(); } );
			$(el).change(function(){ jobsBoardSearchEdit.showSearchOptions(); } );
		});	
		
		$('input[name=cParentID]').each(function(i,el){ 								
			$(el).click(function(){ jobsBoardSearchEdit.showIncludedPagesTarget(); } );
			$(el).change(function(){ jobsBoardSearchEdit.showIncludedPagesTarget(); } );
		});	
		
		
		$("#ccm-jobs-board-search-page-target-wrap").mouseover(function() { jobsBoardSearchEdit.activePageSelector = 'results' });
		$("#ccm-jobs-board-included-other").mouseover(function() { jobsBoardSearchEdit.activePageSelector = 'parent' });
	},
	
	tabSetup: function(){
		$('ul#ccm-blockEditPane-tabs li a').each( function(num,el){ 
			el.onclick=function(){ 
				var pane=this.id.replace('ccm-blockEditPane-tab-',''); 
				jobsBoardSearchEdit.showPane(pane);
			}
		});		
	},
	showPane:function(pane){
		$('ul#ccm-blockEditPane-tabs li').each(function(num,el){ $(el).removeClass('ccm-nav-active') });
		$(document.getElementById('ccm-blockEditPane-tab-'+pane).parentNode).addClass('ccm-nav-active');
		$('div.ccm-blockEditPane').each(function(num,el){ el.style.display='none'; });
		$('#ccm-blockEditPane-'+pane).css('display','block'); 
	},	 
	
	showSearchOptions:function(){
		var d = ($('input[name=mode]:checked').val()=='results') ? 'none':'block'; 
		$('#jobsBoardSearch_searchOptions').css('display',d); 
		var d = ($('input[name=mode]:checked').val()=='search') ? 'none':'block'; 
		//$('#ccm-blockEditPane-results').css('display',d); 
		$('#ccm-blockEditPane-tab-resultsWrap').css('display',d); 
	},

	showSortByAttrs:function(cb){
		var d = (cb.checked) ? 'block':'none'; 
		$('#jobsBoardSearch_sortByAttrsWrap').css('display',d); 
	},
	
	addExisting:function(){ 
		for(var i=0;i<this.existingAttrObjs.length;i++){ 
			jobsBoardSearchEdit.addAttributeRowHTML( this.existingAttrObjs[i].handle, this.existingAttrObjs[i].nm, this.existingAttrObjs[i].labelShown  );
		} 
		this.makeSortable(); 
	},
	
	addExistingSearchAttrs:function(){
		for(var i=0;i<this.existingSearchAttrObjs.length;i++){ 
			jobsBoardSearchEdit.addSearchAttrRowHTML( this.existingSearchAttrObjs[i].handle, this.existingSearchAttrObjs[i].nm  );
		} 
		this.makeSearchAttrsSortable();
		this.detailsOptionsShown();
	}, 
	
	makeSortable:function(){
		this.detailsList.sortable({
			cursor: 'move',
			opacity: 0.5,
		}); 		
	},
	
	makeSearchAttrsSortable:function(){
		this.searchAttrsList.sortable({
			cursor: 'move',
			opacity: 0.5,
		}); 		
	}, 
	
	addAttribute:function(){
		var selOpt = $('#jobsBoardSearch_attributeSelector option:selected'); 
		var val = selOpt.val()
		if( val && val!='none' && !$('#jobsBoardSearch_detailRow'+val).html() ) { 
			this.addAttributeRowHTML( val , selOpt.html(), 0  );
		}
		
		$('#jobsBoardSearch_attributeSelector option[value=none]').attr('selected','selected') ;
		
		this.makeSortable();
		//this.detailsOptionsShown();
	}, 
	
	addSearchAttribute:function(){   
		var selOpt = $('#jobsBoardSearch_searchAttrsSelector option:selected'); 
		var val = selOpt.val();  
		if( val && val!='none' && !$('#jobsBoardSearch_searchAttrRow'+val).html() ) {  
			this.addSearchAttrRowHTML( val , selOpt.html(), 0  );
		} 
		$('#jobsBoardSearch_searchAttrsSelector option[value=none]').attr('selected','selected'); 
		
		this.makeSearchAttrsSortable();
		this.detailsOptionsShown();
	},	
	
	addAttributeRowHTML:function(attrHandle,attrName,labelShown){ 
		var html = '<div class="jobsBoardSearch_detailRow" id="jobsBoardSearch_detailRow'+attrHandle+'">';
		var html = html+'<a class="fileDetails_removeRow" onclick="jobsBoardSearchEdit.removeAttribute(this)">'+this.removeText+'</a>';
		var html = html+'<div class="fileDetails_withLabel">'+this.withLabelText;
		var isChecked = (labelShown) ? 'checked="checked"' : '';
		var html = html+'<input name="shownLabels[]" type="checkbox" value="'+attrHandle+'" '+isChecked+' /></div>'; 
		var html = html+'<span class="fileDetails_attrName">'+attrName+'</span>'; 
		var html = html+'<input name="shownAttrs[]" type="hidden" value="'+attrHandle+'" />'; 
		var html = html+'</div>';  
		this.detailsList.append(html);  
	},
	
	addSearchAttrRowHTML:function(attrHandle,attrName){ 
		var html = '<div class="jobsBoardSearch_detailRow" id="jobsBoardSearch_searchAttrRow'+attrHandle+'">';
		var html = html+'<a class="fileDetails_removeRow" onclick="jobsBoardSearchEdit.removeAttribute(this)">'+this.removeText+'</a>'; 		
		var html = html+'<span class="fileDetails_attrName">'+attrName+'</span>';
		var html = html+'<input name="searchAttrs[]" type="hidden" value="'+attrHandle+'" />'; 
		var html = html+'</div>';
		this.searchAttrsList.append(html); 
	},
	
	removeAttribute:function(a){
		$(a.parentNode).remove(); 
		this.detailsOptionsShown();
	},	
	
	detailsOptionsShown:function(){
		var stateSelectDisplay = ( $('#jobsBoardSearch_searchAttrRowState').html() ) ? 'block' : 'none';
		$('#jobsBoardSearch_countryWrap').css('display',stateSelectDisplay);
	},
	
	showIncludedPagesTarget:function(cb){  
		var display=($('input[name=cParentID]:checked').val()=='OTHER')?'block':'none';
		$('#ccm-jobs-board-included-other').css('display',display);
	}, 
	
	showSearchTarget:function(cb){ 
		var display=(cb.checked)?'block':'none';
		$('#ccm-jobs-board-search-page-target-wrap').css('display',display);
	}, 
	
	//the page selector js wasn't working with multiple instances 
	activePageSelector:'', 
	setPageSelectorTarget:function(cID, cName){  
		alert(jobsBoardSearchEdit.activePageSelector); 
		//$('#jobs_board_searchTargetCID').val('14'); 
		if(jobsBoardSearchEdit.activePageSelector=='results'){ 
			$('input[name=searchTargetCID]').val(cID); 
		}else{ 
			$('input[name=cParentIDValue]').val(cID); 
		}
		var p = $(ccmActivePageField.parentNode); 
		p.find('input').val(cID); 
		p.find('.ccm-summary-selected-item-label').html(cName); 
	},  	
	
	validate:function(){
		var failed=0; 
		/* 
		if(!$('#jobsBoardSearchAvailableAttributes .jobsBoardSearch_detailRow').length){
			alert(this.attrsRequiredMsg);
			failed=1; 
		} 
		*/ 
		
		if(failed){
			ccm_isBlockError=1;
			return false;
		} 
		return true;
	}
	
}

$(function(){ jobsBoardSearchEdit.init(); });
 
ccmValidateBlockForm = function() { return jobsBoardSearchEdit.validate(); } 

