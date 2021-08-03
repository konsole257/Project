/**
* --------------------------------
* Main JS
* --------------------------------
*/

$(window).on('load', function(){
	// path
	var path1 = $("#wrap").attr("class");
	var path2 = $("#container").attr("class");

	switch (path1) {
		// main
		case "main snpmall" :
			var i = 1;
		    var con1SwiperLen = $('.con1-swiper .swiper').length;

		    for (i; i<=con1SwiperLen; i++) {
		        $('.con1-swiper .pagination').append('<span>'+i+'</span>');
		    }

		    var con1SwiperActive = 1;
		    $('.con1-swiper .pagination span:nth-child('+con1SwiperActive+')').addClass('active');

			$('.con1-swiper .swiper:first-child').addClass('active');
			$('.con1').css({'background-color':$('.swiper.active').attr('data-bgcolor')});
		    $('.con1-swiper .navigation .btn-next').click(function(){
		        if (!$('.con1-swiper').find('.swiper-contents').attr('style')) {
		            clearInterval(swiper1Interval);

		            var swiperWidth = 295;

		            if (con1SwiperActive < con1SwiperLen) {
		                con1SwiperActive++;
		            } else {
		                con1SwiperActive = 1;
		            }


		            $(this).closest('.con1-swiper').find('.swiper.active').next('.swiper').addClass('active');
		            $(this).closest('.con1-swiper').find('.swiper.active:first').removeClass('active').addClass('prev');
		            $(this).closest('.con1-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)', 'transition-duration':'1000ms'});

		            $('.con1-swiper .swiper:first-child').clone().appendTo('.con1-swiper .swiper-contents').removeClass('prev');

		            $('.con1-swiper .pagination span').removeClass('active');
		            $('.con1-swiper .pagination span:nth-child('+con1SwiperActive+')').addClass('active');

		            var bgcolor = $('.swiper.active').attr('data-bgcolor');
		            $('.con1').css({'background-color':bgcolor});

					$('.link').attr({'href':$('.swiper.active .btn-view').attr('href')});

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
		            var swiperWidth = 295,
						swiperLen = $(this).closest('.con1-swiper').find('.swiper').length;

		            if (con1SwiperActive > 1) {
		                con1SwiperActive--;
		            } else {
		                con1SwiperActive = swiperLen;
		            }

		            $(this).closest('.con1-swiper').find('.swiper:last-child').clone().prependTo('.con1-swiper .swiper-contents').addClass('prev');
		            $(this).closest('.con1-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)'});



		            setTimeout(function(){
		                $('.con1-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, 0, 0)', 'transition-duration':'1000ms'});
		                $('.con1-swiper').find('.swiper.active').prev('.swiper').addClass('active').removeClass('prev');
		                $('.con1-swiper').find('.swiper.active:last').removeClass('active');

		                var bgcolor = $('.swiper.active').attr('data-bgcolor');
		                $('.con1').css({'background-color':bgcolor});

		                $('.con1-swiper .pagination span').removeClass('active');
		                $('.con1-swiper .pagination span:nth-child('+con1SwiperActive+')').addClass('active');

						$('.link').attr({'href':$('.swiper.active .btn-view').attr('href')});
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

			$('.con1-swiper .navigation .btn-pause').click(function(){
				clearInterval(swiper1Interval);
			});

		    var swiper1Interval = setInterval(function(){
		        $('.con1-swiper .navigation .btn-next').trigger('click');
		    }, 3000);

			// 말줄임
			$(document).on('click', '.con2 .tab-menu a', function(e){
				fn.ellipsis('on', '.con2 .tab-contents .ellipsis');
			});

			var con3Swiper = new Swiper('.con3-swiper', {
				simulateTouch: false,
				slidesPerView: 'auto',
				loop: true,
				navigation: {
			        nextEl: '.con3-swiper > .swiper-button-next',
			        prevEl: '.con3-swiper > .swiper-button-prev',
			      },
			  pagination: {
				el: '.con3-swiper > .swiper-pagination',
				type: 'fraction',
			  },
			  slideActiveClass: 'active',
			  on: {
					init: function(){
						var bgcolor = $('.con3 .swiper-slide.active').attr('data-bgcolor')
						$('.con3 .bg').css({'background':bgcolor});
					},
					transitionEnd: function() {
						var bgcolor = $('.con3 .swiper-slide.active').attr('data-bgcolor')
						$('.con3 .bg').css({'background':bgcolor});
					}
				}
			});

			var con3Swiper2 = new Swiper('.con3-swiper2', {
				simulateTouch: false,
				slidesPerView: 'auto',
			    spaceBetween: 10,
				loop: true,
				navigation: {
			        nextEl: '.con3-swiper2 .swiper-button-next',
			        prevEl: '.con3-swiper2 .swiper-button-prev',
			      },
			  pagination: {
				el: '.con3-swiper2 .swiper-pagination',
			  },
			});

			$('.con4 .tab-menu a:first-child').click();
			$('.con4-swiper .swiper:first-child').addClass('active');
			$('.con4-swiper .navigation .btn-next').click(function(){
				var $this = $(this);
	            var swiperWidth = 243;
				var swiperLen = $this.closest('.con4-swiper').find('.swiper').length;
				var activeIdx = $this.closest('.con4-swiper').find('.swiper.active').index()+1;

				if ((swiperWidth*swiperLen)-(swiperWidth*activeIdx) >= (swiperWidth*4)) {
		            $this.closest('.con4-swiper').find('.swiper.active').next('.swiper').addClass('active');
		            $this.closest('.con4-swiper').find('.swiper.active:first').removeClass('active').addClass('prev');
		            $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth*activeIdx)+', 0)', 'transition-duration':'400ms'});
				}
				// if (!$('.con4-swiper').find('.swiper-contents').attr('style')) {
				// 	var $this = $(this);
		        //     var swiperWidth = 243;
				//
		        //     $this.closest('.con4-swiper').find('.swiper.active').next('.swiper').addClass('active');
		        //     $this.closest('.con4-swiper').find('.swiper.active:first').removeClass('active').addClass('prev');
		        //     $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)', 'transition-duration':'400ms'});
				//
		        //     var swiperClone = $this.closest('.con4-swiper').find('.swiper:first-child').clone().removeClass('prev');
				// 	$this.closest('.con4-swiper').find('.swiper-contents').append(swiperClone);
				//
		        //     setTimeout(function(){
		        //         $this.closest('.con4-swiper').find('.swiper.prev').remove();
		        //         $('.con4-swiper').find('.swiper-contents').removeAttr('style');
		        //     }, 500);
		        // }
		    });

		    $('.con4-swiper .navigation .btn-prev').click(function(){
				var $this = $(this);
	            var swiperWidth = 243;
				var swiperLen = $this.closest('.con4-swiper').find('.swiper').length;
				var activeIdx = $this.closest('.con4-swiper').find('.swiper.active').index();

				console.log(swiperWidth*activeIdx)
				if (swiperWidth*activeIdx > 0) {
		            $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+((-swiperWidth*activeIdx)+swiperWidth)+', 0)', 'transition-duration':'400ms'});

		            setTimeout(function(){
		                 $this.closest('.con4-swiper').find('.swiper.active').prev('.swiper').addClass('active').removeClass('prev');
		                 $this.closest('.con4-swiper').find('.swiper.active:last').removeClass('active');
		            }, 100);
				}

		        // if (!$('.con4-swiper').find('.swiper-contents').attr('style')) {
				// 	var $this = $(this);
		        //     var swiperWidth = 243;
				// 	var swiperLen = $this.closest('.con4-swiper').find('.swiper').length;
				// 	var activeIdx = $this.closest('.con4-swiper').find('.swiper.active').index()+1;
				//
		        //     var swiperClone = $this.closest('.con4-swiper').find('.swiper:last-child').clone().addClass('prev');
				// 	$this.closest('.con4-swiper').find('.swiper-contents').prepend(swiperClone);
		        //     $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)'});
				//
		        //     setTimeout(function(){
		        //          $this.closest('.con4-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, 0, 0)', 'transition-duration':'400ms'});
		        //          $this.closest('.con4-swiper').find('.swiper.active').prev('.swiper').addClass('active').removeClass('prev');
		        //          $this.closest('.con4-swiper').find('.swiper.active:last').removeClass('active');
		        //     }, 100);
				//
		        //     setTimeout(function(){
		        //        $this.closest('.con4-swiper').find('.swiper:last-child').remove();
		        //         $('.con4-swiper').find('.swiper-contents').removeAttr('style');
		        //     }, 500);
		        // }
		    });

			$('.con5-swiper').each(function(){
				var con5Swiper = new Swiper($(this), {
					simulateTouch: false,
					slidesPerView: 'auto',
					// loop: true,
					spaceBetween: 20,
					navigation: {
				        nextEl: $(this).siblings('.indicator').children('.swiper-button-next'),
				        prevEl: $(this).siblings('.indicator').children('.swiper-button-prev')
				      },
				  pagination: {
					el: $(this).siblings('.indicator').children('.swiper-pagination')
				  },
				  on: {
					  init: function(){
						  setTimeout(function(){
							  $('.con5 .tab-menu a:first-child').click();
						  })
					  }
				  }
				});
			});

			$('.con6 .archive-list > li > .pic').each(function(){
				if ($(this).find('.img').height() > 275) {
					$(this).find('.img').css({'width':'auto', 'height':'100%'});
				}
			});

			$('.con6-swiper .swiper:first-child').addClass('active');
			$('.con6-swiper .navigation .btn-next').click(function(){
		        if (!$('.con6-swiper').find('.swiper-contents').attr('style')) {
		            var swiperWidth = 300;

		            $(this).closest('.con6-swiper').find('.swiper.active').next('.swiper').addClass('active');
		            $(this).closest('.con6-swiper').find('.swiper.active:first').removeClass('active').addClass('prev');
		            $(this).closest('.con6-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)', 'transition-duration':'400ms'});

		            $('.con6-swiper .swiper:first-child').clone().appendTo('.con6-swiper .swiper-contents').removeClass('prev');

		            setTimeout(function(){
		                $('.con6-swiper .swiper.prev').remove();
		                $('.con6-swiper').find('.swiper-contents').removeAttr('style');
		            }, 500);
		        }
		    });

		    $('.con6-swiper .navigation .btn-prev').click(function(){
		        if (!$('.con6-swiper').find('.swiper-contents').attr('style')) {
		            var swiperWidth = 300;

		            $(this).closest('.con6-swiper').find('.swiper:last-child').clone().prependTo('.con6-swiper .swiper-contents').addClass('prev');
		            $(this).closest('.con6-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, '+(-swiperWidth)+', 0)'});

		            setTimeout(function(){
		                $('.con6-swiper').find('.swiper-contents').css({'transform':'matrix(1, 0, 0, 1, 0, 0)', 'transition-duration':'400ms'});
		                $('.con6-swiper').find('.swiper.active').prev('.swiper').addClass('active').removeClass('prev');
		                $('.con6-swiper').find('.swiper.active:last').removeClass('active');
		            }, 100);

		            setTimeout(function(){
		                $('.con6-swiper .swiper:last-child').remove();
		                $('.con6-swiper').find('.swiper-contents').removeAttr('style');
		            }, 500);
		        }
		    });

		break;
	}
});
