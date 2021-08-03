/**
* --------------------------------
* SNP JS
* --------------------------------
*/

// 셀렉트박스
$(document).ready(function(){
	$.widget('custom.selectmenu', $.ui.selectmenu, {
		_renderMenu: function(ul, items) {
		  var that = this;
		  $.each( items, function( index, item ) {
		    that._renderItemData( ul, item );
		  });
		  $(ul).addClass('scrollbar')
		  var ulWidth = ($('#'+$(ul).attr('aria-labelledby')).outerWidth());
		  $(ul).closest('.ui-selectmenu-menu').css({'width':ulWidth})
		  $('.scrollbar').scrollbar();
		}
	});
	$('select').selectmenu({
		change: function() {
			$(this).change();
		}
	});
});
$(document).on('change', 'select', function(){
	fn.selectDirect(this);
});

// 탭메뉴
$(document).on('click', '.tab-menu a', function(e){
	fn.tabMenu(e, this);
});

// 전부체크
$(document).on('change', '[type="checkbox"]', function(e){
	fn.allCheck(this);
});

// 말줄임
$(document).ready(function(e){
	fn.ellipsis('on');
});

// 수량 입력 제한
$(document).on('blur', '.ea-area [type="number"]', function(e){
	fn.optionEaLimit(this);
});

// input[tyle=number] maxlength
var inputSelection = false;
$(document).on('select', 'input[type="number"]', function(){
	inputSelection = true;
});
$(document).on('keydown', 'input[type="number"]', function(){
	if (!inputSelection) {
		fn.inputMaxLength(this);
	}
	inputSelection = false;
});

// 스크롤바
$(document).ready(function(){
	$('.scrollbar').scrollbar();
});

// 알림 및 정품인증 위치
$(window).on('load scroll', function(){
	var footerOffset = $('#footer').length > 0 ? $(document).height()-$('#footer').offset().top : '',
		scrollOffset = $(document).height()-$(window).height()-$(window).scrollTop(),
		scrollT = $(this).scrollTop();

	if (footerOffset >= scrollOffset) {
		$('#side').css({'bottom':footerOffset-scrollOffset+30});
	} else {
		$('#side').removeAttr('style');
	}

	if (scrollT > 0) {
		$('#side').addClass('scroll');
	} else {
		$('#side').removeClass('scroll');
	}
});

// 스크롤시 헤더
$(window).on('load scroll', function(){
	var scrollT = $(this).scrollTop();

	setTimeout(function(){
		$('#header .top-area .logo').css({'transition-duration':'500ms'});
		$('#header .left-area .logo').css({'transition-duration':'500ms'});
	});

	// 상단 띠베너
	if ($('.top-banner').is(':visible')) {
		if (scrollT > $('.top-banner').height()) {
			$('#header .top-area').addClass('fixed scroll');
			$('#header .left-area').addClass('fixed');
		} else {
			$('#header .top-area').removeClass('fixed scroll');
			$('#header .left-area').removeClass('fixed');
		}
	} else {
		$('#header .top-area').addClass('fixed');
		$('#header .left-area').addClass('fixed');
		$('#header .top-area').addClass('scroll');

		if (scrollT > 50) {
			$('#header .top-area').addClass('scroll');
		} else {
			$('#header .top-area').removeClass('scroll');
		}
	}
});

// 알림
$(document).ready(function(){
	var notifyLen = $('#notify p').length;
	if (notifyLen !== 0) {
		$('.btn-notify .count').text(notifyLen);

		if ($('#notify p[style]')) {
			$('.btn-notify').stop().fadeIn(200);

			var notifyLen = $('#notify p').length - $('#notify p:visible').length;
			$('.btn-notify .count').text(notifyLen);
		}
	}

	$('#notify .btn-close').click(function(){
		$(this).closest('p').stop().fadeOut(200);
		$('.btn-notify').stop().fadeIn(200);

		var notifyLen = $('#notify p').length - $('#notify p:visible').length + 1;
		$('.btn-notify .count').text(notifyLen);
	});

	$('.btn-notify').click(function(){
		if ($('#notify p').length) {
			$('#notify p').stop().fadeIn(200, function(){
				var notifyLen = $('#notify p').length - $('#notify p:visible').length;
				$('.btn-notify .count').text(notifyLen);
			});
			$(this).stop().fadeOut(200);
		}
	});
});

// 주 메뉴
$(document).ready(function(){
	$('#header .btn-left-open').click(function(){
		event.preventDefault();

		$(this).stop().fadeOut(300);
		fn.addClass('#header .left-area');
	});

	// $('#header .left-area .btn-close').click(function(){
	// 	event.preventDefault();
	//
	// 	$('#header .btn-left-open').stop().fadeIn(300);
	// 	fn.removeClass('#header .left-area');
	// });
});

