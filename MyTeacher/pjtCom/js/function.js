var fn = (function() {
    'use strict';

    return {
        // 푸터 하단 고정
        footerFix : function(){
            var windowH = $(window).height(),
                headerH = $('#header').outerHeight(),
                bodyH = $('body').height(),
                footerH = $('#footer').outerHeight(),
                wrap = $('#wrap'),
                footer = $('#footer');

            if ( bodyH < windowH && !footer.hasClass('fix') ) {
                wrap.css({'min-height':windowH-headerH-footerH});
            }
        },

        // 팝업이 컨텐츠보다 길때
        modalLengthy : function(state, target){
            target = $(target).attr('href');

            switch (state) {
                case 'open' :
                    var modalH = $(target).find('article').height();

                    if (modalH > $(window).height() && !$('.modal').hasClass('lengthy')) {
                        $('.modal').addClass('lengthy');
                    }
                break;

                case 'close' :
                    if ($('.modal').hasClass('lengthy')) {
                        $('.modal').removeClass('lengthy');
                    }
                break;
            }
        },

        // 마우스 휠
        scroll : function(data){
			var wheelUp = data.wheelUp,
				wheelDown = data.wheelDown,
				mouseScroll;

			navigator.userAgent.indexOf('Firefox') != -1 ? mouseScroll = 'DOMMouseScroll' : mouseScroll = 'mousewheel';

			window.addEventListener(mouseScroll, wheel, false);

			function wheel(e){
				var delta = e.originalEvent,
					wheel;

				if (e.detail) {
					e.detail * -40 > 0 ? wheel = 'up' : wheel = 'down';
				} else {
					e.wheelDelta > 0 ? wheel = 'up' : wheel = 'down';
				}

				switch (wheel) {
					// WHEEL UP
					case 'up' :
						wheelUp();
					break;

					// WHEEL DOWN
					case 'down' :
						wheelDown();
					break;
				}
			}
		},

        // 소개 - 맞춤형 재학습 : slide
        relearningSlide : function(btn){
            var btn = $(btn).attr('class'),
                slideIdx = [
                    $('.slide img.master').clone(),
                    $('.slide img.excellent').clone(),
                    $('.slide img.notbad').clone(),
                    $('.slide img.tryagain').clone()
                ],
                slideTurn = [
                    [slideIdx[1], slideIdx[2], slideIdx[3]],
                    [slideIdx[2], slideIdx[3], slideIdx[0]],
                    [slideIdx[3], slideIdx[0], slideIdx[1]],
                    [slideIdx[0], slideIdx[1], slideIdx[2]]
                ],
                slideWidth = $( '.slide img' ).width();

            fn.methodSlide(btn, slideIdx, slideTurn, slideWidth);
        },

        // 소개 - 맞춤형 재학습 : slide
        habitSlide : function(btn){
            var btn = $(btn).attr('class'),
                slideIdx = [
                    $('.slide img.condition').clone(),
                    $('.slide img.hour').clone(),
                    $('.slide img.diary').clone(),
                    $('.slide img.cycle').clone(),
                    $('.slide img.speed').clone(),
                ],
                slideTurn = [
                    [slideIdx[1], slideIdx[2], slideIdx[3], slideIdx[4]],
                    [slideIdx[2], slideIdx[3], slideIdx[4], slideIdx[0]],
                    [slideIdx[3], slideIdx[4], slideIdx[0], slideIdx[1]],
                    [slideIdx[4], slideIdx[0], slideIdx[1], slideIdx[2]],
                    [slideIdx[0], slideIdx[1], slideIdx[2], slideIdx[3]]
                ],
                slideWidth = $( '.slide img' ).width();

            fn.methodSlide(btn, slideIdx, slideTurn, slideWidth);
        },

        // 소개 - 학습방법 : slide
        methodSlide : function(btn, slideIdx, slideTurn, slideWidth){
            if (!$('.slide img').is(':animated')) {
                var slideLen = slideIdx.length-1;

                if (btn.indexOf('next') !== -1) {
                    $('.slide img:first-child, .slide img:nth-child(2)').animate({'left':'-='+slideWidth+'px'}, 800, function(){
                        if (parseInt($('.slide img:first-child').css('left')) < 0 ) {
                            $('.slide img:first-child').clone().appendTo('.slide').removeAttr('style');
                            $('.slide img:first-child').remove();
                        };
                        $(this).removeAttr('style');
                    });
                } else if (btn.indexOf('prev') !== -1) {
                    if (parseInt($('.slide img:last-child').css('left')) > 0 ) {
                        $('.slide img:last-child').clone().prependTo('.slide').css({'left':'-100%'});
                        $('.slide img:last-child').remove();
                        $('.slide img:nth-child(2)').css({'left':'0'});
                    };

                    $('.slide img:first-child, .slide img:nth-child(2)').animate({'left':'+='+slideWidth+'px'}, 800, function(){
                        $(this).removeAttr('style');
                    });
                } else {
                    var btnIdx = $('.pick_area button.'+btn+'').index();

                    if (parseInt($('.slide img.'+btn+'').css('left')) !== 0){
                        $('.slide img.'+btn+'').remove();
                        $('.slide img:first-child').after(slideIdx[btnIdx]);

                        $('.slide img:first-child, .slide img:nth-child(2)').animate({'left':'-='+slideWidth+'px'}, 800, function(){
                            if (parseInt($('.slide img:first-child').css('left')) < 0 ) {
                                $('.slide img:first-child').clone().appendTo('.slide');
                                $('.slide img:first-child').remove();
                            };

                            $('.slide img').removeAttr('style');
                            $('.slide img:not(:first-child)').remove();
                            $('.slide img:first-child').after(slideTurn[btnIdx])
                        });
                    }
                }
            }
        },

        // learning 학습 완료
        // learningComplete : function(now, next){
		// 	var completeContent = '<div class="complete">';
        //         switch (now) {
        //             // case 'video' :
        //             //     completeContent += '<p class="txt icon">동영상 문제 풀이가 끝났어요!</p>';
        //             // break;
        //
        //             case 'vocabulary' :
        //                 completeContent += '<p class="txt icon">어휘 문제 풀이가 끝났어요!</p>';
        //             break;
        //
        //             case 'subjective' :
        //                 completeContent += '<p class="txt icon">객관식 문제 풀이가 끝났어요!</p>';
        //             break;
        //
        //             case 'objective' :
        //                 completeContent += '<p class="txt icon">주관식 문제 풀이가 끝났어요!</p>';
        //             break;
        //         }
        //
		// 		completeContent += '<div class="btn_area">';
        //
		// 		switch (next) {
		// 			case 'vocabulary' :
		// 				completeContent += '<a href="#" class="btn box next">어휘 풀기</a>';
		// 			break;
        //
		// 			case 'subjective' :
		// 				completeContent += '<a href="#" class="btn box next">객관식 풀기</a>';
		// 			break;
        //
		// 			case 'objective' :
		// 				completeContent += '<a href="#" class="btn box next">주관식 풀기</a>';
		// 			break;
        //
		// 			case 'result' :
		// 				completeContent += '<a href="#" class="btn box next">결과 확인</a>';
		// 			break;
		// 		}
	    //     completeContent += '</div>';
		// 	completeContent += '</div>';
        //
		// 	$('.whiteboard').html(completeContent);
		// },

        // learning 힌트 생성시
        hintWidth : function(){
            $('.hint_area dd').each(function(){
    			var dtWidth = $(this).prev('dt').width()+62;
    			$(this).css({'padding-left':dtWidth});
    		});
        },

        // Unit 결과
        unitResult : function(result){
            $('.result').addClass(result).append('<div class="img_area"></div>');

            var firecracker0FrameH = 108,
                firecracker1FrameH = 300,
                firecracker2FrameH = 211,
                firecracker3FrameH = 103,
                firecracker4FrameH = 203,
                firecracker5FrameH = 110,
                firecracker6FrameH = 205,
                firecracker7FrameH = 250,
                firecracker8FrameH = 230,
                firecracker9FrameH = 238,
                firecracker10FrameH = 203,
                firecracker11FrameH = 204,
                firecracker12FrameH = 287,
                firecracker13FrameH = 110,
                firecracker14FrameH = 110,
                firecracker15FrameH = 330,
                firecracker16FrameH = 250,
                firecracker17FrameH = 230,
                firecracker18FrameH = 287,
                firecracker19FrameH = 200,
                firecracker20FrameH = 380,
                firecracker0Frame = 0,
                firecracker1Frame = 0,
                firecracker2Frame = 0,
                firecracker3Frame = 0,
                firecracker4Frame = 0,
                firecracker5Frame = 0,
                firecracker6Frame = 0,
                firecracker7Frame = 0,
                firecracker8Frame = 0,
                firecracker9Frame = 0,
                firecracker10Frame = 0,
                firecracker11Frame = 0,
                firecracker12Frame = 0,
                firecracker13Frame = 0,
                firecracker14Frame = 0,
                firecracker15Frame = 0,
                firecracker16Frame = 0,
                firecracker17Frame = 0,
                firecracker18Frame = 0,
                firecracker19Frame = 0,
                firecracker20Frame = 0;

                var firecracker0 = function(delay, duration){
                    $('.result .img_area').append('<div class="img0"><img src="/pjtCom/images/sub/img_learning_result0.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker0Animation = setInterval(function(){
                            if (firecracker0Frame<12) {
                                $('.result .img0 img').css({'top':-firecracker0FrameH*firecracker0Frame});
                                firecracker0Frame++;
                            } else {
                                clearInterval(firecracker0Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker1 = function(delay, duration){
                    $('.result .img_area').append('<div class="img1"><img src="/pjtCom/images/sub/img_learning_result1.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker1Animation = setInterval(function(){
                            if (firecracker1Frame<30) {
                                $('.result .img1 img').css({'top':-firecracker1FrameH*firecracker1Frame});
                                firecracker1Frame++;
                            } else {
                                clearInterval(firecracker1Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker2 = function(delay, duration){
                    $('.result .img_area').append('<div class="img2"><img src="/pjtCom/images/sub/img_learning_result2.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker2Animation = setInterval(function(){
                            if (firecracker2Frame<17) {
                                $('.result .img2 img').css({'top':-firecracker2FrameH*firecracker2Frame});
                                firecracker2Frame++;
                            } else {
                                clearInterval(firecracker2Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker3 = function(delay, duration){
                    $('.result .img_area').append('<div class="img3"><img src="/pjtCom/images/sub/img_learning_result3.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker3Animation = setInterval(function(){
                            if (firecracker3Frame<10) {
                                $('.result .img3 img').css({'top':-firecracker3FrameH*firecracker3Frame});
                                firecracker3Frame++;
                            } else {
                                clearInterval(firecracker3Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker4 = function(delay, duration){
                    $('.result .img_area').append('<div class="img4"><img src="/pjtCom/images/sub/img_learning_result4.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker4Animation = setInterval(function(){
                            if (firecracker4Frame<19) {
                                $('.result .img4 img').css({'top':-firecracker4FrameH*firecracker4Frame});
                                firecracker4Frame++;
                            } else {
                                clearInterval(firecracker4Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker5 = function(delay, duration){
                    $('.result .img_area').append('<div class="img5"><img src="/pjtCom/images/sub/img_learning_result5.png" alt=""></div>')

                        setTimeout(function(){
                        var firecracker5Animation = setInterval(function(){
                            if (firecracker5Frame<16) {
                                $('.result .img5 img').css({'top':-firecracker5FrameH*firecracker5Frame});
                                firecracker5Frame++;
                            } else {
                                clearInterval(firecracker5Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker6 = function(delay, duration){
                    $('.result .img_area').append('<div class="img6"><img src="/pjtCom/images/sub/img_learning_result6.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker6Animation = setInterval(function(){
                            if (firecracker6Frame<18) {
                                $('.result .img6 img').css({'top':-firecracker6FrameH*firecracker6Frame});
                                firecracker6Frame++;
                            } else {
                                clearInterval(firecracker6Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker7 = function(delay, duration){
                    $('.result .img_area').append('<div class="img7"><img src="/pjtCom/images/sub/img_learning_result7.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker7Animation = setInterval(function(){
                            if (firecracker7Frame<26) {
                                $('.result .img7 img').css({'top':-firecracker7FrameH*firecracker7Frame});
                                firecracker7Frame++;
                            } else {
                                clearInterval(firecracker7Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker8 = function(delay, duration){
                    $('.result .img_area').append('<div class="img8"><img src="/pjtCom/images/sub/img_learning_result8.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker8Animation = setInterval(function(){
                            if (firecracker8Frame<16) {
                                $('.result .img8 img').css({'top':-firecracker8FrameH*firecracker8Frame});
                                firecracker8Frame++;
                            } else {
                                clearInterval(firecracker8Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker9 = function(delay, duration){
                    $('.result .img_area').append('<div class="img9"><img src="/pjtCom/images/sub/img_learning_result9.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker9Animation = setInterval(function(){
                            if (firecracker9Frame<24) {
                                $('.result .img9 img').css({'top':-firecracker9FrameH*firecracker9Frame});
                                firecracker9Frame++;
                            } else {
                                clearInterval(firecracker9Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker10 = function(delay, duration){
                    $('.result .img_area').append('<div class="img10"><img src="/pjtCom/images/sub/img_learning_result10.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker10Animation = setInterval(function(){
                            if (firecracker10Frame<16) {
                                $('.result .img10 img').css({'top':-firecracker10FrameH*firecracker10Frame});
                                firecracker10Frame++;
                            } else {
                                clearInterval(firecracker10Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker11 = function(delay, duration){
                    $('.result .img_area').append('<div class="img11"><img src="/pjtCom/images/sub/img_learning_result11.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker11Animation = setInterval(function(){
                            if (firecracker11Frame<19) {
                                $('.result .img11 img').css({'top':-firecracker11FrameH*firecracker11Frame});
                                firecracker11Frame++;
                            } else {
                                clearInterval(firecracker11Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker12 = function(delay, duration){
                    $('.result .img_area').append('<div class="img12"><img src="/pjtCom/images/sub/img_learning_result12.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker12Animation = setInterval(function(){
                            if (firecracker12Frame<18) {
                                $('.result .img12 img').css({'top':-firecracker12FrameH*firecracker12Frame});
                                firecracker12Frame++;
                            } else {
                                clearInterval(firecracker12Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker13 = function(delay, duration){
                    $('.result .img_area').append('<div class="img13"><img src="/pjtCom/images/sub/img_learning_result13.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker13Animation = setInterval(function(){
                            if (firecracker13Frame<12) {
                                $('.result .img13 img').css({'top':-firecracker13FrameH*firecracker13Frame});
                                firecracker13Frame++;
                            } else {
                                clearInterval(firecracker13Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker14 = function(delay, duration){
                    $('.result .img_area').append('<div class="img14"><img src="/pjtCom/images/sub/img_learning_result14.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker14Animation = setInterval(function(){
                            if (firecracker14Frame<12) {
                                $('.result .img14 img').css({'top':-firecracker14FrameH*firecracker14Frame});
                                firecracker14Frame++;
                            } else {
                                clearInterval(firecracker14Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker15 = function(delay, duration){
                    $('.result .img_area').append('<div class="img15"><img src="/pjtCom/images/sub/img_learning_result15.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker15Animation = setInterval(function(){
                            if (firecracker15Frame<13) {
                                $('.result .img15 img').css({'top':-firecracker15FrameH*firecracker15Frame});
                                firecracker15Frame++;
                            } else {
                                clearInterval(firecracker15Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker16 = function(delay, duration){
                    $('.result .img_area').append('<div class="img16"><img src="/pjtCom/images/sub/img_learning_result16.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker16Animation = setInterval(function(){
                            if (firecracker16Frame<26) {
                                $('.result .img16 img').css({'top':-firecracker16FrameH*firecracker16Frame});
                                firecracker16Frame++;
                            } else {
                                clearInterval(firecracker16Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker17 = function(delay, duration){
                    $('.result .img_area').append('<div class="img17"><img src="/pjtCom/images/sub/img_learning_result17.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker17Animation = setInterval(function(){
                            if (firecracker17Frame<16) {
                                $('.result .img17 img').css({'top':-firecracker17FrameH*firecracker17Frame});
                                firecracker17Frame++;
                            } else {
                                clearInterval(firecracker17Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker18 = function(delay, duration){
                    $('.result .img_area').append('<div class="img18"><img src="/pjtCom/images/sub/img_learning_result18.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker18Animation = setInterval(function(){
                            if (firecracker18Frame<18) {
                                $('.result .img18 img').css({'top':-firecracker18FrameH*firecracker18Frame});
                                firecracker18Frame++;
                            } else {
                                clearInterval(firecracker18Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker19 = function(delay, duration){
                    $('.result .img_area').append('<div class="img19"><img src="/pjtCom/images/sub/img_learning_result19.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker19Animation = setInterval(function(){
                            if (firecracker19Frame<13) {
                                $('.result .img19 img').css({'top':-firecracker19FrameH*firecracker19Frame});
                                firecracker19Frame++;
                            } else {
                                clearInterval(firecracker19Animation);
                            }
                        },duration);
                    }, delay);
                }

                var firecracker20 = function(delay, duration){
                    $('.result .img_area').append('<div class="img20"><img src="/pjtCom/images/sub/img_learning_result20.png" alt=""></div>')

                    setTimeout(function(){
                        var firecracker20Animation = setInterval(function(){
                            if (firecracker20Frame<13) {
                                $('.result .img20 img').css({'top':-firecracker20FrameH*firecracker20Frame});
                                firecracker20Frame++;
                            } else {
                                clearInterval(firecracker20Animation);
                            }
                        },duration);
                    }, delay);
                }

            switch (result) {
                case 'tryagain' :
                    $('.result .output_area').append('<samp class="output"><img src="/pjtCom/images/sub/txt_learning_output_tryagain.png" alt="Try again"></samp>');

                    firecracker0(400, 30);
                    // firecracker1(200, 30);
                    // firecracker2(300, 60);
                    // firecracker3(500, 50);
                    // firecracker4(400, 40);
                break;

                case 'notbad' :
                    $('.result .output_area').append('<samp class="output"><img src="/pjtCom/images/sub/txt_learning_output_notbad.png" alt="Not Bad"></samp>');

                    // firecracker1(200, 30);
                    // firecracker2(500, 60);
                    firecracker3(400, 50);
                    firecracker4(500, 40);
                    firecracker5(100, 60);
                    firecracker6(300, 40);
                break;

                case 'excellent' :
                    $('.result .output_area').append('<samp class="output"><img src="/pjtCom/images/sub/txt_learning_output_excellent.png" alt="Excellent"></samp>');

                    firecracker7(300, 40);
                    firecracker8(400, 30);
                    firecracker9(200, 50);
                    firecracker10(500, 60);
                    firecracker11(300, 50);
                    firecracker12(400, 60);
                break;

                case 'master' :
                    $('.result .output_area').append('<samp class="output"><img src="/pjtCom/images/sub/txt_learning_output_master.png" alt="Master"></samp>');
                    firecracker13(300, 80);
                    firecracker14(600, 60);
                    firecracker15(400, 50);
                    firecracker16(500, 40);
                    firecracker17(600, 40);
                    firecracker18(400, 60);
                    firecracker19(900, 40);
                    firecracker20(500, 30);
                break;
            }
        },

        // 어휘, 객관식, 주관식 정답,오답 애니메이션
        checkAnimation : function(state){
            var check_area,
                frameH = 655;

            switch (state) {
                case 'pass' :
                    var passAnimation1frame = 0,
                        passAnimation2frame = 0,
                        passAnimation3frame = 0,

                        check_area = '<div class="check_area">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass1.png" alt="">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass2.png" alt="">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass3.png" alt="">';
                        check_area += '</div>';

                    setTimeout(function(){
                        var passAnimation1 = setInterval(function(){
                            if (passAnimation1frame<16) {
                                $('.check_area img:nth-child(1)').css({'top':-frameH*passAnimation1frame});
                                passAnimation1frame++;
                            } else {
                                clearInterval(passAnimation1);
                            }
                        },40);
                    }, 0);
                    setTimeout(function(){
                        var passAnimation2 = setInterval(function(){
                            if (passAnimation2frame<7) {
                                $('.check_area img:nth-child(2)').css({'top':-frameH*passAnimation2frame});
                                passAnimation2frame++;
                            } else {
                                clearInterval(passAnimation2);
                            }
                        },80);
                    }, 1000);
                    setTimeout(function(){
                        var passAnimation3 = setInterval(function(){
                            if (passAnimation3frame<20) {
                                $('.check_area img:nth-child(3)').css({'top':-frameH*passAnimation3frame});
                                passAnimation3frame++;
                            } else {
                                clearInterval(passAnimation3);
                            }
                        },80);
                    }, 500);
                break;

                case 'fail' :
                    var failAnimation1frame = 0;

                        check_area = '<div class="check_area">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_fail.png" alt="">';
                        check_area += '</div>';

                    setTimeout(function(){
                    	var failAnimation1 = setInterval(function(){
                    		if (failAnimation1frame<13) {
                    			$('.check_area img:nth-child(1)').css({'top':-frameH*failAnimation1frame});
                    			failAnimation1frame++;
                    		} else {
                    			clearInterval(failAnimation1);
                    		}
                    	},40);
                    }, 0);
                break;

                case 'exceed' :
                    var exceedAnimation1frame = 0,
                        frameH = 240;

                        check_area = '<div class="exceed_area">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_exceed.png" alt="10번의 주관식 도전 기획를 모두 사용했네요. 정답을 확인하고 다음 문제로 이동합니다. 힌트를 잘읽어보세요.">';
                        check_area += '</div>';

                    setTimeout(function(){
                        var exceedAnimation1 = setInterval(function(){
                            if (exceedAnimation1frame<11) {
                                $('.exceed_area img:nth-child(1)').css({'top':-frameH*exceedAnimation1frame});
                                exceedAnimation1frame++;
                            } else {
                                clearInterval(exceedAnimation1);
                            }
                        },15);
                    }, 0);
                break;

                case 'remove' :
                    $('.check_area, .exceed_area').remove();
                    $('.whiteboard').removeClass('fail exceed');
                break;
            }

			$('.whiteboard').after(check_area).addClass(state).removeClass('remove');
        },
        // 임시
        checkAnimation2 : function(state){
            var check_area,
                frameH = 655;

            switch (state) {
                case 'pass' :
                    var passAnimation1frame = 0,
                        passAnimation2frame = 0,
                        passAnimation3frame = 0,

                        check_area = '<div class="check_area">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass1.png" alt="">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass2.png" alt="">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass3.png" alt="">';
                        check_area += '</div>';

                    setTimeout(function(){
                        var passAnimation1 = setInterval(function(){
                            if (passAnimation1frame<16) {
                                $('.check_area img:nth-child(1)').css({'top':-frameH*passAnimation1frame});
                                passAnimation1frame++;
                            } else {
                                clearInterval(passAnimation1);
                            }
                        },20);
                    }, 500);
                    setTimeout(function(){
                        var passAnimation2 = setInterval(function(){
                            if (passAnimation2frame<7) {
                                $('.check_area img:nth-child(2)').css({'top':-frameH*passAnimation2frame});
                                passAnimation2frame++;
                            } else {
                                clearInterval(passAnimation2);
                            }
                        },40);
                    }, 1000);
                    setTimeout(function(){
                        var passAnimation3 = setInterval(function(){
                            if (passAnimation3frame<20) {
                                $('.check_area img:nth-child(3)').css({'top':-frameH*passAnimation3frame});
                                passAnimation3frame++;
                            } else {
                                clearInterval(passAnimation3);
                            }
                        },40);
                    }, 500);
                break;
            }

			$('.whiteboard').after(check_area).addClass(state);
        },
        //임시
        checkAnimation3 : function(state){
            var check_area,
                frameH = 655;

            switch (state) {
                case 'pass' :
                    var passAnimation1frame = 0,
                        passAnimation2frame = 0,
                        passAnimation3frame = 0,

                        check_area = '<div class="check_area">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass1.png" alt="">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass2_2.png" alt="">';
                        check_area += '<img src="/pjtCom/images/sub/img_learning_pass3_2.png" alt="">';
                        check_area += '</div>';

                    setTimeout(function(){
                        var passAnimation1 = setInterval(function(){
                            if (passAnimation1frame<16) {
                                $('.check_area img:nth-child(1)').css({'top':-frameH*passAnimation1frame});
                                passAnimation1frame++;
                            } else {
                                clearInterval(passAnimation1);
                            }
                        },20);
                    }, 500);
                    setTimeout(function(){
                        var passAnimation2 = setInterval(function(){
                            if (passAnimation2frame<7) {
                                $('.check_area img:nth-child(2)').css({'top':-658*passAnimation2frame});
                                passAnimation2frame++;
                            } else {
                                clearInterval(passAnimation2);
                            }
                        },30);
                    }, 1000);
                    setTimeout(function(){
                        var passAnimation3 = setInterval(function(){
                            if (passAnimation3frame<20) {
                                $('.check_area img:nth-child(3)').css({'top':-658*passAnimation3frame});
                                passAnimation3frame++;
                            } else {
                                clearInterval(passAnimation3);
                            }
                        },30);
                    }, 500);
                break;
            }

			$('.whiteboard').after(check_area).addClass(state);
        },

        // 달력
        calendar : function (event, type, btn) {
            var date,
                currentYear,
                currentMonth,
                $calendar = $('.calendar');

            var init = (function(){
                switch (event) {
                    case 'load' :
                        date = new Date();
        				currentYear = date.getFullYear();
        				currentMonth = date.getMonth() + 1;

            			date = currentYear + '-' + currentMonth + '-' + 1;
            			date = date.split('-');
                    break;

                    case 'change' :
                        var $btn = $(btn),
                            yymm = $btn.parent().parent().attr('class');

                        currentYear = parseInt($calendar.find('.year').find('input').val());
                        currentMonth = parseInt($calendar.find('.month').find('input').val());

                        switch (yymm) {
                            case 'year' :
                                if ($btn.hasClass('next')) {
                                    currentYear++;
                                } else {
                                    currentYear--;
                                }
                            break;

                            case 'month' :
                                if ($btn.hasClass('next')) {
                                    currentMonth < 12 ? currentMonth++ : currentMonth = 1;
                                } else {
                                    currentMonth > 1 ? currentMonth-- : currentMonth = 12;
                                }
                            break;
                        }
        				date = currentYear + '-' + currentMonth + '-' + 1;
        				date = date.split('-');
                    break;
                }
                load(date[0], date[1], date[2]);
                $calendar.prepend('<input type="hidden" id="date">')
            }());

            function load(currentYear, currentMonth, currentDate){
                switch (type) {
                    case 'year' :
                        $calendar.find('.year input').val(currentYear + '년');
                    break;

                    case 'month' :
                        date = new Date(currentYear, currentMonth-1, currentDate);
                    	date.setDate(1);
                    	var currentDay = date.getDay();

                    	var dateEng = ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'],
                    		lastDate = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

                    	if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 ) {
                    		lastDate[1] = 29;
                    	}

                    	$calendar.find('.year input').val(currentYear + '년');
                    	$calendar.find('.month input').val(currentMonth + '월');

                    	var currentLastDate = lastDate[currentMonth-1],
                    		dateNum = 1 - currentDay,
                    		week = Math.ceil( ( currentDay + currentLastDate ) / 7 ),
                    		weekCnt = 0,
                    		calendar = '';

                    	for(weekCnt; weekCnt < week; weekCnt++) {
                    		calendar += '   <tr>';

                    		var dateEngCnt = 0;
                    		for(dateEngCnt; dateEngCnt < 7; dateEngCnt++, dateNum++) {
                    			if( dateNum < 1 || dateNum > currentLastDate ) {
                    				calendar += '<td class="' + dateEng[dateEngCnt] + '"></td>';
                    				continue;
                    			}
                    			calendar += '<td class="' + dateEng[dateEngCnt] + '"><a href="#">' + dateNum + '</a></td>';
                    		}
                    		calendar += '   </tr>';
                    	}

                    	$calendar.find('tbody').html(calendar);
                    break;
                }
            }

            $(document).on('click', 'td a', function(){
                var yyyy = parseInt($calendar.find('caption .year input').val()),
                    mm = parseInt($calendar.find('caption .month input').val()),
                    dd = parseInt($(this).text()) < 10 ? '0'+parseInt($(this).text()) : parseInt($(this).text()),

                    chooseDate = !mm ? yyyy+'-'+dd : yyyy+'-'+mm+'-'+dd

                $('#date').val(chooseDate);
            });
        },

        // 마이페이지 - 나의학습현황 : 학습 progress
        progressLen : function(){
            var prevLen = $('.progress li.prev').length;
            $('.progress li').each(function(){
                if ($(this).hasClass('prev')) {
                    var prevMaxLen = 3;
                    var prevCnt = ($(this).index()+1 + prevMaxLen) - prevLen;
                    $(this).addClass('prev'+prevCnt);

                } else {
                    var nextCnt = $(this).index()+1 - prevLen;
                    $(this).addClass('next'+nextCnt);
                }
            });

            $('.prev1').prevAll('.prev').removeAttr('class');
            $('.next3').nextAll('.next').removeAttr('class');
        },

        // 마이페이지 - 학습량 : 그래프
        hourGraph : function(){
            $('.graph .bar li').each(function(){
                var graphW = $('.graph').width(),
                    maxMinute = 150,
                    leaningMinute = parseInt($(this).text().split(':').pop());

                $(this).css({'width':graphW/maxMinute*leaningMinute});
            });
        },

        // 마이페이지 - 학습량 : 학습시간 상세
        hourGraphDetail : function(){
            $('.graph .graph_detail').each(function(){
                var graphListLen = $(this).prev('.bar').find('li').length,
                    graphListCnt = 1,
                    graphListW = 0;

                for ( graphListCnt; graphListCnt<=graphListLen; graphListCnt++ ) {
                     graphListW += $(this).prev('.bar').find('li:nth-child('+graphListCnt+')').width();

                    $(this).css({'left':graphListW/2})
                }
            });
        },

        // 마이페이지 - 학습주기 : 그래프
        cycleGraph : function(){
            $('.graph li').each(function(){
                    var realDayMinete = 1440;
                    var currentDayMinete = 432;
                    var startTime = $(this).find('span:nth-child(2)');
                    var endTime = $(this).find('span:nth-child(3)');

                    switch (startTime.attr('class')) {
                        case 'am' :
                            startTime = startTime.text().split(':');
                            startTime = Number(startTime[0].split(' ').pop()*60) + Number(startTime[1]);
                        break;

                        case 'pm' :
                            startTime = startTime.text().split(':');
                            startTime = Number(startTime[0].split(' ').pop()*60) + Number(startTime[1]) + 720;
                        break;
                    }

                    switch (endTime.attr('class')) {
                        case 'am' :
                            endTime = endTime.text().split(':');
                            endTime = Number(endTime[0].split(' ').pop()*60) + Number(endTime[1]);
                        break;

                        case 'pm' :
                            endTime = endTime.text().split(':');
                            endTime = Number(endTime[0].split(' ').pop()*60) + Number(endTime[1]) + 720;
                        break;
                    }

                    var startTimePer = startTime/realDayMinete*100;
                    var endTimePer = endTime/realDayMinete*100;

                    startTime = currentDayMinete/100*startTimePer;
                    endTime = currentDayMinete/100*endTimePer;

                    $(this).css({'top':startTime, 'height':endTime-startTime});
            });
        },


        // 마이페이지 - 문제풀이속도 : 그래프
        speedGraph : function(){
            $('.graph').each(function(){
                var maxSpeed = 60,
                    speed = parseInt($(this).find('span').text());

                speed = speed/maxSpeed*100

                $(this).css({'height':speed+'%'})
            });
        }

    };
})();
