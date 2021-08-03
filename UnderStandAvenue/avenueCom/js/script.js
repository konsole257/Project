 'use strict';
/**
 * --------------------------------
 * avenueCom Common Script
 * --------------------------------
 */

 $(document).ready(function(){
   $('a').each(function(){
     if ( !$(this).attr('target') ) {
       $(this).attr({ 'target':'_self' });
     }
 });
 });

// logo
 $(window).load(function(){
   $('#header .logo').append('<div class="top"></div><div class="mid"></div><div class="mid2"></div><div class="bot"></div>');
   $('#header .logo .top').animate({ 'width':'64px' },800, function(){
     $('#header .logo a').css({ 'visibility':'visible' });
   }).animate({ 'width':'0' },800);
   $('#header .logo .mid').animate({ 'width':'61px' },800).animate({ 'width':'0' },800);
   $('#header .logo .mid2').animate({ 'width':'61px' },800).animate({ 'width':'0' },800);
   $('#header .logo .bot').animate({ 'width':'73px' },800).animate({ 'width':'0' },800);
 });

//GNB
$(window).on('load scroll', function(){
	if ( $(window).scrollTop() <= 0 && !$('#header').hasClass('story2')) {
    $('*').hasClass('main') && !$('*').hasClass('shop') ? $('#gnb #stand > a').addClass('ov') : '';
		$('#header').removeClass('scroll');
    $('#sns').addClass('ov');
    $('#gnb .on + .lnb').show();
	} else {
		$('#header').addClass('scroll');
    $('#gnb .depth1 > li > a').removeClass('ov');
    $('#sns').removeClass('ov');
    $('#gnb .on + .lnb').hide();
	}

	$('#header').css({ 'left':-$(this).scrollLeft() });
  $('#all_menu').css({ 'left':-$(this).scrollLeft() });
});

$(window).load(function(){
  //GNB
  $('#gnb .depth1 > li > a').mouseenter(function(){
    $('#gnb .depth1 > li > a').removeClass('ov');
    $(this).addClass('ov');
    $('#sns').addClass('ov');
  });

  $('#wrap').mouseenter(function(){
    !$('*').hasClass('main') ? $('#gnb .depth1 > li > a').removeClass('ov') : '';
    $('#header').hasClass('scroll') ? $('#sns').removeClass('ov') : '';
  });

  $('#gnb .depth1').mouseleave(function(){
    if ( $('#header').hasClass('scroll') ) {
      $('#gnb .depth1 > li > a').removeClass('ov');
      $('#sns').removeClass('ov');
    }

});

  //전체메뉴
  $('#header .btn_all_menu').click(function(e){
    e.preventDefault();
    $('#all_menu').slideDown(500);
  });

  $('#all_menu .btn_close').click(function(e){
    e.preventDefault();
    $('#all_menu').slideUp(500);
  });


	//SNB
	$('#snb .depth2').hover(function(){
		$(this).prev().addClass('ov');
	}, function(){
		$(this).prev().removeClass('ov');
	});

	//카테고리
	$('.btn_category_open').click(function(){
		$('#category').animate({'right':'0'}, 300);
	});

	$('.btn_category_close').click(function(){
		$('#category').animate({'right':'-250px'}, 300);
	});
});

//푸터 하단고정
$(window).on('load resize', function(){
	$('.sub #contents').css({'min-height':$(window).height()-($('#header').height()+$('#footer').height()+120)});
});


//푸터 top버튼 하단 고정
var windowHeight = $(window).height();
$(window).on('load resize', function(){
	windowHeight = $(window).height();
	if (  $(document).height() - $('#footer').height() - $(window).height() <= $(window).scrollTop() ) {
		$('.btn_top_wrap').css({ 'bottom':$(window).scrollTop()-($(document).height() - $('#footer').height()- 2 - windowHeight) });
	} else {
		$('.btn_top_wrap').css({ 'bottom':'0' });
	}
}).scroll(function(){
	$('.btn_top_wrap').css({ 'left':-$(this).scrollLeft() });

	if (  $(document).height() - $('#footer').height() - $(window).height() <= $(window).scrollTop() ) {
		$('.btn_top_wrap').css({ 'bottom':$(window).scrollTop()-($(document).height() - $('#footer').height()- 2 - windowHeight) });
	} else {
		$('.btn_top_wrap').css({ 'bottom':'0' });
	}
});

var ui = function(){

	var popup = {
		init : function(){
			this.obj = $('[data-ui=popup]');
			this.btn = $('[data-ui=popupBtn]');
			this.popupName;

			popup.load(this.obj, this.btn, this.popupName);
		}, load : function(obj, btn, popupName){
			obj.each(function(){
				var popupWidth = $(this).find('.popup_inner').width(),
					popupHeight = $(this).find('.popup_inner').height();

				$(this).find('.popup_inner').css({'top':'50%', 'left':'50%', 'margin-top':-popupHeight/2, 'margin-left':-popupWidth/2 });
			});
		}
	}; //popup

	var tab = {
		init : function(){
			this.obj = $('[data-ui=tab]');
			this.btn = $('[data-ui=tab] [data-fn=tab_menu] a');

			tab.click(this.obj, this.btn);
		}, click : function(obj, btn){
			btn.click(function(e){
				e.preventDefault();

				this.tabName = $(this).attr('href');

				$(this).parents('[data-ui=tab]').find('section').removeClass('on');
				$(this.tabName).parent('section').addClass('on');

			});
		}
	}; //tab

	var placeholder = {
		init : function(){
			this.obj = $('[data-ui=placeholder]');

      this.obj.find('input').each(function(){
        if ( $(this).val() != "") {
					$(this).next("label").hide();
				} else {
					$(this).next("label").show();
				}
      });

      this.obj.find('textarea').each(function(){
        if ( $(this).val() != "") {
					$(this).next("label").hide();
				} else {
					$(this).next("label").show();
				}
      });

			placeholder.focus(this.obj);
			placeholder.blur(this.obj);
		}, focus : function(obj){


			obj.find('input').focus(function(){
				$(this).next("label").hide();
			});
            obj.find('textarea').focus(function(){
				$(this).next("label").hide();
			});
		}, blur : function(obj){
			obj.find('input').blur(function(){
				if ( $(this).val() != "") {
					$(this).next("label").hide();
				} else {
					$(this).next("label").show();
				}
			});
            obj.find('textarea').blur(function(){
				if ( $(this).val() != "") {
					$(this).next("label").hide();
				} else {
					$(this).next("label").show();
				}
			});
		}
	}; //placeholder



	var checkbox = {
		init : function(){
			this.obj = $('[type=checkbox]');
			if ( this.obj.length ) {
				this.load(this.obj);
			}
		}, load : function(obj){
			obj.each(function(){
				obj = $(this).wrap('<span data-ui="checkbox"></span>').parent();

				obj.children('[type=checkbox]').is(':checked') ? obj.addClass('checked') : obj.removeClass('checked');

				obj.click(function(){
					$(this).find('[type=checkbox]').trigger('click');
					$(this).find('[type=checkbox]').is(':checked') ? $(this).addClass('checked') : $(this).removeClass('checked');
				});
			});
		}
	}; //checkbox
/*
	var radio = {
		init : function(){
			this.obj = $('[type=radio]');
			if ( this.obj.length ) {
				this.load(this.obj);
			}
		}, load : function(obj){
			obj.each(function(){
				$(this).wrap('<span data-ui="radio"></span>');
			});

			obj.parent('[data-ui=radio]').click(function(){
				$(this).find('[type=radio]').trigger('click');
				$(this).find('[type=radio]').is(':checked') ? $(this).addClass('checked') : $(this).removeClass('checked');
			});
		}
	}; *///radio

	popup.init();
	tab.init();
	placeholder.init();
	// select.init();
	checkbox.init();
	//radio.init();

};

