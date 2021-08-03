/**
 * --------------------------------
 * function
 * --------------------------------
 */

var scrollt = 0;
var fn = (function() {
	"use strict";

	return {
		//공통
		common : function(){
			//landscape
			window.addEventListener("orientationchange", function() {
				if ( window.orientation == 90 || window.orientation == -90 ){
					$(".landscape").fadeIn();
				}else{
					$(".landscape").fadeOut();
				}
			}, false);
			//select
			fn.select(".select");
			//submenu
			$('.submenu .tit').click(function(){
				$(this).parent().toggleClass('active');
			});
			//category
			$("#header .btn-category").click(function(){
				$('#header').toggleClass('active');
				if ( $('#header').hasClass("active") ){
					scrollt = $(window).scrollTop();
					fn.scroll("disabled", scrollt);
				}else{
					fn.scroll("enabled", scrollt);
				}
			});
			var hCategory = new Swiper('#header .category .catels .sti', {
				slidesPerView: 'auto'
			});

			$('#header .category .catels .sti li').click(function(){
				$('#header .category .catels .sti li').removeClass('on');
				$(this).addClass('on');

				var $obj = $(this);
				var objId = $obj.attr('id').split('_').pop();

				$('[class*="swiper-con"]').removeClass('on');
				$('.swiper-con-'+objId+'').addClass('on');
			});

			$("#header .memls .popscroll").css({"height":+$(window).height()-$("#header").height()-$("#quickMenu").height()-$("#header .category .catels").height()-$("#header .category .memls h3").outerHeight()+"px"});
			//quickmenu hidden
			var lastScrollTop = 0;
			var delta = 1;
			$(window).scroll(function(event){
				if ( !$("#wrap").hasClass("fixed") ){
					var st = $(this).scrollTop();
					if (Math.abs(lastScrollTop - st) <= delta) return;
					if ((st > lastScrollTop) && (lastScrollTop > 0)) {
						if ( !$("#quickMenu .inner").hasClass("active") ){
							$("#wrap").addClass("quickhidden");
						}
					} else {
						$("#wrap").removeClass("quickhidden");
					}

					if ($(document).height()-$(window).height() <= $(window).scrollTop()) {
						$("#wrap").addClass("quickhidden");
					}
					lastScrollTop = st;
				}
			});
			//quickmenu click
			$("#quickMenu .loginlayer").css({"left":+(((($(window).width()-32)/5)*3)+16-(($("#quickMenu .loginlayer").width()-(($(window).width()-32)/5))/2))+"px"});
			$("#quickMenu .menu_inner .logout").click(function(){
				if ( $(this).hasClass("active") ){
					$("#quickMenu .loginlayer").fadeOut(200);
					$(this).removeClass("active");
				}else{
					$("#quickMenu .loginlayer").fadeIn(300);
					$(this).addClass("active");
				}
			});
			$("#quickMenu .menu_inner .search, #quickMenu .menu_inner .nav").click(function(){
				if ( $(this).hasClass("active") ){
					$("#quickMenu .inner .btn-close").click();
				}else{
					$("#quickMenu .inner").removeClass("active");
					$("#quickMenu .menu_inner .icon").removeClass("active");
					$("#quickMenu").find("."+this.className.replace("icon ", "")).addClass("active");
					$(this).addClass("active");
					scrollt = $(window).scrollTop();
					fn.scroll("disabled", scrollt);
				}
			});
			$("#quickMenu .inner .btn-close").click(function(){
				$("#quickMenu .inner").removeClass("active");
				$("#quickMenu .menu_inner .icon").removeClass("active");
				if ( $('#header').hasClass("active") ){
				}else{
					fn.scroll("enabled", scrollt);
				}
			});
			//quickmenu:mylipss
			//PROGRESS
			$('#quickMylipps .view_list li').each(function(){
				var max = $(this).find('.max').text();
				var now = $(this).find('.now').text();
				var percentage = now*100/max;
				if (percentage <= 25) {
					percentage = percentage*100/25;
					$(this).find('.progress1 div').css({'width':percentage+'%', 'height':percentage+'%'});
				} else if (percentage > 25 && percentage <= 50) {
					percentage = percentage*100/50;
					$(this).find('.progress1 div').css({'width':100+'%', 'height':100+'%'});
					$(this).find('.progress2 div').css({'width':percentage+'%', 'height':percentage+'%'});
				} else if (percentage > 50 && percentage <= 75) {
					percentage = percentage*100/75;
					$(this).find('.progress1 div').css({'width':100+'%', 'height':100+'%'});
					$(this).find('.progress2 div').css({'width':100+'%', 'height':100+'%'});
					$(this).find('.progress3 div').css({'width':percentage+'%', 'height':percentage+'%'});
				} else if (percentage > 75 && percentage <= 100) {
					$(this).find('.progress1 div').css({'width':100+'%', 'height':100+'%'});
					$(this).find('.progress2 div').css({'width':100+'%', 'height':100+'%'});
					$(this).find('.progress3 div').css({'width':100+'%', 'height':100+'%'});
					$(this).find('.progress4 div').css({'width':percentage+'%', 'height':percentage+'%'});
				}
			});
			//setting click
			$(document).on('click', '#quickMylipps .btn-setting, #quickMylipps .view_area .btn_add', function(){
				$("#quickMylipps .settings_area").addClass("active");
				$("#quickMylipps .btn-prev").fadeIn(0);
				$("#quickMylipps .btn-close").fadeOut(0);
				$("#quickMylipps .btn-setting").fadeOut(0);
			})
			// $("#quickMylipps .btn-setting, #quickMylipps .view_area .btn_add").click(function(){
			// 	$("#quickMylipps .settings_area").addClass("active");
			// 	$("#quickMylipps .btn-prev").fadeIn(0);
			// 	$("#quickMylipps .btn-close").fadeOut(0);
			// 	$("#quickMylipps .btn-setting").fadeOut(0);
			// });
			$("#quickMylipps.inner .btn-prev").click(function(){
				$("#quickMylipps .btn-close").fadeIn(0);
				$("#quickMylipps .btn-setting").fadeIn(0);
				$("#quickMylipps .settings_area").removeClass("active");
				$("#quickMylipps .btn-prev").fadeOut(0);
			});

			//quickmenu:search
			// $("#quickSearch .group .ls").css({"max-height":+$(window).height()-$("#quickMenu").height()-$("#quickSearch .searcharea").outerHeight()-$("#quickSearch .recommend").outerHeight()-$("#quickSearch .group h3").outerHeight()-30+"px"});
			//popup scroll
			var popswiper = new Swiper('.swiper-container.popscroll', {
				direction: 'vertical',
				slidesPerView: 'auto',
				freeMode: true,
				observer: true,
				scrollbar: {
					el: '.swiper-scrollbar',
				},
				mousewheel: true,
				// autoHeight: true,
			});
			$(".popscroll").on("touchmove", function(){
				$(this).addClass("active");
			});
			$(".popscroll").on("touchend", function(){
				$(this).removeClass("active");
			});
			//주문검색결과, 상품검색결과
			$(".pupfull.ordersearch .popscroll").css({"height":+($(window).height()-$(".pupfull.ordersearch header").height()-$(".pupfull.ordersearch main p").height())+"px"});
			$(".pupfull.goodssearch .popscroll").css({"height":+($(window).height()-$(".pupfull.goodssearch header").height()-$(".pupfull.goodssearch main p").height())+"px"});
			//file upload
			$('.filebox .upload-hidden').on('change', function(){
				if(window.FileReader){
					var filename = $(this)[0].files[0].name;
				}else{
					var filename = $(this).val().split('/').pop().split('\\').pop();
				}
				$(this).siblings('.upload-name').val(filename);
			});
			$('.preview-image .upload-hidden').on('change', function(){
				var parent = $(this).parent();
				parent.children('.upload-display').remove();
				if(window.FileReader){
					if (!$(this)[0].files[0].type.match(/image\//)) return;
					var reader = new FileReader();
					reader.onload = function(e){
						var src = e.target.result;
						parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
					}
					reader.readAsDataURL($(this)[0].files[0]);
				}else{
					$(this)[0].select();
					$(this)[0].blur();
					var imgSrc = document.selection.createRange().text;
					parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
					var img = $(this).siblings('.upload-display').find('img');
					img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";
				}
			});
			//file upload delete
			$(".filebox").on("click", ".upload-thumb-wrap", function(){
				$(this).parent().parent().find('.upload-name').val("");
				$(this).parent().parent().find('.upload-hidden').val("");
				$(this).parent().remove();
			});
		},

		scroll : function(state, top){
			var scrollt = top;
			switch (state) {
				case "disabled" :
					$("#wrap").css("position", "fixed").addClass("fixed");
					$("#wrap").css("width", "100%");
					$("#wrap").css("top", -scrollt);
				break;

				case "enabled" :
					$("#wrap").css("position", "relative").removeClass("fixed");
					$("#wrap").css("width", "initial");
					$("#wrap").css("top", 0);
					$('html, body').animate({scrollTop:scrollt}, 0);
				break;
			}
		},

		popupToggle : function(obj, _this){
			if (typeof obj === "object") {
				obj = obj.attributes.href.value
			}
			var $obj = $(obj);
			if ( $(_this).hasClass("active") ){
				$obj.find(".popup_area").animate({"top":"60%"},500);
				$obj.fadeOut(500);
				$(_this).removeClass("active")
			}else{
				$obj.fadeIn(500);
				$obj.find(".popup_area").animate({"top":"50%"},500);
				$(_this).addClass("active")
			}
		},

		popupOpen : function(obj){
			if (typeof obj === "object") {
				obj = obj.attributes.href.value
			}
			var $obj = $(obj);
			var $top = "50%";
			if ( $obj.hasClass("pupfull") ){
				$top = "0";
			}
			scrollt = $(window).scrollTop();
			fn.scroll("disabled", scrollt);
			$obj.css({"top":"0"}).animate({"opacity":"1"}, 500);
			$obj.find(".popup_area").animate({"top":$top},500);
		},

		popupClose : function(obj,callback){
			if(obj==undefined){
				console.log(obj);
				var $obj = $(".popup");
				$obj.find(".inner").animate({"top":"60%"},500, function(){
					$obj.css({"top":"100%"});
				});
				$obj.animate({"opacity":"0"}, 500);
				if (callback) {
					setTimeout(function(){
						callback();
					}, 550);
				}
			}else{
				var $obj = $(obj);
				$obj.find(".popup_area").animate({"top":"60%"},500, function(){
					$obj.css({"top":"100%"});
				});
				$obj.animate({"opacity":"0"}, 500);
				fn.scroll("enabled", scrollt);
				if (callback) {
					setTimeout(function(){
						callback();
					}, 550);
				}
			}
		},

		// 탭메뉴
		tabMenu : function(e, obj){
			var $obj = $(obj),
			objHref = obj.attributes.href.value;

			if (objHref.indexOf("#") != -1) {
				e.preventDefault();

				$(".tab_menu a").removeClass("on");
				$obj.addClass("on");

				$(".tab_contents").removeClass("show");
				$(objHref).addClass("show");
			}
		},

		// select
		select : function(obj){
			var obj = $(obj);
			var str = "<span class='sel_button'></span>";
			obj.each(function(){
				$(this).append(str);
				var parSel = $(this);
				parSel.find("select").change(function(){

					parSel.find(".sel_button").html($(this).find("option:selected").text());
					if ( $(this).find("option:selected").val() == "MAIL_KIND_ETC" || $(this).find("option:selected").val() == "ORDER_MEMO90" ){
						parSel.find(".sel_txt").val("")
						if ($(this).find("option:selected").attr("data-temp") == "") {
							parSel.find(".sel_txt").val("").focus();
						} else {
							parSel.find(".sel_txt").val($(this).find("option:selected").attr("data-temp")).focus();
						}
						$(this).parent().addClass('write');
					}else{
						parSel.find(".sel_txt").val($(this).find("option:selected").text().replace(/\s/g, ""));
						$(this).parent().removeClass('write');
					}
				});
				if (obj.hasClass("country")){
					parSel.find(".sel_button").html($(this).find("option:selected").text());
				} else {
					parSel.find("select").trigger("change");
				}
			});
		},

		// 굿즈 옵션 추가
		optionAdd : function(obj){
			var $obj = $(obj),
			checkState = $obj.is(':checked'),
			checkId = $obj.attr('id'),
			checkName = $obj.next('[for='+checkId+'] span').text();

			var optionEa = '';
				optionEa += '<li class='+checkId+'>';
				optionEa += '	<span class="option_name">'+checkName+'</span>';
				optionEa += '	<div class="ea_area">';
				optionEa += '		<input type="number" name="num" title="수량 입력" value="1" readonly>';
				optionEa += '		<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>';
				optionEa += '		<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>';
				optionEa += '	</div>';
				optionEa += '	<span class="price">5,000원</span>';
				optionEa += '	<button type="button" class="btn_del" onclick="fn.optionDel(this);">삭제</button>';
				optionEa += '</li>';

			if (checkState) {
				$obj.closest('.option_area').closest('.optselect').next('.option_ea_wrap').find('.option_ea_list').append(optionEa);
			} else {
				$obj.closest('.option_area').closest('.optselect').next('.option_ea_wrap').find('.option_ea_list [class='+checkId+']').remove();
			}
		},

        // 굿즈 옵션 삭제
        optionDel : function(obj){
            var $obj = $(obj),
                checkId = $obj.parent().attr('class'),
                $check = $('input[id='+checkId+']');

            $check.trigger('click');
        },

        // 굿즈 옵션 수량 올리기
        optionEaUp : function(obj){
            var $obj = $(obj),
                eaVal = parseInt($obj.siblings('input').val());

            eaVal++;
            $obj.siblings('input').val(eaVal);
        },

        // 굿즈 옵션 수량 내리기
        optionEaDown : function(obj){
            var $obj = $(obj),
                eaVal = parseInt($obj.siblings('input').val());

            if (eaVal > 1) {
                eaVal--;
                $obj.siblings('input').val(eaVal);
            }
        },

		// goback
		goback: function(){
			history.go(-1);
			return false;
		},

		payLoading : function(){
            $('.pay_loading').show();
            setInterval(function(){
                if (!$('.pay_loading .progress .bar').is(':animated')) {
                    if ($('.pay_loading .progress .bar').css('left') !== '280px') {
                        $('.pay_loading .progress .bar').animate({'width':'280px'}, 500, function(){
                            $('.pay_loading .progress .bar').animate({'left':'280px'}, 500);
                        });
                    } else {
                        $('.pay_loading .progress .bar').css({'left':'0', 'width':'0'})
                    }
                }
            }, 0);
        },

		//말줄임 처리
		ellipsis: function(obj) {
			$(obj).each(function() {
				var obj = $(this),
					tempTxt = obj.text(),
					tempTxtArr = tempTxt.split(''),
					tempTxtLen = tempTxt.length,
					ellipsisTxt = '',
					ellipsisTxtLen;

				obj.empty();
				obj.append('<div></div>');

				for (var i = 0; i <= tempTxtLen - 1; i++) {
					if (obj.height() >= obj.children().height()) {
						ellipsisTxt += tempTxtArr[i];
						obj.children().text(ellipsisTxt);
					}
				}

				if (obj.height() < obj.children().height()) {
					ellipsisTxtLen = ellipsisTxt.length;
					ellipsisTxt = ellipsisTxt.substr(0, ellipsisTxtLen - 5);
					ellipsisTxt += '...';
				}

				obj.empty();
				obj.text(ellipsisTxt);
			});
		}
	};
})();
