﻿;
(function($) { /*******************************************************************************************/
	// jquery.pajinate.js - version 0.4
	// A jQuery plugin for paginating through any number of DOM elements
	// 
	// Copyright (c) 2010, Wes Nolte (http://wesnolte.com)
	// Licensed under the MIT License (MIT-LICENSE.txt)
	// http://www.opensource.org/licenses/mit-license.php
	// Created: 2010-04-16 | Updated: 2010-04-26
	//
	/*******************************************************************************************/

	$.fn.pajinate = function(options) {
		// Set some state information
		var current_page = 'current_page';
		var items_per_page = 'items_per_page';

		var meta;

		// Setup default option values
		var defaults = {
			any_autoplay: false,
			any_autoplaytime: 5000,
			any_mode: 'horizontal',
			item_container_id: '.pajinatels',
			items_per_page: 3,
			nav_panel_id: '.pajinatenav',
			nav_info_id: '.info_text',
			num_page_links_to_display: 0,
			start_page: 0,
			any_motion: '',
			any_time_out: 400,
			any_time_in: 600,
			pajinateheight : 0,
			wrap_around: true,
			nav_label_first: '처음',
			nav_label_prev: '이전',
			nav_label_next: '다음',
			nav_label_last: '마지막',
			nav_order: ["first", "prev", "num", "next", "last"],
			nav_label_info: 'Showing {0}-{1} of {2} results',
			show_first_last: true,
			abort_on_small_lists: false,
			jquery_ui: false,
			jquery_ui_active: "ui-state-highlight",
			jquery_ui_default: "ui-state-default",
			jquery_ui_disabled: "ui-state-disabled"
		};

		var options = $.extend(defaults, options);
		var $item_container;
		var $page_container;
		var $items;
		var $nav_panels;
		var oldpagenum = options.start_page;
		var slidepos = "L";
		var total_page_no_links;
		var jquery_ui_default_class = options.jquery_ui ? options.jquery_ui_default : '';
		var jquery_ui_active_class = options.jquery_ui ? options.jquery_ui_active : '';
		var jquery_ui_disabled_class = options.jquery_ui ? options.jquery_ui_disabled : '';
		var itemswidth;
		var itemsheight;
		var anyautoplay;
		var number_of_pages;

		return this.each(function() {
			$page_container = $(this);
			$item_container = $(this).find(options.item_container_id);
			$items = $page_container.find(options.item_container_id).children();
			itemswidth = $item_container.width();
			itemsheight = $item_container.height();
			if ( options.items_per_page > 1 ){
				itemswidth = $items.width();
				itemsheight = $items.height();
			}
			if ( options.pajinateheight > 0 ){
				itemsheight = options.pajinateheight;
			}
/*
			if ( itemsheight < 50 ){
				setTimeout(function(){
					itemswidth = $items.width();
					itemsheight = $items.height();
				}, 200);
			}
*/
			if (options.abort_on_small_lists && options.items_per_page >= $items.size()) return $page_container;
			meta = $page_container;
			// Initialize meta data
			meta.data(current_page, 0);
			meta.data(items_per_page, options.items_per_page);
			// Get the total number of items
			var total_items = $item_container.children().size();
			// Calculate the number of pages needed
			number_of_pages = Math.ceil(total_items / options.items_per_page);
			// Construct the nav bar
			var more = '';
			var less = '';
			var first = !options.show_first_last ? '' : '<a class="first_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_first + '</a>';
			var last = !options.show_first_last ? '' : '<a class="last_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_last + '</a>';
			var navigation_html = "";
			navigation_html = "<span class='ptxt'><strong class='pnum'>1</strong>/ <span class='ptot'>"+number_of_pages+"</span></span>"
			for (var i = 0; i < options.nav_order.length; i++) {
				switch (options.nav_order[i]) {
				case "first":
					navigation_html += first;
					break;
				case "last":
					navigation_html += last;
					break;
				case "next":
					navigation_html += '<a class="next_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_next + '</a>';
					break;
				case "prev":
					navigation_html += '<a class="previous_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_prev + '</a>';
					break;
				case "num":
					navigation_html += less;
					var current_link = 0;
					while (number_of_pages > current_link) {
						navigation_html += '<a class="page_link ' + jquery_ui_default_class + '" href="" longdesc="' + current_link + '">' + (current_link + 1) + '</a>';
						current_link++;
					}
					navigation_html += more;
					break;
				default:
					break;
				}

			}
			// And add it to the appropriate area of the DOM	
//			$nav_panels = $page_container.find(options.nav_panel_id);
			if ( !$("*").is($(this).next(".pajinatenav")) ){
				$page_container.append("<div class='pajinatenav'></div>");
			}
			$nav_panels = $page_container.find(options.nav_panel_id);
			if ( total_items > options.items_per_page ){
				$nav_panels.html(navigation_html).each(function() {
					$(this).find('.page_link:first').addClass('first');
					$(this).find('.page_link:last').addClass('last');
				});
			}else{
				$page_container.find(".page_navigation").text("");
			}
			// Hide the more/less indicators
			$nav_panels.children('.ellipse').hide();
			// Set the active page link styling
			$nav_panels.find('.previous_link').next().next().addClass('active_page ' + jquery_ui_active_class);
			/* Setup Page Display */
			// And hide all pages
			$items.hide();
			// Show the first page			
			$items.slice(0, meta.data(items_per_page)).show();
			/* Setup Nav Menu Display */
			// Page number slices
			total_page_no_links = $page_container.find(options.nav_panel_id + ':first').children('.page_link').size();
			options.num_page_links_to_display = Math.min(options.num_page_links_to_display, total_page_no_links);
//			$nav_panels.children('.page_link').hide(); // Hide all the page links
			// And only show the number we should be seeing
			$nav_panels.each(function() {
				$(this).children('.page_link').slice(0, options.num_page_links_to_display).show();
			});
			/* Bind the actions to their respective links */
			// Event handler for 'First' link
			$page_container.find('.first_link').click(function(e) {
				e.preventDefault();
				slidepos = "R";
				movePageNumbersRight($(this), 0);
				gotopage(0);
			});
			// Event handler for 'Last' link
			$page_container.find('.last_link').click(function(e) {
				e.preventDefault();
				slidepos = "L";
				var lastPage = total_page_no_links - 1;
				movePageNumbersLeft($(this), lastPage);
				gotopage(lastPage);
			});
			// Event handler for 'Prev' link
			$page_container.find('.previous_link').click(function(e) {
				e.preventDefault();
				slidepos = "R";
				showPrevPage($(this));
//				$item_container.attr('tabindex', '0').focus();
			});
			// Event handler for 'Next' link
			$page_container.find('.next_link').click(function(e) {
				e.preventDefault();
				slidepos = "L";
				showNextPage($(this));
//				$item_container.attr('tabindex', '0').focus();
			});
			// Event handler for each 'Page' link
			$page_container.find('.page_link').click(function(e) {
				e.preventDefault();
				gotopage($(this).attr('longdesc'));
			});
			// swipe
			$page_container.on('swipeleft', function(e) {
				e.preventDefault();
				slidepos = "L";
				if ( parseInt(meta.data(current_page)) + 1 < number_of_pages) {
					gotopage(parseInt(meta.data(current_page)) + 1);
				}else{
					gotopage(0);
				}
			}).on('swiperight', function(e) {
				e.preventDefault();
				slidepos = "R";
				if ( parseInt(meta.data(current_page)) - 1 >= 0) {
					gotopage(parseInt(meta.data(current_page)) - 1);
				}else{
					gotopage(number_of_pages-1);
				}
			}).on('movestart', function(e) {
				if ( (e.distX > e.distY && e.distX < -e.distY) || (e.distX < e.distY && e.distX > -e.distY) ){
					e.preventDefault();
					return;
				}
			}).on('move', function(e) {
				if ( (e.distX > e.distY && e.distX < -e.distY) || (e.distX < e.distY && e.distX > -e.distY) ){
					e.preventDefault();
					return;
				}
			});
			// autoplay
			if(options.any_autoplay){
				anyautoplay = setInterval(function(){
					slidepos = "L";
					if ( parseInt(meta.data(current_page)) + 1 < number_of_pages) {
						gotopage(parseInt(meta.data(current_page)) + 1);
					}else{
						gotopage(0);
					}
				}, options.any_autoplaytime);
			}
			// Motion
			if ( options.any_motion == "fade" ){
//				$page_container.css({"position":"relative", "width":+(itemswidth*options.items_per_page)+"px", "height":+(itemsheight+$nav_panels.height())+"px"});
				$item_container.css({"position":"relative", "height":+itemsheight+"px", "overflow":"hidden"});
				$items.css({"position":"absolute", "top":"0px", "left":"0px"});
				// items_per_page 2개 이상일때
				if ( options.items_per_page > 1 ){
					for ( var i = 0 ; i < options.items_per_page ; i++ ){
						$items.eq(i).css({"left":+(itemswidth*i)+"px"});
					}
				}
			}else if ( options.any_motion == "slide" ){
				if ( options.any_mode == "verticality" ){
					$page_container.css({"position":"relative", "width":+(itemswidth)+"px", "height":+((itemsheight*options.items_per_page)+$nav_panels.height())+"px", "overflow":"hidden"});
					$item_container.css({"position":"relative", "height":+(itemsheight*options.items_per_page)+"px"});
					$items.css({"position":"absolute", "top":"0px", "left":"0px"});
					// items_per_page 2개 이상일때
					if ( options.items_per_page > 1 ){
						for ( var i = 0 ; i < options.items_per_page ; i++ ){
							$items.eq(i).css({"top":+(itemsheight*i)+"px"});
						}
					}
				}else{
					$page_container.css({"position":"relative", "width":+(itemswidth*options.items_per_page)+"px", "height":+(itemsheight+$nav_panels.height())+"px", "overflow":"hidden"});
					$item_container.css({"position":"relative", "height":+itemsheight+"px"});
					$items.css({"position":"absolute", "top":"0px", "left":"0px"});
					// items_per_page 2개 이상일때
					if ( options.items_per_page > 1 ){
						for ( var i = 0 ; i < options.items_per_page ; i++ ){
							$items.eq(i).css({"left":+(itemswidth*i)+"px"});
						}
					}
				}
			}
			// Goto the required page
			gotopage(parseInt(options.start_page));
			toggleMoreLess();
			if (!options.wrap_around) tagNextPrev();
		});
		function showPrevPage(e) {
			new_page = parseInt(meta.data(current_page)) - 1;
			// Check that we aren't on a boundary link
			if ($(e).siblings('.active_page').prev('.page_link').length == true) {
				movePageNumbersRight(e, new_page);
				gotopage(new_page);
			} else if (options.wrap_around) {
				gotopage(total_page_no_links - 1);
			}

		};
		function showNextPage(e) {
			new_page = parseInt(meta.data(current_page)) + 1;
			// Check that we aren't on a boundary link
			if ($(e).siblings('.active_page').next('.page_link').length == true) {
				movePageNumbersLeft(e, new_page);
				gotopage(new_page);
			} else if (options.wrap_around) {
				gotopage(0);
			}

		};
		function gotopage(page_num) {
			clearInterval(anyautoplay);
			page_num = parseInt(page_num, 10);
			$page_container.find(".pnum").text(page_num+1);
			var ipp = parseInt(meta.data(items_per_page));
	            	// Get the total number of items
	            	var total_items = $item_container.children().size();
			// Set the current page meta data							
			meta.data(current_page, page_num);
			/*########## Ajout de l'option page courante + nombre de pages*/
	            	var $current_page = parseInt(meta.data(current_page)+1);
	            	// Calculate the number of pages needed
	            	var $number_of_pages = Math.ceil(total_items / options.items_per_page);
			// Find the start of the next slice
			var start_from = page_num * ipp;
			// Find the end of the next slice
			var end_on = start_from + ipp;
			// Hide the current page	
			var items = $items.slice(start_from, end_on);
			// items_per_page 2개 이상일때
			if ( ipp > 1 ){
				for ( var i = 0 ; i < ipp ; i++ ){
//					$items.eq(start_from+i).css({"left":+($items.width()*i)+"px"});
				}
			}
			// Motion
			if ( options.any_motion == "fade" ){
				if ( oldpagenum != start_from) {
					$items.fadeOut(options.any_time_out);
					$items.slice(start_from, end_on).fadeIn(options.any_time_in);
				}else if ( options.start_page != 0 ){
					$items.fadeOut(options.any_time_out);
					$items.slice(start_from, end_on).fadeIn(options.any_time_in);
				}
			}else if ( options.any_motion == "slide" ){
				if ( oldpagenum != start_from) {
					if ( slidepos == "R" ){
						for ( var i = 0 ; i < ipp ; i++ ){
							if ( options.any_mode == "verticality" ){
								$items.eq(oldpagenum+i).show();
								$items.eq(oldpagenum+i).stop().animate({"left":+((itemswidth))+"px"}, options.any_time_in);
								$items.eq(start_from+i).css({"top":+((itemsheight*i))+"px","left":+(-(itemswidth))+"px"}).show();
								$items.eq(start_from+i).stop().animate({"left":"0px"}, options.any_time_in);
							}else{
								$items.eq(oldpagenum+i).show();
								$items.eq(oldpagenum+i).stop().animate({"left":+((itemswidth*(ipp+i)))+"px"}, options.any_time_in);
								$items.eq(start_from+i).css({"left":+(-(itemswidth*(ipp-i)))+"px"}).show();
								$items.eq(start_from+i).stop().animate({"left":+(itemswidth*i)+"px"}, options.any_time_in);
							}
						}
					}else{
						for ( var i = 0 ; i < ipp ; i++ ){
							if ( options.any_mode == "verticality" ){
								$items.eq(oldpagenum+i).show();
								$items.eq(oldpagenum+i).stop().animate({"left":+(-(itemswidth))+"px"}, options.any_time_in);
								$items.eq(start_from+i).css({"top":+((itemsheight*i))+"px","left":+((itemswidth))+"px"}).show();
								$items.eq(start_from+i).stop().animate({"left":"0px"}, options.any_time_in);
							}else{
								$items.eq(oldpagenum+i).show();
								$items.eq(oldpagenum+i).stop().animate({"left":+(-(itemswidth*(ipp-i)))+"px"}, options.any_time_in);
								$items.eq(start_from+i).css({"left":+((itemswidth*(ipp+i)))+"px"}).show();
								$items.eq(start_from+i).stop().animate({"left":+(itemswidth*i)+"px"}, options.any_time_in);
							}
						}
					}
				}
			}else{
				$items.hide();
				items.show();
			}
			// Reassign the active class
			$page_container.find(options.nav_panel_id).children('.page_link[longdesc=' + page_num + ']').addClass('active_page ' + jquery_ui_active_class).siblings('.active_page').removeClass('active_page ' + jquery_ui_active_class);
            		/*##################################################################*/
			$page_container.find(options.nav_info_id).html(options.nav_label_info.replace("{0}", start_from + 1).
			replace("{1}", start_from + items.length).replace("{2}", $items.length).replace("{3}", $current_page).replace("{4}", $number_of_pages));
			// Hide the more and/or less indicators
			toggleMoreLess();
			// Add a class to the next or prev links if there are no more pages next or previous to the active page
			tagNextPrev();
			// check if the onPage callback is available and call it
			if (typeof(options.onPageDisplayed) !== "undefined" ) {
				options.onPageDisplayed.call(this, page_num + 1)
			}
			oldpagenum = start_from;
			// autoplay
			if(options.any_autoplay){
				anyautoplay = setInterval(function(){
					slidepos = "L";
					if ( parseInt(meta.data(current_page)) + 1 < number_of_pages) {
						gotopage(parseInt(meta.data(current_page)) + 1);
					}else{
						gotopage(0);
					}
				}, options.any_autoplaytime);
			}
		}
		// Methods to shift the diplayed index of page numbers to the left or right
		function movePageNumbersLeft(e, new_p) {
			var new_page = new_p;
			var $current_active_link = $(e).siblings('.active_page');
			if ($current_active_link.siblings('.page_link[longdesc=' + new_page + ']').css('display') == 'none') {
				$nav_panels.each(function() {
					$(this).children('.page_link').hide() // Hide all the page links
					.slice(parseInt(new_page - options.num_page_links_to_display + 1), new_page + 1).show();
				});
			}
		}
		function movePageNumbersRight(e, new_p) {
			var new_page = new_p;
			var $current_active_link = $(e).siblings('.active_page');
			if ($current_active_link.siblings('.page_link[longdesc=' + new_page + ']').css('display') == 'none') {
				$nav_panels.each(function() {
					$(this).children('.page_link').hide() // Hide all the page links
					.slice(new_page, new_page + parseInt(options.num_page_links_to_display)).show();
				});
			}
		}
		// Show or remove the ellipses that indicate that more page numbers exist in the page index than are currently shown
		function toggleMoreLess() {
			if (!$nav_panels.children('.page_link:visible').hasClass('last')) {
				$nav_panels.children('.more').show();
			} else {
				$nav_panels.children('.more').hide();
			}
			if (!$nav_panels.children('.page_link:visible').hasClass('first')) {
				$nav_panels.children('.less').show();
			} else {
				$nav_panels.children('.less').hide();
			}
		}
		/* Add the style class ".no_more" to the first/prev and last/next links to allow custom styling */
		function tagNextPrev() {
			if ($nav_panels.children('.last').hasClass('active_page')) {
				$nav_panels.children('.next_link').add('.last_link').addClass('no_more ' + jquery_ui_disabled_class);
			} else {
				$nav_panels.children('.next_link').add('.last_link').removeClass('no_more ' + jquery_ui_disabled_class);
			}
			if ($nav_panels.children('.first').hasClass('active_page')) {
				$nav_panels.children('.previous_link').add('.first_link').addClass('no_more ' + jquery_ui_disabled_class);
			} else {
				$nav_panels.children('.previous_link').add('.first_link').removeClass('no_more ' + jquery_ui_disabled_class);
			}
		}
	};
})(jQuery);
