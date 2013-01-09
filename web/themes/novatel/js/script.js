/* Author: Rational

*/

$(document).ready(function(){

	//dropdown menu
	window.dropdownTimer = '';
	var menuMouseover = function(obj){
		var currentMenu = $(obj).next("ul");
		$(".mainMenu .nav > li > a.dropdown-toggle").unbind();
		$(".mainMenu .nav > li > a.dropdown-toggle").not(obj).each(function(){
			$(this).removeClass('hover');
		});
		$(obj).addClass('hover');
		$(".nav ul.dropdown-menu").not(currentMenu).each(function(){
			$(this).hide();
		});
		$(currentMenu).fadeIn(100, 'swing', function(){
			$(".mainMenu .nav > li > a.dropdown-toggle").each(function(){
				$(this).mouseover(function(){
					menuMouseover(this);
				});
			});
		});
	};
	$(".mainMenu .nav > li > a.dropdown-toggle").each(function(e){
		$(this).mouseover(function(){
			menuMouseover(this);
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
	console.log('iframe height changed to: '+calculatedHeight);
	$(window).resize(function(){
		var calcHeight = $(window).innerHeight() - $(".headerWrap").outerHeight(true) - 20;
		// if (calcHeight < 1000){
			// calcHeight = 1000;
		// }
		$("#iframeContent").attr('height',calcHeight);
		console.log('iframe height changed to: '+calcHeight);
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
				$(this).fadeIn();
			});
		});
	});


	//where to buy menus

	//extra rows need right display class
	// $(".tableContent tr.extra").each(function(){
	// 	var prevRow = $(this).prev('tr');
	// 	var prevClass = $(prevRow).attr('class');
	// 	console.log(prevRow);
	// 	console.log	(prevClass);
	// 	$(this).addClass(prevClass);
	// });

	$("select.region-menu").each(function(){
		$(this).change(function(){
			var region = $(this).val();
			console.log('changing to region '+region);
			$(this).parentsUntil('tr').find('div.carrier-list').each(function(){
				$(this).hide();
			});
			$(this).parentsUntil('tr').find('.country-menu').not('.country-menu.menu-'+region).each(function(){
				$(this).hide();
			});
			$(this).parentsUntil('tr').find('.country-menu.menu-'+region).delay(25).fadeIn(100).val('-');

			// var country = $('select.country-menu.menu-'+region).val();
			// $("div.carrier-list.menu-"+country).show();
		});
	});
	$("select.country-menu").each(function(){
		$(this).change(function(){
			var country = $(this).val();
			console.log('changing country to '+country);
			console.log($(this).parentsUntil('td'));
			$(this).parentsUntil('tr').find("div.carrier-list").not('.carrier-list.menu-'+country).each(function(){
				$(this).hide();
			});
			$(this).parentsUntil('tr').find('.carrier-list.menu-'+country).fadeIn(100);
		});
	});

	$(".support_mifi").click(function(){
		$("table.support-results").not("table.support-results:nth-child(1)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(1)").fadeIn(100);
		return false;
	});

	$(".support_modem").click(function(){
		$("table.support-results").not("table.support-results:nth-child(2)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(2)").fadeIn(100);
		return false;
	});

	$(".support_datacard").click(function(){
		$("table.support-results").not("table.support-results:nth-child(3)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(3)").fadeIn(100);
		return false;
	});

	$(".support_embedded").click(function(){
		$("table.support-results").not("table.support-results:nth-child(4)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(4)").fadeIn(100);
		return false;
	});

});