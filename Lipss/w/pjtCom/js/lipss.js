/**
* --------------------------------
* SERVEQ JS
* --------------------------------
*/

/* COMMON */
$(document).ready(function(){
    //popinfo
	$(".btn-popinfo").hover(function(){
		if ( $(this).hasClass("active") ){
			$(this).removeClass("active");
			$(this).next(".popinfo").removeClass("active");
		}else{
			$(this).addClass("active");
			$(this).next(".popinfo").addClass("active");
		}
    });

	// 말줄임 처리
	fn.ellipsis(".ellipsis");
});

$('a[href^="#"]').click(function(e){
    e.preventDefault();
});

$(window).contextmenu(function(e) {
    e.preventDefault();
});

// $(window).keydown(function(e) {
// 	var kcode = e.keyCode;
// 	if (kcode == 123) {
//         e.preventDefault();
//     }
// });

/* 로그인/마이페이지 열기/닫기 */
$('.btn_login').click(function(){
    $(this).toggleClass('on');
}).mouseleave(function(){
    $(this).removeClass('on');
});
$('.btn_my').click(function(){
    $(this).toggleClass('on');
}).mouseleave(function(){
    $(this).removeClass('on');
});

// 메뉴 열기
$('#header .personal_area .btn_menu').click(function(){
    $('#header .btn_mylipss').removeClass('on');
    $('#mylipss_area').removeClass('show settings');
    $('.management_area .management_list a').removeClass('on');
    $('.management_singer_area').removeClass('show');
    $('#menu_area').addClass('on');
});
// 메뉴 닫기
$('#menu_area .btn_close').click(function(){
    $('#menu_area').removeClass('on');
});

$('#menu_area .menu_list a').hover(function(){
    if ($(this).find('span').text() == 'Home') {
        $(this).find('span').text('LIPSS');
    } else if ($(this).find('span').text() == 'Photo') {
        $(this).find('span').text('Love it');
    } else if ($(this).find('span').text() == 'Goods') {
        $(this).find('span').text('Pick');
    } else if ($(this).find('span').text() == 'Customer') {
        $(this).find('span').text('Your');
    } else if ($(this).find('span').text() == 'About') {
        $(this).find('span').text('Sweets');
    }
}, function(){
    if ($(this).find('span').text() == 'LIPSS') {
        $(this).find('span').text('Home');
    } else if ($(this).find('span').text() == 'Love it') {
        $(this).find('span').text('Photo');
    } else if ($(this).find('span').text() == 'Pick') {
        $(this).find('span').text('Goods');
    } else if ($(this).find('span').text() == 'Your') {
        $(this).find('span').text('Customer');
    } else if ($(this).find('span').text() == 'Sweets') {
        $(this).find('span').text('About');
    }
});

// 마이립스 열기
$('#header .btn_mylipss').click(function(){
    $('.menu_area').removeClass('on');
    $('.management_area .management_list a').removeClass('on');
    $('.management_singer_area').removeClass('show');
    // $(this).addClass('on');
    // $('#mylipss_area').addClass('show');
});
// 마이립스 닫기
$('#mylipss_area .view_area .btn_close').click(function(){
    $('#header .btn_mylipss').removeClass('on');
    $('#mylipss_area').removeClass('show settings');
});

// 마이립스 설정 열기
$('#mylipss_area .view_area .btn_add').click(function(){
    $('.menu_area').removeClass('on');
    $('#mylipss_area').addClass('settings');
});
// 마이립스 설정 닫기
$('#mylipss_area .settings_area .btn_close').click(function(){
    $('#mylipss_area').removeClass('settings');
});

// 소속사 가수 열기
$('.management_area .management_list a').click(function(){
    $('.menu_area').removeClass('on');
    $('#header .btn_mylipss').removeClass('on');
    $('#mylipss_area').removeClass('show settings');
    $('.management_area .management_list a').removeClass('on');
    $(this).addClass('on');
    $('.management_singer_area').addClass('show');
});
// 소속사 가수 닫기
$('.management_singer_area .btn_close').click(function(){
    $('.management_area .management_list a').removeClass('on');
    $('.management_singer_area').removeClass('show');
});

