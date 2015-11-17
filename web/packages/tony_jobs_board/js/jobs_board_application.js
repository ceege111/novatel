
$(function(){
		   
	var blockForm = $('#jobs_board_application_body form');
	
	$('#jobs_board_application_header var').each(function(){
				
		var $this = $(this),
			keyID = $this.attr('id')		
		if( $this.attr('id').indexOf('_key_name')==-1 ) return;  
					
		var keyName = $this.html(); 
		
		blockForm.find('td,label').each(function(){ 
			var $label = $(this);  
			
			if( $label.html().indexOf(keyName)==-1 ) return; 
			
			$label.css('display','none'); 	
			$label.parent().css('display','none');  
			
			$label.parent().find('input').val( $('#'+keyID.replace('_key_name','_value')).html() ); 

		}); 
						  
	}); 
	
}); 