/* Author: Rational

*/

$(document).ready(function(){
	// $('div.mainMenu>div>ul.nav').dropdown();

	$(".mainMenu .nav > li > a.dropdown-toggle").each(function(e){
		var currentMenu = $(this).next("ul");
		$(this).mouseover(function(e){
			$(".mainMenu .nav > li > a.dropdown-toggle").not(this).each(function(){
				$(this).removeClass('hover');
			});
			$(this).addClass('hover');
			$(".nav ul.dropdown-menu").not(currentMenu).each(function(){
				$(this).hide();
			});
			$(currentMenu).fadeIn(100, 'swing', function(){
			});
		});
	});

	$(".nav ul.dropdown-menu").each(function(){
		$(this).mouseleave(function(){
			$(".mainMenu .nav > li > a.dropdown-toggle").each(function(){
				$(this).removeClass('hover');
			});
			$(this).fadeOut();
		});
	});

	//iframe content resize
	var calculatedHeight = $(window).innerHeight() - $(".headerWrap").outerHeight(true);
	$("#iframeContent").attr('height', calculatedHeight);
	$(window).resize(function(){
		var calcHeight = $(window).innerHeight() - $(".headerWrap").outerHeight(true);
		$("#iframeContent").attr('height',calcHeight);
	});

});


                                                