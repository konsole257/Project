/* 웹폰트 세팅 */
WebFontConfig = {
    custom: {
        families: ['SpoqaHanSansRegular'],
        urls: ['/m/mpjtCom/css/font.css']
    },
    active: function() {
        sessionStorage.fonts = true;
    }
};
(function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
        '://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
})();

/*common */
$(document).ready(function(){
    //popinfo
	$(".btn-popinfo").click(function(){
		if ( $(this).hasClass("active") ){
			$(this).removeClass("active");
			$(this).next(".popinfo").removeClass("active");
		}else{

			$(this).addClass("active");
			$(this).next(".popinfo").addClass("active");
		}
	});
	$(".popinfo").click(function(){
        $(this).prev(".btn-popinfo").removeClass("active");
		$(this).removeClass("active");
	});

	// 말줄임 처리
	fn.ellipsis(".ellipsis");
});

$('a[href^="#"]').click(function(e){
    e.preventDefault();
});

var loadingInterval;
var loading = function(state) {
    var loadingAnimation = function() {
        if ( loadingT > -(loadingImgH-loadingH)) {
            loadingT = loadingT-loadingH;
            $('.loading img').css({'top':loadingT});
        } else {
            loadingT = 0;
            $('.loading img').css({'top':loadingT});
        }
    }

    if (state === 'show') {
        $('.loading').show();
        var loadingH = 81;
        var loadingT = 0;
        var loadingImgH = 1296;
        loadingInterval = setInterval(loadingAnimation, 60);
    } else {
        clearInterval(loadingInterval);
        $('.loading').hide();
    }
}

/* Init */
fn.common();

var path1 = $('body').attr('class');
var path2 = $('#wrap').attr('class');