// 검색 & 메뉴 hover
$(document).ready(function(){
	$('#header .top-area .btn-search').click(function(){
		fn.addClass('#header');
		$('#header .btn-left-open').trigger('click');
	});

	$('#header .top-area .search-area .btn-close').click(function(){
		fn.removeClass('#header');
		$('#header .btn-left-open').stop().fadeIn(300);
		fn.removeClass('#header .left-area');
		// $('#header .left-area .btn-close').trigger('click');
	});

	$('#header .top-area .search-area, #header #gnb').mouseenter(function(){
		fn.addClass('#header');
		$('#header .btn-left-open').trigger('click');
	});

	$('#header .top-area .search-area, #header #gnb').mouseleave(function(){
		fn.removeClass('#header');
		$('#header .btn-left-open').stop().fadeIn(300);
		fn.removeClass('#header .left-area');
		// $('#header .left-area .btn-close').trigger('click');
		$('#header #gnb .promotion + ul li').removeClass('active');
	});

	$('#header #gnb > ul > li > a').mouseenter(function(){
		$('#header #gnb > ul > li').removeClass('active');
		$(this).closest('li').addClass('active');
	});
});

// 상단 마이페이지 , 장바구니 레이어
$(document).ready(function(){
	$('#header .top-area .personal > .btn-mypage, #header .top-area .mypage-area').hover(function(){
		fn.addClass('#header .top-area .mypage-area');
	}, function(){
		fn.removeClass('#header .top-area .mypage-area');
	});

	$('#header .top-area .personal > .btn-cart, #header .top-area .cart-area').hover(function(){
		fn.addClass('#header .top-area .cart-area');
	}, function(){
		fn.removeClass('#header .top-area .cart-area');
	});
});

// 알림
$(document).ready(function(){
	$('.datepick').datepicker({
		yearSuffix: "년",
		dateFormat: 'yy-mm-dd',
		dayNamesMin: [ '일', '월', '화', '수', '목', '금', '토'],
		dayNames: ['일','월','화','수','목','금','토'],
		monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		numberOfMonths: 1,
		showMonthAfterYear: true,
		showOn: 'both',
		buttonImage: '/pjtCom/pc/images/common/icon_cal.png',
		buttonImageOnly: true,
		buttonText: '달력'
	}).next('.ui-datepicker-trigger').addClass('btn-cal');
});

// 아카이브, 리뷰 팝업
$(document).ready(function(){
	$('.popup.archive-view .product-area').hover(function(){
		fn.toggleClass(this)
	});

	fn.reviewThumbSize();
});

