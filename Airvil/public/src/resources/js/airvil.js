/**
* --------------------------------
* Airvil JS
* --------------------------------
*/

// select
// $(document).on('focus', '.select select, .select input', function(){
//     $(this).parent('.select').addClass('focus');
// }).on('blur', '.select select, .select input', function(){
//     $(this).parent('.select').removeClass('focus');
// });

// rating
$(document).ready(function(){
    $('.rating [type="checkbox"]:checked').trigger('change');
});

// button
$(document).on('mousedown', 'button', function(){
    $(this).css({'outline':'none'});
}).on('mouseup', 'button', function(){
    $(this).blur();
    $(this).removeAttr('style');
});

// select
$(document).ready(function(){
    $('select').selectmenu({
        width: 'calc(100% + 2px)',
        position: { my : "left-1 top+1", at: "left bottom" },
        open: function( event, ui ) {
            $(this).parent('.select').addClass('open');
            // console.log($(this).siblings().attr('aria-owns'), $(this).parent('.select').width())
            var select = $(this).siblings().attr('aria-owns');
            var selectWidth = $(this).parent('.select').width();

            $('#'+select).css({'min-width':selectWidth})
        },
        close: function( event, ui ) {
            $(this).parent('.select').removeClass('open');
        },
        change: function() {
			$(this).change();
		}
    });
});
$(document).on('change', 'select', function(){
	fn.selectDirect(this);
});

// scrollbar
$(document).ready(function(){
    $('.scrollbar').scrollbar();
    $('.ui-selectmenu-menu .ui-menu').scrollbar();

    $('.scrollbar').scrollbar({
        'onScroll': function(y, x){
            $('select').selectmenu('close');
        }
    });
});


// tabmenu
$(document).on('click', '.tab-menu a', function(e){
	fn.tabMenu(e, this);
});

// datepicker
$(document).ready(function(){
    $('.datepicker').datepicker({
        dateFormat:'yy-mm-dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
    });
});

// textarea
$(document).on('keyup', 'textarea', function(){
    var $textarea = $(this),
        maxLength = $(this).attr('maxlength'),
        txtLength = $(this).val().length;

    if (txtLength <= maxLength) {
        $textarea.siblings().children('.characters').children('.current').text(txtLength);
    }
});

// 필터 open
// $(document).on('click', '.depth2 > li > button, .depth2 > li > button > span', function(){
//     var $depth2FilterArea = $(this).closest('li');
//     if (!$depth2FilterArea.hasClass('active')) {
//         $depth2FilterArea.closest('.depth2').children('li').removeClass('active');
//         $depth2FilterArea.addClass('active');
//     } else {
//         $depth2FilterArea.removeClass('active');
//     }
// });
// 필터 close
$(document).on('click', '*', function(e){
    // e.stopPropagation();

    // var $this = $(this),
    //     $depth2FilterArea = $('.depth2 > li > button, .depth2 > li > button> span').closest('li');
    //
    // if ($depth2FilterArea.closest('.depth2').children('li').hasClass('active')) {
    //     if ($this.closest('.depth2').length === 0) {
    //         $depth2FilterArea.closest('.depth2').children('li').removeClass('active');
    //     }
    // }

    if ($('.chat-context').hasClass('active')) {
        $('.chat-context').removeClass('active');
    }

    if ($('.img-context').hasClass('active')) {
        $('.img-context').removeClass('active');
    }

    if ($('.setting-area').hasClass('active')) {
        $('.setting-area').removeClass('active');
    }

});

// header 키워드영역
$(document).ready(function(){
    $('#search-area .keyword-area .btn-keyword').click(function(){
        $('#search-area .keyword-area').toggleClass('active');
    });
});


