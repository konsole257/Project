/**
* --------------------------------
* Main JS
* --------------------------------
*/

/* 본명조 */
(function(d) {
  var config = {
	kitId: 'vpt5uol',
	scriptTimeout: 3000,
	async: true
  },
  h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
})(document);

$(window).on('load', function(){
	// con1
    var timer = 0;
	var swiperLen = $('.con1-swiper .swiper').length;
    var swiperAnimate = function(){
        if (timer < 100) {
            timer++;
        } else {
			$('.con1-swiper .navigation .btn-next').trigger('click');
        }
        $('.con1-swiper .progress .bar').css({'width':timer+'%'});
    }

	if (swiperLen > 1) {
		var swiperInterval = setInterval(swiperAnimate, 40);
		$('.con1-swiper').removeClass('inactive');
	}

    $('.con1-swiper .swiper:first-child').addClass('active');
    $('.con1-swiper .navigation .btn-next').click(function(){
		if (!$('.con1-swiper').find('.swiper-contents').hasClass('animated')) {
			clearInterval(swiperInterval);
	        timer = 100;

			var activeIdx = $('.con1-swiper').find('.swiper.active').index()+1;

			if (activeIdx < swiperLen) {
				$('.con1-swiper').find('.swiper.active').next().addClass('active');
				$('.con1-swiper').find('.swiper.active:first').removeClass('active');
			} else {
				$('.con1-swiper').find('.swiper:first-child').addClass('active');
				$('.con1-swiper').find('.swiper.active:last').removeClass('active');
			}

            setTimeout(function(){
				timer = 0;
				$('.con1-swiper .pagination').text('no.0'+($('.con1-swiper').find('.swiper.active').index()+1));
			}, 1000);

			$('.con1-swiper').find('.swiper-contents').addClass('animated');

			setTimeout(function(){
				$('.con1-swiper').find('.swiper-contents').removeClass('animated');
			}, 1500);

			swiperInterval = setInterval(swiperAnimate, 40);
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

            setTimeout(function(){
				timer = 0;
				$('.con1-swiper .pagination').text('no.0'+($('.con1-swiper').find('.swiper.active').index()+1));
			}, 1000);

			$('.con1-swiper').find('.swiper-contents').addClass('animated');

			setTimeout(function(){
				$('.con1-swiper').find('.swiper-contents').removeClass('animated');
			}, 1500);

			swiperInterval = setInterval(swiperAnimate, 40);
		}
    });

    $('.con1-swiper .navigation .btn-pause').click(function(){
        clearInterval(swiperInterval);
    });

	// con4
	$('.con4-swiper .swiper:first-child').addClass('active');
	$('.con4-swiper .navigation .btn-next').click(function(){
		var $this = $(this);
        if (!$this.closest('.con4-swiper').find('.swiper-contents').attr('style')) {
            var swiperWidth = 305;


            $this.closest('.con4-swiper').find('.swiper.active').next('.swiper').addClass('active');
            $this.closest('.con4-swiper').find('.swiper.active:first').removeClass('active').addClass('prev');
            $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)', 'transition-duration':'500ms'});

            var copy = $this.closest('.con4-swiper').find('.swiper:first-child').clone().removeClass('prev');
			$this.closest('.con4-swiper').find('.swiper-contents').append(copy);

            setTimeout(function(){
                $this.closest('.con4-swiper').find('.swiper.prev').remove();
                $this.closest('.con4-swiper').find('.swiper-contents').removeAttr('style');
            }, 500);
        }
    });

    $('.con4-swiper .navigation .btn-prev').click(function(){
		var $this = $(this);

        if (!$this.closest('.con4-swiper').find('.swiper-contents').attr('style')) {
            var swiperWidth = 305;

            var copy = $this.closest('.con4-swiper').find('.swiper:last-child').clone().addClass('prev');
			$this.closest('.con4-swiper').find('.swiper-contents').prepend(copy);

            $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)'});

            setTimeout(function(){
                $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, 0, 0)', 'transition-duration':'500ms'});
                $this.closest('.con4-swiper').find('.swiper.active').prev('.swiper').addClass('active').removeClass('prev');
                $this.closest('.con4-swiper').find('.swiper.active:last').removeClass('active');
            }, 100);

            setTimeout(function(){
                $this.closest('.con4-swiper').find('.swiper:last-child').remove();
                $this.closest('.con4-swiper').find('.swiper-contents').removeAttr('style');
            }, 500);
        }
    });

	var swiper = new Swiper('.con5-swiper', {
		simulateTouch: false,
		slidesPerView: 'auto',
		loop: true,
		centeredSlides: true,
		pagination: {
		  el: '.con5-swiper-wrap .swiper-pagination',
		  type: 'fraction',
		},
		 navigation: {
		   nextEl: '.con5-swiper-wrap .swiper-button-next',
		   prevEl: '.con5-swiper-wrap .swiper-button-prev',
		 },
   });
});