// 마이립스 PROGRESS
$('#mylipss_area .view_list li').each(function(){
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

var personalAreaTxt = new Swiper('.personal_area .txt_area', {
  direction: 'vertical',
  speed:500,
  loop: true,
  autoplay: {
    delay: 3000
  },
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
        var loadingH = 162;
        var loadingT = 0;
        var loadingImgH = 2592;
        loadingInterval = setInterval(loadingAnimation, 60);
    } else {
        clearInterval(loadingInterval);
        $('.loading').hide();
    }
}

// 스크롤
$(".scrollbar-macosx").scrollbar();
$(".scroll-x").hide();

// 탭메뉴
$('.tab_menu a').click(function(e){
    fn.tabMenu(e, this);
});

// 셀렉트박스
$(document).on('change', 'label.select select', function(){
    if ( $(this).val() === 'MAIL_KIND_ETC') {
        $(this).next('input').show().focus();
    } else {
        $(this).next('input').hide();
    }
});

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

/* intro */
if ($('body').hasClass('intro')) {
    video.play();
    $(document).ready(function(){
        $('.intro_area').addClass('load');
    });

    // setTimeout(function(){
    //     location.href="/w/lipss.do";
    // }, 5000);
}

/* main */
if ($('body').hasClass('main')) {
    var onIdx = $('.img_thumb_list li.on').index()
    var imgLen = $('.img_thumb_list li').length;

    $('.img_thumb_list li').hover(function(){
        // clearInterval(mainInterval);
        // onIdx = $('.img_thumb_list li.on').index();
        $('.img_thumb_list li.on').removeClass('on');
        $(this).addClass('on');
        onIdx = $(this).index();

        $('.main_area .img').removeClass('show');
        $('.main_area .img:eq('+onIdx+')').addClass('show');
        // $('.img_thumb_list li.on').removeClass('on');
    }, function(){
        // $('.img_thumb_list li:eq('+onIdx+')').addClass('on');

        // mainInterval = setInterval(mainThumb, 4000);
    }).click(function(){
        // $('.img_thumb_list li.on').removeClass('on');
        // $(this).addClass('on');
        // onIdx = $(this).index();
        //
        // $('.main_area .img').removeClass('show');
        // $('.main_area .img:eq('+onIdx+')').addClass('show');
    });
}

$('[id^="datepicker"]').datepicker({ "dateFormat": "yy-mm-dd"});


/* SUB */
var path = $('#wrap').attr('class');

switch (path) {
    // 굿즈
    case 'goods' :
        // 리스트
        $('.goods_list li').hover(function(){
            // var imgSrc = $(this).find('.img').attr('src');
            // $(this).find('.img').attr({'src':imgSrc.replace('_B.jpg', '_M.jpg')});
        }, function(){
            // var imgSrc = $(this).find('.img').attr('src');
            // $(this).find('.img').attr({'src':imgSrc.replace('_M.jpg', '_B.jpg')});

            $('.btn_cart').removeClass('on');
            fn.goodsOptionClose();
        });

        // 공유하기 열기/닫기
        $(document).on('click', '.btn_share',function(e) {
            $(this).addClass('on');
            $('.btn_like').fadeOut(300);
        });

        $(document).on('click', '.share_area .btn_close',function(e) {
            $('.btn_share').removeClass('on');
            $('.btn_like').fadeIn(300);
        });

        // 상세 면종, 사이즈 보기
        $(document).on('click', '.tab_menu a',function(e) {
            e.preventDefault();
            var $obj = $(this),
                objHref = this.attributes.href.value;

            if ( !$(this).hasClass('on') ) {
                $('.tab_menu a').removeClass('on');
    			$obj.addClass('on');
            }

            // $('#picture').hide();
			$('.tab_contents').removeClass('show');
			$(objHref).addClass('show');
        });

        $(document).on('click', '.tab_contents .btn_prev',function(e) {
            $(this).parent().removeClass('view2').addClass('view1');
        });

        $(document).on('click', '.tab_contents .btn_next',function(e) {
            $(this).parent().removeClass('view1').addClass('view2');
        });

        $(document).on('click', '.goods_info h3',function(e) {
            if ($(this).parent().hasClass('open')) {
                $(this).siblings().children().slideUp();
            } else {
                $(this).siblings().children().slideDown();
            }
            $(this).parent().toggleClass('open');
        });

        // $(document).on('mouseleave', '.tab_menu.type2 a',function(e) {
            // $('#picture').show();
            // $('.tab_menu a').removeClass('on');
            // $('.tab_contents').removeClass('show');
        // });
//
        // 공유하기 열기/닫기
        // $('.btn_share').click(function(){
        //     $(this).addClass('on');
        //     $('.btn_like').fadeOut(300);
        // });
        // $('.share_area .btn_close').click(function(){
        //     $('.btn_share').removeClass('on');
        //     $('.btn_like').fadeIn(300);
        // });

        // 상세 면종, 사이즈 보기
        // $('.tab_menu.type2 a').hover(function(){
        //     var $obj = $(this),
        //         objHref = this.attributes.href.value;
        //
        //     $('.tab_menu a').removeClass('on');
		// 	$obj.addClass('on');
        //
        //     $('#picture').hide();
		// 	$('.tab_contents').removeClass('show');
		// 	$(objHref).addClass('show');
        // }, function(){
        //     $('#picture').show();
        //     $('.tab_menu a').removeClass('on');
        //     $('.tab_contents').removeClass('show');
        // });
    break;

	// 립스톡
    case 'talk' :
	$(window).on('load',function(){
		$('.new_area .list li').each(function(){
			var imgW = $(this).find('.img').width(),
				imgH = $(this).find('.img').height();

			if (imgW > imgH) {
				$(this).find('.img').addClass('horizon');
			} else {
				$(this).find('.img').addClass('vertical');
			}
		});

		var $grid =	$('.best_area .list').masonry({
			itemSelector: '.list > li',
			columnWidth: 360,
			gutter: 34,
			horizontalOrder: true
		});
	});
	var	talkSwiper = new Swiper(".talkswiper", {
		slidesPerView: 'auto',
		spaceBetween: 78,
		simulateTouch: false,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		  }
	});

	$(window).on('load resize', function(){
		if ($(this).width() < 1300) {
			$('.talkswiper').addClass('noswiper');
		} else {
			$('.talkswiper').removeClass('noswiper');
		}

	});
    break;

    // 마이페이지 메인
    case 'mypage main' :
        // 리스트
        // $('.myheart_list li').hover(function(){
        //     var imgSrc = $(this).find('.img').attr('src');
        //     $(this).find('.img').attr({'src':imgSrc.replace('_B.jpg', '_M.jpg')});
        // }, function(){
        //     var imgSrc = $(this).find('.img').attr('src');
        //     $(this).find('.img').attr({'src':imgSrc.replace('_M.jpg', '_B.jpg')});
        // });

        $('.btn_tooltip').click(function(){
            $('.tooltip').show();
        });

        $('.tooltip .btn_close').click(function(){
            $('.tooltip').hide();
        })

    break;

    // 마이페이지 위시리슽트
    case 'mypage wish' :
        $('.btn_option').click(function(){
            $(this).toggleClass('on');
        });
    break;

    // 마이페이지 qna
    case 'mypage qna' :
        // 리스트
        $('.list_area .question').click(function(){
            $(this).toggleClass('on');
        });
    break;

    // 고객센터 faq
    case 'customer faq' :
        // 리스트
        $('.list_area li .subject').click(function(){
            $(this).closest('li').toggleClass('on');
        });
    break;

    // 주문결제
    case 'order step1' :
        $('.terms_area .btn_content').click(function(){
            $(this).closest('[class^=terms_]').toggleClass('open');
        });

        $('.btn_order_inquiry').click(function(){
            if (!$(this).next('table').hasClass('open')) {
                $(this).next('table').addClass('open');
                $(this).next('table').find('tbody tr:nth-child(1n + 2)').show();
            } else {
                $(this).next('table').removeClass('open');
                $(this).next('table').find('tbody tr:nth-child(1n + 2)').hide();
            }

        });
    break;

    // 회원가입
    case 'member join' :
        $('.terms_list .btn_content').click(function(){
            $(this).closest('[class^=terms_]').toggleClass('open');
        });
    break;

    // 소개
    case 'about' :
        $('img[usemap="#sns"]').rwdImageMaps();
    break;

    // 이벤트
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

    // 일반상품 상세
    case 'other detail' :
        var recommendSwiper = new Swiper('.swiper-container.recommend_swiper', {
            slidesPerView: 3,
            spaceBetween: 40,
            speed: 400,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        // 공유하기 열기/닫기
        $(document).on('click', '.btn_share',function(e) {
            $(this).addClass('on');
            $('.btn_like').fadeOut(300);
        });

        $(document).on('click', '.share_area .btn_close',function(e) {
            $('.btn_share').removeClass('on');
            $('.btn_like').fadeIn(300);
        });
    break;

    // 마이페이지 주문내역 상세
    case 'mypage order_view' :
        $('.review_write .grade_heart a').click(function(){
            $(this).closest('.grade_heart').children('a').removeClass('active');
            $(this).prevAll().addClass('active');
            $(this).addClass('active');
            $(this).closest('.grade_heart').prop({'title':$(this).closest('.grade_heart').find('.active').length + '하트'});
        });
    break;

    // 마이페이지 리뷰
    case 'mypage review' :
        $('.review_write .grade_heart a').click(function(){
            $(this).closest('.grade_heart').children('a').removeClass('active');
            $(this).prevAll().addClass('active');
            $(this).addClass('active');
            $(this).closest('.grade_heart').prop({'title':$(this).closest('.grade_heart').find('.active').length + '하트'});
        });
    break;




}