switch (path1) {
    //main
    case 'main' :
		var tot = 0;
		var lsheight = 0;
		var gap = 0;
		var oldidx = 0;
        var lsLeng = $(".mainpic li").length;
        $(".mainpic").imagesLoaded(function(){
			$(".main .mainpic ul li").fadeIn();
            tot = $(".mainpic li").length;

            if (tot > 4) {
                tot = 4;
                lsheight = ($(window).height() - $("#header").height() - $(".mainpic li").eq(0).find("img").height() - 2) / (tot-1) + 10;
            } else {
                lsheight = ($(window).height() - $("#header").height() - $("#quickMenu").height() - $(".mainpic li").eq(0).find("img").height() - 2) / (tot-1);
            }

			gap = $(".mainpic li").eq(1).find("img").height() - lsheight;

			$(".mainpic li").not(":eq(0)").find(".pic").css({"height":+(lsheight-2)+"px"});
			$(".mainpic li").not(":eq(0)").find("img").css({"margin-top":+-(gap/2)+"px"});
		});


		$(".mainpic li").click(function(e){
			if ( !$(this).hasClass("active") ){
				e.preventDefault();
				$(".mainpic li").removeClass("active");
				$(this).addClass("active");
				$(this).find(".pic").animate({"height":+$(this).find(".pic img").height()+"px"}, 400);
				$(this).find(".pic img").animate({"margin-top":"0px"}, 400);
				$(this).find(".txt").animate({"top":"66%", "margin-top":"0"}, 400);
				$(".mainpic li").eq(oldidx).find(".pic").animate({"height":+($(".mainpic li").eq(oldidx).find(".pic img").height()-gap-2)+"px"}, 400);
				if ( oldidx == "0" ){
					$(".mainpic li").eq(oldidx).find(".pic img").animate({"margin-top":+-(gap)+"px"}, 400);
					$(".mainpic li").eq(oldidx).find(".txt").animate({"top":"50%", "margin-top":"-20px"}, 400);
				}else{
					$(".mainpic li").eq(oldidx).find(".pic img").animate({"margin-top":+-(gap/2)+"px"}, 400);
					$(".mainpic li").eq(oldidx).find(".txt").animate({"top":"50%", "margin-top":"-16px"}, 400);
				}
				oldidx = $(this).index();
			}
		});



        var mymainpic = new Swiper('.mymainpic', {
		   loop: true,
		   pagination: {
		        el: '.swiper-pagination',
		        clickable: true,
		      },
	   });

	   $('.mymainpic').height($(window).height())




    break;

    //GOODS
    case 'goods' :
        switch (path2) {
            case 'index' :
				//search
                $(document).on('click','.goods .filter .ls > a', function(){
                    if ( $(this).hasClass("active") ){
						$(".goods .filter .ls > a").removeClass("active");
						$(".filter ul").slideUp(300);
						if( $(".goods .filter .result .rls").children("a").length > 0 ){
							$(".goods .filter .result").slideDown(0);
						}else{
							$(".goods .filter .result").slideUp(0);
						}
					}else{
						$(".goods .filter .ls > a").removeClass("active");
						$(".filter ul").slideUp(300);
						if ( this.className == "btn-artist" ){
							$(".filter ul").eq(0).slideDown(400);
						}else if ( this.className == "btn-theme" ){
							$(".filter ul").eq(1).slideDown(400);
						}else if ( this.className == "btn-member" ){
							$(".filter ul").eq(2).slideDown(400);
						}
						$(this).addClass("active");
						$(".goods .filter .result").slideDown(400);
					}
                })
				// $(".goods .filter .ls > a").click(function(){
                //
				// });
				//search 기본 있을때
				$(".goods .filter .ls ul li input").each(function(){
					if( this.checked ){
						$(".goods .filter .result").slideDown(0);
						$(this).parent().addClass("active");
						$(".goods .filter .result .rls").prepend('<a href="#">'+$(this).attr("title")+'</a>');
					}
				});
				//search txt click
                $(document).on('change','.goods .filter .ls ul li input', function(){
                    var $obj = $(this),
                        checkType = $obj.attr('name'),
                        checkState = $obj.is(':checked'),
                        checkId = $obj.attr('id'),
                        checkTxt = $obj.attr("title"),
                        checkLen = $('input[name='+checkType+']').parent().parent().siblings(':visible').length-1,
                        checkedLen = $('input[name='+checkType+']').parent().parent().siblings(':visible').find('input[name='+checkType+']:checked').length;

                    if (checkId.indexOf('all') !== -1) {
                        if (checkState) {
                            $('input[name='+checkType+']').parent().parent().siblings(':visible').find('input[name='+checkType+']:not(:checked)').trigger('click');
                            $(this).parent().addClass("active");
                        } else {
                            $('input[name='+checkType+']').parent().parent().siblings(':visible').find('input[name='+checkType+']:checked').trigger('click');
                            $(this).parent().removeClass("active");
                        }
                    } else {
                        var chooseList = '';
                            chooseList += '<a href="#" class='+checkId+'>'+checkTxt+'</a>';

                        if (checkState) {
                            if (checkType === 'artist') {
                                $(".goods .filter .ls ul li input[name='artist']").parent().removeClass("active");
                                $(".goods .filter .result .rls [class*="+checkType+"]").remove();
                            }
                            $(".goods .filter .result .rls").append(chooseList);

                            if (checkLen !== checkedLen) {
                                $('input[name='+checkType+'][id*="all"]').prop('checked', false).parent().removeClass("active");
                            } else {
                                $('input[name='+checkType+'][id*="all"]').prop('checked', true).parent().addClass("active");
                            }

                            $(this).parent().addClass("active");

                        } else {
                            $('input[name='+checkType+'][id*="all"]').prop('checked', false).parent().removeClass("active");
                            $('.goods .filter .result .rls a:contains('+checkTxt+')').remove();
                            $(this).parent().removeClass("active");
                        }
                    }
                });
				// $(".goods .filter .ls ul li input").click(function(){
				// 	$(".goods .filter .result .rls").html("");
				// 	$(".goods .filter .ls ul li input").parent().removeClass("active");
				// 	$(".goods .filter .ls ul li input").each(function(){
				// 		if( this.checked ){
				// 			$(this).parent().addClass("active");
				// 			$(".goods .filter .result .rls").prepend('<a href="#">'+$(this).attr("title")+'</a>');
				// 		}
				// 	});
				// });
				//search txt delete
                $(".goods .filter .result .btn-refresh").click(function(){
                    $(".goods .filter .ls > a").removeClass("active");
                    $(".goods .filter .ls > a ~ ul").hide();
                    $(".goods .filter .ls ul li input").prop('checked', false);
                    $(".goods .filter .ls ul li input").parent().removeClass("active");
                    $(".goods .filter .result .rls").empty();
                });

				$(".goods .filter .result .rls").on("click", "a",  function(){
					stxt = $(this).text();
					$(".goods .filter .ls ul li input").each(function(){
						if( this.checked ){
							if( $(this).attr("title") == stxt ){
								$(this).parent().removeClass("active");
								$(this).prop("checked", false).change();
							}
						}
					});
					$(this).remove();
					if( $(".goods .filter .result .rls").children("a").length > 0 ){
						$(".goods .filter .result").slideDown(0);
					}else{
						$(".goods .filter .result").slideUp(0);
					}
				});
				//goods-list
				var $grid = $('.goods-list').imagesLoaded( function(){
					$grid.masonry({
						itemSelector: '.goods-item'
					});
				});


            break;

            case 'detail' :
                $('#popOption input[type=checkbox]').change();

				var mySwiper = new Swiper('.swiper-container.pic', {
					autoHeight: true,
					pagination: {
						el: '.swiper-pagination',
						clickable: true,
					  },
				});
				//share
				$(".goods .detail .sns .btn-share").click(function(){
					if ( $(this).hasClass("active") ){
						$(".goods .detail .sns .shareinner").slideUp(200);
						$(this).removeClass("active");
					}else{
						$(".goods .detail .sns .shareinner").slideDown(400);
						$(this).addClass("active");
					}
				});

                $('#popOption .swiper-container').css({'height':$(document).height()-($('#popOption header').outerHeight()+$('#popOption .optselect').outerHeight()+16)})

                $('.goods_info h3').click(function(e) {
                    if ($(this).parent().hasClass('open')) {
                        $(this).siblings().children().slideUp();
                    } else {
                        $(this).siblings().children().slideDown();
                    }
                    $(this).parent().toggleClass('open');
                });
            break;
        }
    break;

    //member
    case 'member' :
        switch (path2) {
            case 'login' :
                $('.tab_menu a').click(function(e){
                    fn.tabMenu(e, this);
                });
            break;

            case 'join_step1' :
                $('.agree_cont').each(function(){
                    var obj = $(this);
                    obj.find('.fold').click(function(){
                        obj.toggleClass('active');
                    });
                });
				$(".agree_area .rdo_type1").click(function(){
					$(".agree_lang").fadeOut(0);
					if ( $(this).hasClass("kor") ){
						$(".agree_lang.kor").fadeIn(400);
					}else if ( $(this).hasClass("eng") ){
						$(".agree_lang.eng").fadeIn(400);
					}
				});
				$(".agree_area .all").click(function(){
					if ( this.checked ){
						$(".agree_cont .agree_head .chk_type1").prop("checked", true);
					}else{
						$(".agree_cont .agree_head .chk_type1").prop("checked", false);
					}
				});
            break;

            case 'nonmemberorder' :
				$(".agreecont .rdo_type1").click(function(){
					$(".agree_body").fadeOut(0);
					if ( $(this).hasClass("kor") ){
						$(".agree_body.kor").fadeIn(400);
					}else if ( $(this).hasClass("eng") ){
						$(".agree_body.eng").fadeIn(400);
					}
				});
            break;

        }
    break;

    //mypage
    case 'mypage' :
        var myheart_list = $('.myheart_list').imagesLoaded( function(){
                    myheart_list.masonry({
                        itemSelector: '.myheart_list li',
                        gutter: 8
                    });
                });

        var wish_list = $('.wish_list').imagesLoaded( function(){
                    wish_list.masonry({
                        itemSelector: '.wish_list > li',
                        gutter: 8
                    });
                });

        $('.wish_list .btn_option').click(function(){
            if ($(this).closest('li').hasClass('on')) {
                $('.wish_list li').removeClass('on');
            } else {
                $('.wish_list li').removeClass('on');
                $(this).closest('li').addClass('on');
            }
        });

        $(".wish_area .all").click(function(){
            if ( this.checked ){
                $(".wish_area .chk_type1").prop("checked", true);
            }else{
                $(".wish_area .chk_type1").prop("checked", false);
            }
        });

        $(".delivery_area .all").click(function(){
            if ( this.checked ){
                $(".delivery_area .chk_type1").prop("checked", true);
            }else{
                $(".delivery_area .chk_type1").prop("checked", false);
            }
        });

        $('.list_area .question').click(function(){
            $(this).toggleClass('on');
        });

        $('.btn_tooltip').click(function(){
            $('.tooltip').show();
        });

        $('.tooltip .btn_close').click(function(){
            $('.tooltip').hide();
        });

        $('.review_write .grade_heart a').click(function(){
            $(this).closest('.grade_heart').children('a').removeClass('active');
            $(this).prevAll().addClass('active');
            $(this).addClass('active');
            $(this).closest('.grade_heart').prop({'title':$(this).closest('.grade_heart').find('.active').length + '하트'});
        });

    break;

    //customer
    case 'customer' :

		//고객센터
        $('.faq .list_area .question').click(function(){
            $(this).closest('li').toggleClass('active');
        });

    break;

    //order
    case 'order' :

        $(".cart_area .all").click(function(){
            if ( this.checked ){
                $(".cart_area .chk_type2").prop("checked", true);
            }else{
                $(".cart_area .chk_type2").prop("checked", false);
            }
        });

        $('.btn_order_inquiry').click(function(){
            if (!$(this).siblings('.goods_info').hasClass('open')) {
                $(this).siblings('.goods_info').addClass('open');
                $(this).siblings('.goods_info:nth-of-type(1n + 2)').show();
            } else {
                $(this).siblings('.goods_info').removeClass('open');
                $(this).siblings('.goods_info:nth-of-type(1n + 2)').hide();
            }
        });
    break;

    //policy
    case 'policy' :

		$(".agreecont .rdo_type1").click(function(){
			$(".agree_body").fadeOut(0);
			if ( $(this).hasClass("kor") ){
				$(".agree_body.kor").fadeIn(400);
			}else if ( $(this).hasClass("eng") ){
				$(".agree_body.eng").fadeIn(400);
			}
		});

    break;

    //소개
    case 'about' :
		$('img[usemap="#sns"]').rwdImageMaps();
    break;

    //event
    case 'event' :

		if ($('.rolling_banner').length) {
			var rollingBannerSwiper = new Swiper('.rolling_banner .swiper-container', {
				loop: true,
				speed: 1500,
				autoplay: {
					delay: 4000
				},
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                }
			});
		}

    break;

    //일반상품
    case 'other' :
        switch (path2) {
            case 'index' :

                fn.ellipsis(".ellipsis");

				//search
                $(document).on('click','.other .filter .ls > a', function(){
                    if ( $(this).hasClass("active") ){
						$(".other .filter .ls > a").removeClass("active");
						$(".filter ul").slideUp(300);
						if( $(".other .filter .result .rls").children("a").length > 0 ){
							$(".other .filter .result").slideDown(0);
						}else{
							$(".other .filter .result").slideUp(0);
						}
					}else{
						$(".other .filter .ls > a").removeClass("active");
                        $(".filter ul").slideUp(300);
                        if ( this.className == "btn-product" ){
							$(".filter ul").eq(0).slideDown(400);
						}else if ( this.className == "btn-brand" ){
							$(".filter ul").eq(1).slideDown(400);
						}else if ( this.className == "btn-artist" ){
							$(".filter ul").eq(2).slideDown(400);
						}else if ( this.className == "btn-member" ){
							$(".filter ul").eq(3).slideDown(400);
						}
						$(this).addClass("active");
						$(".other .filter .result").slideDown(400);
					}
                });
				//search 기본 있을때
				$(".other .filter .ls ul li input").each(function(){
					if( this.checked ){
						$(".other .filter .result").slideDown(0);
						$(this).parent().addClass("active");
						$(".other .filter .result .rls").prepend('<a href="#">'+$(this).attr("title")+'</a>');
					}
				});
				//search txt click
                $(document).on('change','.other .filter .ls ul li input', function(){
                    var $obj = $(this),
                        checkType = $obj.attr('name'),
                        checkState = $obj.is(':checked'),
                        checkId = $obj.attr('id'),
                        checkTxt = $obj.attr("title"),
                        checkLen = $('input[name='+checkType+']').parent().parent().siblings(':visible').length-1,
                        checkedLen = $('input[name='+checkType+']').parent().parent().siblings(':visible').find('input[name='+checkType+']:checked').length;

                    if (checkId.indexOf('all') !== -1) {
                        if (checkState) {
                            $('input[name='+checkType+']').parent().parent().siblings(':visible').find('input[name='+checkType+']:not(:checked)').trigger('click');
                            $(this).parent().addClass("active");
                        } else {
                            $('input[name='+checkType+']').parent().parent().siblings(':visible').find('input[name='+checkType+']:checked').trigger('click');
                            $(this).parent().removeClass("active");
                        }
                    } else {
                        var chooseList = '';
                            chooseList += '<a href="#" class='+checkId+'>'+checkTxt+'</a>';

                        if (checkState) {
                            if (checkType === 'product') {
                                $(".other .filter .ls ul li input[name='product']").parent().removeClass("active");
                                $(".other .filter .result .rls [class*="+checkType+"]").remove();
                            }
                            if (checkType === 'brand1') {
                                $(".other .filter .ls ul li input[name='brand1']").parent().removeClass("active");
                                $(".other .filter .result .rls [class*="+checkType+"]").remove();
                            }
                            if (checkType === 'artist') {
                                $(".other .filter .ls ul li input[name='artist']").parent().removeClass("active");
                                $(".other .filter .result .rls [class*="+checkType+"]").remove();
                            }
                            $(".other .filter .result .rls").append(chooseList);

                            if (checkLen !== checkedLen) {
                                $('input[name='+checkType+'][id*="all"]').prop('checked', false).parent().removeClass("active");
                            } else {
                                $('input[name='+checkType+'][id*="all"]').prop('checked', true).parent().addClass("active");
                            }

                            $(this).parent().addClass("active");

                        } else {
                            $('input[name='+checkType+'][id*="all"]').prop('checked', false).parent().removeClass("active");
                            $('.other .filter .result .rls a:contains('+checkTxt+')').remove();
                            $(this).parent().removeClass("active");
                        }
                    }
                });
				//search txt delete
                $(".other .filter .result .btn-refresh").click(function(){
                    $(".other .filter .ls > a").removeClass("active");
                    $(".other .filter .ls > a ~ ul").hide();
                    $(".other .filter .ls ul li input").prop('checked', false);
                    $(".other .filter .ls ul li input").parent().removeClass("active");
                    $(".other .filter .result .rls").empty();
                });

				$(".other .filter .result .rls").on("click", "a",  function(){
					stxt = $(this).text();
					$(".other .filter .ls ul li input").each(function(){
						if( this.checked ){
							if( $(this).attr("title") == stxt ){
								$(this).parent().removeClass("active");
								$(this).prop("checked", false).change();
							}
						}
					});
					$(this).remove();
					if( $(".other .filter .result .rls").children("a").length > 0 ){
						$(".other .filter .result").slideDown(0);
					}else{
						$(".other .filter .result").slideUp(0);
					}
				});
            break;

            case 'detail' :
                $(document).ready(function(){
                    $(".pic .img_cotainer").css({
                        width: $(".img_wrap img").width(),
                        height: $(".img_wrap img").height()
                    });
                    $ (".pic .img_cotainer").beepPanZoom({
                        MIN_SCALE:1,
                        MAX_SCALE:5
                    });
                });
				//share
				$(".other .detail .sns .btn-share").click(function(){
					if ( $(this).hasClass("active") ){
						$(".other .detail .sns .shareinner").slideUp(200);
						$(this).removeClass("active");
					}else{
						$(".other .detail .sns .shareinner").slideDown(400);
						$(this).addClass("active");
					}
                });

				var tabSwiper = new Swiper("#tabList .swiper-container", {
					slidesPerView: "auto"
				});

                var reviewClick = true;
                $(".tab_menu a").click(function(e){
                    fn.tabMenu(e, this);
                    var _this =  this;
                    if ( _this.attributes.href.value == "#reView" && reviewClick ){
                        reviewClick = false;
                        fn.ellipsis(".tab_contents.review .ellipsis");
                    }
                });

                var recommendSwiper = new Swiper('.swiper-container.recommend_swiper', {
                    slidesPerView: "2",
                    spaceBetween: 20,
                    speed: 400,
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                    on: {
                        init : function() {
                            fn.ellipsis(".recommend_swiper .ellipsis");
                        }
                    }
                });
            break;
        }
    break;

    //event
    case 'talk' :

        $(window).on('load',function(){
            $('.new_area .list li').each(function(){
                var imgW = $(this).find('.img').width(),
                    imgH = $(this).find('.img').height();
                if (imgW/imgH > $(this).find('.img_area').width()/$(this).find('.img_area').height()) {
                    $(this).find('.img').addClass('horizon');
                } else {
                    $(this).find('.img').addClass('vertical');
                }
            });

            var $grid =	$('.best_area .list').masonry({
                itemSelector: '.list > li',
                gutter: 8,
                horizontalOrder: true
            });
        });
        var	talkSwiper = new Swiper(".talkswiper", {
            slidesPerView: 2,
            spaceBetween: 8,
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction',
              },
        });

    break;
}