var select = {
  init : function(target){
      this.obj = target;
      this.btn;
      this.css;
      this.option;
      this.optionLength;
      this.objOffset;
      this.length = this.obj.length;

      select.load(this.obj, this.btn, this.option, this.optionLength, this.css, this.objOffset, this.length);
  }, load : function(obj, btn, option, optionLength, css, objOffset, length){

    obj.each(function(){
      css = {
        //visibility : $(this).css('visibility'),
        width : parseInt($(this).css('width')),
        height : parseInt($(this).css('height')),
        textIndent : parseInt($(this).css('text-indent')),
        font : {
          size : parseInt($(this).css('font-size')),
          color: $(this).css('color')
        },
        margin : {
          top : $(this).css('margin-top'),
          right : $(this).css('margin-right'),
          bottom : $(this).css('margin-bottom'),
          left : $(this).css('margin-left')
        },
        border : {
          width : $(this).css('border-top-width'),
          style : $(this).css('border-top-style'),
          color : $(this).css('border-top-color')
        }
      };

      optionLength = $(this).find('option').length;

      option = '<ul>';
      for ( var i=1; i<=optionLength; i++) {
        option += '<li>'+$(this).find('option:nth-child('+i+')').text()+'</li>';
      }
      option += '</ul>';

      obj = $(this).wrap('<span data-ui="select"></span>').parent();
      obj.css({ /*'visibility':css.visibility,*/ 'width':css.width+'px', 'height':css.height+'px', 'font-size':css.font.size+'px','margin':css.margin['top']+' '+css.margin['right']+' '+css.margin['bottom']+' '+css.margin['left'], 'border':css.border['width']+' '+css.border['style']+' '+css.border['color'] });
      obj.append('<button type="button" style="font-size:'+css.font.size+'px; text-indent:'+css.textIndent+'px; color:'+css.font.color+'">'+$(this).children(':selected').text()+'</button>');



      obj.append(option);
      obj.find('ul').css({ 'top':(css.height-2)+'px', 'text-indent':css.textIndent+'px', 'width':css.width+'px','color':css.font.color, 'border':css.border['width']+' '+css.border['style']+' '+css.border['color'] });

      btn = obj.find('button');
      option = obj.find('li');
      select.open(obj, btn, objOffset, css);
      select.close(obj, btn, option, length);

      //off
      if ( $(this).hasClass("off") && $(this).children(':selected').index() == 0 ){
        obj.addClass("off");
      }

      $('select.new').removeClass('new');
    });
    /*var scroll;
    var scrollTemp = 0;
    $('[data-fn=overflow]').scroll(function(){
      scroll = $(this).scrollTop();
      offset =  obj.position();
      scroll = scroll-scrollTemp;
      if ( scroll > 0 ) {
        $(this).find('[data-ui=select]').find('ul').css({ 'top':'-='+scroll+'px'});
      } else {
        $(this).find('[data-ui=select]').find('ul').css({ 'top':'+='+scroll+'px'});
      }
      scrollTemp = scroll;
    });*/

  }, open : function(obj, btn, objOffset, css){
    btn.click(function(){
      $(this).focus();
      !obj.find('ul').is(':visible') ? $(this).next('ul').show() : $(this).next('ul').hide()

      objOffset =  obj.offset();
      $('[data-ui=popup]').find(obj).find('ul').css({ 'top':(objOffset.top+css.height-1)-$(window).scrollTop()+'px', 'left':objOffset.left+'px', 'text-indent':css.textIndent+'px', 'width':css.width+'px', 'border':css.border['width']+' '+css.border['style']+' '+css.border['color'] });

      /*if ( objOffset.top+css.height+(css.height-2)-overflowOffset > $('[data-ui=popup] .list > div').height() ) { //브라우저 Y크기 보다 밑으로 펼쳐질경우 위로 펼쳐짐
        obj.find('ul').css({"top":"inherit"});
        obj.find('ul').css({"bottom":(css.height-2)+'px'})
      }*/

    });
  }, close : function(obj, btn, option, length){
    option.click(function(){
      obj.find('option').removeAttr('selected');
      obj.find('option:nth-child('+($(this).index()+1)+')').prop('selected',true).trigger('change');
      obj.find('button').text($(this).parents('[data-ui=select]').find('option:selected').text());

      obj.find('ul').hide();
      if ( obj.find('select').hasClass("off") && obj.find('select').children(':selected').index() == 0 ){
        obj.addClass("off");
      }else{
        obj.removeClass("off");
      }
    });

    $(window).click(function(){
      if ( obj.find('ul').is(':visible') && !btn.is(':focus') ) {
        $('[data-ui=select] ul').hide();
        if ( obj.find('select').hasClass("off") && obj.find('select').children(':selected').index() == 0 ){
          obj.addClass("off");
        }else{
          obj.removeClass("off");
        }
      }
    });

    $(window).resize(function(){
      obj.find('ul').hide();
      /*$('[data-ui=popup]').find('[data-ui=select]').each(function(){
        objOffset =  $(this).offset();
        $(this).find('ul').css({ 'top':(objOffset.top+css.height-1)-$(window).scrollTop()+'px', 'left':objOffset.left+'px' })
      })*/
    });

    $('[data-fn=overflow]').scroll(function(){
      obj.find('ul').hide();
    });

    $(window).scroll(function(){
      obj.find('ul').hide();
    });
  }
}; //select
$(window).load(function(){
  select.init($('select'));
})




