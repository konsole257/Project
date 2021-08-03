/**
* --------------------------------
* Main JS
* --------------------------------
*/

$(window).on('load', function(){
    // con1
    $('.con1-swiper .swiper:first-child').addClass('active');
    var con1SwiperLen = $('.con1-swiper').find('.swiper').length,
        con1SwiperActive = $('.con1-swiper').find('.swiper.active').index()+1;

    $('.con1-swiper .pagination').append('<span class="current">'+con1SwiperActive+'</span>/<span class="total">'+con1SwiperLen+'</span>');

    var timer = 0;
    var swiperAnimate = function(){
        if (timer < 100) {
            timer++;
        } else {
            $('.con1-swiper .navigation .btn-next').trigger('click');
        }
        $('.con1-swiper .progress .bar').css({'width':timer+'%'});
    }

    var swiperInterval = setInterval(swiperAnimate, 25);

    $('.con1-swiper .navigation .btn-next').click(function(){
        if (!$('.con1-swiper').find('.swiper-contents').hasClass('animated')) {
            clearInterval(swiperInterval);
            timer = 100;

            var activeIdx = $('.con1-swiper').find('.swiper.active').index()+1;

            if (activeIdx < con1SwiperLen) {
                $('.con1-swiper').find('.swiper.active').next().addClass('active');
                $('.con1-swiper').find('.swiper.active:first').removeClass('active');
            } else {
                $('.con1-swiper').find('.swiper:first-child').addClass('active');
                $('.con1-swiper').find('.swiper.active:last').removeClass('active');
            }

            $('.con1-swiper .pagination .current').text($('.con1-swiper').find('.swiper.active').index()+1)

            $('.con1-swiper').find('.swiper-contents').addClass('animated');

            setTimeout(function(){
                timer = 0;
            }, 500);

            setTimeout(function(){
                $('.con1-swiper').find('.swiper-contents').removeClass('animated');
                $('.con1-swiper').find('.swiper').removeClass('prev');
            }, 1000);

            swiperInterval = setInterval(swiperAnimate, 25);
        }
    });

    $('.con1-swiper .navigation .btn-prev').click(function(){
        if (!$('.con1-swiper').find('.swiper-contents').hasClass('animated')) {
            clearInterval(swiperInterval);
            timer = 100;

            var activeIdx = $('.con1-swiper').find('.swiper.active').index()+1;

            if (activeIdx > 1) {
                $('.con1-swiper').find('.swiper.active').prev().addClass('active');
                $('.con1-swiper').find('.swiper.active:last').removeClass('active');
            } else {
                $('.con1-swiper').find('.swiper:last').addClass('active');
                $('.con1-swiper').find('.swiper.active:first').removeClass('active');
            }

            $('.con1-swiper .pagination .current').text($('.con1-swiper').find('.swiper.active').index()+1)

            $('.con1-swiper').find('.swiper-contents').addClass('animated');

            setTimeout(function(){
                timer = 0;
            }, 500);

            setTimeout(function(){
                $('.con1-swiper').find('.swiper-contents').removeClass('animated');
                $('.con1-swiper').find('.swiper').removeClass('prev');
            }, 1000);

            swiperInterval = setInterval(swiperAnimate, 25);
        }
    });

    $('.con1-swiper .navigation .btn-pause').click(function(){
        clearInterval(swiperInterval);
    });

    var con3swiper = new Swiper('.con3-swiper', {
		simulateTouch: false,
		slidesPerView: 'auto',
		loop: true,
        spaceBetween: 15,
		// centeredSlides: true,
		 navigation: {
		   nextEl: '.con3-swiper-wrap .swiper-button-next',
		   prevEl: '.con3-swiper-wrap .swiper-button-prev',
		 },
   });

   var con4Swiper = new Swiper('.con4-swiper', {
       simulateTouch: false,
       slidesPerView: 'auto',
       // loop: true,
       navigation: {
           nextEl: '.con4-swiper-wrap .swiper-button-next',
           prevEl: '.con4-swiper-wrap .swiper-button-prev',
         },
     pagination: {
       el: '.con4-swiper-wrap .swiper-pagination',
     },
   });

   var con5Swiper = new Swiper('.con5-swiper', {
       simulateTouch: false,
       slidesPerView: 'auto',
       navigation: {
           nextEl: '.con5-swiper > .indicator > .swiper-button-next',
           prevEl: '.con5-swiper > .indicator > .swiper-button-prev',
         },
     pagination: {
       el: '.con5-swiper > .indicator > .swiper-pagination',
     },
     on: {
         init: function(){
             var swipeLen = this.el.children[0].childElementCount;

             if (swipeLen < 2) {
                 $('.con5-swiper > .indicator').hide();
             }
         }
     }

   });

   $('.con5-swiper2').each(function(){
       var con5Swiper2 = new Swiper($(this), {
           simulateTouch: false,
           slidesPerView: 'auto',
           loop: true,
           navigation: {
               nextEl: $(this).children('.indicator').children('.swiper-button-next'),
               prevEl: $(this).children('.indicator').children('.swiper-button-prev'),
           },
           pagination: {
             el: $(this).children('.indicator').children('.swiper-pagination'),
             type: 'fraction',
           }
       });
   });

   $('.con5-swiper > .indicator [class*="button"]').click(function(){
       var playerLen = player.length;
       for (var i = 0; i<playerLen; i++) {
           player[i].stopVideo();
       }
   });
});