/**
* --------------------------------
* 회원가입 동의
* --------------------------------
*/
$(document).ready(function(){
    if($('.agree-txt').length > 0){
        $('.agree-chk a').click(function(e){
            e.preventDefault();
            let target = $(this).attr('href');
            $('.agree-contents div').hide();
            $(target).show();
        });

        $('.agree-chk .w100 input[type="checkbox"]').change(function(e){
            console.log($(this).prop('checked'));
            if($(this).prop('checked') == true){
                $('.agree-chk label input[type=checkbox]').prop({'checked':'checked'});
                $('.agree-contents div').hide();
                $('#agree4').show();
            }
        });
    }
});

/**
* --------------------------------
* 목록 공용
* --------------------------------
*/
$(document).ready(function(){
    // 목록 필터 위치값
    fn.listFilterOffset();

    $('#header nav > .scrollbar > .scrollbar').scrollbar({
        'onScroll': function(y, x){
            // 목록 필터 위치값
            fn.listFilterOffset();
        }
    });

    // 검색목록 열기/닫기
    $('.list-area .btn-fold').click(function(){
        $(this).closest('.list-area').toggleClass('active');
        $('#search-area').toggleClass('active');
    });

    // 필터 위치
    $('#gnb .depth3 li').hover(function(){
        var depth3FilterTop = $(this).offset().top;
        var filterAreaoffset = $(this).find('.filter-area').outerHeight();
        var filtetscrollHeight = $(window).height() - depth3FilterTop;

        if (filterAreaoffset > filtetscrollHeight) {
            $(this).find('.filter-area').css({'top':'auto', 'bottom':$(window).height()-depth3FilterTop-47}).addClass('bottom');
        } else {
            $('#gnb .depth3 li > .filter-area').each(function(){
                var depth3FilterTop = $(this).closest('li').offset().top;

                $(this).css({'bottom':'auto', 'top':depth3FilterTop});
            });
        }
    });

    // 필터 위치
    $('.data-filter .depth3 li').hover(function(){
        var depth3FilterTop = $(this).offset().top;
        var filterAreaoffset = $(this).find('.filter-area').outerHeight();
        var filtetscrollHeight = $(window).height() - depth3FilterTop;

        if (filterAreaoffset > filtetscrollHeight) {
            $(this).find('.filter-area').css({'top':'auto', 'bottom':$(window).height()-depth3FilterTop-47}).addClass('bottom');
        } else {
            $('.data-filter .depth3 li > .filter-area').each(function(){
                var depth3FilterTop = $(this).closest('li').offset().top;

                $(this).css({'bottom':'auto', 'top':depth3FilterTop});
            });
        }
    });
});

/**
* --------------------------------
* 상세 공용
* --------------------------------
*/
// textarea focus
$(document).on('focus', '.viewer.detail-area textarea', function(){
    $(this).closest('.textarea').css({'border-color':'#0a4bcc'});
});
$(document).on('blur', '.viewer.detail-area textarea', function(){
    $(this).closest('.textarea').removeAttr('style');
});



/**
* --------------------------------
* 채팅 공용
* --------------------------------
*/
$(document).ready(function(){
    $('.chat.join-area .scrollbar').scrollTop($('.chat.join-area .contents').height());
});



/**
* --------------------------------
* 참여하기 공용
* --------------------------------
*/
$(document).ready(function(){
    // 참여업무 스와이프
    var workSwiperOption = {
          direction: 'vertical',
          slidesPerView: 5,
          autoplay: {
              delay: 1500,
              disableOnInteraction: false,
          },
          // loop: true,
          simulateTouch: false,
          mousewheel: true,
    }, workSwiper = new Swiper('.work-swiper', workSwiperOption);

    $('.work-swiper-wrap').hover(function(){
        workSwiper.autoplay.stop();
    }, function(){
        workSwiper.autoplay.start();
    });

    // 참여하기 참여 상세업무
    $('.join-area .checkbox-area').hover(function(){
        $('.join-area').addClass('wide');
    }, function(){
        $('.join-area').removeClass('wide');
    });
});