var fn = function(){

	var popup = {
		init : function(){
			this.obj = $('[data-ui=popup]');
			this.btnOpen = $('[data-fn=popupBtnOpen]');
			this.btnClose = $('[data-fn=popupBtnClose]');
			this.popupName;
			this.scrollWidth;

			this.open(this.obj, this.btnOpen, this.popupName, this.scrollWidth);
			this.close(this.obj, this.btnClose, this.popupName);
		}, open : function(obj, btn, popupName, scrollWidth){
			btn.click(function(e){
				e.preventDefault();
				popupName = $(this).attr('href');
				$(popupName+'[data-ui=popup]').css({'visibility':'visible'});
				$(popupName+'[data-ui=popup] [data-ui=select]').css({'visibility':'visible'});
        $('.sub #wrap > div').css({'z-index':'inherit'});
				/*
				scrollWidth = [];
				scrollWidth[0] = $(window).width();
				$(popupName+'[data-ui=popup]').css({'visibility':'visible'});
				$('body').css({'overflow':'hidden'});
				scrollWidth[1] = $(window).width();
				scrollWidth = scrollWidth[1] - scrollWidth[0];
				$('body').css({'padding-right':scrollWidth});
				$('#header').css({'margin-left':-scrollWidth, 'padding-left':scrollWidth}).find('.logo').css({'margin-left':scrollWidth});
				*/

			});
		}, close : function(obj, btn, popupName){
			btn.click(function(){
				//$('button[type=reset]').parents('form') ? $('button[type=reset]').trigger('click') : '';
				obj.css({'visibility':'hidden'});
				obj.find('[data-ui=select]').css({'visibility':'hidden'});
        $('.sub #wrap > div').css({'z-index':'100'});
				/*$('body').css({'overflow':'inherit','padding-right':'0'});
				$('#header').css({'margin-left':'0', 'padding-left':'0'}).find('.logo').css({'margin-left':'0'});*/

        /* 2016-03-17 : 추가 */
        if ( obj.find('.check') ) {
          obj.find('.check').empty();
          //obj.find('input').val('');
        }
			});
		}
	}; //popup

	var qpopup = {
		init : function(){
			this.obj = $('[data-ui=qpopup]');
			this.btnOpen = $('[data-fn*=qpopupBtnOpen]');
			this.btnClose = $('[data-fn*=qpopupBtnClose]');
			this.popupName;

			this.open(this.obj, this.btnOpen, this.popupName);
			this.close(this.obj, this.btnClose, this.popupName);
		}, open : function(obj, btn, popupName){
			btn.click(function(e){
				e.preventDefault();
				popupName = $(this).attr('href');

				if ( $(popupName+'[data-ui=qpopup]').css('visibility') == 'visible' ){
					$(popupName+'[data-ui=qpopup]').css({'visibility':'hidden'});
				}else{
					$(popupName+'[data-ui=qpopup]').css({'visibility':'visible'});
				}
			});
		}, close : function(obj, btn, popupName){
			btn.click(function(){
				$('button[type=reset]').parents('form') ? $('button[type=reset]').trigger('click') : '';
				obj.css({'visibility':'hidden'});
			});
		}
	}; //qpopup

	var allCheck = {
		init : function(){
			this.allCheckBtn = $('[data-fn=allCheck]');

			this.click(this.allCheckBtn)
		}, click : function(allCheckBtn){
			allCheckBtn.click(function(){
				if ( $(this).is(':checked') ) {
					$('[type=checkbox]').each(function(){
						!$(this).is(':checked') ? $(this).trigger('click') : '' ;
					});
				} else {
					$('[type=checkbox]').each(function(){
						$(this).is(':checked') ? $(this).trigger('click') : '' ;
					});
				}

			});
		}
	}; //allCheck

	var ablePassword = {
		init : function(){
			this.ableCheck = false;
			this.engCheck = false;
			this.numCheck = false;
			this.speCheck = false;
			this.patternEng = /[a-z]/i;
			this.patternNum = /\d/;
			this.patternSpe = /\W/;
			this.obj = $('[data-fn=ablePassword]');
			this.checkTxt;

			this.check(this.obj, this.ableCheck, this.engCheck, this.numCheck, this.speCheck, this.patternEng, this.patternNum, this.patternSpe, this.checkTxt);
		}, check : function(obj, ableCheck, engCheck, numCheck, speCheck, patternEng, patternNum, patternSpe, checkTxt){
			obj.keyup(function(){
				engCheck = patternEng.test(obj.val());
				numCheck = patternNum.test(obj.val());
				speCheck = patternSpe.test(obj.val());

				if ( obj.val().length ) {
					if ( obj.val().length >= 10 ) {
						if ( engCheck && numCheck ) {
							ableCheck = true;
							checkTxt = '사용 가능';
						} else if ( engCheck && speCheck ) {
							ableCheck = true;
							checkTxt = '사용 가능';
						} else if ( numCheck && speCheck ) {
							ableCheck = true;
							checkTxt = '사용 가능';
						}
					} else {
						ableCheck = false;
						checkTxt = '사용 불가';
					}
				} else {
					ableCheck = false;
					checkTxt = '';
				}

				$('[for='+$(this).attr('id')+'] .check').removeClass('true').removeClass('false').addClass(''+ableCheck+'').text(checkTxt);
			});
		}
	}; //ablePassword

	var samePassword = {
		init : function(){
			this.sameCheck = false;
			this.obj1 = $('#u_confirm_pw');
			this.obj2 = $('#u_new_pw');
			this.checkTxt;

			this.check(this.obj1, this.obj2, this.sameCheck, this.checkTxt);
		}, check : function(obj1, obj2, sameCheck, checkTxt){
			obj1.keyup(function(){
				if ( obj1.val().length ) {
					if ( obj1.val() == obj2.val() ) {
						sameCheck = true;
						checkTxt = '일치';
					} else {
						sameCheck = false;
						checkTxt = '불일치';
					}
				} else {
					sameCheck = false;
					checkTxt = '';
				}

				$('[for='+$(this).attr('id')+'] .check').removeClass('true').removeClass('false').addClass(''+sameCheck+'').text(checkTxt);
			});
		}
	}; //samePassword

	// var blankInput = {
	// 	init : function(){
	// 		this.obj1 = $('[type=text]');
	// 		this.obj2 = $('[type=password]');
	// 		this.cancel = 'data-blankCancel'
    //
	// 		this.input(this.obj1, this.obj2, this.cancel);
	// 	}, input : function(obj1, obj2, cancel){
	// 		obj1.keydown(function(e){
	// 			if ( e.keyCode == 32 && $(this).attr(cancel) != 'true' ) {
	// 				return false;
	// 			}
	// 		});
	// 		obj2.keydown(function(e){
	// 			if ( e.keyCode == 32  ) {
	// 				return false;
	// 			}
	// 		});
	// 	}
	// }; //blankInput

	var nextFocus = {
		init : function(){
			this.obj = $('[data-fn=nextFocus]');

			this.focus(this.obj);
		}, focus : function(obj){
			obj.keyup(function(){
				if ( $(this).val().length == $(this).attr('maxlength') ) {
					$(this).parent().next().find('input').focus();
				}
			});
		}
	}; //nextFocus

	var onlyNumber = {
		init : function(){
			this.numberCheck = false;
			this.obj = $('[data-type=onlyNumber]');
			this.pattern = /\D/;
			this.tempVal;

			this.input(this.numberCheck, this.obj, this.pattern, this.tempVal);
		}, input : function(numberCheck, obj, pattern, tempVal){

			obj.keyup(function(){
				numberCheck = pattern.test($(this).val());
				if ( numberCheck ) {
          alert('숫자만 입력 가능합니다.');
          if ( pattern.test($(this).val()[0]) ) {
            $(this).val('').focus();
          } else {
            $(this).val(tempVal).focus();
          }
				}
				tempVal = $(this).val();
			});
		}
	}; //onlyNumber

	var mail = {
		init : function(){
			this.mailCheck = false;
			this.obj = $('[data-type=mail]');
			this.pattern = /@/;
			this.tempVal;

			this.input(this.mailCheck, this.obj, this.pattern, this.tempVal);
		}, input : function(mailCheck, obj, pattern, tempVal){
			obj.each(function(){
				tempVal = $(this).val();
			});

			obj.keyup(function(e){
				mailCheck = pattern.test($(this).val());
				if ( mailCheck ) {
					alert('잘못된 이메일 형식입니다.');
					$(this).val(tempVal).focus();
				}
				tempVal = $(this).val();
			});
		}
	}

	var mailSelect = {
		init : function(){
			this.obj = $('[data-fn=mailSelect]');

			this.input(this.obj);
		}, input : function(obj) {
			obj.change(function() {
				$(this).parent().prev().find('input').val($(this).val());
			});
		}
	}

	var price = {
		init : function(){
			this.obj = $('[data-fn=price]');
			this.pattern = /(^[+-]?\d+)(\d{3})/;
			this.objTxt;

			this.input(this.obj, this.objTxt, this.pattern);
		}, input : function(obj, objTxt, pattern) {
			obj.each(function(){
				objTxt = $(this).text();

				//objTxt = String(objTxt);

				while ( pattern.test(objTxt) ){
					objTxt = objTxt.replace(pattern, '$1' + ',' + '$2');
				}

				$(this).text(objTxt);
			});
		}
	}

	var faq = {
		init : function(){
			this.obj = $('[data-fn=faq]');

			this.click(this.obj);
		}, click : function(obj){
			obj.find('.subject a').click(function(e){
				e.preventDefault();

				if ( !$(this).parents('article').hasClass('on') ) {
					$(this).parents('article').addClass('on');
				} else {
					$(this).parents('article').removeClass('on');
				}
			});
		}
	}

  var anchor = {
    init : function(){
      this.obj = $('[data-fn=anchor]');

      this.click(this.obj);
    }, click : function(obj){
      obj.click(function(e){
        e.preventDefault();

        $(window).scrollTop( $($(this).attr('href')).offset().top-$('#header').height() );
      });
    }
  }

  var calendar = {
    init : function(){
      this.obj = $('[data-fn=calendar]');
      this.date;
      this.currentYear;
      this.currentMonth;
      this.currentDate;

      this.load(this.obj, this.date, this.currentYear, this.currentMonth, this.currentDate);
    }, load : function(obj, date, currentYear, currentMonth, currentDate){
      if( typeof( date ) !== 'undefined' ) {
    		date = date.split('-');
    		date[1] = date[1] - 1;
    		date = new Date(date[0], date[1], date[2]);

        obj.find('.calendar').empty();
    	} else {
    		var date = new Date();
    	}

    	currentYear = date.getFullYear();
    	//년도를 구함

    	currentMonth = date.getMonth() + 1;
    	//연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력

    	currentDate = date.getDate();
    	//오늘 일자.

    	date.setDate(1);
    	var currentDay = date.getDay();
    	//이번달 1일의 요일은 출력. 0은 일요일 6은 토요일

      var dateEng = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
      var dateKor = new Array('일', '월', '화', '수', '목', '금', '토');
    	var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
    	if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
    		lastDate[1] = 29;
    	//각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.

    	var currentLastDate = lastDate[currentMonth-1];
    	var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
    	//총 몇 주인지 구함.

      /*
    	if( currentMonth < 10 )
    		var currentMonth = '0' + currentMonth;*/
    	//10월 이하라면 앞에 0을 붙여준다.

    	var calendar = '';

    	var calendar = '';
          calendar += '<header>';
          calendar += ' <h3>';
          calendar += '   <span class="yyyy"><em>'+currentYear+'</em>년</span>';
          calendar += '   <span class="mm"><em>'+currentMonth+'</em>월</span>';
          calendar += ' </h3>';
          calendar += ' <button type="button" class="btn_prev">이전</button>';
          calendar += ' <button type="button" class="btn_next">다음</button>';
          calendar += '</header>';

          calendar += '<table>';
          calendar += ' <caption>달력</caption>';
          calendar += ' <thead>';
          calendar += '   <tr>';
          for (var i=0; i<=6; i++ ) {
            	calendar += '  <th class="'+dateEng[i]+'">'+dateKor[i]+'</th>';
          }
          calendar += '   </tr>';
          calendar += ' </thead>';

          calendar += ' <tbody>';
          var dateNum = 1 - currentDay;
        	for(var i = 0; i < week; i++) {
        		calendar += '   <tr>';
        		for(var j = 0; j < 7; j++, dateNum++) {
        			if( dateNum < 1 || dateNum > currentLastDate ) {
        				calendar += '     <td class="' + dateEng[j] + '"></td>';
        				continue;
        			}
        			calendar += '      <td class="' + dateEng[j] + '"><a href="#">' + dateNum + '</a></td>';
        		}
        		calendar += '   </tr>';
        	}

        	calendar += '  </tbody>';
          calendar += '</table>';


      this.obj.find('.calendar').append(calendar);

      this.next(obj, date, currentYear, currentMonth, currentDate);
      this.prev(obj, date, currentYear, currentMonth, currentDate);
      this.visible(obj, date, currentYear, currentMonth, currentDate);
    }, next : function(obj, date, currentYear, currentMonth, currentDate) {
      obj.find('.btn_next').click(function(){
        if (currentMonth != 12) { //만약 이번달이 12월이라면 1년 후 1월로 출력.
      		date = currentYear + '-' + ( currentMonth+1 ) + '-' + 1;
      	} else {
    	    date = ( currentYear+1 ) + '-' + 1 + '-' + 1;
        }

        calendar.load(obj, date, currentYear, currentMonth, currentDate);
        return false;
      });
    }, prev : function(obj, date, currentYear, currentMonth, currentDate){
      obj.find('.btn_prev').click(function(){
        if (currentMonth != 1) { //만약 이번달이 1월이라면 1년 전 12월로 출력.
      		date = currentYear + '-' + ( currentMonth-1 ) + '-' + 1;
      	} else {
      	  date = ( currentYear-1 ) + '-' + 12 + '-' + 1;
        }

        calendar.load(obj, date, currentYear, currentMonth, currentDate);
        return false;
      });
    }, visible : function(obj, date, currentYear, currentMonth, currentDate) {

      var id;

      obj.each(function(){
        id = $(this).find('label').attr('for');

        $('#'+id).focus(function(){
          $('.calendar').hide();

          id = $(this).attr('id');

          $('[for='+id+']').next('.calendar').show();
        });
      });

      $('.calendar button').click(function(){
        $('#'+id).focus();
      });

      $('.calendar td a').click(function(e){
        e.preventDefault();

        var yyyy = $(this).parents('.calendar').find('.yyyy em').text();
        var mm = $(this).parents('.calendar').find('.mm em').text();
        var dd = $(this).text();

        if ( mm < 10 ) {
          mm = '0'+mm;
        }
        if ( dd < 10 ){
          dd = '0'+dd;
        }
        $('#'+id+'').val(yyyy+'-'+mm+'-'+dd);

        $('.calendar').hide();

        var Date2 = new Date();
        var tempYear = Date2.getFullYear();
        var tempMonth = Date2.getMonth()+1;
        var tempDate = Date2.getDate();

        date = tempYear+'-'+tempMonth+'-'+1;
        calendar.load(obj, date, currentYear, currentMonth, currentDate);
      });

      $('*').on('click focus', function(){
        if ( $('.calendar').is(':visible') ) {
          if ( !$('#'+id).is(':focus') && !$('[for='+id+']').next('.calendar').find('*').is(':focus') ) {
            $('.calendar').hide();

            var Date2 = new Date();
            var tempYear = Date2.getFullYear();
            var tempMonth = Date2.getMonth()+1;
            var tempDate = Date2.getDate();

            date = tempYear+'-'+tempMonth+'-'+1;
            calendar.load(obj, date, currentYear, currentMonth, currentDate);
          }
        }
      });
    }
  }

	popup.init();
	qpopup.init();
	allCheck.init();
	ablePassword.init();
	samePassword.init();
	// blankInput.init();
	//nextFocus.init();
	onlyNumber.init();
	mail.init();
	//mailSelect.init();
	price.init();
	faq.init();
  anchor.init();
  calendar.init();
};

