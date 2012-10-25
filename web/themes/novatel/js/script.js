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
	var calculatedHeight = $(window).innerHeight() - $(".headerWrap").outerHeight(true) - 20;
	$("#iframeContent").attr('height', calculatedHeight);
	$(window).resize(function(){
		var calcHeight = $(window).innerHeight() - $(".headerWrap").outerHeight(true) - 20;
		$("#iframeContent").attr('height',calcHeight);
	});

	//table tabs
	$(".tableTabs li.tab:first-child").addClass('nav-selected');
	var tabCounter = 1;
	$(".tableTabs li.tab").each(function(){
		$(this).addClass("tableSection"+tabCounter).data('tableSection',tabCounter);
		tabCounter++;
		$(this).click(function(){
			$(".tableTabs li.tab").not(this).each(function(){
				$(this).removeClass('nav-selected');
			});
			$(this).addClass('nav-selected');
			$(".table.tableContent tr").not(".table.tableContent tr.tableSection"+$(this).data('tableSection')).not(".table.tableContent tr.tableHeader").each(function(){
				$(this).hide();
			});
			$(".table.tableContent tr.tableSection"+$(this).data('tableSection')).each(function(){
				$(this).show();
			});
		});
	});



});


                                                