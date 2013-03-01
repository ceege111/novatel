/* Author: Rational

*/

var popped = ('state' in window.history), initialURL = location.href; //chrome popstate onload check

$(document).ready(function(){

	//dropdown menu
	window.dropdownTimer = '';

	var hideMenu = function() {
		$(".mainMenu .nav > li > a.dropdown-toggle").each(function(){
			$(this).removeClass('hover');
		});
		$(".mainMenu .nav ul.dropdown-menu").fadeOut(0);
	};

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
		$(currentMenu).fadeIn(0, 'swing', function(){
			$(".mainMenu .nav > li > a.dropdown-toggle").each(function(){
				$(this).mouseover(function(){
					menuMouseover(this);
				});
			});
		});
	};
	$(".mainMenu .nav > li > a.dropdown-toggle").each(function(e){
		$(this).mouseover(function(){
			clearTimeout(window.dropdownTimer);
			menuMouseover(this);
		});
	});

	$(".nav ul.dropdown-menu").each(function(){
		$(this).mouseleave(function(){
			clearTimeout(window.dropdownTimer);
			window.dropdownTimer = setTimeout(hideMenu, 500);
		});
		$(this).mouseover(function(){
			clearTimeout(window.dropdownTimer);
		});
	});
	$(".mainMenu .nav > li").each(function() {
		$(this).mouseleave(function() {
			clearTimeout(window.dropdownTimer);
			window.dropdownTimer = setTimeout(hideMenu, 500);
		});
		$(this).mouseover(function(){
			clearTimeout(window.dropdownTimer);
		});
	});

	//iframe content resize
	var calculatedHeight = $(window).innerHeight() - $(".headerWrap").outerHeight(true) - 20;
	$("#iframeContent").attr('height', calculatedHeight);
	//console.log('iframe height changed to: '+calculatedHeight);
	$(window).resize(function(){
		var calcHeight = $(window).innerHeight() - $(".headerWrap").outerHeight(true) - 20;
		// if (calcHeight < 1000){
			// calcHeight = 1000;
		// }
		$("#iframeContent").attr('height',calcHeight);
		//console.log('iframe height changed to: '+calcHeight);
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
	if($("html").hasClass('history')){
	// if(0){
		$(".nav-header-tabs-sp li").each(function(){
			if ($("div.container.oneColumn").length) {
				var containerSp = $("div.container.oneColumn");
			} else {
				var containerSp = $("div.container.rightSidebar");
			}
			$(this).click(function(){
				var link = $(this).find('a').first();
				$(".nav-header-tabs-sp li").not(this).each(function(){
					$(this).removeClass('nav-selected');
					$(this).find('a').removeClass('nav-selected');
				});
				var curTab = this;
				//console.log(this);
				//console.log(link);
				//console.log("loading tab "+link.attr('href'));
				$("body .wrap").css('min-height', $("body .wrap").innerHeight() );
				containerSp.fadeOut();
				$.get(link.attr('href'),function(data){

					var breadCrumb = $(data).find('div.breadcrumb').first();
					$("div.breadcrumb").html($(breadCrumb).html());

					var output = $(data).find("div.container.oneColumn");
					if (output.length == 0){
						output = $(data).find("div.container.rightSidebar");
						containerSp.addClass('rightSidebar').removeClass('oneColumn');
					} else {
						containerSp.addClass('oneColumn').removeClass('rightSidebar');
					}
					containerSp.removeClass('product');
					
					//console.log(output);
					//console.log($(output).html());
					containerSp.html(output.html());

					$(curTab).addClass('nav-selected');
					$(curTab).find('a').addClass('nav-selected');

					// $(".product-list a").each(function(){
					// 	$(this).live('click',function(e){
					// 		e.preventDefault();
					// 		//console.log('product page AJAX goes here...');
					// 	})
					// });

					//update url
					document.title = $(data).find("title").text();
					if($("html").hasClass('history')){
						window.history.pushState({"html":$(output).html(),"pageTitle":document.title},'',link.attr('href'));
					}
					if($("#modules_list").length){
						var read_more = $("<div></div>");
						read_more.addClass('gray-block span4 row product-item read-more');
						read_more.append('<h4>See Also:</h4>');
						read_more.append('<a title="M2M Modules" href="http://dev.v2.novatel.rtio.nl/index.php?cID=382">M2M Modules</a><p><a title="M2M Modules" href="/index.php?cID=219"><img style="margin-top: 0px; margin-bottom: 0px;" src="/index.php/download_file/view_inline/28/" alt="NVTL-13.jpg" width="250" /></a></p>');
						$("#modules_list > div").append(read_more);
					}
					containerSp.fadeIn(function(){
						$("body .wrap").css('min-height', 'inherit' );
						if($("div.ccm-gallery-wrap").length){
							//console.log('loading gridslider...');
							$("div.ccm-gallery-wrap").gridSlider({cols: 4, rows: 4,align:'center',width:'800px',autoplay_enable:true,autoplay_interval:6,scroll_axis:'x',loop:true,ctrl_arrows:false,ctrl_pag:true,ctrl_always_visible:true});
						}

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

		$(".product-list a,a.product-link").live('click',function(e){
			e.preventDefault();
			//console.log('product page AJAX goes here...');
			if ($("div.container.oneColumn").length) {
				var containerSp = $("div.container.oneColumn");
			} else {
				var containerSp = $("div.container.rightSidebar");
			}
			var link = $(this);
			$("body .wrap").css('min-height', $("body .wrap").innerHeight() );
			containerSp.fadeOut();
			$.get(link.attr('href'),function(data){
				var breadCrumb = $(data).find('div.breadcrumb').first();
				$("div.breadcrumb").html($(breadCrumb).html());

				var output = $(data).find("div.container.oneColumn");
				if (output.length == 0){
					output = $(data).find("div.container.rightSidebar");
					containerSp.addClass('rightSidebar').removeClass('oneColumn');
				} else {
					containerSp.addClass('oneColumn').removeClass('rightSidebar');
				}
				containerSp.addClass('product');
				//console.log(output);
				//console.log($(output).html());
				containerSp.html(output.html());

				//update url
				document.title = $(data).find("title").text();
				if ($("html").hasClass('history')){
					window.history.pushState({"html":$(output).html(),"pageTitle":document.title},'',link.attr('href'));
				}
				if($("#modules_list").length){
					var read_more = $("<div></div>");
					read_more.addClass('gray-block span4 row product-item read-more');
					read_more.append('<h4>See Also:</h4>');
					read_more.append('<a title="M2M Modules" href="http://dev.v2.novatel.rtio.nl/index.php?cID=382">M2M Modules</a><p><a title="M2M Modules" href="/index.php?cID=219"><img style="margin-top: 0px; margin-bottom: 0px;" src="/index.php/download_file/view_inline/28/" alt="NVTL-13.jpg" width="250" /></a></p>');
					$("#modules_list > div").append(read_more);
				}
				containerSp.fadeIn(function(){
					$("body .wrap").css('min-height', 'inherit' );
				});
			});
		});

		window.onpopstate = function(event){
			var initialPop = !popped && location.href == initialURL;
			popped = true;
			if ( initialPop ) return;

			var state = event.state;

			// console.log("location: " + window.location + ", state: " + JSON.stringify(event.state));
			// console.log(event);
			// console.log(state);

			if ( state == null ) return;

			if ($("div.container.oneColumn").length) {
				var containerSp = $("div.container.oneColumn");
			} else {
				var containerSp = $("div.container.rightSidebar");
			}
			$("body .wrap").css('min-height', $("body .wrap").innerHeight() );
			containerSp.fadeOut();
			window.location.href = window.location.href;

			// if ($("div.container.oneColumn").length) {
			// 	var containerSp = $("div.container.oneColumn");
			// } else {
			// 	var containerSp = $("div.container.rightSidebar");
			// }
			// var link = window.location.href;
			// $("body .wrap").css('min-height', $("body .wrap").innerHeight() );
			// containerSp.fadeOut();
			// $.get(link,function(data){
			// 	var breadCrumb = $(data).find('div.breadcrumb').first();
			// 	$("div.breadcrumb").html($(breadCrumb).html());

			// 	var output = $(data).find("div.container.oneColumn");
			// 	if (output.length == 0){
			// 		output = $(data).find("div.container.rightSidebar");
			// 		containerSp.addClass('rightSidebar').removeClass('oneColumn');
			// 	} else {
			// 		containerSp.addClass('oneColumn').removeClass('rightSidebar');
			// 	}
			// 	containerSp.addClass('product');
			// 	//console.log(output);
			// 	//console.log($(output).html());
			// 	containerSp.html(output.html());

			// 	//update url
			// 	document.title = $(data).find("title").text();
			// 	if ($("html").hasClass('history')){
			// 		window.history.pushState({"html":$(output).html(),"pageTitle":document.title},'',link);
			// 	}
			// 	if($("#modules_list").length){
			// 		var read_more = $("<div></div>");
			// 		read_more.addClass('gray-block span4 row product-item read-more');
			// 		read_more.append('<h4>See Also:</h4>');
			// 		read_more.append('<a title="M2M Modules" href="http://dev.v2.novatel.rtio.nl/index.php?cID=382">M2M Modules</a><p><a title="M2M Modules" href="/index.php?cID=219"><img style="margin-top: 0px; margin-bottom: 0px;" src="/index.php/download_file/view_inline/28/" alt="NVTL-13.jpg" width="250" /></a></p>');
			// 		$("#modules_list > div").append(read_more);
			// 	}
			// 	containerSp.fadeIn(function(){
			// 		$("body .wrap").css('min-height', 'inherit' );
			// 	});
			// });
		}
	}

	//where to buy menus

	$("select.region-menu").each(function(){
		$(this).change(function(){
			var region = $(this).val();
			//console.log('changing to region '+region);
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
			//console.log('changing country to '+country);
			//console.log($(this).parentsUntil('td'));
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
		$(window).scrollTop(530);
		return false;
	});

	$(".downloads_modem").click(function(){
		$("table.support-results").not("table.support-results:nth-child(2)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(2)").fadeIn(100);
		$(window).scrollTop(530);
		return false;
	});

	$(".downloads_datacard").click(function(){
		$("table.support-results").not("table.support-results:nth-child(3)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(3)").fadeIn(100);
		$(window).scrollTop(530);
		return false;
	});

	$(".downloads_embedded").click(function(){
		$("table.support-results").not("table.support-results:nth-child(4)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(4)").fadeIn(100);
		$(window).scrollTop(530);
		return false;
	});

	// $(".downloads_software").click(function(){
	// 	$("table.support-results").not("table.support-results:nth-child(5)").each(function(){
	// 		$(this).hide();
	// 	});
	// 	$("table.support-results:nth-child(5)").fadeIn(100);
	// 	return false;
	// });

	// $(".downloads_m2m_modules").click(function(){
	// 	$("table.support-results").not("table.support-results:nth-child(6)").each(function(){
	// 		$(this).hide();
	// 	});
	// 	$("table.support-results:nth-child(6)").fadeIn(100);
	// 	return false;
	// });

	$(".downloads_mobile_tracking").click(function(){
		$("table.support-results").not("table.support-results:nth-child(6)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(6)").fadeIn(100);
		$(window).scrollTop(530);
		return false;
	});

	$(".downloads_monitoring_tracking").click(function(){
		$("table.support-results").not("table.support-results:nth-child(7)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(7)").fadeIn(100);
		$(window).scrollTop(530);
		return false;
	});

	$(".downloads_telemetry").click(function(){
		$("table.support-results").not("table.support-results:nth-child(8)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(8)").fadeIn(100);
		$(window).scrollTop(530);
		return false;
	});

	// $(".downloads_enablements").click(function(){
	// 	$("table.support-results").not("table.support-results:nth-child(10)").each(function(){
	// 		$(this).hide();
	// 	});
	// 	$("table.support-results:nth-child(10)").fadeIn(100);
	// 	return false;
	// });

	$(".downloads_workforce").click(function(){
		$("table.support-results").not("table.support-results:nth-child(10)").each(function(){
			$(this).hide();
		});
		$("table.support-results:nth-child(10)").fadeIn(100);
		$(window).scrollTop(530);
		return false;
	});

});