$(window).load(function(){
	ui();
	fn();
});


var formValidation = function(method, check, callback){
	var checkLength = check.length
	for ( var i=0; i<=checkLength-1; i++) {
		if ( !$(check[i][0]).val().length ) {
			if ( method == 'alert' ) {
				alert(check[i][1]);
			} else if ( method == 'innerHTML' ) {
				$(check[i][0]+'_check').html(check[i][1]);
			}

			$(check[i][0]).focus();

			return false;
		} else if ( i == check.length-1 ) {
			callback();
		}
	}
};

//심리검사
function psyTest (testName, sectionQuestionLength, player, resultType) {
	var pageQuestionLength = 5; // 페이지별 문항 수
	var sectionQuestionLength = sectionQuestionLength; // 유형별 문항 수
	var player;
	if ( player == 'single' ) {
		player = 1;
	} else {
		player = 2;
	}
	var playCnt = player;

	var sectionLength; // 유형
	var sectionSubject;

	var questionLength; // 질문
	var questionText;

	var pageTotal; // 총 페이지
	var pageNow = 1; // 현재 페이지


	if ( resultType.type == 'poly' ) { // 체크박스
		var inputLength = [];
		var inputPoint = [];
		var inputText = [];
	} else {
		var inputLength;
		var inputPoint;
		var inputCheckedLength;
		var inputText;
	}

	var pointTotal = 0; // 총 점수
	var pointSection = []; // 유형별 점수
	if ( player == 2 ) {
		pointSection[0] = [];
		pointSection[1] = [];
	}
	var pointTemp = [];
	var pointTemp2 = [];

	var pointQuestion; // 문항별 점수


	var explanationText; // 해설
	var explanationSubject;
	var explanationPoint;

	var tableColumnGroup; // 테이블
	var tableHeaderGroup;
	var tableRowGroup;

	var check = false;

	var nothing;

	var testLength = 4;
	var testNum = 1;

	psyTest.start = function () {
		$('#test_intro').hide();
		$('#test').show();
		$(window).scrollTop(0);

		psyTest.questionLoad();
	}

	psyTest.questionLoad = function() {
		$.getJSON('/avenueCom/js/'+testName+'.json', function (json) {
			//var
			sectionLength = json.section.subject.length;
			sectionSubject = json.section.subject;

			questionLength = json.question.text.length;
			questionText = json.question.text;

			pageTotal = questionLength/pageQuestionLength;

			if ( resultType.type == 'poly' ) {
				for ( var i=1; i<=testLength; i++ ) {
					inputLength[i-1] = json.input.point[i-1].length;
					inputPoint[i-1] = json.input.point[i-1];
					inputText[i-1] = json.input.text[i-1];
				}
			} else {
				inputLength = json.input.point.length;
				inputPoint = json.input.point;
				inputText = json.input.text;
			}

			explanationText = json.explanation.text;
			explanationSubject = json.explanation.subject;
			explanationPoint = json.explanation.point;

			psyTest.paging();
			psyTest.question();
		});
	}

	psyTest.paging = function() {
		$('#test .paging .now').text(pageNow);
		$('#test .paging .total').text(pageTotal);
		$('#test .progress_bar').css({ 'width':100/pageTotal*pageNow+'%' });
	}

	psyTest.question = function() {
		tableColumnGroup = '';
		tableHeaderGroup = '';
		tableRowGroup = '';
		pointQuestion = 0;

		if ( resultType.type == 'poly' ) {
			if ( pageNow <= 3 ) {
				testNum = 1;
			} else if ( pageNow <= 6 ) {
				testNum = 2;
			} else if ( pageNow <= 9 ) {
				testNum = 3;
			} else {
				testNum = 4;
			}
		}

		tableColumnGroup += '<col />';
		if ( resultType.type == 'poly' ) {
			for ( var i=1; i<=inputLength[testNum-1]; i++ ) {
				tableColumnGroup += '<col style="width:52px" />';
			}
		} else {
			for ( var i=1; i<=inputLength; i++ ) {
				tableColumnGroup += '<col style="width:52px" />';
			}
		}

		tableHeaderGroup += '<tr>';
			tableHeaderGroup += '<th>제목</th>';
		if ( resultType.type == 'poly' ) {
			for ( var i=1; i<=inputLength[testNum-1]; i++ ) {

				tableHeaderGroup += '<th><div><span>'+inputText[testNum-1][i-1]+'</span></div></th>';
			}
		} else {
			for ( var i=1; i<=inputLength; i++ ) {
				tableHeaderGroup += '<th><div><span>'+inputText[i-1]+'</span></div></th>';
			}
		}
		tableHeaderGroup += '</tr>';

		for ( var i=pageQuestionLength*pageNow-pageQuestionLength+1; i<=pageQuestionLength*pageNow; i++) {
			tableRowGroup += '<tr>';
				tableRowGroup += '<td>'+questionText[i-1]+'</td>';
			if ( resultType.type == 'poly' ) {
				for ( var j=1; j<=inputLength[testNum-1]; j++ ) {
					tableRowGroup += '<td><input type="radio" name="list'+i+'" value="'+inputPoint[testNum-1][j-1]+'" /></td>';
				}
			} else {
				for ( var j=1; j<=inputLength; j++ ) {
					tableRowGroup += '<td><input type="radio" name="list'+i+'" value="'+inputPoint[j-1]+'" /></td>';
				}
			}
			tableRowGroup += '</tr>';
		}

		$('#question colgroup').html(tableColumnGroup);
		$('#question thead').html(tableHeaderGroup);
		$('#question tbody').html(tableRowGroup);

		if ( inputLength == 3 ) {
			$('#question colgroup col:nth-child(3)').css({ 'width':'155px' });
		} else if ( inputLength == 4 ) {
			$('#question colgroup col:nth-child(2), #question colgroup col:nth-child(3), #question colgroup col:nth-child(4)').css({ 'width':'70px' });
		}
	}

	psyTest.validation = function () {
		inputCheckedLength = 0;
		check = false;

		inputCheckedLength = $('#question input:checked').length;

		$('#question input:checked').each(function(){
			pointQuestion += parseInt($(this).val());
		});

		if ( inputCheckedLength != pageQuestionLength ) {
			alert('모든 문항을 체크 해 주세요!');
			pointQuestion = 0;
		} else {
			check = true;
			psyTest.point();
		}
	}

	psyTest.point = function () {

		pointTotal += pointQuestion;

		if ( player == 2 ) {

			pointTemp2.push(pointQuestion);

			var nothing = pageNow;

			if ( pageNow%(sectionQuestionLength/pageQuestionLength) == 0 ) {
				if ( playCnt == 2 && nothing != 0 ) {
					nothing = pageNow;
				} else if ( playCnt == 1 && nothing == 0 ) {
					nothing = pageTotal;
				} else if ( playCnt == 1 && nothing != 0 ) {
					nothing += pageTotal;
				} else {
					nothing = pageTotal*2;
				}

				pointTemp.push(pointTemp2[nothing-2]+pointTemp2[nothing-1]);

				if ( nothing == pageTotal ) {
					pointSection[0] = pointTemp;
					pointTemp = [];
				} else if ( nothing == pageTotal*2 ) {
					pointSection[1] = pointTemp;
					pointTemp = [];
				}
			}
		} else if ( resultType.type == 'poly' ) {
			pointTemp.push(pointQuestion);
			//console.log(pointTemp)
			if ( pageNow == 3 ) {
				pointSection.push(pointTemp[0]+pointTemp[1]+pointTemp[2]);
				//console.log(pointSection)
			} else if ( pageNow == 6 ) {
				pointSection.push(pointTemp[3]+pointTemp[4]+pointTemp[5]);
				//console.log(pointSection)
			} else if ( pageNow == 9 ) {
				pointSection.push(pointTemp[6]+pointTemp[7]+pointTemp[8]);
				//console.log(pointSection)
			} else if ( pageNow == pageTotal) {
				pointSection.push(pointTemp[9], pointTemp[10], pointTemp[11], pointTemp[12]);
				//console.log(pointSection)
			}
		} else {
			pointSection.push(pointQuestion);
		}

	}

	psyTest.next = function () {
		psyTest.validation();

		if ( check ) {
			pageNow++;
			psyTest.paging();
			psyTest.question();
		}
	}

	psyTest.end = function () {

		psyTest.explanation = function () {

			var explanation = '';
			var status;
      var j = 3;

			if ( sectionLength != 0 ) {
				for (var i=1; i<=sectionLength; i++) {

					explanation += '<section>';
					explanation += '	<h3>'+sectionSubject[(i-1)]+'</h3>';

					if ( player == 2 ) {
						explanation += '	<p>'+explanationText[i-1]['default']+'</p>';

						for ( var j=1; j<=player; j++ ) {
							if ( pointSection[j-1][i-1] < explanationPoint[i-1][1] ) {
								status = 'normal';
							} else if ( pointSection[j-1][i-1] >= explanationPoint[i-1][1] && pointSection[j-1][i-1] < explanationPoint[i-1][2] ) {
								status = 'warning';
							} else if ( pointSection[j-1][i-1] >= explanationPoint[i-1][2] ) {
								status = 'danger';
							}

							if ( j == 1) {
								explanation += '<p class="player'+j+'">나의 상태는 '+explanationText[i-1][status]+'</p>';
							} else {
								explanation += '<p class="player'+j+'">파트너의 상태는 '+explanationText[i-1][status]+'</p>';
							}

						}
					} else if ( resultType.type == 'poly' ) {
						if ( i-1 == 0 || i-1 == 2 ) {
							if ( pointSection[i-1] < explanationPoint[i-1][1] ) {
								status = 'normal';
							} else if ( pointSection[i-1] >= explanationPoint[i-1][1] && pointSection[i-1] < explanationPoint[i-1][2] ) {
								status = 'warning';
							} else if ( pointSection[i-1] >= explanationPoint[i-1][2] && pointSection[i-1] < explanationPoint[i-1][3] ) {
								status = 'danger';
							} else if ( pointSection[i-1] >= explanationPoint[i-1][3] ) {
								status = 'serious';
							}
						} else if ( i-1 == 3 ) {
							status = [];

                if ( pointSection[3] < explanationPoint[i-1][1] ) {
  								status[3] = 'normal';
  							} else if ( pointSection[3] >= explanationPoint[i-1][1] && pointSection[3] < explanationPoint[i-1][2] ) {
  								status[3] = 'warning';
  							} else if ( pointSection[3] >= explanationPoint[i-1][2] ) {
  								status[3] = 'danger';
                }

                if ( pointSection[4] < explanationPoint[i-1][1] ) {
  								status[4] = 'normal';
  							} else if ( pointSection[4] >= explanationPoint[i-1][1] && pointSection[4] < explanationPoint[i-1][2] ) {
  								status[4] = 'warning';
  							} else if ( pointSection[4] >= explanationPoint[i-1][2] ) {
  								status[4] = 'danger';
                }

                if ( pointSection[5] < explanationPoint[i-1][1] ) {
  								status[5] = 'normal';
  							} else if ( pointSection[5] >= explanationPoint[i-1][1] && pointSection[5] < explanationPoint[i-1][2] ) {
  								status[5] = 'warning';
  							} else if ( pointSection[5] >= explanationPoint[i-1][2] ) {
  								status[5] = 'danger';
                }

                if ( pointSection[6] < explanationPoint[i-1][1] ) {
  								status[6] = 'normal';
  							} else if ( pointSection[6] >= explanationPoint[i-1][1] && pointSection[6] < explanationPoint[i-1][2] ) {
  								status[6] = 'warning';
  							} else if ( pointSection[6] >= explanationPoint[i-1][2] ) {
  								status[6] = 'danger';
                }

              explanation += '	<p><strong>금주와 금연</strong>'+explanationText[3][0][status[3]]+'<strong>이완과 휴식</strong>'+explanationText[3][1][status[4]]+'<strong>가정과 직장의 균형</strong>'+explanationText[3][2][status[5]]+'<strong>자기수용 및 자존감</strong>'+explanationText[3][3][status[6]]+'</p>';

						} else {
							if ( pointSection[i-1] < explanationPoint[i-1][1] ) {
								status = 'normal';
							} else if ( pointSection[i-1] >= explanationPoint[i-1][1] && pointSection[i-1] < explanationPoint[i-1][2] ) {
								status = 'warning';
							} else if ( pointSection[i-1] >= explanationPoint[i-1][2] ) {
								status = 'danger';
							}
						}

						if ( i-1 != 3 ) {
							explanation += '	<p class="'+status+'">'+explanationText[i-1][status]+'</p>';
						} else {

            }

					} else {
						if (testName != "psychild_attitude") {
              if ( pointSection[i-1] < explanationPoint[i-1][1] ) {
								status = 'normal';
							} else if ( pointSection[i-1] >= explanationPoint[i-1][1] && pointSection[i-1] < explanationPoint[i-1][2] ) {
								status = 'warning';
							} else if ( pointSection[i-1] > explanationPoint[i-1][1] ) {
								status = 'danger';
							}
						} else {
							if ( pointSection[i-1] > explanationPoint[i-1][1] ) {
								status = 'normal';
							} else if ( pointSection[i-1] == explanationPoint[i-1][1] ) {
								status = 'warning';
							} else if ( pointSection[i-1] < explanationPoint[i-1][1] ) {
								status = 'danger';
							}
						}


						explanation += '	<p class="'+status+'">'+explanationText[i-1][status]+'</p>';
					}
					explanation += '</section>';

					$('#explanation').addClass('type1');
				}
			} else {
        if ( testName == "psychild_stress" ) {
          if ( pointTotal < explanationPoint[0][1] ) {
  					status = 'normal';
  				} else if ( pointTotal >= explanationPoint[0][1] && pointTotal < explanationPoint[0][2] ) {
  					status = 'warning';
  				} else if ( pointTotal >= explanationPoint[0][2] && pointTotal < explanationPoint[0][3] ) {
  					status = 'serious';
  				} else if ( pointTotal >= explanationPoint[0][3] ) {
  					status = 'danger';
  				}
        }  else if ( testName == "psychild_ADHD" ) {
          if ( pointTotal < explanationPoint[0][1] ) {
  					status = 'normal';
  				} else if ( pointTotal >= explanationPoint[0][1] && pointTotal < explanationPoint[0][2] ) {
  					status = 'warning';
  				} else if ( pointTotal >= explanationPoint[0][2] ) {
  					status = 'danger';
  				}
        }


				explanation += '<section>';
				explanation += '	<p class="'+status+'">'+explanationText[0][status]+'</p>';
				explanation += '</section>';

				$('#explanation').addClass('type2');
			}

			$('#explanation').html(explanation);
		}

		psyTest.graphBar = function(sectionSubject){
			var graphWidth = $('#graph').width();
			var graphHeight = $('#graph').height();
			var graph = Raphael('graph', graphWidth, graphHeight);
			var graphGrid ;


			var sectionWidth = (graphWidth-60)/sectionLength;
			if ( player == 2 ) {
				var sectionHeight = graphHeight-70;
			} else {
				var sectionHeight = graphHeight-50;
			}

			for (var i=1; i<=sectionLength; i++) {
				var graphBg;
				graphBg = graph.rect((60+sectionWidth*(i-1)), 0, sectionWidth, sectionHeight);
				graphBg.attr('stroke-width','0');

				i%2 == 1 ? graphBg.attr('fill','#f0f0f0') : graphBg.attr('fill','#fafafa');

				var graphBarX = 60+(sectionWidth*(i-1)+40);

				var graphBarFill = ['#f8de78', '#97db92'];
				var graphBarWidth = (sectionWidth-80)/player;
				var graphBar;

				for (var j=1; j<=player; j++) {
					if ( player > 1 ) {
						var graphBarHeight = pointSection[j-1][i-1]*(sectionHeight/(sectionQuestionLength*inputPoint[inputLength-1]));
					} else {
						var graphBarHeight = pointSection[i-1]*((sectionHeight-15)/(sectionQuestionLength*inputPoint[inputLength-1]))+15;
					}
					var graphBarY = sectionHeight-graphBarHeight;
					graphBar = graph.rect(graphBarX+graphBarWidth*(j-1), graphBarY, graphBarWidth, graphBarHeight);
					graphBar.attr({'stroke-width':'0', 'fill':graphBarFill[j-1]});
				}

				psyTest.explanation();
			}

			for (var i=1; i<=6; i++) {
				graphGrid = graph.rect(60, 30*(i-1), graphWidth-60, 1);
				graphGrid.attr({'stroke-width':'0', 'fill':'#dddddd'});
			}

			var graphBorderBottom;
			graphBorderBottom = graph.rect(60, sectionHeight, graphWidth-60, 2);
			graphBorderBottom.attr({'stroke-width':'0', 'fill':'#000000'});

			var graphDangerGuide;
      if ( player > 1 ) {
			  var graphDangerGuideY = sectionHeight-explanationPoint[0][2]*(sectionHeight/(sectionQuestionLength*inputPoint[inputLength-1]));
      } else {
        var graphDangerGuideY = sectionHeight-explanationPoint[0][2]*(sectionHeight/(sectionQuestionLength*inputPoint[inputLength-1]))-5;
      }
			graphDangerGuide = graph.path('M60, '+graphDangerGuideY+' l'+graphWidth+' 0');
			graphDangerGuide.attr({'stroke':'#ff1515', 'stroke-width':'2', 'stroke-dasharray':'-'});
			graphDangerGuide = graph.text(20, graphDangerGuideY, explanationSubject[2]);
			graphDangerGuide.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#ff1515'});

			var graphWarningGuide;
      if ( player > 1 ) {
        var graphWarningGuideY = sectionHeight-explanationPoint[0][1]*(sectionHeight/(sectionQuestionLength*inputPoint[inputLength-1]));
      } else {
        var graphWarningGuideY = sectionHeight-explanationPoint[0][1]*(sectionHeight/(sectionQuestionLength*inputPoint[inputLength-1]))-8;
      }
			graphWarningGuide = graph.path('M60, '+graphWarningGuideY+' l'+graphWidth+' 0');
			graphWarningGuide.attr({'stroke':'#f28300', 'stroke-width':'2', 'stroke-dasharray':'-'});
			graphWarningGuide = graph.text(20, graphWarningGuideY, explanationSubject[1]);
			graphWarningGuide.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#f28300'});

			/*var graphNormalGuide;
			var graphNormalGuideY = sectionHeight;
			graphNormalGuide = graph.text(20, graphNormalGuideY-((graphNormalGuideY-graphWarningGuideY)/2)-3, explanationSubject[0]);
			graphNormalGuide.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#707070'});*/

			if ( player == 2 ) {
				for (var i=1; i<=sectionLength; i++) {
					var graphSectionSubject;
					graphSectionSubject = graph.text(sectionWidth/2+(sectionWidth*(i-1))+60, graphHeight-57, sectionSubject[i-1]);
					graphSectionSubject.attr({'font-family':'"NotoSansKR"', 'font-size':'15px', 'fill':'#000000' });
				}
			} else {
				for (var i=1; i<=sectionLength; i++) {
					var graphSectionSubject;
					graphSectionSubject = graph.text(sectionWidth/2+(sectionWidth*(i-1))+60, graphHeight-35, sectionSubject[i-1]);
					graphSectionSubject.attr({'font-family':'"NotoSansKR"', 'font-size':'15px', 'fill':'#000000' });
				}
			}

			if ( player == 2 ) {
				var player1Mark;
				player1Mark = graph.rect(366, graphHeight-20, 20, 20);
				player1Mark.attr({'stroke-width':'0', 'fill':'#fde37d'});
				player1Mark = graph.text(346, graphHeight-15, '나')
				player1Mark.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#d6ae0f' });

				var player2Mark;
				player2Mark = graph.rect(478, graphHeight-20, 20, 20);
				player2Mark.attr({'stroke-width':'0', 'fill':'#9ce097'});
				player2Mark = graph.text(437, graphHeight-15, '파트너')
				player2Mark.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#009b04' });
			}
		}

		psyTest.graphPoly = function(sectionSubject){
			var graphWidth = $('#graph').width();
			var graphHeight = $('#graph').height();
			var graph = Raphael('graph', graphWidth, graphHeight);
			var graphGrid ;

			var graphGridWidth = 420;
			var graphGridHeight = 420;
			var graphGridStart = graphWidth/2;
      var graphGridBg = ['#f4d0d0', '#faf2dd', '#ddeedc', '#ddeedc'];

			for (var i=0; i<=sectionLength-1; i++) {
				var graphGridVertex = 420/2/4*i+10-3;
				graphGrid = graph.path('M'+graphGridStart+', '+(50+graphGridVertex)+' l'+((-graphGridWidth/2)+graphGridVertex)+', '+(graphGridHeight/2-graphGridVertex)+' l'+((graphGridWidth/2)-graphGridVertex)+', '+((graphGridHeight/2)-graphGridVertex)+' l'+((graphGridWidth/2)-graphGridVertex)+', '+((-graphGridHeight/2)+graphGridVertex)+' Z');
				i < 3 ?  graphGrid.attr({ 'fill':graphGridBg[i],'stroke-width':'1', 'stroke':'#bbbbbb' }) : graphGrid.attr({ 'fill':graphGridBg[i],'stroke-width':'0' });

				psyTest.explanation();
			}

			var graphBorderHor;
			graphBorderHor = graph.rect(180, graphHeight/2-1, 420, 2);
			graphBorderHor.attr({'stroke-width':'0', 'fill':'#a9a9a9'});

			var graphBorderVer;
			graphBorderVer = graph.rect(graphWidth/2-1, 50, 2, 420);
			graphBorderVer.attr({'stroke-width':'0', 'fill':'#a9a9a9'});


			var graphGuideStartX = graphWidth/2;
			var graphGuideStartY = graphHeight/2;

			/*var graphDangerGuide;
			var graphDangerGuide1 = 150;
			var graphDangerGuide2 = 150;
			var graphDangerGuide3 = 150;
			var graphDangerGuide4 = 150;
			graphDangerGuide = graph.path('M'+graphGuideStartX+', '+(graphGuideStartY-graphDangerGuide1)+' L'+(graphGuideStartX-graphDangerGuide2)+', '+graphGuideStartY+' L'+graphGuideStartX+', '+(graphGuideStartY+graphDangerGuide3)+' L'+(graphGuideStartX+graphDangerGuide4)+', '+graphGuideStartY+' Z');
			graphDangerGuide.attr({'stroke':'#ff1515', 'stroke-width':'1'});
			graphDangerGuide = graph.circle(graphGuideStartX, graphGuideStartY-graphDangerGuide1, 3);
			graphDangerGuide.attr({'fill':'#ff1515', 'stroke-width':'0'});
			graphDangerGuide = graph.circle(graphGuideStartX-graphDangerGuide2, graphGuideStartY, 3);
			graphDangerGuide.attr({'fill':'#ff1515', 'stroke-width':'0'});
			graphDangerGuide = graph.circle(graphGuideStartX, graphGuideStartY+graphDangerGuide3, 3);
			graphDangerGuide.attr({'fill':'#ff1515', 'stroke-width':'0'});
			graphDangerGuide = graph.circle(graphGuideStartX+graphDangerGuide4, graphGuideStartY, 3);
			graphDangerGuide.attr({'fill':'#ff1515', 'stroke-width':'0'});


			var graphWarningGuide;
			var graphWarningGuide1 = 100;
			var graphWarningGuide2 = 100;
			var graphWarningGuide3 = 100;
			var graphWarningGuide4 = 100;
			graphWarningGuide = graph.path('M'+graphGuideStartX+', '+(graphGuideStartY-graphWarningGuide1)+' L'+(graphGuideStartX-graphWarningGuide2)+', '+graphGuideStartY+' L'+graphGuideStartX+', '+(graphGuideStartY+graphWarningGuide3)+' L'+(graphGuideStartX+graphWarningGuide4)+', '+graphGuideStartY+' Z');
			graphWarningGuide.attr({'stroke':'#fdb303', 'stroke-width':'1'});
			graphDangerGuide = graph.circle(graphGuideStartX, graphGuideStartY-graphWarningGuide1, 3);
			graphDangerGuide.attr({'fill':'#fdb303', 'stroke-width':'0'});
			graphDangerGuide = graph.circle(graphGuideStartX-graphWarningGuide2, graphGuideStartY, 3);
			graphDangerGuide.attr({'fill':'#fdb303', 'stroke-width':'0'});
			graphDangerGuide = graph.circle(graphGuideStartX, graphGuideStartY+graphWarningGuide3, 3);
			graphDangerGuide.attr({'fill':'#fdb303', 'stroke-width':'0'});
			graphDangerGuide = graph.circle(graphGuideStartX+graphWarningGuide4, graphGuideStartY, 3);
			graphDangerGuide.attr({'fill':'#fdb303', 'stroke-width':'0'});


			var graphPoly1 = parseInt( (125/100)*pointSection[0]/(45/100)+50 );
      var graphPoly2 = parseInt( (125/100)*pointSection[1]/(30/100)+50 );
			var graphPoly3 = parseInt( (125/100)*pointSection[2]/(45/100)+50 );
			var graphPoly4 = parseInt( (125/100)*(pointSection[3]+pointSection[4]+pointSection[5]+pointSection[6])/(40/100)+50 );
*/
      var graphPoly1;
      var graphPoly2;
      var graphPoly3;
      var graphPoly4;
      var pointSection1 = pointSection[0];
      var pointSection2 = pointSection[1];
      var pointSection3 = pointSection[2];
      var pointSection4 = pointSection[3]+pointSection[4]+pointSection[5]+pointSection[6];

      if ( pointSection1 <= 25 ) {
        graphPoly1 = parseInt( (50/100)*pointSection1/(25/100)+50-10 );
      } else if ( pointSection1 > 25 && pointSection1 <= 30 ) {
        graphPoly1 = parseInt( (25/100)*(pointSection1-25)/(5/100)+100 );
      } else if ( pointSection1 > 30 && pointSection1 <= 37 ) {
        graphPoly1 = parseInt( (25/100)*(pointSection1-30)/(7/100)+125-8 );
      } else if ( pointSection1 > 37 ) {
        graphPoly1 = parseInt( (25/100)*(pointSection1-37)/(8/100)+150 );
      }

      if ( pointSection2 <= 12 ) {
        graphPoly2 = parseInt( (50/100)*pointSection2/(12/100)+50-10 );
      } else if ( pointSection2 > 12 && pointSection2 <= 20 ) {
        graphPoly2 = parseInt( (50/100)*(pointSection2-12)/(8/100)+100-8 );
      } else if ( pointSection2 > 20 ) {
        graphPoly2 = parseInt( (25/100)*(pointSection2-20)/(10/100)+150 );
      }

      if ( pointSection3 <= 15 ) {
        graphPoly3 = parseInt( (50/100)*pointSection3/(15/100)+50-10 );
      } else if ( pointSection3 > 15 && pointSection3 <= 30 ) {
        graphPoly3 = parseInt( (25/100)*(pointSection3-15)/(15/100)+100 );
      } else if ( pointSection3 > 30 && pointSection3 <= 38 ) {
        graphPoly3 = parseInt( (25/100)*(pointSection3-30)/(8/100)+125-8 );
      } else if ( pointSection3 > 38 ) {
        graphPoly3 = parseInt( (25/100)*(pointSection3-38)/(7/100)+150 );
      }

      if ( pointSection4 <= 20 ) {
        graphPoly4 = parseInt( (50/100)*pointSection4/(20/100)+50-10 );
      } else if ( pointSection4 > 20 && pointSection4 <= 29 ) {
        graphPoly4 = parseInt( (50/100)*(pointSection4-20)/(8/100)+100-8 );
      } else if ( pointSection4 > 29 ) {
        graphPoly4 = parseInt( (25/100)*(pointSection4-29)/(11/100)+150 );
      }

			var graphPoly = graph.path('M'+graphGuideStartX+', '+(graphGuideStartY-graphPoly1)+' L'+(graphGuideStartX-graphPoly2)+', '+graphGuideStartY+' L'+graphGuideStartX+', '+(graphGuideStartY+graphPoly3)+' L'+(graphGuideStartX+graphPoly4)+', '+graphGuideStartY+' Z');
			graphPoly.attr({'stroke':'#000000', 'stroke-width':'2' });
			graphPoly = graph.circle(graphGuideStartX, graphGuideStartY-graphPoly1, 5);
			graphPoly.attr({'fill':'#000000', 'stroke-width':'0'});
			graphPoly = graph.circle(graphGuideStartX-graphPoly2, graphGuideStartY, 5);
			graphPoly.attr({'fill':'#000000', 'stroke-width':'0'});
			graphPoly = graph.circle(graphGuideStartX, graphGuideStartY+graphPoly3, 5);
			graphPoly.attr({'fill':'#000000', 'stroke-width':'0'});
			graphPoly = graph.circle(graphGuideStartX+graphPoly4, graphGuideStartY, 5);
			graphPoly.attr({'fill':'#000000', 'stroke-width':'0'});

			var graphSectionSubject;
			graphSectionSubject = graph.text(graphWidth/2, 25, sectionSubject[0]);
			graphSectionSubject.attr({'font-family':'"NotoSansKR"', 'font-size':'15px', 'fill':'#bbbbbb' });

			graphSectionSubject = graph.text(graphWidth/2-(graphGridWidth/2)-35, graphHeight/2-3, sectionSubject[1]);
			graphSectionSubject.attr({'font-family':'"NotoSansKR"', 'font-size':'15px', 'fill':'#bbbbbb' });

			graphSectionSubject = graph.text(graphWidth/2, graphHeight-25, sectionSubject[2]);
			graphSectionSubject.attr({'font-family':'"NotoSansKR"', 'font-size':'15px', 'fill':'#bbbbbb' });

			graphSectionSubject = graph.text(graphWidth/2+(graphGridWidth/2)+35, graphHeight/2-3, sectionSubject[3]);
			graphSectionSubject.attr({'font-family':'"NotoSansKR"', 'font-size':'15px', 'fill':'#bbbbbb' });

      var normalTxt;
  				normalTxt = graph.rect(660, graphHeight-32, 23, 18);
  				normalTxt.attr({'stroke-width':'2', 'stroke':'#bbbbbb', 'fill':'#ddeedc'});
  				normalTxt = graph.text(695, graphHeight-32+5, '정상 영역')
  				normalTxt.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#009b04', 'text-anchor':'start' });

			var WarningTxt;
  				WarningTxt = graph.rect(660, graphHeight-72, 23, 18);
  				WarningTxt.attr({'stroke-width':'2', 'stroke':'#bbbbbb', 'fill':'#faf2dd'});
  				WarningTxt = graph.text(695, graphHeight-72+5, '준위험 영역')
  				WarningTxt.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#fdb303', 'text-anchor':'start' });

			var DangerTxt;
  				DangerTxt = graph.rect(660, graphHeight-112, 23, 18);
  				DangerTxt.attr({'stroke-width':'2', 'stroke':'#bbbbbb', 'fill':'#f4d0d0'});
  				DangerTxt = graph.text(695, graphHeight-112+5, '위험 영역')
  				DangerTxt.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#ff1515', 'text-anchor':'start' });

      var testResult;
  		    testResult = graph.circle(665, graphHeight-143, 5, 5);
  				testResult.attr({'stroke-width':'0', 'fill':'#000000'});
          testResult = graph.rect(670, graphHeight-144, 5, 2);
  				testResult.attr({'stroke-width':'0', 'fill':'#000000'});
          testResult = graph.circle(680, graphHeight-143, 5, 5);
  				testResult.attr({'stroke-width':'0', 'fill':'#000000'});
  				testResult = graph.text(695, graphHeight-152+5, '테스트 결과')
  				testResult.attr({'font-family':'"NotoSansKR"', 'font-size':'12px', 'fill':'#000000', 'text-anchor':'start' });
		}

		psyTest.validation();

		if ( check ) {
			$('#test').hide();
			$('#test_result').show();
			$(window).scrollTop(0);

			if ( resultType.graph ) {
				resultType.type == 'bar' ? psyTest.graphBar(sectionSubject) : psyTest.graphPoly(sectionSubject);
			} else {
				psyTest.explanation();
			}
		}
	}

	$('#test_intro .btn_start').click(function (e) {
    e.preventDefault();

    if ( !$(this).hasClass('btn_start2') ) {
  		psyTest.start();
    } else {
      $('#test_intro').hide();
      $('#test').show();

      psyTest.next();
    }
	});

	$('.btn_wrap a').click(function (e) {
		/*e.preventDefault();
			psyTest.end();*/

      /*console.log('문항 '+pointQuestion);
      console.log('유형별 점수 '+pointSection);
      console.log('총 점수 '+pointTotal);*/

		$('#question').attr({'tabindex':'0'}).css({'outline':'none'}).focus();

		if ( $(this).hasClass('btn_end') ) {
			e.preventDefault();
			psyTest.end();
		} else if ( $(this).hasClass('player2') ) {
      pageNow = 0;
      playCnt--;

      $('#test_intro').show();
      $('#test').hide();
      $('#test_intro strong').html('테스트가 <br />완료되었습니다.');
      $('.btn_start').html('파트너의 욕구 알아보기').addClass('btn_start2');
		} else {
      e.preventDefault();
			psyTest.next();
    }

		if ( pageNow == pageTotal ) {
			if ( player == 1 ) {
				$('.btn_wrap a').addClass('btn_end').html('결과보러가기');
			} else {
				if ( playCnt == 2 ) {
					$('.btn_wrap a').addClass('player2').html('다음');
				} else {
					$('.btn_wrap a').addClass('btn_end').html('결과보러가기');
				}

			}
		} else {
			$('.btn_wrap a').removeClass('player2').html('다음');
		}
	});

}

