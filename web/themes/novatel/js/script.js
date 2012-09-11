/* Author: Rational

*/

$(document).ready(function(){
	// $('div.mainMenu>div>ul.nav').dropdown();

	$(".mainMenu .nav > li > a.dropdown-toggle").each(function(e){
		var currentMenu = $(this).next("ul");
		$(this).mouseover(function(e){
			$(".nav ul.dropdown-menu").not(currentMenu).each(function(){
				$(this).hide();
			});
			$(currentMenu).fadeIn(100, 'swing', function(){
				$(".nav ul.dropdown-menu").each(function(){
					$(".nav ul.dropdown-menu").not(currentMenu).each(function(){
						$(this).fadeOut();
					});
				});
			});
		});
	});

	// $(".nav ul.dropdown-menu").each(function(){
	// 	$(this).mouseleave(function(){
	// 		$(this).delay(300).hide();
	// 	});
	// });

});


