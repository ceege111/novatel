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
		$(currentMenu).fadeIn(50, 'swing', function(){
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

	//special product tabs
	$(".nav-header-tabs-sp li").each(function(){
		var containerSp = $("div.container.oneColumn") || $("div.container.rightSidevar");
		$(this).click(function(){
			$(".nav-header-tabs-sp li").not(this).each(function(){
				$(this).removeClass('nav-selected');
				$(this).find('a').removeClass('nav-selected');
			});
			var curTab = this;
			// $(this).addClass('nav-selected');
			// $(this).find('a').addClass('nav-selected');
			console.log(this);
			console.log("loading tab "+$(this).attr('href'));
			containerSp.fadeOut();
			$.get($(this).find('a').attr('href'),function(data){
				var breadCrumb = $(data).find('div.breadcrumb').first();
				if ($("div.breadcrumb").hasClass('default')){
					breadCrumb.find('i').removeClass('icon-white');
				}
				var output = $(data).find(containerSp).first();
				console.log(output.html());
				$("div.breadcrumb").html($(breadCrumb).html());
				containerSp.html(output.html());
				containerSp.fadeIn(function(){
					$(curTab).addClass('nav-selected');
					$(curTab).find('a').addClass('nav-selected');
					$("body .wrap").css('min-height', $("body .wrap").innerHeight() );
				});
			});
		});
		$("body .wrap").css('min-height', $("body .wrap").innerHeight() );
	});
	$(".nav-header-tabs-sp li a").each(function(){
		$(this).click(function(e){
			e.preventDefault();
		});
	});

	//where to buy menus

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

	/* Downloads results table */
	$(".downloads_mifi").click(function(){
		$("table.support-results").not("table.support-results:nth-child(1)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(1)").fadeIn(100);
		return false;
	});

	$(".downloads_modem").click(function(){
		$("table.support-results").not("table.support-results:nth-child(2)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(2)").fadeIn(100);
		return false;
	});

	$(".downloads_datacard").click(function(){
		$("table.support-results").not("table.support-results:nth-child(3)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(3)").fadeIn(100);
		return false;
	});

	$(".downloads_embedded").click(function(){
		$("table.support-results").not("table.support-results:nth-child(4)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(4)").fadeIn(100);
		return false;
	});

	$(".downloads_software").click(function(){
		$("table.support-results").not("table.support-results:nth-child(5)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(5)").fadeIn(100);
		return false;
	});

	$(".downloads_m2m_modules").click(function(){
		$("table.support-results").not("table.support-results:nth-child(6)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(6)").fadeIn(100);
		return false;
	});

	$(".downloads_mobile_tracking").click(function(){
		$("table.support-results").not("table.support-results:nth-child(7)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(7)").fadeIn(100);
		return false;
	});

	$(".downloads_monitoring_tracking").click(function(){
		$("table.support-results").not("table.support-results:nth-child(8)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(8)").fadeIn(100);
		return false;
	});

	$(".downloads_telemetry").click(function(){
		$("table.support-results").not("table.support-results:nth-child(9)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(9)").fadeIn(100);
		return false;
	});

	$(".downloads_enablements").click(function(){
		$("table.support-results").not("table.support-results:nth-child(10)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(10)").fadeIn(100);
		return false;
	});

	$(".downloads_workforce").click(function(){
		$("table.support-results").not("table.support-results:nth-child(11)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(11)").fadeIn(100);
		return false;
	});

});