$(window).load(function(){
    //WebFont loaded dotdotdot
	WebFont.load({
		custom: {
			families: ['"NotoSansKR"'],
			urls : ['/avenueCom/css/common.css']
		},
		active: function(){
			if ( $("*").is(".dotdot") ){
				$(".dotdot").dotdotdot();
			}
		}
	});
})

$(function(){
	//WebFont loaded dotdotdot
	WebFont.load({
		custom: {
			families: ['"NotoSansKR"'],
			urls : ['/avenueCom/css/common.css']
		},
		active: function(){
			if ( $("*").is(".dotdot") ){
				$(".dotdot").dotdotdot();
			}
		}
	});
	//Product Deatil
	if ( $("*").is(".prodetail") || $("*").is(".photo") || $("*").is(".info") ){
		//silder
		$("#detailpic").pajinate({
			any_motion: "slide",
			any_time_in: 400,
			items_per_page: 1
		});


		$("#detailpic .pajinatels, #detailpic .pajinatenav .previous_link, #detailpic .pajinatenav .next_link").hover(function(){
			!$("*").is(".info") ? $("#detailpic .pajinatenav .previous_link, #detailpic .pajinatenav .next_link").stop().fadeIn() : '';
		}, function(){
			$("#detailpic .pajinatenav .previous_link, #detailpic .pajinatenav .next_link").stop().fadeOut();
		});
		for ( var i = 0 ; i < $("#detailpic .pajinatenav .page_link").length ; i++ ){
			$("#detailpic .pajinatenav .page_link[longdesc='"+i+"']").append("<span><img src='"+$("#detailpic .pajinatels li:eq("+i+") img").attr("src")+"' alt=''></span>");
		}

    $(".photo").find(".previous_link").after('<a href="#" class="previous_link_small">이전</a>');
    $(".photo").find(".next_link").before('<a href="#" class="next_link_small">다음</a>');

    $('.previous_link_small').click(function(e){
      e.preventDefault();
      $('.previous_link').trigger('click');
    });

    $('.next_link_small').click(function(e){
      e.preventDefault();
      $('.next_link').trigger('click');
    });
	}
	//Product Deatil

	//상품 수량 +
	$(document).on("click",".quantity .btn_plus", function(){
		$(this).parent().children("input").val(Number($(this).parent().children("input").val())+1);
	});
	//상품 수량 -
	$(document).on("click",".quantity .btn_minus",function(){
		if ( Number($(this).parent().children("input").val()) > 1 ){
			$(this).parent().children("input").val(Number($(this).parent().children("input").val())-1);
		}
	});

});

//장바구니 담기
function UIcartInsert(e){
	$('#'+e).css({"visibility":"visible"});
}
