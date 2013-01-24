/*

GridSlider v1.2 - for jQuery 1.5+ - May 2012

copyright: Por Design 2012
contact: contact.pordesign@gmail.com
website: http://ether-wp.com/ or http://pordesign.eu/
buy license at: http://codecanyon.net/item/ether-grid-slider-jquery-plugin/1713182

*/

(function($) {
	
	"use strict";
	
	if(!jQuery.easing.easeInQuad)
	{
jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(e,a,c,b,d){return jQuery.easing[jQuery.easing.def](e,a,c,b,d)},easeInQuad:function(e,a,c,b,d){return b*(a/=d)*a+c},easeOutQuad:function(e,a,c,b,d){return-b*(a/=d)*(a-2)+c},easeInOutQuad:function(e,a,c,b,d){if((a/=d/2)<1)return b/2*a*a+c;return-b/2*(--a*(a-2)-1)+c},easeInCubic:function(e,a,c,b,d){return b*(a/=d)*a*a+c},easeOutCubic:function(e,a,c,b,d){return b*((a=a/d-1)*a*a+1)+c},easeInOutCubic:function(e,a,c,b,d){if((a/=d/2)<1)return b/2*a*a*a+c;return b/2*((a-=2)*a*a+2)+c},easeInQuart:function(e,a,c,b,d){return b*(a/=d)*a*a*a+c},easeOutQuart:function(e,a,c,b,d){return-b*((a=a/d-1)*a*a*a-1)+c},easeInOutQuart:function(e,a,c,b,d){if((a/=d/2)<1)return b/2*a*a*a*a+c;return-b/2*((a-=2)*a*a*a-2)+c},easeInQuint:function(e,a,c,b,d){return b*(a/=d)*a*a*a*a+c},easeOutQuint:function(e,a,c,b,d){return b*((a=a/d-1)*a*a*a*a+1)+c},easeInOutQuint:function(e,a,c,b,d){if((a/=d/2)<1)return b/2*a*a*a*a*a+c;return b/2*((a-=2)*a*a*a*a+2)+c},easeInSine:function(e,
a,c,b,d){return-b*Math.cos(a/d*(Math.PI/2))+b+c},easeOutSine:function(e,a,c,b,d){return b*Math.sin(a/d*(Math.PI/2))+c},easeInOutSine:function(e,a,c,b,d){return-b/2*(Math.cos(Math.PI*a/d)-1)+c},easeInExpo:function(e,a,c,b,d){return a==0?c:b*Math.pow(2,10*(a/d-1))+c},easeOutExpo:function(e,a,c,b,d){return a==d?c+b:b*(-Math.pow(2,-10*a/d)+1)+c},easeInOutExpo:function(e,a,c,b,d){if(a==0)return c;if(a==d)return c+b;if((a/=d/2)<1)return b/2*Math.pow(2,10*(a-1))+c;return b/2*(-Math.pow(2,-10*--a)+2)+c},
easeInCirc:function(e,a,c,b,d){return-b*(Math.sqrt(1-(a/=d)*a)-1)+c},easeOutCirc:function(e,a,c,b,d){return b*Math.sqrt(1-(a=a/d-1)*a)+c},easeInOutCirc:function(e,a,c,b,d){if((a/=d/2)<1)return-b/2*(Math.sqrt(1-a*a)-1)+c;return b/2*(Math.sqrt(1-(a-=2)*a)+1)+c},easeInElastic:function(e,a,c,b,d){e=1.70158;var f=0,g=b;if(a==0)return c;if((a/=d)==1)return c+b;f||(f=d*0.3);if(g<Math.abs(b)){g=b;e=f/4}else e=f/(2*Math.PI)*Math.asin(b/g);return-(g*Math.pow(2,10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f))+c},easeOutElastic:function(e,
a,c,b,d){e=1.70158;var f=0,g=b;if(a==0)return c;if((a/=d)==1)return c+b;f||(f=d*0.3);if(g<Math.abs(b)){g=b;e=f/4}else e=f/(2*Math.PI)*Math.asin(b/g);return g*Math.pow(2,-10*a)*Math.sin((a*d-e)*2*Math.PI/f)+b+c},easeInOutElastic:function(e,a,c,b,d){e=1.70158;var f=0,g=b;if(a==0)return c;if((a/=d/2)==2)return c+b;f||(f=d*0.3*1.5);if(g<Math.abs(b)){g=b;e=f/4}else e=f/(2*Math.PI)*Math.asin(b/g);if(a<1)return-0.5*g*Math.pow(2,10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f)+c;return g*Math.pow(2,-10*(a-=1))*Math.sin((a*
d-e)*2*Math.PI/f)*0.5+b+c},easeInBack:function(e,a,c,b,d,f){if(f==undefined)f=1.70158;return b*(a/=d)*a*((f+1)*a-f)+c},easeOutBack:function(e,a,c,b,d,f){if(f==undefined)f=1.70158;return b*((a=a/d-1)*a*((f+1)*a+f)+1)+c},easeInOutBack:function(e,a,c,b,d,f){if(f==undefined)f=1.70158;if((a/=d/2)<1)return b/2*a*a*(((f*=1.525)+1)*a-f)+c;return b/2*((a-=2)*a*(((f*=1.525)+1)*a+f)+2)+c},easeInBounce:function(e,a,c,b,d){return b-jQuery.easing.easeOutBounce(e,d-a,0,b,d)+c},easeOutBounce:function(e,a,c,b,d){return(a/=
d)<1/2.75?b*7.5625*a*a+c:a<2/2.75?b*(7.5625*(a-=1.5/2.75)*a+0.75)+c:a<2.5/2.75?b*(7.5625*(a-=2.25/2.75)*a+0.9375)+c:b*(7.5625*(a-=2.625/2.75)*a+0.984375)+c},easeInOutBounce:function(e,a,c,b,d){if(a<d/2)return jQuery.easing.easeInBounce(e,a*2,0,b,d)*0.5+c;return jQuery.easing.easeOutBounce(e,a*2-d,0,b,d)*0.5+b*0.5+c}});
	}
	
	if(!jQuery.mousewheel)
	{
		(function(d){var b=["DOMMouseScroll","mousewheel"];if(d.event.fixHooks){for(var a=b.length;a;){d.event.fixHooks[b[--a]]=d.event.mouseHooks}}d.event.special.mousewheel={setup:function(){if(this.addEventListener){for(var e=b.length;e;){this.addEventListener(b[--e],c,false)}}else{this.onmousewheel=c}},teardown:function(){if(this.removeEventListener){for(var e=b.length;e;){this.removeEventListener(b[--e],c,false)}}else{this.onmousewheel=null}}};d.fn.extend({mousewheel:function(e){return e?this.bind("mousewheel",e):this.trigger("mousewheel")},unmousewheel:function(e){return this.unbind("mousewheel",e)}});function c(j){var h=j||window.event,g=[].slice.call(arguments,1),k=0,i=true,f=0,e=0;j=d.event.fix(h);j.type="mousewheel";if(h.wheelDelta){k=h.wheelDelta/120}if(h.detail){k=-h.detail/3}e=k;if(h.axis!==undefined&&h.axis===h.HORIZONTAL_AXIS){e=0;f=-1*k}if(h.wheelDeltaY!==undefined){e=h.wheelDeltaY/120}if(h.wheelDeltaX!==undefined){f=-1*h.wheelDeltaX/120}g.unshift(j,k,f,e);return(d.event.dispatch||d.event.handle).apply(this,g)}})(jQuery);
	}
	
	if ( ! $.browser.msie || $.browser.msie && $.browser.version > 8)
	{
		if (!jQuery.swipe)
		{
			(function(a){a.fn.swipe=function(b){var c={threshold:{x:30,y:10},swipeLeft:function(){alert("swiped left")},swipeRight:function(){alert("swiped right")}};var b=a.extend(c,b);if(!this){return false}return this.each(function(){var h=a(this);var f={x:0,y:0};var d={x:0,y:0};function e(k){f.x=k.targetTouches[0].pageX;f.y=k.targetTouches[0].pageY}function j(k){k.preventDefault();d.x=k.targetTouches[0].pageX;d.y=k.targetTouches[0].pageY}function g(k){var l=f.y-d.y;if(l<c.threshold.y&&l>(c.threshold.y*-1)){changeX=f.x-d.x;if(changeX>c.threshold.x){c.swipeLeft()}if(changeX<(c.threshold.x*-1)){c.swipeRight()}}}function e(k){f.x=k.targetTouches[0].pageX;f.y=k.targetTouches[0].pageY;d.x=f.x;d.y=f.y}function i(k){}this.addEventListener("touchstart",e,false);this.addEventListener("touchmove",j,false);this.addEventListener("touchend",g,false);this.addEventListener("touchcancel",i,false)})}})(jQuery);
		}
	}
	
	window.egs = {};
	egs.elem_cfg = {};
	egs.prefix = 'ether';
	
	egs.add_prefix = function (string)
	{
		if (egs.prefix && egs.prefix !== '')
		{
			return egs.prefix + '-' + string;
		} else
		{
			//console.log(string);
			return string;
		}
	}
	
	egs.in_view = function($elem) 
	{
		var e_t = $elem.offset().top;
		var e_h = $elem.outerHeight();
		var w_t = $(window).scrollTop();
		var w_h = $(window).height();

		if ((e_t + e_h < w_t + w_h && e_t + e_h > w_t) || (e_t < w_t + w_h && e_t > w_t)) 
		{
			return true;
		} else 
		{
			return false;
		}
	}
	
	egs.set_slider_window_height = function ($elem, cfg) 
	{
		cfg.$slider_window
			.stop(true, true)
			.animate({height: cfg.col_group_elems_height[cfg.view_pos]}, cfg.scroll_speed);
	}
	
	egs.apply_shift = function ($elem, cfg) 
	{
		var scroll_axis = ['x', 'y', 'z'];
		var transition = ['slide', 'slideIn', 'slideOut', 'switch', 'swap'];
		var random_axis;
		var random_transition;
		var x1 = 0;
		var y1 = 0;
		var x2 = 0;
		var y2 = 0;
		var invert1 = 1;
		var invert2 = 1;
		
		if (cfg.transition === 'random') 
		{
			random_transition = true;
			cfg.transition = transition[Math.ceil(Math.random() * transition.length - 1)];
		}
		
		if (cfg.scroll_axis === 'random') 
		{
			random_axis = true;
			cfg.scroll_axis = scroll_axis[Math.ceil(Math.random() * scroll_axis.length - 1)];
		} 
		
		if (cfg.scroll_axis === 'x') 
		{
			x1 = 1;
			x2 = 1;
		} else if (cfg.scroll_axis === 'y') 
		{
			y1 = 1;
			y2 = 1;
		}
		
		if (cfg.transition === 'slideIn') 
		{
			x2 = 0;
			y2 = 0;
		} else if (cfg.transition === 'slideOut') 
		{
			x1 = 0;
			y1 = 0;
		} else if (cfg.transition === 'switch' || cfg.transition === 'swap' || cfg.transition === 'shuffle') 
		{
			invert2 = -1;
		}
		
		if (random_transition === true) 
		{
			cfg.transition = 'random';
		}
		
		if (random_axis === true) 
		{
			cfg.scroll_axis = 'random';
		}
		
		cfg.$col_group_elems
			.eq(cfg.view_pos)
				.css({ left: cfg.shift_dir * cfg.elem_width * x1 * invert1, top: cfg.shift_dir * cfg.col_group_elems_height[cfg.view_pos] * y1 * invert1, visibility: 'visible', 'z-index': 10, opacity: 0 })
				.animate({ left: 0, top: 0, opacity: 1}, cfg.scroll_speed, cfg.easing )
				.end()
			.eq(cfg.prev_view_pos)
				.css({ left: 0, top: 0 })
				.animate({ left: -cfg.shift_dir * cfg.elem_width * x2 * invert2, top: -cfg.shift_dir * cfg.col_group_elems_height[cfg.view_pos] * y2 * invert2, opacity: 0 }, cfg.scroll_speed, cfg.easing, function () 
				{
					$(this).css({ visibility: 'hidden', 'z-index': -1 })
				});
	
		egs.set_slider_window_height($elem, cfg);
		
		var t = setTimeout(function () 
		{
			cfg.shift_busy = 0;
		}, cfg.scroll_speed);
	}
	
	egs.init_shift = function ($elem, cfg, shift_type, shift_dest) 
	{
		if (shift_type === 'absolute' && shift_dest === cfg.view_pos)
		{
			return false;
		}
		
		if (cfg.col_group_elems_count === 1)
		{
			return false;
		}
		
		if (cfg.shift_busy !== 1) 
		{	
			cfg.shift_dir = function () 
			{
				if (shift_type === 'absolute')
				{
					if (shift_dest > cfg.view_pos) 
					{
						return 1;
					} else if (shift_dest < cfg.view_pos) 
					{
						return -1;
					} else 
					{
						return 0;
					}
				} else if (shift_type === 'relative')
				{
					return shift_dest;
				}
			}();
			
			cfg.prev_view_pos = cfg.view_pos;
			
			cfg.view_pos = function () 
			{
				if (shift_type === 'relative') 
				{
					if (cfg.loop === true)
					{
						if (cfg.view_pos + cfg.shift_dir < 0) 
						{
							return cfg.col_group_elems_count - 1;
						} else if (cfg.view_pos + cfg.shift_dir > cfg.col_group_elems_count - 1) 
						{
							return 0;
						} else
						{
							return cfg.view_pos + cfg.shift_dir;
						}
					} else if (cfg.loop === false) 
					{
						if (cfg.view_pos + cfg.shift_dir < 0) 
						{
							return -2;
						} else if (cfg.view_pos + cfg.shift_dir > cfg.col_group_elems_count - 1) 
						{
							return -2;
						} else
						{
							return cfg.view_pos + cfg.shift_dir;
						}
					}
				} else if (shift_type === 'absolute') 
				{
					return shift_dest;
				}
			}();
			
			if (cfg.view_pos !== -2)
			{
				if (cfg.ctrl_pag === true) 
				{
					cfg.$ctrl_pag_elem
						.children()
							.removeClass(egs.add_prefix('current'))
							.eq(cfg.view_pos)
								.addClass(egs.add_prefix('current'));
				}
				cfg.shift_busy = 1;
				egs.apply_shift($elem, cfg);
				egs.resume_autoplay($elem, cfg);
			}
			else {
				cfg.view_pos = cfg.prev_view_pos;
			}
		}
	}
	
	egs.set_grid_rows = function ($elem, cfg) 
	{
		var a;
		var target_class = egs.add_prefix('first-col'); 
		
		cfg.$col_elems.removeClass(target_class);
		
		if (cfg.grid_height === 'auto' ) 
		{	
			for (a = 0; a < cfg.col_elem_count; a += 1)
			{
				if (a % cfg.true_cols === 0)
				{
					cfg.$col_elems.eq(a).addClass(target_class);
				}
			}
		} else if (cfg.grid_height === 'constrain') 
		{
			cfg.$col_elems.css({height: cfg.col_elem_width, overflow: 'hidden'});
		} else if (typeof cfg.grid_height === 'number') 
		{
			cfg.$col_elems.css({height: cfg.grid_height, overflow: 'hidden'});
		}
	}
	
	egs.init_slider_functions = function ($elem, cfg) 
	{
		if (cfg.col_group_elems_count > 1) 
		{
			egs.init_autoplay($elem, cfg);
			
			if ( ! $.browser.msie || $.browser.msie && $.browser.version > 8)
			{
				$elem
					.swipe({
					     swipeLeft: function() 
					     { 
					     	egs.init_shift($elem, cfg, 'relative', 1); 
					     },
					     swipeRight: function() { 
					     	egs.init_shift($elem, cfg, 'relative', -1); 
					     }
					});
			}
				
			$elem
				.bind('mousewheel', function (event, delta, deltaX, deltaY) 
				{	
					// var shiftdest = -1;
					
					// if (deltaY !== 0 && deltaY < 0 || deltaX !== 0 && deltaX > 0)
					// {
					// 	shiftdest = 1;
					// }
					
					// egs.init_shift($elem, cfg, 'relative', shiftdest);
					// //egs.resume_autoplay($elem, cfg);
					// event.preventDefault();
				})
				.bind('mouseenter', function () 
				{
					//var					
					//	scroll_x = $(window).scrollLeft(),
					//	scroll_y = $(window).scrollTop();
					// egs.pause_autoplay($elem, cfg);
				})
				.bind('mouseleave', function () 
				{
					// egs.resume_autoplay($elem, cfg);
				});
				
			if (cfg.$ctrl_wrap) 
			{
				cfg.$ctrl_wrap
					.css({	
						'margin-left': function() 
						{
							return -$(this).outerWidth()/2;
						},
						'margin-top': function () 
						{
							return -$(this).outerHeight()/2 - cfg.col_spacing_size / 2 * cfg.col_spacing_enable;
						}
					})
					.find('.' + egs.add_prefix('ctrl'))
						.attr('unselectable', 'on')
						.css({
							'-ms-user-select':'none',
							'-moz-user-select':'none',
							'-webkit-user-select':'none',
							'user-select':'none'
						})
						.bind('click', function() 
						{
							this.onselectstart = function() 
							{ 
								return false;
							}
							
							egs.init_shift($elem, cfg, $(this).data('shifttype'), $(this).data('shiftdest'));
							//egs.resume_autoplay($elem, cfg);
							
							return false;
						});
			}
			
			if (cfg.ctrl_external.length > 0) 
			{
				cfg.ctrl_external.forEach(function (elem)
				{
					var $elem = elem[0]
					var destination = elem[1];
					var shifttype = typeof destination === 'number' ? 'absolute' : 'relative';
					console.log(typeof destination === 'number')
					$elem
						.attr('data-shifttype', shifttype)
						.attr('data-shiftdest', destination === 'prev' ? '-1' : '1')
						.bind('click', function (e) 
						{
							if ($(this).data('shiftdest') <= cfg.col_group_elems_count) 
							{
								egs.init_shift($elem, cfg, $(this).data('shifttype'), $(this).data('shiftdest'));
								//egs.resume_autoplay($elem, cfg);
								
								e.preventDefault();
							}
						});
				})
			}
		}
	}
	
	egs.set_col_groups = function ($elem, cfg) 
	{	
		var a;
		var col_group_class = egs.add_prefix('col-group');

		if (cfg.$col_group_elems && cfg.$col_group_elems.length > 0) 
		{
			cfg.$col_elems.unwrap();
		}
		
		for (a = 0; a < cfg.col_elem_count; a += cfg.col_group_elems_capacity) 
		{
			$('<div class="' + col_group_class + '"></div>')
				.appendTo(cfg.$col_elems_wrap)
				.append(function () 
				{
					if(a + cfg.col_group_elems_capacity < cfg.col_elem_count) 
					{
						return cfg.$col_elems_wrap.children().slice(0, cfg.col_group_elems_capacity);
					} else 
					{
						return cfg.$col_elems_wrap.children().slice(0, cfg.col_elem_count - a);
					}
				});
		}
		
		cfg.$col_group_elems = $elem.find('.' + col_group_class);
		cfg.$col_group_elems
			.eq(cfg.view_pos)
				.css({'z-index': 1, visibility: 'visible'});
		
		egs.on_images_load_end($elem, cfg, function () 
		{
			cfg.col_group_elems_height = [];
			cfg.$col_group_elems.each(function (id)
			{			
				cfg.col_group_elems_height.push(cfg.$col_group_elems.eq(id).outerHeight() - cfg.col_spacing_size * cfg.col_spacing_enable);			
			});
		});
	};
	
	egs.update_slider_ctrl = function ($elem, cfg) 
	{
		if (cfg.ctrl_active === true)
		{
			if (cfg.ctrl_pag === true) 
			{
				cfg.$ctrl_pag_elem
					.children()
						.eq(cfg.view_pos).addClass(egs.add_prefix('current'))
						.end()
						.css({display: 'block'})
						.slice(cfg.col_group_elems_count)
							.css({display: 'none'})
						.end()
					.end()
					.css({
						width: function () 
						{
							return cfg.col_group_elems_count * $(this).children().outerWidth(true);
						}
					});
			}
			
			if (cfg.ctrl_arrows === true && cfg.ctrl_pag === true) 
			{
				cfg.$ctrl_wrap
					.css({
						width: function () 
						{
							if (cfg.ctrl_pag && cfg.ctrl_arrows && cfg.$ctrl_pag_elem.outerWidth() > cfg.$ctrl_car_elem.outerWidth()) {
								return cfg.$ctrl_pag_elem.outerWidth();
							}
							else { 
								return cfg.$ctrl_car_elem.outerWidth();
							}
						},
						'margin-left': function() 
						{
							return -$(this).outerWidth()/2;
						}
					});
			} else 
			{
					cfg.$ctrl_wrap.css({ width: cfg.ctrl_car_elem_width });
			}
		}
	}
	
	egs.init_slider_ctrl = function ($elem, cfg)
	{
		if (cfg.ctrl_arrows === true || cfg.ctrl_pag === true) 
		{
			cfg.ctrl_active = true;
		} else
		{
			return false;
		}
		
		var ctrl_wrap_class = egs.add_prefix('ctrl-wrap');
		var ctrl_class = egs.add_prefix('ctrl');
		var ctrl_pag_class = egs.add_prefix('ctrl-pag');
		var ctrl_car_class = egs.add_prefix('ctrl-car');
		var ctrl_next_class = egs.add_prefix('next');
		var ctrl_prev_class = egs.add_prefix('prev');
	
		$('<div class="' + ctrl_wrap_class + '"></div>')
			.appendTo($elem)
			//.addClass(egs.addcfg.ctrl_pos)
		cfg.$ctrl_wrap = $elem.find('.' + ctrl_wrap_class);
		
		if (cfg.ctrl_always_visible === false)
		{
			cfg.$ctrl_wrap.hide();
			
			$elem
				.bind('mouseenter', function ()
				{
					cfg.$ctrl_wrap.stop(true, true).fadeIn(500);
				})
				.bind('mouseleave', function ()
				{
					cfg.$ctrl_wrap.stop(true, true).delay(500).fadeOut(500);
				});
		}
	
		if (cfg.ctrl_arrows === true) {
			cfg.$ctrl_wrap
				.append('<div class="' + ctrl_car_class + '"><div class="' + ctrl_class + ' ' + ctrl_prev_class + '" data-shifttype="relative" data-shiftdest="-1"></div><div class="' + ctrl_next_class + ' ' + ctrl_class + '" data-shifttype="relative" data-shiftdest="1"></div></div>');
			cfg.$ctrl_car_elem = cfg.$ctrl_wrap.find('.' + ctrl_car_class);
			cfg.ctrl_car_elem_width = cfg.$ctrl_car_elem.outerWidth();
		}
		
		if (cfg.ctrl_pag === true) 
		{
			cfg.$ctrl_wrap
				.append(function () 
				{
					var a;
					var result = '';
					
					result += '<div class="' + ctrl_pag_class + '">';
					for (a = 0; a < cfg.col_elem_count; a += 1) 
					{
						result += '<div class="' + ctrl_class + '" data-shifttype="absolute" data-shiftdest="' + a + '"></div>';
					}
					result += '</div>';
					
					return result;
				});
				
			cfg.$ctrl_pag_elem = cfg.$ctrl_wrap.find('.' + ctrl_pag_class);
			cfg.ctrl_pag_elem_width = cfg.$ctrl_pag_elem.outerWidth();
		}
		
		egs.update_slider_ctrl($elem, cfg);
		
		$(window)
			.bind('resize', function () {
				egs.update_slider_ctrl($elem, cfg);
			});
	}
	
		
	egs.init_slider_structure = function ($elem, cfg)
	{
		var slider_class; 
		var slider_window_class; 
		var load_overlay_class;
		
		if (cfg.slider === true)
		{
			slider_class = egs.add_prefix('slider');
			slider_window_class = egs.add_prefix('slider-window');
			load_overlay_class = egs.add_prefix('load-overlay');
			
			$elem
				.addClass(slider_class)
					.children()
						.wrapAll('<div class="' + slider_window_class + '"></div>');
			
			cfg.$slider_window = $elem.find('.' + slider_window_class);	
			cfg.$slider_window
				.css({height: 20, overflow: 'hidden'})
				.append(function () 
				{
					if ($(this).find('.' + load_overlay_class).length === 0) 
					{	
						return '<div class="' + load_overlay_class + '"></div>';
					}
				});
				
			cfg.$slider_window.find(load_overlay_class).show();
			
			egs.set_col_groups($elem, cfg);
			
			egs.on_images_load_end($elem, cfg, function () 
			{
				cfg.$slider_window
					.css({overflow: 'hidden' }) 
					.children('.' + load_overlay_class).delay(cfg.scroll_speed).fadeOut(1000).end()
					.queue(function () 
					{
						$(this)
							.css({'overflow': 'visible'})
							.dequeue();
					});

				egs.set_slider_window_height($elem, cfg);
			});
			
			egs.init_slider_ctrl($elem, cfg);
			egs.init_slider_functions($elem, cfg);
			
			$(window)
				.bind('resize', function () {
					egs.set_col_groups($elem, cfg);
					egs.set_slider_window_height($elem, cfg);
				});
		}
	}
	
	egs.get_grid_data = function ($elem, cfg) 
	{
		cfg.elem_width = $elem.outerWidth();
		cfg.$col_elems_wrap = $elem.find('.' + egs.add_prefix('cols'));
		cfg.$col_elems = $elem.find('.' + egs.add_prefix('col'));
		cfg.col_elem_count = cfg.$col_elems.length;
		cfg.col_elem_width = cfg.$col_elems.outerWidth();
		cfg.img_count = $elem.find('img').length;
		cfg.true_cols = Math.round(cfg.elem_width / cfg.col_elem_width);
		
		if ($(window).width() < 580) 
		{
			if(!cfg.original_rows) 
			{
				cfg.original_rows = cfg.rows;
			}
			cfg.rows = 1;
		}
		
		if ($(window).width() > 580 && typeof cfg.original_rows === 'number' && cfg.rows !== cfg.original_rows) 
		{
			cfg.rows = cfg.original_rows;
		}
		
		cfg.col_group_elems_capacity = cfg.rows * cfg.true_cols;
		cfg.col_group_elems_count = Math.ceil(cfg.col_elem_count/cfg.col_group_elems_capacity);
		
		if (cfg.view_pos >= cfg.col_group_elems_count) 
		{
			cfg.view_pos = 0;
		}
	}
	
	egs.generate_rules = function (obj)
	{
		var result = '';
		
		for(var selector in obj)
		{
			result += selector + ' { \n';
			for(var prop in obj[selector])
			{
				result += '	' + prop + ': ' + obj[selector][prop] + '; \n';
			}
			result += '} \n';
		}
		
		return result;
	}
	
	egs.generate_stylesheet_content = function ($elem, cfg) 
	{
		var result = '';
		var styles = {};
		var ie7_styles = {};
		var grid_class = egs.add_prefix('grid');
		var cols_class = egs.add_prefix('cols');
		var col_class = egs.add_prefix('col');
		var ie7_grid_fix_class = egs.add_prefix('col');
		
		var make_selector = function ()
		{
			return 'asdf';
		}
		
		if (cfg.col_spacing_size !== 30 && cfg.col_spacing_enable !== 0) 
		{
			styles['.' + grid_class + cfg.elem_selector + ' .' + cols_class] = 
			{
				margin: -(cfg.col_spacing_size/2) + 'px',
			};
			styles['.' + grid_class + cfg.elem_selector  + ' .' +  cols_class + ' .' + col_class] =
			{
				padding: (cfg.col_spacing_size/2) + 'px'
			};
			
			result += egs.generate_rules(styles);
			
			if ($.browser.msie && parseInt($.browser.version, 10) === 7) 
			{
				ie7_styles['.' + ie_grid_fix_class + '.cols-wrap'] =
				{
					margin: -(cfg.col_spacing_size/2) + 'px !important'
				},
				ie7_styles['.' + ie7_grid_fix_class + '.cols-wrap .' + col_class + ' > *:first-child'] = 
				{
					padding: (cfg.col_spacing_size/2) + 'px !important'
				}
				
				result += egs.generate_rules(ie7_styles);
			}
		}
		if (cfg.width !== 'auto') 
		{
			if (typeof cfg.width === 'number')
			{
				cfg.width += 'px';
			}
			result += cfg.elem_selector + ' { width: ' + cfg.width + '; }';
		}	
		
		return result;
	}
	
	egs.init_gallery_title = function ($elem, cfg) 
	{	
		var $img = $elem.find('img');
		var img_class = egs.add_prefix('img-title');
		
		$img.each(function () 
		{
			if ($(this).siblings('.' + img_class).length === 0)
			{
				var title = $(this).attr('title');
				var alt = $(this).attr('alt');
				var result = '';
				
				if (title !== undefined) 
				{
					result = title;
				} else if (alt !== undefined) 
				{
					result = alt;
				}
				
				if (result !== '') 
				{
					$('<span class="' + img_class + '">' + result + '</span>')
						.appendTo($(this).parent())
					
					var $title = $(this).siblings('.' + img_class);
					var title_h = $title.outerHeight();
					
					$title
						.css({opacity: 0, 'bottom': -title_h})
					
					$(this).parent().on('mouseenter', function () 
					{ 
						$title 
							.stop(true, true).animate({opacity: 1, bottom: 0}, 500); 
					}) 
					.on('mouseleave', function () 
					{ 
						$title .delay(250).animate({opacity: 0, bottom: -title_h}, 500); 
					}) 
				} 
			} 
		}); 
	}
	
	egs.on_images_load_end = function ($elem, cfg, callback)
	{
		if (cfg.img_count > 0)
		{		
			if (cfg.all_images_loaded !== true)
			{	
				var loaded = 0;
				var locked = 0;
				var $img = $elem.find('img');
				var img_count = $img.length;
				
				$img.each(function (id) 
				{
					$(this)
						.bind('load', function () 
						{
							loaded += 1;
							if ((loaded === img_count && locked === 0) || (loaded !== img_count && id === img_count - 1 && locked === 0)) 
							{
								locked = 1;
								cfg.all_images_loaded = true;
								//var timeout = setTimeout(function ()
								//{
									callback();
								//}, 1000);
							}
						})
						.bind('error', function () 
						{
							 $(this).off('error').attr('src', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjQwNkI5RDRFNjFBQzExRTE5MjJDRjRGMUM2MTdDODUyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjQwNkI5RDRGNjFBQzExRTE5MjJDRjRGMUM2MTdDODUyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NDA2QjlENEM2MUFDMTFFMTkyMkNGNEYxQzYxN0M4NTIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NDA2QjlENEQ2MUFDMTFFMTkyMkNGNEYxQzYxN0M4NTIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4G1oNaAAAABlBMVEX///8AAABVwtN+AAAADElEQVR42mJgAAgwAAACAAFPbVnhAAAAAElFTkSuQmCC');
						});
						
					if ((typeof this.complete != 'undefined' && this.complete) || (typeof this.naturalWidth != 'undefined' && this.naturalWidth > 0)) 
					{
						$(this)
							.trigger('load')
							.off('load');
					}
				});
			}  else 
			{
				callback ();
			}
		} else
		{
			callback();
		}
	}
	
	egs.update_elem = function ($elem, cfg)
	{
		egs.get_grid_data($elem, cfg);
		egs.set_grid_rows($elem, cfg);
		
		if (cfg.gallery_img_title === true)
		{
			egs.init_gallery_title($elem, cfg);
		}
		
		if (cfg.slider === true)
		{	
			egs.set_col_groups($elem, cfg);
			egs.set_slider_window_height($elem, cfg);
			egs.update_slider_ctrl($elem, cfg);
		}
	}
	
	egs.add_elements = function ($gridslider_elem, $target_elem, remove_target, callback)
	{
		var re = new RegExp(egs.prefix + '-id-(\\d+)');
		
		$gridslider_elem.each(function ()
		{
			var cfg = egs.elem_cfg[$(this).attr('class').match(re)[1]];
			
			$target_elem.each(function ()
			{
				var $col_elem = $('<div class="' + egs.add_prefix('col') +'"></div>').append($(this).clone(true, true));
				
				if (cfg.slider === true)
				{
					if (cfg.$col_group_elems.eq(-1).children().length < cfg.col_group_elems_capacity)
					{
						$col_elem
							.appendTo(cfg.$col_group_elems.eq(-1))
							.hide()
							.fadeIn(500);
					} else
					{
						$('<div class="' + egs.add_prefix('col-group') + '"></div>')
							.appendTo(cfg.$col_elems_wrap)
						$col_elem
							.appendTo(cfg.$col_elems_wrap.children().eq(-1))
							.hide()
							.fadeIn(500)
					}
				} else 
				{
					$col_elem
						.appendTo(cfg.$col_elems_wrap)
						.hide()
						.fadeIn(500);
				}
			});
			
			egs.update_elem(cfg.$elem, cfg);
			
			if (callback)
			{
				callback();
			}
		});
		
		if (remove_target === true)
		{
			$target_elem.remove();
		}
	}
	
	egs.remove_elements = function ($gridslider_elem, targets_id, callback)
	{
		var re = new RegExp(egs.prefix + '-id-(\\d+)');
		
		$gridslider_elem.each(function ()
		{
			var cfg = egs.elem_cfg[$(this).attr('class').match(re)[1]];
		
			if (typeof targets_id === 'number')
			{
				if (cfg.$col_elems.eq(targets_id).length > 0)
				{
					//console.log(cfg.$col_elems.eq(targets_id));
					cfg.$col_elems.eq(targets_id)
						//.fadeOut(500)
						//.queue(function ()
						//{
						//	$(this)
								.remove()
						//		.dequeue();
						//});		
				}
			} else
			{
				targets_id.forEach(function (elem)
				{
					if (cfg.$col_elems.eq(targets_id[elem]).length > 0)
					{
						cfg.$col_elems.eq(targets_id[elem])
							//.fadeOut(500)
							//.queue(function ()
							//{
							//	$(this)
									.remove()
							//		.dequeue();
							//});		
					}	
				});
			}
			
			if (cfg.$col_group_elems.eq(-1).children().length === 0)
			{
				cfg.$col_group_elems.eq(-1).remove();
			}
			
			egs.update_elem($(this), cfg);
			
			if (callback)
			{
				callback();
			}
		});
	}
	
	egs.pause_autoplay = function ($elem, cfg) 
	{
		cfg.autoplay_active = 0;
		clearTimeout(cfg.autoplay_stamp);
	}
	
	egs.resume_autoplay = function ($elem, cfg) 
	{
		clearTimeout(cfg.autoplay_stamp);
		if (cfg.autoplay_enable === true && cfg.force_autoplay_pause !== 1) 
		{
			cfg.autoplay_active = 1;
			cfg.autoplay_stamp = setTimeout(function () 
			{
				egs.init_shift($elem, cfg, 'relative', cfg.autoplay_shift_dir);
			}, cfg.autoplay_interval * 1000);
		}
	}
	
	egs.init_autoplay = function ($elem, cfg) 
	{
		if (cfg.autoplay_enable === true) 
		{
			$(window)
				.bind('load', function () 
				{
					if (egs.in_view($elem)) 
					{
						egs.resume_autoplay($elem, cfg);
					}
				})
				.bind('blur', function () 
				{
					egs.pause_autoplay($elem, cfg);
				})
				.bind('focus', function () 
				{
					egs.resume_autoplay($elem, cfg);
				})
				.bind('scroll', function () 
				{
					if (!egs.in_view($elem)) 
					{
						if (cfg.autoplay_active === 1 && cfg.autoplay_enable === true) 
						{
							egs.pause_autoplay($elem, cfg)
						}
					} else 
					{
						if (cfg.autoplay_active !== 1  && cfg.autoplay_enable === true) 
						{
							egs.resume_autoplay($elem, cfg)
						}
					}
				});
		} else
		{
			clearTimeout(cfg.autoplay_stamp)
			cfg.autoplay_active = 0;
		}
	}
	
	egs.init_grid_structure = function ($elem, cfg) 
	{
		var target_elem_classes = function () 
		{
			var arr = [
				egs.add_prefix('id-' + cfg.elem_id),
				egs.add_prefix('grid'),
				egs.add_prefix('scroll-axis-' + cfg.scroll_axis),
				egs.add_prefix('grid-height-' + cfg.grid_height),
				egs.add_prefix('image-stretch-mode-' + cfg.image_stretch_mode),
				egs.add_prefix('align' + cfg.align)
			];
			
			return arr.join(' ');
		};
		
		var cols_container_classes = function () 
		{
			var arr = [
				egs.add_prefix('cols-' + cfg.cols),
				egs.add_prefix('rows-' + cfg.rows),
				egs.add_prefix('spacing-' + (cfg.col_spacing_enable === true ? 1 : 0))
			];
			
			return arr.join(' ');
		}
		
		if (egs.browser_msie_7)
		{
			$elem.addClass(egs.add_prefix('ie7-grid-fix'));
		}
	
	 	if ($elem.find('.' + egs.add_prefix('cols')).length === 0) 
	 	{
	 		if (cfg.hide_grid_cell_overflow === true)
	 		{
		 		$elem.children().each(function ()
		 		{
		 			if ($(this).prop('tagName') === 'IMG')
		 			{
		 				$(this).wrap('<span class="' + egs.add_prefix('hide-grid-cell-overflow') + '"></span>');
		 				
		 			} else if ($(this).children().length === 1 && $(this).children().prop('tagName') === 'IMG' && $(this).css('overflow') !== 'hidden')
 					{
 						$(this).css({overflow: 'hidden'});
 					}
		 		});
		 	}
	 		$elem
	 			.addClass(target_elem_classes())
		 		.children()
		 			.wrapAll('<div class="' + egs.add_prefix('cols') + ' ' + cols_container_classes() + '"></div>')
			 		.wrap('<div class="' + egs.add_prefix('col') + '"></div>');
		}
		 		
		if (!egs.css) 
		{
			egs.css = '';
		}
		egs.css += egs.generate_stylesheet_content($elem, cfg);
		
		$(egs.style_destination)
			.find('.' + egs.add_prefix('gridslider-custom-styles')).remove().end()
			.append('<style class="' + egs.add_prefix('gridslider-custom-styles') + '">' + egs.css + '</style>');
			
		egs.get_grid_data($elem, cfg);
		egs.set_grid_rows($elem, cfg);
		
		if (cfg.gallery_img_title === true)
		{
			egs.init_gallery_title($elem, cfg);
		}
		
		$(window)
			.bind('resize', function () {
				egs.get_grid_data($elem, cfg);
				egs.set_grid_rows($elem, cfg);
			});
	}
	
	egs.assign_gridslider_id = function (cfg)
	{
		var id = Math.round(Math.random()*10000);
		
		if ( ! egs.elem_cfg[id])
		{
			egs.elem_cfg[id] = cfg;
			cfg.elem_id = id;
		} else
		{
			egs.assign_gridslider_id(cfg);	
			return false;
		}
		
		return id;
	}
	
	egs.init_gridslider = function ($elem, cfg)
	{
		cfg.$elem = $elem;
		
		if ( ! egs.style_destination)
		{
			if ($.browser.msie && $.browser.version < 9) {
				egs.style_destination = 'body';
			}
			else {
				egs.style_destination = 'head';
			}
		}
		
		if (egs.browser_msie_7 === undefined)
		{
			egs.browser_msie_7 = ($.browser.msie && parseInt($.browser.version, 10) === 7);
		}
		
		egs.assign_gridslider_id(cfg);
		egs.init_grid_structure($elem, cfg);
		egs.init_slider_structure($elem, cfg);
	}
	
    $.fn.gridSlider = function(options) {
    	
        var defaults = {
        	elem_selector: $(this).selector,
            slider: true,
			cols: 1,
			rows: 1,
			width: 'auto',
			align: 'auto',
			col_spacing_enable: true,
			col_spacing_size: 30,
			ctrl_arrows: true,
			ctrl_pag: true,
			ctrl_external: [],
			ctrl_always_visible: false,
			scroll_axis: 'x',
			transition: 'slide',
			easing: 'swing',
			scroll_speed: 500,
			autoplay_enable: false,
			autoplay_interval: 5,
			autoplay_shift_dir: 1,
			view_pos: 0,
			grid_height: 'auto',
			image_stretch_mode: 'auto',
			gallery_img_title: false,
			loop: true,
			hide_grid_cell_overflow: false
			//ctrl_autoplay_toggle: 0,
			//ctrl_timer: 0,
			//ctrl_position: 'top',
			//ctrl_mode: 'compact',
			//trigger_delay: 0,
			//timeout_delay: 0,
        }
        
		var options = $.extend(defaults, options);
		
		return this.each(function() 
		{
			if (!$(this).data('ether_grid_slider')) 
			{
				$(this).data('ether_grid_slider', true);
				egs.init_gridslider($(this), jQuery.extend(true, {}, options));
			}
		});
    }

    
})(jQuery);
     