$(document).ready(function(){
	// path
	// var path1 = $("#wrap").attr("class");
	var path2 = $("#container").attr("class");

	// switch (path1) {
		// sub
		// case "sub" :
			switch (path2) {
				// 브랜드
				case "brand hddn" :
					var con8Swiper = new Swiper('.con8-swiper', {
						simulateTouch: false,
						slidesPerView: 'auto',
						navigation: {
							nextEl: '.con8-swiper > .swiper-button-next',
							prevEl: '.con8-swiper > .swiper-button-prev'
						},
						on: {
							slideNextTransitionStart: function(){
								$('.con8-swiper > .swiper-button-prev').addClass('active');
								$('.con8-swiper > .swiper-button-next').removeClass('active');
							},
							slidePrevTransitionStart: function(){
								$('.con8-swiper > .swiper-button-next').addClass('active');
								$('.con8-swiper > .swiper-button-prev').removeClass('active');
							}
						}
					});

					$('.con8-pro-swiper').each(function(){
						var $this = $(this);
						var con8ProSwiper = new Swiper($this, {
							simulateTouch: false,
							slidesPerView: 'auto',
							// spaceBetween: '111',
							navigation: {
								nextEl: $this.parent().next('.indicator').find('.swiper-button-next'),
								prevEl: $this.parent().next('.indicator').find('.swiper-button-prev')
							},
							pagination: {
								el: $this.parent().next('.indicator').find('.swiper-pagination')
							},
							on: {
								init: function(){
									$('.con8-swiper > .swiper-button-prev').addClass('active');
								},
								reachBeginning: function(){
									$('.con8-swiper > .swiper-button-prev').addClass('active');
									$('.con8-swiper > .swiper-button-next').removeClass('active');
								},
								reachEnd: function(){
									$('.con8-swiper > .swiper-button-next').addClass('active');
									$('.con8-swiper > .swiper-button-prev').removeClass('active');
							   },
							   slideChange: function(){
								   var idx = con8ProSwiper.activeIndex;
								   var activeTxt = $this.find('.swiper-slide:eq('+idx+') .name').text();
								   $this.closest('.swiper-slide').find('.txt-area .name').text(activeTxt)
							   }
							}
						});
					});
				break;

				case "brand daywith" :
					var con5Swiper = new Swiper('.con5-swiper', {
						simulateTouch: false,
						slidesPerView: 'auto',
						pagination: {
					    	el: '.swiper-pagination',
							clickable: true,
							renderBullet: function (index, className) {
					          return '<span class="' + className + '">'+$(this.$el).find('.swiper-slide:eq('+index+') .name').text()+'</span>';
					        },
					    }
					});
				break;

				// 상품 목록
				case "product list" :
					setTimeout(function(){
						$('.tab-menu a.active').addClass('animate');
					}, 400);
				break;

				// 상품상세
				case "product view" :
					var picSwiper = new Swiper('.info-area .pic-swiper', {
						simulateTouch: false,
						slidesPerView: 1,
						pagination: {
					    	el: '.swiper-pagination',
							clickable: true,
							renderBullet: function (index, className) {
					          return '<span class="' + className + '"><img src="'+$(this.$el).find('.swiper-slide:eq('+index+')').children('img').attr('src')+'" alt="" /></span>';
					        },
					    }
					});

					var withSwiper = new Swiper('.with-swiper', {
						simulateTouch: false,
						slidesPerView: 'auto',
						spaceBetween: 15,
						navigation: {
							nextEl: '.swiper-button-next',
							prevEl: '.swiper-button-prev'
						},
						on: {
							init: function () {
								var activeIdx = this.activeIndex;
								$(this.$el).find('.swiper-slide').removeClass('active');
								$(this.$el).find('.swiper-slide:eq('+activeIdx+')').addClass('active');
								if ($('.with-swiper .swiper-slide').length <= 5) {
									$('.swiper-button-next, .swiper-button-prev').hide();
								}
							},
							slideChange: function () {
								var activeIdx = this.activeIndex;
								$(this.$el).find('.swiper-slide').removeClass('active');
								$(this.$el).find('.swiper-slide:eq('+activeIdx+')').addClass('active');
							}
						},
					});

					if (location.search.indexOf('REVIEW_TYPE') != -1) {
						$('.detail-area > .tab-menu a[href^="#review"]').trigger('click');

						setTimeout(function(){
							var tabOffsetTop = $('.detail-area').offset().top-50;
							$(window).scrollTop(tabOffsetTop);
						});
					};
				break;

				// 검색
				case "product search" :
					$('.product.search .search-area input').keyup(function(){
						if ($(this).val().length) {
							$(this).addClass('active');
						} else {
							$(this).removeClass('active');
						}
					});
					$('.btn-cancel').click(function(){
						$(this).siblings('input').removeClass('active');
					});
					$('.archive-list > li > .pic').each(function(){
						if ($(this).find('.img').height() > 380) {
							$(this).find('.img').css({'width':'auto', 'height':'100%'});
						}
					});
				break;

				// 리뷰
				case "review" :
					fn.reviewMasonry();
				break;

				// 아카이브
				case "media" :
					$('.archive-list > li > .pic').each(function(){
						if ($(this).find('.img').height() > 380) {
							$(this).find('.img').css({'width':'auto', 'height':'100%'});
						}
					});
				break;

				// 장바구니
				case "cart" :
					var withSwiper = new Swiper('.with-swiper', {
						simulateTouch: false,
						slidesPerView: 'auto',
						spaceBetween: 15,
						navigation: {
							nextEl: '.swiper-button-next',
							prevEl: '.swiper-button-prev'
						},
						on: {
							init: function () {
								var activeIdx = this.activeIndex;
								$(this.$el).find('.swiper-slide').removeClass('active');
								$(this.$el).find('.swiper-slide:eq('+activeIdx+')').addClass('active');
								if ($('.with-swiper .swiper-slide').length <= 5) {
									$('.swiper-button-next, .swiper-button-prev').hide();
								}
							},
							slideChange: function () {
								var activeIdx = this.activeIndex;
								$(this.$el).find('.swiper-slide').removeClass('active');
								$(this.$el).find('.swiper-slide:eq('+activeIdx+')').addClass('active');
							}
						},
					});
					$(window).scroll(function(){
						cartScroll();
					});
					setTimeout(function(){
						cartScroll();
					}, 0);
					var carthhei = $("#header .top-area").outerHeight();
					var cartrt = $(".cart .right-area").offset().top-carthhei;
					var cartendtop = $(document).height() - $(".cart .right-area").outerHeight() - $("#footer").outerHeight() - carthhei - $("#contents").css("padding-bottom").replace("px", "");
					if ( $(".cart .body section").hasClass("with-area") ){
						cartendtop = cartendtop - $(".cart .with-area").outerHeight();
					}
					function cartScroll(){
						var st = $(this).scrollTop();
						if ( st < cartrt ){
							$(".cart .right-area").css({"position":"relative", "top":"0", "left":"auto", "right":"0", "bottom":"auto"});
						}else if ( st < cartendtop ){
							var rpoint = ($(window).width()-$(".body .cart-area").width())/2;
							$(".cart .right-area").css({"position":"fixed", "top":+(carthhei)+"px", "left":"auto", "right":+(rpoint)+"px", "bottom":"auto"});
						}else{
							$(".cart .right-area").css({"position":"absolute", "top":"auto", "left":"auto", "right":"0", "bottom":"0"});
						}
					}
				break;

				// 주문 결제
				case "order" :
					// 결제수단 선택 무통장
					$(".right-area .paydiv .select select").change(function(){
						var val = $(".right-area .paydiv .select select option:selected").val();
						if ( val == "acct" ){
							$(".right-area .pay-bankbook").addClass("active");
						}else{
							$(".right-area .pay-bankbook").removeClass("active");
						}
					});

					$(window).scroll(function(){
						orderScroll();
					});
					setTimeout(function(){
						orderScroll();
					}, 0);
					var orderhhei = $("#header .top-area").outerHeight();
					var orderrt = $(".order .right-area").offset().top-orderhhei;
					var orderendtop = $(document).height() - $(".order .right-area").outerHeight() - $("#footer").outerHeight() - orderhhei - $("#contents").css("padding-bottom").replace("px", "");
					function orderScroll(){
						var st = $(this).scrollTop();
						orderendtop = $(document).height() - $(".order .right-area").outerHeight() - $("#footer").outerHeight() - orderhhei - $("#contents").css("padding-bottom").replace("px", "");
						if ( st < orderrt ){
							$(".order .right-area").css({"position":"relative", "top":"0", "left":"auto", "right":"0", "bottom":"auto"});
						}else if ( st < orderendtop ){
							var rpoint = ($(window).width()-$(".order-area").width())/2;
							$(".order .right-area").css({"position":"fixed", "top":+(orderhhei)+"px", "left":"auto", "right":+(rpoint)+"px", "bottom":"auto"});
						}else{
							$(".order .right-area").css({"position":"absolute", "top":"auto", "left":"auto", "right":"0", "bottom":"0"});
						}
					}
				break;

				// 나의 리뷰
				case "mypage myreview" :
					fn.reviewMasonry();
					fn.reviewThumbSize();
				break;

				// 1:1 상담
				case "mypage qna" :
					//1:1 문의하기 팝업 문의 유형 선택시
					$(".myqna-write .select-qna select").change(function(){
						if ($(this).val() == "order") {
							$(".myqna-write .select-order").addClass("active");
						} else {
							$(".myqna-write .select-order").removeClass("active");
						}
					});
				break;

				// 교환/반품
				case "mypage claim write" :
					$('.type input').change(function(){
						if ($(this).closest('label').is(':first-child')) {
							fn.removeClass('.method .refund');
							fn.removeClass('.refundanother');
							$('.method .exchange input').prop('checked', true);
							$('.method .refund input').prop('checked', false);
						} else {
							fn.addClass('.method .refund');
							fn.addClass('.refundanother');
							$('.method .exchange input').prop('checked', false);
							$('.method .refund input').prop('checked', true);
						}
					});

					$('.return input').change(function(){
						fn.toggleClass('.default');fn.toggleClass('.another');
					});
				break;

				// 회원가입
				case "member signup step2" :
					$('.shopping-all [type="checkbox"]').change(function(){
		                var $allCheck = $(this);

		                if ($allCheck.is(':checked')) {
		                    $('.shopping [type="checkbox"]').prop('checked', true);
		                } else {
		                    $('.shopping [type="checkbox"]').prop('checked', false);
		                }
					});

					$('.shopping [type="checkbox"]').change(function(){
			            var checkCnt = $('.shopping [type="checkbox"]:checked').length;

			            if (checkCnt === 0) {
			                $('.shopping-all [type="checkbox"]').prop('checked', false);
			            } else {
							$('.shopping-all [type="checkbox"]').prop('checked', true);
						}
					});
				break;

			}
		// break;
	// }
});
