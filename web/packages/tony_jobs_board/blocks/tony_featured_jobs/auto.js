
var FeaturedListingsEdit ={   
	
	init:function(){ 
	
		$('input[name=mode]').each(function(i,el){ 								
			$(el).click(function(){ FeaturedListingsEdit.showModeOptions(); } );
			$(el).change(function(){ FeaturedListingsEdit.showModeOptions(); } );
		});	
		
		$('input[name=cParentID]').each(function(i,el){ 								
			$(el).click(function(){ FeaturedListingsEdit.showIncludedPagesTarget(); } );
			$(el).change(function(){ FeaturedListingsEdit.showIncludedPagesTarget(); } );
		});			
		
	}, 
	
	showModeOptions:function(){
		var d = ($('input[name=mode]:checked').val()=='list') ? 'none':'block'; 
		$('#ccm-featured-listings-animation-settings').css('display',d);  
		
	}, 
	
	showIncludedPagesTarget:function(cb){  
		var display=($('input[name=cParentID]:checked').val()=='OTHER')?'block':'none';
		$('#ccm-jobs-board-included-other').css('display',display);
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

$(function(){ FeaturedListingsEdit.init(); });
 
ccmValidateBlockForm = function() { return FeaturedListingsEdit.validate(); }