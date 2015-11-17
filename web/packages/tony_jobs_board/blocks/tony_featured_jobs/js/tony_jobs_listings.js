$(function(){ 
		   
	$('.jobs_board_featured_mode_slideshow').each(function(){ 
														   
		var $this = $(this),
			bID = $this.attr('id').replace('jobs_board_featured_listings_wrap',''),
			animationType = $this.find('.animationType').html(),
			animationDurationMilli = parseFloat($this.find('.animationDurationMilli').html());  
		
		$this.find('.jobs_board_featured_listings').cycle({ 
			fx: animationType, 
			pause:  1, 
			timeout: animationDurationMilli, 
			delay:  Math.ceil(animationDurationMilli/4),
			next: ".jobs_board_featured_listings_rightArrow_"+bID, 
			prev: ".jobs_board_featured_listings_leftArrow_"+bID 
		});
														   
	});	
		   
})