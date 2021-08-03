/**
* --------------------------------
* Function JS
* --------------------------------
*/

var fn = (function() {
    'use strict';

    return {
        // 상단으로
        top: function(){
            event.preventDefault();

            $('html, body').animate({'scrollTop':0});
        },

        // 팝업 열기
        popupOpen : function(target){
            // event.preventDefault();

            if (typeof target === 'object') {
                target = target.attributes.href.value
            }

            var $popup = $(target);

            $popup.stop().fadeIn(200).attr({'tabindex':'0'});

			setTimeout(function(){
				$popup.children('.inner').stop().animate({'opacity':'1', 'top':'50%'},300, function(){
                    // var popupWidth = $popup.children('.inner').outerWidth(),
                    //     popupHeight = $popup.children('.inner').outerHeight();
                    //
                    // popupWidth%2 === 1 ? $popup.children('.inner').outerWidth(popupWidth+1) : '';
                    // popupHeight%2 === 1 ? $popup.children('.inner').outerHeight(popupHeight+1) : '';
                });
			}, 100);

            $(':focus').attr('data-focus', true);

            var scrollTemp = $(window).scrollTop();
            $('body').addClass('fixed').css({'top':-scrollTemp});

            // focus 순환
            $popup.find('.btn-area :last-child').keydown(function(e){
        		if (!e.shiftKey && e.keyCode === 9) {
        			$popup.focus();
        		}
        	});
            $popup.find('.header button').keydown(function(e){
        		if (e.shiftKey && e.keyCode === 9) {
                    e.preventDefault()
        			$popup.find('.btn-area :last-child').focus();
        		}
        	});

            // esc 닫기
            $popup.keydown(function(e){
        		if (e.keyCode === 27) {
        			fn.popupClose();
        		}
        	});
        },

        // 팝업 닫기
        popupClose : function(target, callback){
            var $popup = $('[class^="popup"], [class^="alert"]');

            if (target) {
                $popup = $(target).closest('[class*="popup"], [class*="alert"]');

                $popup.children('.inner').stop().animate({'opacity':'0', 'top':'60%'},300);
                $popup.stop().fadeOut(200);
            } else {
                $popup.children('.inner').stop().animate({'opacity':'0', 'top':'60%'},300);
                $popup.stop().fadeOut(200).removeAttr('tabindex');

                $('[data-focus]').focus().removeAttr('data-focus');

                var scrollTemp = parseInt($('body').css('top'));
                $('body').removeClass('fixed');
                $(window).scrollTop(Math.abs(scrollTemp))
            }

            // $popup.children('.inner').removeAttr('style');

            if (callback) {
                setTimeout(function(){
                    callback();
                }, 400);
            }
        },

        // 팝업창 열기
        popupWinOpen : function(xurl,tar,wid,hei){
            var winl = (screen.width - wid) / 2;
            var wint = (screen.height - hei) / 2;
            var set = 'width='+wid+',height='+hei+',top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no';
            window.open(xurl,tar,set);
        },

        // 셀렉트박스 직접입력
        selectDirect: function(target){
            var $select = $(target),
                $selectWrap = $select.parent();

            if($select.val() === 'direct'){
                $selectWrap.addClass('direct');
                $select.siblings('input').val('');
            } else {
                $selectWrap.removeClass('direct');
            }
        },

        // 수량
        optionEa: function(target, state){
            event.preventDefault();

            var $btn = $(target),
                eaVal = parseInt($btn.siblings('input').val()),
                limitMin = $btn.siblings('input').attr('data-min'),
                limitMax = $btn.siblings('input').attr('data-max');

            switch (state) {
                case 'up' :
                    if (eaVal < limitMax) {
                        eaVal++;
                        $btn.siblings('input').val(eaVal);
                    }
                break;

                case 'down' :
                    if (eaVal > limitMin) {
                        eaVal--;
                        $btn.siblings('input').val(eaVal);
                    }
                break;
            }
        },

        // 수량 인풋
        optionEaLimit: function(target){
            var $input = $(target),
                inputVal = Number($input.val()),
                limitMin = Number($input.attr('data-min')),
                limitMax = Number($input.attr('data-max'));

            if (inputVal > limitMax) {
        		$input.val(limitMax);
        	}

            if (inputVal <= limitMin) {
        		$input.val(limitMin);
        	}
        },

        // 인풋 number maxlength
        inputMaxLength: function(target){
            var $input = $(target),
                maxLength = Number($input.attr('maxlength')),
                inputLength = $input.val().length,
                keycode = event.keyCode;

            if (inputLength >= maxLength) {
                if (keycode >= 48 && keycode <= 57 || keycode >= 96 && keycode <= 105) {
                    event.preventDefault();
                }
            }
        },

        // 탭메뉴
        tabMenu : function(e, target){
            var $tabMenu = $(target),
                objHref = target.attributes.href.value,
                $tabContents = $(objHref),
                tabContentsTop = $tabContents.offset().top;


            if (objHref.indexOf('#') != -1) {
                e.preventDefault();

                if ($tabContents.hasClass('anchor')) {
                    $('html, body').animate({'scrollTop':tabContentsTop});

                    $tabMenu.siblings('a').removeClass('active');
        			$tabMenu.addClass('active');
                } else {
                    $tabMenu.siblings('a').removeClass('active');
        			$tabMenu.addClass('active');

                    $(objHref).siblings('.tab-contents').removeClass('active');
        			$tabContents.addClass('active');
                }
            }
        },

        // 말줄임
        ellipsis: function(state, target){
            var $ellipsis = !target ? $('.ellipsis') : $(target);

            $ellipsis.each(function() {
                var $this = $(this),
                    txtH = $this.height(),
                    tempTxt = $this.text();

                $this.wrapInner('<div></div>');

                // if (!$this.attr('title')) {
                //     $this.attr({'title':tempTxt});
                // }

                if (txtH < $this.children().height()) {
                    var tempTxtArr = tempTxt.split(''),
                        tempTxtLen = 0,
                        tempTxtTotalLen = tempTxt.length,
                        ellipsisTxt = '',
                        ellipsisTxtLen;

                    $this.children().empty();

                    while (tempTxtLen<tempTxtTotalLen) {
                        if (txtH >= $this.children().height()) {
                            ellipsisTxt += tempTxtArr[tempTxtLen];
                            $this.children().text(ellipsisTxt);
                        }
                        tempTxtLen++;
                    }

                    if (txtH < $this.children().height()) {
                        ellipsisTxtLen = ellipsisTxt.length;
                        ellipsisTxt = ellipsisTxt.substr(0, ellipsisTxtLen - 3);
                        ellipsisTxt += '...';
                    }
                } else {
                    $this.text(tempTxt);
                }

                switch(state) {
                    case 'on':
                        $this.text(ellipsisTxt);
                    break;

                    case 'off':
                        $this.text($this.attr('title'));
                    break;
                }
            });
        },

        // 전부체크
        allCheck: function(target){
            if ($(target).attr('data-name') === 'all') {
                var $allCheck = $(target);

                if ($allCheck.is(':checked')) {
                    $('[type="checkbox"][data-name="check"]').prop('checked', true);
                } else {
                    $('[type="checkbox"][data-name="check"]').prop('checked', false);
                }
            }

            var checkLen = $('[type="checkbox"][data-name="check"]').length,
                checkCnt = $('[type="checkbox"][data-name="check"]:checked').length;

            if (checkLen === checkCnt) {
                $('[type="checkbox"][data-name="all"]').prop('checked', true);
            } else {
                $('[type="checkbox"][data-name="all"]').prop('checked', false);
            }
        },

        // 타이머
        timer: function(time){
            var minute = Number(time.split(':')[0]),
                second = Number(time.split(':')[1]),
                second = minute*60+(second-1);
                time = function(){
                    if (second%60 < 10) {
                        return [parseInt(second/60), ':0', second%60].join('');
                    } else {
                        return [parseInt(second/60), ':', second%60].join('');
                    }
                }

            $('.timer').text(time());

            var timeInterval = setInterval(function(){
                if (second > 0) {
                    second--;
                    $('.timer').text(time());
                } else {
                    clearInterval(timeInterval);
                }
            }, 1000);
        },

        //시분초 타이머
        saleTimer: function(time){
            var hour = Number(time.split(':')[0]),
                minute = Number(time.split(':')[1]),
                second = Number(time.split(':')[2]),
                second = hour*60*60 + minute*60+(second-1);

                time = function(){
                    if(second/3600 < 10){
                        if (second%3600/60 < 10) {
                            if (second%3600%60 < 10) {
                                return ['0',parseInt(second/3600), ':0',parseInt(second%3600/60), ':0', second%3600%60].join('');
                            }else{
                                return ['0',parseInt(second/3600), ':0',parseInt(second%3600/60), ':', second%3600%60].join('');
                            }
                        } else {
                            if (second%3600%60 < 10) {
                                return ['0',parseInt(second/3600), ':',parseInt(second%3600/60), ':0', second%3600%60].join('');
                            }else{
                                return ['0',parseInt(second/3600), ':',parseInt(second%3600/60), ':', second%3600%60].join('');
                            }
                        }
                    }else{

                        if (second%3600/60 < 10) {
                            if (second%3600%60 < 10) {
                                return [parseInt(second/3600), ':0',parseInt(second%3600/60), ':0', second%3600%60].join('');
                            }else{
                                return [parseInt(second/3600), ':0',parseInt(second%3600/60), ':', second%3600%60].join('');
                            }
                        } else {
                            if (second%3600%60 < 10) {
                                return [parseInt(second/3600), ':',parseInt(second%3600/60), ':0', second%3600%60].join('');
                            }else{
                                return [parseInt(second/3600), ':',parseInt(second%3600/60), ':', second%3600%60].join('');
                            }
                        }
                    }
                }

            $('.timer').text(time());

            var timeInterval = setInterval(function(){
                if (second > 0) {
                    second--;
                    $('.timer').text(time());
                } else {
                    clearInterval(timeInterval);
                }
            }, 1000);
        },

        //toggleClass
		toggleClass : function(obj){
            $(obj).toggleClass("active");
        },

        //addClass
		addClass : function(obj){
            $(obj).addClass("active");
        },

        //removeClass
		removeClass : function(obj){
            $(obj).removeClass("active");
        },

        // 파일업로드 미리보기
        filePreview: function(target){
            var $file = $(target);


            // if ($('.preview').length < 5) {
                if ($file[0].files[0].type.match(/image\//)) {
                    var reader = new FileReader();

                    reader.onload = function(e){
                        var src = e.target.result,
                            fileIdx = $file.index();

                        if (!$file.siblings('.preview-area').length){
                            $file.parent().append('<div class="preview-area"></div>');
                            $file.siblings('.preview-area').append('<div class="preview" onclick="fn.filePreviewRemove(this)" data-index="'+fileIdx+'"><img src="'+src+'" alt="" class="img"></div>');
                        } else {
                            $file.siblings('.preview-area').append('<div class="preview" onclick="fn.filePreviewRemove(this)" data-index="'+fileIdx+'"><img src="'+src+'" alt="" class="img"></div>');
                        }

                        $file.attr({'data-index':fileIdx})
                    }

                    reader.readAsDataURL($file[0].files[0]);
                }
            // }
            // $file.val('');

        },

        // 파일업로드 버튼
        filePreviewBtn: function(target){
            var $btn = $(target);

            $btn.siblings('input').each(function(){
                if (!$(this).attr('data-index')){
                    $(this).trigger('click');
                    return false;
                }
            });
        },

        // 파일업로드 미리보기 삭제
        filePreviewRemove: function(target){
            var $btnDel = $(target),
                btnDelIdx = Number($btnDel.attr('data-index'));

            $btnDel.closest('.preview-area').siblings('input').each(function(){
                if ($(this).index() == btnDelIdx) {
                    $btnDel.closest('.preview-area').siblings('input[data-index="'+btnDelIdx+'"]').val('').removeAttr('data-index');
                }
            });

            $btnDel.remove();
        },

        // 만족도
        grade: function(target){
            var $grade = $(target),
                $gradeWrap = $grade.closest('.grade'),
                gradeIdx = $grade.closest('label').index();

            $gradeWrap.find('label').each(function(){
                if ($(this).index() > gradeIdx) {
                    $(this).children().prop('checked', false);
                } else {
                    $(this).children().prop('checked', true);
                }
            });

            $gradeWrap.find('.point').text(gradeIdx+1)
        },

        // 리뷰 리스트
        reviewMasonry: function(){
            setTimeout(function(){
                $('.review-list').masonry({
                  columnWidth: 380,
                  gutter: 30
                });
            })
        },

        // 리뷰 이미지 사이즈
        reviewThumbSize: function(){
            setTimeout(function(){
                $('.review-list li').each(function(){
                    if ($(this).find('.pic .img').height() < 240) {
                        $(this).find('.pic .img').css({'width':'auto', 'height':'100%'});
                    }
                });
            });
        },

         // 리뷰 이미지 스와이퍼
         reviewViewPicSwiper: function(){
             var swiper = new Swiper('.popup.review-view .pic-swiper', {
             	simulateTouch: false,
             	slidesPerView: 1,
                   navigation: {
                     nextEl: '.popup.review-view .swiper-button-next',
                     prevEl: '.popup.review-view .swiper-button-prev',
                   },
             	  pagination: {
             		  el: '.popup.review-view .swiper-pagination',
             		  clickable: true
             	  }
             });

             var imgLen = $('.popup.review-view .swiper-slide').length;

             if (imgLen === 1) {
                 $('.popup.review-view .indicator').removeClass('active');
             }
         },

         // 아카이브
         archiveMasonry: function(){
             setTimeout(function(){
                 // init Masonry
                 var $grid = $('.archive-list').masonry({
                   columnWidth: 380,
                   gutter: 30
                 });
                 // layout Masonry after each image loads
                 $grid.imagesLoaded().progress( function() {
                   $grid.masonry('layout');
                 });
             });
         },

         // countDownTimer
 		countDownTimer: function(dday){
             var ddayTmp = dday;
 			var today = new Date().getTime();
 			var ddayCurrent = new Date(ddayTmp).getTime();
             if(isNaN(ddayCurrent)) {
                 var arr = ddayTmp.split(/[- :]/);
                 ddayCurrent = new Date(arr[0], arr[1]-1, arr[2], arr[3], arr[4], arr[5]);
             }
 			var distance;
 			var cdtimer;
 			var nt = 0;
 			function timer(){
 				distance = ddayCurrent - (today+nt*1000);
 				var d = Math.floor(distance / (1000 * 60 * 60 * 24));
 				var h = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
 				var m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
 				var s = Math.floor((distance % (1000 * 60)) / 1000);

 				if ( d >= 0 && h >= 0 && m >= 0 && s >= 0 ){
 					if ( d == 0 ){
 						d = "Day"
 					}
 					h = ""+(h<10  ? h = "0"+h : h)+"";
 					m = ""+(m<10  ? m = "0"+m : m)+"";
 					s = ""+(s<10  ? s = "0"+s : s)+"";
 					$(".time .time-day").html(d);
 					$(".time .time-h").html(h);
 					$(".time .time-m").html(m);
 					$(".time .time-s").html(s);

 				}else{
 					$(".time").html("이벤트가 종료되었습니다.");
 					clearInterval(cdtimer);
 				}
 				nt++;
 			}
 			cdtimer = setInterval(timer, 1000);
          },

    }
})();
