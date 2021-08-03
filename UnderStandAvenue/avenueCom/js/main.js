 'use strict';
/**
 * --------------------------------
 * avenueCom Main Script
 * --------------------------------
 */

//메인 비주얼

$(window).on('load resize', function(){
(function mainVisual(target){
	var visual = $(target),
		visualWrap = visual.parent(),
		imgLength = visual.find('.img').length,
		imgWidth = visual.find('.img').width(),
		imgCnt,
		onNum = 1,
		tempOnNum = onNum,
		picNum,
		picText,
		picClick = false,
		intervalTime = 3500;

	if ( visualWrap.find('.pic_list').length < 1 ) {
    if ( visual.find('.img').length > 1 ) {


		visualWrap.append('<div class="pic_list"></div>');

		visual.find('.img').each(function(){
			imgCnt = $(this).index()+1;
			$(this).css({'left':imgWidth*(imgCnt-1)});
			picText = visual.find('.img:nth-of-type('+imgCnt+') figcaption span:first-child').html();
			visualWrap.find('.pic_list').append('<span><a href="#">'+imgCnt+'</a></span>');

			picText = visual.find('.img:nth-of-type('+onNum+') figcaption span:last-child').html();
			visualWrap.find('.pic_list span:nth-child('+onNum+') a').html(picText);
		});

		visualWrap.find('.pic_list').css({"left":"50%", "margin-left":-visualWrap.find('.pic_list').width()/2});
		visualWrap.find('.pic_list span:nth-child('+onNum+') a').addClass("on").css({'height':'12px'});

    visualWrap.append('<div class="btn_area"></div>')
		visualWrap.find('.btn_area').append('<button type="button" class="btn_prev">이전</button>');
		visualWrap.find('.btn_area').append('<button type="button" class="btn_next">다음</button>');

    var visualInterval = setInterval(function(){
			visualWrap.find('.btn_next').trigger('click');
		},intervalTime);
      }

	} else {
		visual.find('.img').css({'width':$(document).width()});

		imgWidth = visual.find('.img').width();
		onNum = visualWrap.find('.pic_list a.on').parent().index();

		visual.find('.img').each(function(){
			var visualDivNum = $(this).index();
			$(this).css({'left':imgWidth*visualDivNum-(imgWidth*onNum),'width':imgWidth});
		})
	}

	visualWrap.find('button').click(function(){
		if ( !visual.find('.img').is(':animated') && visual.find('.img').length > 1 ) {
			imgWidth = visual.find('.img').width();
			tempOnNum = onNum;

			picClick ? onNum = picNum : onNum = onNum;

			if ( $(this).hasClass('btn_next') ) {
				onNum < imgCnt ? onNum++ : onNum = 1;

				visual.find('.img:nth-child('+onNum+')').css({ 'left':imgWidth });
				visual.find('.img').animate({ 'left':'-='+imgWidth+'px' },800);
			} else if ( $(this).hasClass('btn_prev') ){
				onNum > 1 ? onNum-- : onNum = imgCnt;

				visual.find('.img:nth-child('+onNum+')').css({ 'left':-imgWidth });
				visual.find('.img').animate({ 'left':'+='+imgWidth+'px' },800);
			}

			visualWrap.find('.pic_list span a.on').removeClass("on").animate({'height':'4px'},400);
			visualWrap.find('.pic_list span:nth-child('+onNum+') a').addClass("on").animate({'height':'12px'},400);

			visual.find('.img').each(function(){
				picText = visual.find('.img:nth-of-type('+onNum+') figcaption span:last-child').html();
				visualWrap.find('.pic_list span:nth-child('+onNum+') a').html(picText);
				picText = visual.find('.img:nth-of-type('+tempOnNum+') figcaption span:first-child').html();
				visualWrap.find('.pic_list span:nth-child('+tempOnNum+') a').html(picText);
			});

			picClick = false;
		}
	});

	visualWrap.find('.pic_list a').click(function(e){
		e.preventDefault();

    if ( !$(this).hasClass('on') ) {
      picClick = true;
  		picNum = $(this).parent().index();

  		visualWrap.find('.btn_next').trigger('click');
    }

	});

})('#main_visual');
});


//메인 캘린더
$(window).load(function(){
  var schedulePaging = 1;
  var removeI=1;
  var addI=4;
  var liLength = $('.schedule_area li').length;
  var liWidth = parseInt($(this).prev().css('width'));

  $('.schedule_area li').each(function(){
    var prevLeft = parseInt($(this).prev().css('left'));
    var prevWidth = parseInt($(this).prev().css('width'));


    if ( $(this).index() == 4 ) {
      $(this).css({ 'left':prevLeft+prevWidth+40+30 });
    } else {
      $(this).css({ 'left':prevLeft+prevWidth+40 });
    }

    var liLeft = parseInt($(this).css('left'));
    if ( liLeft >= 990 ) {
      $(this).css({ 'opacity':'0.2' });
    } else {
      $(this).css({ 'opacity':'1' });
    }
  });

  $('.schedule_area .btn_next').click(function(){
    if ( !$('.schedule_area li').is(':animated') && parseInt($('.schedule_area li:nth-last-child(4)').css('left')) > 0 ) {
      var liLeft;
      $('.schedule_area li').each(function(){
        liLeft = parseInt($(this).css('left'));

        if ( liLeft > 0 && liLeft <= 1030 ) {
          $(this).css({ 'opacity':'1' });
        } else {
          $(this).css({ 'opacity':'0.2' });
        }

        if ( liLeft == 0 ) {
          $(this).animate({ 'left':'-='+(210+40+30) }, 600);
        } else if ( liLeft == 1030 ) {
          $(this).animate({ 'left':'-='+(210+40+30) }, 600);
        } else {
          $(this).animate({ 'left':'-='+(210+40) }, 600);
        }
      });


    }
  });

  $('.schedule_area .btn_prev').click(function(){
    if ( !$('.schedule_area li').is(':animated') && parseInt($('.schedule_area li:first-child').css('left')) < 0 ) {
      var liLeft
      $('.schedule_area li').each(function(){
        liLeft = parseInt($(this).css('left'));

        if ( liLeft >= -280 && liLeft < 750 ) {
          $(this).css({ 'opacity':'1' });
        } else {
          $(this).css({ 'opacity':'0.2' });
        }

        if ( liLeft == -280 ) {
          $(this).animate({ 'left':'+='+(210+40+30) }, 600);
        } else if ( liLeft == 750 ) {
          $(this).animate({ 'left':'+='+(210+40+30) }, 600);
        } else {
          $(this).animate({ 'left':'+='+(210+40) }, 600);
        }
      });

    }
  });
});


// 공연 전시 체험 소식
/*
$(window).load(function(){
  var imgSrc;
  $('.culture_area img').hover(function(){
    imgSrc = $(this).attr('src');
    imgSrc = imgSrc.split('.jpg')[0];

    $(this).attr({ 'src':imgSrc+'_ov.jpg'});
  }, function(){
    $(this).attr({ 'src':imgSrc+'.jpg' })
  });
});*/