var publicinfoBuildingSwiper = function(){
    // 표제부 스와이프
    setTimeout(function(){
        var headerSwiperBtnOption = {
            slidesPerView: 7,
            navigation: {
                nextEl: '.header-swiper-btn ~ .swiper-button-next',
                prevEl: '.header-swiper-btn ~ .swiper-button-prev',
            },
        }, headerSwiperBtn = new Swiper('.header-swiper-btn', headerSwiperBtnOption);

        // 일반건축물 스와이프
        var generalSwiperBtnOption = {
            slidesPerView: 7,
            navigation: {
                nextEl: '.general-swiper-btn ~ .swiper-button-next',
                prevEl: '.general-swiper-btn ~ .swiper-button-prev',
            },
        }, generalSwiperBtn = new Swiper('.general-swiper-btn', generalSwiperBtnOption);
    })
}




$(document).ready(function(){
	// path
	var path1 = $('#container').attr('class');
    var path2 = $('#contents').attr('class');

    switch (path1) {
        /**
        * --------------------------------
        * 인허가찾기
        * --------------------------------
        */
        case 'licensing' :

        /* 상세보기 */

            // 동별개요 스와이프
            var swiperBtnOption = {
                slidesPerView: 8,
                navigation: {
                    nextEl: '.table-region .swiper-btn-wrap .swiper-button-next',
                    prevEl: '.table-region .swiper-btn-wrap .swiper-button-prev',
                },
            }, swiperBtn = new Swiper('.table-region .swiper-btn', swiperBtnOption);

            // 표제부 스와이프
            var headerSwiperBtnOption = {
                slidesPerView: 10,
                navigation: {
                    nextEl: '.header-swiper-btn ~ .swiper-button-next',
                    prevEl: '.header-swiper-btn ~ .swiper-button-prev',
                },
            }, headerSwiperBtn = new Swiper('.header-swiper-btn', headerSwiperBtnOption);

            // 일반건축물 스와이프
            var generalSwiperBtnOption = {
                slidesPerView: 10,
                navigation: {
                    nextEl: '.general-swiper-btn ~ .swiper-button-next',
                    prevEl: '.general-swiper-btn ~ .swiper-button-prev',
                },
            }, generalSwiperBtn = new Swiper('.general-swiper-btn', generalSwiperBtnOption);



            // 우편 참여
            $('.detail-area .section.join .peoples .company .btn-open').click(function(){
                $(this).siblings('.ellipsis.txt').toggleClass('active');
            });

            // 온라인 참여
            $('.detail-area .section.join .table-company tr').click(function(){
                $(this).next('.txt').toggleClass('active');
            });

            $('.detail-area .tab-contents > .scrollbar > .scrollbar').scrollbar({
                'onScroll': function(y, x){
                    // 스크롤시 탭메뉴 활성화
                    var headerHeight = $('.detail-area .header').outerHeight();
                    var detailTop = $('#detail').offset().top-headerHeight;
                    var licenserTop = $('#licenser').offset().top-headerHeight;
                    var companyTop = $('#company').offset().top-headerHeight;
                    var joinTop = $('#join').offset().top-headerHeight;
                    var landTop = $('#land').offset().top-headerHeight;
                    var bbsTop = $('#bbs').offset().top-headerHeight;
                    var replyTop = $('#reply').offset().top-headerHeight;

                    if (detailTop < 0 && licenserTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="detail"]').addClass('active');
                    } else if (licenserTop < 0 && companyTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="licenser"]').addClass('active');
                    } else if (companyTop < 0 && joinTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="company"]').addClass('active');
                    } else if (joinTop < 0 && landTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="join"]').addClass('active');
                    } else if (landTop < 0 && bbsTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="land"]').addClass('active');
                    } else if (bbsTop < 0 && replyTop > 0 && y.scroll < y.maxScroll) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="bbs"]').addClass('active');
                    } else if (replyTop < 0 || y.scroll == y.maxScroll) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="reply"]').addClass('active');
                    }
                }
            });
        break;

        /**
        * --------------------------------
        * 전문가찾기
        * --------------------------------
        */
        case 'expert' :

        /* 상세보기 */

            // 상단 이미지 스와이프
            var detailThumbs = new Swiper('.detail-thumbs', {
                slidesPerView: 'auto',
                spaceBetween: 10,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
            });

            var detailSwiperOption = {
                slidesPerView: 1,
                pagination: {
                    el: '.detail-swiper ~ .indicator .swiper-pagination',
                },
                navigation: {
                    nextEl: '.detail-swiper ~ .indicator .swiper-button-next',
                    prevEl: '.detail-swiper ~ .indicator .swiper-button-prev',
                },
                thumbs: {
                    swiper: detailThumbs
                },
                autoplay: {
                    delay: 5000,
                    disableOnInteraction: false,
                },
                on: {
                    init: function(){
                        setTimeout(function(){
                            var bulletLen = $('.detail-swiper ~ .indicator .swiper-pagination-bullet').length;
                            $('.detail-swiper ~ .indicator .swiper-pagination-bullet').css({'width':(100/bulletLen)+'%'});
                        });
                    },
                    slideChange: function(){
                        player.pauseVideo();
                    }
                }
            },
            detailSwiper = new Swiper('.detail-swiper', detailSwiperOption);

            $('.detail-swiper ~ .indicator .swiper-button-toggle').click(function(){
                if ($(this).hasClass('pause')) {
                    $(this).removeClass('pause').addClass('play');
                    detailSwiper.autoplay.stop();

                } else {
                    $(this).removeClass('play').addClass('pause');
                    detailSwiper.autoplay.start();
                }
            });

            // 이미지 확대보기
            $('.btn-zoom').click(function(){
                var imgNum = detailSwiper.realIndex;
                    imgSrc = $(detailSwiper.slides[imgNum]).find('img').attr('src');

                if (typeof imgSrc === 'string') {
                    $('.img-zoom img').attr({'src':imgSrc});
                    $('.img-zoom').addClass('active');
                    detailSwiper.autoplay.stop();
                }
            });
            $('.img-zoom .btn-close').click(function(){
                $('.img-zoom').removeClass('active');
                detailSwiper.autoplay.start();
            });

            // 전문가찾기 탭메뉴 고정
            var detailTabTop = $('.detail-area .header .tab-menu').offset().top;

            $('.detail-area > .scrollbar > .scrollbar').scrollbar({
                'onScroll': function(y, x){
                    if(y.scroll > 0){
                        $('.detail-area .header > .inner > .btn-close').addClass('fixed');
                    } else {
                        $('.detail-area .header > .inner > .btn-close').removeClass('fixed');
                    }

                    if(y.scroll >= detailTabTop){
                        $('.detail-area .header .tab-menu').addClass('fixed');
                        $('.detail-area .tab-contents').addClass('fixed');
                    } else {
                        $('.detail-area .header .tab-menu').removeClass('fixed');
                        $('.detail-area .tab-contents').removeClass('fixed');
                    }

                    // 스크롤시 탭메뉴 활성화
                    var tabMenuHeight = $('.detail-area .tab-menu').outerHeight();
                    var profileTop = $('#profile').offset().top-tabMenuHeight;
                    var buildTop = $('#build').offset().top-tabMenuHeight;
                    var bbsTop = $('#bbs').offset().top-tabMenuHeight;
                    var reviewTop = $('#review').offset().top-tabMenuHeight;
                    var propertyTop = $('#property').offset().top-tabMenuHeight;

                    if (profileTop < 0 && buildTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="profile"]').addClass('active');
                    } else if (buildTop < 0 && bbsTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="build"]').addClass('active');
                    } else if (bbsTop < 0 && reviewTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="bbs"]').addClass('active');
                    } else if (reviewTop < 0 && propertyTop > 0 && y.scroll < y.maxScroll) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="review"]').addClass('active');
                    } else if (propertyTop < 0 || y.scroll == y.maxScroll) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="property"]').addClass('active');
                    }
                }
            });
        break;

        /**
        * --------------------------------
        * 매물찾기
        * --------------------------------
        */
        case 'land' :

        /* 상세보기 */

            // 상단 이미지 스와이프
            var detailThumbs = new Swiper('.detail-thumbs', {
                slidesPerView: 'auto',
                spaceBetween: 10,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
            });

            var detailSwiperOption = {
                slidesPerView: 1,
                pagination: {
                    el: '.detail-swiper ~ .indicator .swiper-pagination',
                },
                navigation: {
                    nextEl: '.detail-swiper ~ .indicator .swiper-button-next',
                    prevEl: '.detail-swiper ~ .indicator .swiper-button-prev',
                },
                thumbs: {
                    swiper: detailThumbs
                },
                autoplay: {
                    delay: 5000,
                    disableOnInteraction: false,
                },
                on: {
                    init: function(){
                        setTimeout(function(){
                            var bulletLen = $('.detail-swiper ~ .indicator .swiper-pagination-bullet').length;
                            $('.detail-swiper ~ .indicator .swiper-pagination-bullet').css({'width':(100/bulletLen)+'%'});
                        });
                    },
                    slideChange: function(){
                        player.pauseVideo();
                    }
                }
            },
            detailSwiper = new Swiper('.detail-swiper', detailSwiperOption);

            $('.detail-swiper ~ .indicator .swiper-button-toggle').click(function(){
                if ($(this).hasClass('pause')) {
                    $(this).removeClass('pause').addClass('play');
                    detailSwiper.autoplay.stop();

                } else {
                    $(this).removeClass('play').addClass('pause');
                    detailSwiper.autoplay.start();
                }
            });

            // 이미지 확대보기
            $('.btn-zoom').click(function(){
                var imgNum = detailSwiper.realIndex;
                    imgSrc = $(detailSwiper.slides[imgNum]).find('img').attr('src');

                if (typeof imgSrc === 'string') {
                    $('.img-zoom img').attr({'src':imgSrc});
                    $('.img-zoom').addClass('active');
                    detailSwiper.autoplay.stop();
                }
            });
            $('.img-zoom .btn-close').click(function(){
                $('.img-zoom').removeClass('active');
                detailSwiper.autoplay.start();
            });

            // 부동산매물 탭메뉴 고정
            var detailTabTop = $('.detail-area .header .tab-menu').offset().top;

            $('.detail-area > .scrollbar > .scrollbar').scrollbar({
                'onScroll': function(y, x){
                    if(y.scroll > 0){
                        $('.detail-area .header > .inner > .btn-close').addClass('fixed');
                    } else {
                        $('.detail-area .header > .inner > .btn-close').removeClass('fixed');
                    }
                    
                    if(y.scroll >= detailTabTop){
                        $('.detail-area .header .tab-menu').addClass('fixed');
                        $('.detail-area .tab-contents').addClass('fixed');
                    } else {
                        $('.detail-area .header .tab-menu').removeClass('fixed');
                        $('.detail-area .tab-contents').removeClass('fixed');
                    }

                    // 스크롤시 탭메뉴 활성화
                    var tabMenuHeight = $('.detail-area .tab-menu').outerHeight();
                    var articleTop = $('#article').offset().top-tabMenuHeight;
                    var priceTop = $('#price').offset().top-tabMenuHeight;
                    var expectTop = $('#expect').offset().top-tabMenuHeight;
                    var publicTop = $('#public').offset().top-tabMenuHeight;
                    var replyTop = $('#reply').offset().top-tabMenuHeight;

                    if (articleTop < 0 && priceTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="article"]').addClass('active');
                    } else if (priceTop < 0 && expectTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="price"]').addClass('active');
                    } else if (expectTop < 0 && publicTop > 0) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="expect"]').addClass('active');
                    } else if (publicTop < 0 && replyTop > 0 && y.scroll < y.maxScroll) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="public"]').addClass('active');
                    } else if (replyTop < 0 || y.scroll == y.maxScroll) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="reply"]').addClass('active');
                    }
                }
            });

            // 실거래가 스와이프
            var priceSwiperBtnOption = {
                slidesPerView: 10,
                navigation: {
                    nextEl: '.price .swiper-btn-wrap .swiper-button-next',
                    prevEl: '.price .swiper-btn-wrap .swiper-button-prev',
                },
            }, priceSwiperBtn = new Swiper('.price .swiper-btn', priceSwiperBtnOption);

            // 예상매물 스와이프
            var expectSwiperBtnOption = {
                slidesPerView: 10,
                navigation: {
                    nextEl: '.expect .swiper-btn-wrap .swiper-button-next',
                    prevEl: '.expect .swiper-btn-wrap .swiper-button-prev',
                },
            }, expectSwiperBtn = new Swiper('.expect .swiper-btn', expectSwiperBtnOption);

            // 표제부 스와이프
            var headerSwiperBtnOption = {
                slidesPerView: 10,
                navigation: {
                    nextEl: '.header-swiper-btn ~ .swiper-button-next',
                    prevEl: '.header-swiper-btn ~ .swiper-button-prev',
                },
            }, headerSwiperBtn = new Swiper('.header-swiper-btn', headerSwiperBtnOption);

            // 일반건축물 스와이프
            var generalSwiperBtnOption = {
                slidesPerView: 10,
                navigation: {
                    nextEl: '.general-swiper-btn ~ .swiper-button-next',
                    prevEl: '.general-swiper-btn ~ .swiper-button-prev',
                },
            }, generalSwiperBtn = new Swiper('.general-swiper-btn', generalSwiperBtnOption);

        break;

        /**
        * --------------------------------
        * 나만의데이터
        * --------------------------------
        */
        case 'data' :

            // 필터 위치
            $('.depth3 li').hover(function(){
                var filterAreaoffset = $(this).find('.filter-area').outerHeight() + $(this).offset().top - $(this).closest('.scroll-wrapper').siblings('.header').outerHeight();
                var filtetscrollHeight = $(this).closest('.scroll-wrapper').height();

                if (filterAreaoffset > filtetscrollHeight) {
                    $(this).find('.filter-area').addClass('bottom')
                }
            });

            $('.table > table > .scrollbar > .scrollbar').scrollbar({
                'onScroll': function(y, x){
                    $('.table > table > thead > tr').css({'margin-left':0-x.scroll})
                }
            });
        break;

        /**
        * --------------------------------
        * 게시글
        * --------------------------------
        */
        case 'post' :

            // 스크롤시 탭메뉴 활성화
            var headerHeight = $('.detail-area .header').outerHeight();
            var view = $('#view').offset().top-headerHeight;
            var replyTop = $('#reply').offset().top-headerHeight;

            $('.detail-area .tab-contents > .scrollbar > .scrollbar').scrollbar({
                'onScroll': function(y, x){
                    if (y.scroll >= detailTop && y.scroll < licenserTop) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="view"]').addClass('active');
                    } else if (y.scroll >= replyTop || y.scroll == y.maxScroll) {
                        $('.tab-menu a').removeClass('active');
                        $('.tab-menu a[href$="reply"]').addClass('active');
                    }
                }
            });
        break;

        /**
        * --------------------------------
        * 매물찾기
        * --------------------------------
        */
        case 'mypage' :
            switch(path2) {
                case 'ad write' :
                $('#contents > .scrollbar > .scrollbar').scrollbar({
                    'onScroll': function(y, x){
                        $('.datepicker:focus').datepicker('hide');
                        $('.datepicker:focus').trigger('blur');
                    }
                });
                break;
            }
        break;
    }
});
