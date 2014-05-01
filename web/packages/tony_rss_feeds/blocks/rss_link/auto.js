// JavaScript Document

var tonyRssLink ={

	validate:function(){
			var failed=0; 
			
			
			if(failed){
				ccm_isBlockError=1;
				return false;
			}
			return true;
	}
}

ccmValidateBlockForm = function() { return tonyRssLink.validate(); }