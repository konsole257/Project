/**
* --------------------------------
* Main JS
* --------------------------------
*/

$(window).on('load', function(){
	var con1ActiveIdx = 1;
	var con1swiperLen = $('.con1-swiper .swiper').length;
	var con1Pagination = 1;
	for (con1Pagination; con1Pagination<=con1swiperLen; con1Pagination++) {
		$('.con1-swiper .pagination').append('<span></span>');
	}

	$('.con1-swiper .swiper:first-child').addClass('active');
	$('.con1-swiper .pagination span:first-child').addClass('active');


    $('.con1-swiper .navigation .btn-next').click(function(){
        if (!$('.con1-swiper').find('.swiper-contents').attr('style')) {
            clearInterval(swiper1Interval);

            var swiperWidth = 1200;

            if ( con1ActiveIdx < con1swiperLen ) {
                con1ActiveIdx++;
            } else {
                con1ActiveIdx = 1;
            }

            $(this).closest('.con1-swiper').find('.swiper.active').next('.swiper').addClass('active');
            $(this).closest('.con1-swiper').find('.swiper.active:first').removeClass('active').addClass('prev');
            $(this).closest('.con1-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)', 'transition-duration':'1000ms'});

            $('.con1-swiper .swiper:first-child').clone().appendTo('.con1-swiper .swiper-contents').removeClass('prev');


			$('.con1-swiper .pagination span').removeClass();
			$('.con1-swiper .pagination span:nth-child('+con1ActiveIdx+')').addClass('active');

            setTimeout(function(){
                $('.con1-swiper .swiper.prev').remove();
                $('.con1-swiper').find('.swiper-contents').removeAttr('style');

                swiper1Interval = setInterval(function(){
                    $('.con1-swiper .navigation .btn-next').trigger('click');
                }, 3000);
            }, 1000);
        }
    });

    $('.con1-swiper .navigation .btn-prev').click(function(){
        if (!$('.con1-swiper').find('.swiper-contents').attr('style')) {
            clearInterval(swiper1Interval);

            var swiperWidth = 1200;

			if ( con1ActiveIdx > 1 ) {
                con1ActiveIdx--;
            } else {
                con1ActiveIdx = con1swiperLen;
            }

            $(this).closest('.con1-swiper').find('.swiper:last-child').clone().prependTo('.con1-swiper .swiper-contents').addClass('prev');
            $(this).closest('.con1-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)'});

            setTimeout(function(){
                $('.con1-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, 0, 0)', 'transition-duration':'1000ms'});
                $('.con1-swiper').find('.swiper.active').prev('.swiper').addClass('active').removeClass('prev');
                $('.con1-swiper').find('.swiper.active:last').removeClass('active');

				$('.con1-swiper .pagination span').removeClass();
				$('.con1-swiper .pagination span:nth-child('+con1ActiveIdx+')').addClass('active');
            }, 100);

            setTimeout(function(){
                $('.con1-swiper .swiper:last-child').remove();
                $('.con1-swiper').find('.swiper-contents').removeAttr('style');

                swiper1Interval = setInterval(function(){
                    $('.con1-swiper .navigation .btn-next').trigger('click');
                }, 3000);
            }, 1000);
        }
    });

    var swiper1Interval = setInterval(function(){
        $('.con1-swiper .navigation .btn-next').trigger('click');
    }, 3000);

	var con3swiper = new Swiper('.con3-swiper', {
		simulateTouch: false,
		slidesPerView: 'auto',
		loop: true,
		centeredSlides: true,
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
           nextEl: '.con4-swiper ~ .indicator > .swiper-button-next',
           prevEl: '.con4-swiper ~ .indicator > .swiper-button-prev',
         },
     pagination: {
       el: '.con4-swiper ~ .indicator > .swiper-pagination',
     },
   });

    var con5Swiper = new Swiper('.con5-swiper', {
        simulateTouch: false,
        slidesPerView: 'auto',
        // loop: true,
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
				nextEl: $(this).next('.indicator').children('.swiper-button-next'),
				prevEl: $(this).next('.indicator').children('.swiper-button-prev'),
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
