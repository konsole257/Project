/**
* --------------------------------
* Main JS
* --------------------------------
*/

$(window).on('load', function(){
	// con1
    var con1Swiper = new Swiper('.con1-swiper', {
		simulateTouch: false,
		slidesPerView: 'auto',
		loop: true,
		pagination: {
		  el: '.con1 .swiper-pagination',
          type: 'fraction',
		},
		 navigation: {
		   nextEl: '.con1 .swiper-button-next',
		   prevEl: '.con1 .swiper-button-prev',
       },
       on: {
           init: function(){
               var activeIdx = this.realIndex,
                   bgcolor = $('.swiper-slide:eq('+activeIdx+')').css('background-color');

               $('.con1 .bg').css({'background-color':bgcolor});

               $('.con1 .txt-area > div:eq('+activeIdx+')').addClass('active');
           },
           transitionStart: function(){
               var activeIdx = this.realIndex,
                   bgcolor = $('.swiper-slide:eq('+activeIdx+')').css('background-color'),
                   link = $('.con1 .txt-area > div:eq('+activeIdx+') a').attr('href');

               $('.con1 .bg').css({'background-color':bgcolor}).attr({'onclick':'location.href="'+link+'"'});
               $('.con1 .txt-area').attr({'onclick':'location.href="'+link+'"'});
               $('.con1 .txt-area > div').removeClass('active').hide();
               $('.con1 .txt-area > div:eq('+activeIdx+')').stop().fadeIn(400).addClass('active');
           }
       }
     });

	var con4Swiper = new Swiper('.con4-swiper', {
		simulateTouch: false,
		slidesPerView: 'auto',
		loop: true,
		pagination: {
		  el: '.con4 .swiper-pagination',
          renderBullet: function (index, className, total) {
            return '<span class="' + className + '"><img src="'+this.imagesToLoad[index].src+'" alt=""></span>';
        },
          clickable: true
		},
		 navigation: {
		   nextEl: '.con4 .swiper-button-next',
		   prevEl: '.con4 .swiper-button-prev',
       }
     });
});
