/**
* --------------------------------
* myTeacher
* --------------------------------
*/

$(window).load(function(){
// common

	// 푸터 하단 고정
	fn.footerFix();
	$(this).resize(function(){
		fn.footerFix();
	});

	$(document).on('click', 'a[href=#]', function(e){
		e.preventDefault();
	});

	// 팝업 열때 길이체크
	$('a[href^=#popup_]').click(function(){
		fn.modalLengthy('open', this);
	});
	$('.modal .btn.close').click(function(){
		fn.modalLengthy('close');
	});

	// 팝업 닫을때 form요소 reset
	$('form .btn.cancel').click(function(){
		$(this).parents("form")[0].reset();
	});

	// GNB 커리큘럼 Unit 열기 / 닫기
	$(document).on('click', '#curriculum .group a', function(){
		$('#curriculum .group a').removeClass('on');
		$(this).toggleClass('on');
	});
	$(document).on('click', '#curriculum .unit_area, #curriculum .btn.close', function(){
		$('#curriculum .group a').removeClass('on');
	});
	$(document).on('click', '#curriculum .lesson_area .next', function(){
		if ( !$('.lesson_area ul').is(':animated') && parseInt($('.lesson_area ul').css('left')) > -262 ) {
			$('.lesson_area ul').animate({'left':'-=131px'});
		}
	});
	$(document).on('click', '#curriculum .lesson_area .prev', function(){
		if ( !$('.lesson_area ul').is(':animated') && parseInt($('.lesson_area ul').css('left')) < 0 ) {
			$('.lesson_area ul').animate({'left':'+=131px'});
		}
	});

// page
	var page = $('#wrap').attr('class');
	switch (page) {
		case 'main' :

			var visualTxtTransparent = $('.visual_area .txt_area .transparent'),
				visualCnt = 1,
				visualLen = $('.visual_area > div').length;

			// for ( var i=1; i<=visualLen; i++ ) {
			// 	$('.visual'+i+' a').css({'height':$('.visual'+i+' .txt_area dl').height()})
			// }


			visualTxtTransparent.find('img').animate({'opacity':'1'}, 500);

			$('.visual1 .txt_area .definition .top').delay(500).animate({'width':'100%'}, 1000);
			$('.visual1 .txt_area .definition .bottom').delay(1000).animate({'width':'100%'}, 1500);
			$('.visual1 .txt_area .description .bar').delay(1500).animate({'width':'55px'}, 500);
			$('.visual1 .txt_area .description .txt').delay(2000).fadeIn(2000);

			var visualInterval = setInterval(function(){
				visualSlide('next');
			}, 3500);

			var visualSlide = function(direction){
				clearInterval(visualInterval);

				if (!$('.visual_area *').is(':animated')) {
					$('.visual'+visualCnt+' .txt_area .definition .top').css({'width':'0'});
					$('.visual'+visualCnt+' .txt_area .definition .bottom').css({'width':'0'});
					$('.visual'+visualCnt+' .txt_area .description .bar').css({'width':'0'});
					$('.visual'+visualCnt+' .txt_area .description .txt').hide();
					$('.visual'+visualCnt+' .bg').css({'z-index':'2'}).fadeOut(3000, function(){
						$(this).css({'z-index':'0'});
					});


					switch (direction) {
						case 'next':
							var txtAreaMoveLeft = '-=50%',
								nthChild = ':nth-child';

							$('.visual_area [class^=visual]').each(function(){
								if ($(this).find('.txt_area').attr('style') === 'left: -100%;') {
									$(this).find('.txt_area').css({'left':'250%'});
								}

								var txtBottomIdx = $(this).find('.txt_area .transparent .bottom img').length;

								$(this).find('.txt_area .transparent .bottom').animate({'left':'50%'}, 1000);
								for (txtBottomIdx; txtBottomIdx>=1; txtBottomIdx--) {
									$(this).find('.txt_area .transparent .bottom img'+nthChild+'('+txtBottomIdx+')').delay(40*txtBottomIdx).animate({'left':'-50%'}, 1000);
								}
							});

							if (visualCnt === visualLen) {
								visualCnt = 1;
							} else {
								visualCnt++;
							}

							$('.visual_area > div').removeClass('on')
							$('.visual'+visualCnt+'').addClass('on');
						break;

						case 'prev':
							var txtAreaMoveLeft = '+=50%',
								nthChild = ':nth-last-child';

							$('.visual_area [class^=visual]').each(function(){
								if ($(this).find('.txt_area').attr('style') === 'left: 250%;' || parseInt($(this).find('.txt_area').css('left')) > $(window).width() * 2) {
									$(this).find('.txt_area').css({'left':'-100%'});
								}

								var txtBottomIdx = $(this).find('.txt_area .transparent .bottom img').length;

								$(this).find('.txt_area .transparent .bottom').animate({'left':'-50%'}, 1000);
								for (txtBottomIdx; txtBottomIdx>=1; txtBottomIdx--) {
									$(this).find('.txt_area .transparent .bottom img'+nthChild+'('+txtBottomIdx+')').delay(40*txtBottomIdx).animate({'left':'50%'}, 1000);
								}
							});

							if (visualCnt === 1) {
								visualCnt = visualLen;
							} else {
								visualCnt--;
							}
						break;
					}

					$('.visual'+visualCnt+' .bg').css({'z-index':'1'}).show();

					$('.visual_area .txt_area').animate({'left':txtAreaMoveLeft}, 2000);

					$('.visual'+visualCnt+' .txt_area .definition .top').delay(1400).animate({'width':'100%'}, 1000);
					$('.visual'+visualCnt+' .txt_area .definition .bottom').delay(1900).animate({'width':'100%'}, 1500, function(){
						visualTxtTransparent.find('.top').css({'left':'0'});
						visualTxtTransparent.find('.top img').css({'left':'0'});
						visualTxtTransparent.find('.bottom').css({'left':'0'});
						visualTxtTransparent.find('.bottom img').css({'left':'0'});
					});
					$('.visual'+visualCnt+' .txt_area .description .bar').delay(2400).animate({'width':'55px'}, 500);
					$('.visual'+visualCnt+' .txt_area .description .txt').delay(2900).fadeIn(2000);
				}

				visualInterval = setInterval(function(){
					visualSlide('next');
				}, 3500);
			}

			fn.scroll({
		        wheelUp : function(){
					if (!$('.visual_area *').is(':animated')) {
						visualSlide('prev');
					}
				},
				wheelDown : function(){
					if (!$('.visual_area *').is(':animated')) {
						visualSlide('next');
					}
				}
			});
		break;

		case 'about method relearning' :
			$('.btn_area button, .pick_area button').click(function(){
				fn.relearningSlide(this);
			});
		break;

		case 'about method habit' :
			$('.btn_area button, .pick_area button').click(function(){
				fn.habitSlide(this);
			});
		break;

		case 'learning video' :
			// 질문 등록하기
			$('.btn.question').click(function(){
				if (!$(this).hasClass('open')) {
					$(this).addClass('open');
					$('.write_area').addClass('open');
				} else {
					$(this).removeClass('open');
					$('.write_area').removeClass('open');
				}
			});

			// 동영상학습 QnA 질문 보기
			$('.summary_area').click(function(){

				if (!$(this).next('.view_area').hasClass('open')) {
					$('.view_area').removeClass('open');
					$(this).next('.view_area').addClass('open');
				} else {
					$(this).next('.view_area').removeClass('open');
				}
			});
		break;

		case 'learning objective' :
			var area = $('.answer_area'),
				sheet = $('.answer_sheet'),
				list = $('.word_list');

			var drag = false;

			var listOffset,
				listOffsetTmp,
				mouse,
				mouseTmp,
				sheetItemArr,
				inactiveIdx;

			var sheetArea;

			var sheetItemPosition = function(){
				sheetItemArr = [];
				sheet.find('.word').each(function(){
					sheetItemArr.push(
						{
							xCenter : $(this).offset().left + $(this).width()/2,
							yStart : $(this).offset().top,
							yEnd : $(this).offset().top + $(this).height()
						}
					)
				});

				// sheetItemGuide();
			}

			// var sheetItemGuide = function(){
			// 	$('.guide').remove();
			// 	for (var i=0; i<sheetItemArr.length; i++) {
			// 		$('.whiteboard').append('<div class="guide" style="position:fixed; top:'+sheetItemArr[i].yStart+'px; left:'+(sheetItemArr[i].xCenter)+'px; width:0px; height:60px; border:1px solid red;"></div>')
			// 	}
			// }

			$(document).on('mousedown', '.word_list li', function(e){
				if ( !$(this).hasClass('inactive') ) {

					sheetArea = {
						xStart : sheet.offset().left,
						yStart : sheet.offset().top + 6,
						xEnd : sheet.offset().left + sheet.width(),
						yEnd : sheet.offset().top + sheet.height() - 8
					}

					drag = true;

					listOffsetTmp = {
						y : $(this).offset().top,
						x : $(this).offset().left
					};

					mouseTmp = {
						x : e.pageX,
						y : e.pageY
					};

					listOffset = {
						x : e.clientX-(mouseTmp.x-listOffsetTmp.x+10),
						y : e.clientY-(mouseTmp.y-listOffsetTmp.y)
					};

					var answerCopy = $(this).find('span').clone();

					inactiveIdx = list.find('.inactive').length;

					$(this).addClass('selected inactive');

					sheet.append('<div class="temp list"></div>');
					sheet.find('.temp').append(answerCopy).css({'top':listOffset.y, 'left':listOffset.x});
				}
			});

			$(document).on('mousedown', '.word', function(e){
				sheetArea = {
					xStart : sheet.offset().left,
					yStart : sheet.offset().top + 6,
					xEnd : sheet.offset().left + sheet.width(),
					yEnd : sheet.offset().top + sheet.height() - 8
				}
				
				drag = true;

				listOffsetTmp = {
					y : $(this).offset().top,
					x : $(this).offset().left
				};

				mouseTmp = {
					x : e.pageX,
					y : e.pageY
				};

				listOffset = {
					x : e.clientX-(mouseTmp.x-listOffsetTmp.x+34),
					y : e.clientY-(mouseTmp.y-listOffsetTmp.y+2)
				};

				var answerCopy = $(this).find('span').clone();

				$(this).addClass('selected inactive');

				sheet.append('<div class="temp sheet"></div>');
				sheet.find('.temp').append(answerCopy).css({'top':listOffset.y, 'left':listOffset.x});
			});

			$(document).mousemove(function(e){
				if (drag) {
					listOffset = {
						x : e.pageX-mouseTmp.x,
						y : e.pageY-mouseTmp.y
					};

					mouse = {
						x : e.pageX,
						y : e.pageY
					}

					sheetArea = {
						xStart : sheet.offset().left,
						yStart : sheet.offset().top + 6,
						xEnd : sheet.offset().left + sheet.width(),
						yEnd : sheet.offset().top + sheet.height() - 8
					}

					sheet.find('.temp').css({'transform':'translate('+listOffset.x+'px, '+listOffset.y+'px)'});

					if (mouse.x > sheetArea.xStart && mouse.y > sheetArea.yStart && mouse.x < sheetArea.xEnd && mouse.y < sheetArea.yEnd) {

						if ( sheetItemArr && sheetItemArr.length > 0 ) {
							var sheetItemLenth = sheetItemArr.length,
								sheetItemIdx = 0;

							for (sheetItemIdx; sheetItemIdx<sheetItemLenth; sheetItemIdx++) {
								if (mouse.x < sheetItemArr[0].xCenter && mouse.y < sheetItemArr[0].yEnd) {
									sheetItemPosition();
									sheet.find('.add').remove();
									sheet.find('.word:first').before('<li class="add"></li>');
								} else if (mouse.x > sheetItemArr[sheetItemLenth-1].xCenter && mouse.y > sheetItemArr[sheetItemArr.length-1].yStart) {
									sheet.find('.add').remove();
									sheet.find('.word:last').after('<li class="add"></li>');
									sheetItemPosition();
								} else {
									if (sheetItemIdx > 0) {
										if (mouse.x > sheetItemArr[sheetItemIdx-1].xCenter && mouse.x < sheetItemArr[sheetItemIdx].xCenter && mouse.y > sheetItemArr[sheetItemIdx].yStart && mouse.y < sheetItemArr[sheetItemIdx].yEnd) {
											sheetItemPosition();
											sheet.find('.add').remove();
											sheet.find('.word:eq('+(sheetItemIdx)+')').before('<li class="add"></li>');
										}
									}
								}
							}
						} else {
							if ( sheet.find('.add').length === 0 ) {
								sheet.find('ul').append('<li class="add"></li>');
							}
						}
					} else {
						sheet.find('.add').remove();
						sheetItemPosition();
					}

					sheet.find('.selected').remove();
				}
			}).mouseup(function(e){
				if (drag) {
					drag = false;

					mouse = {
						x : e.pageX,
						y : e.pageY
					}

					if (mouse.x > sheetArea.xStart && mouse.y > sheetArea.yStart && mouse.x < sheetArea.xEnd && mouse.y < sheetArea.yEnd) {
						var tempCopy = 	sheet.find('.temp').find('span').clone();
						sheet.find('.add').append(tempCopy).removeClass('add').addClass('word');

						sheetItemPosition();
					} else {
						list.find('.selected').removeClass('inactive');

						list.find('.inactive').each(function(){
							if ($(this).text() === sheet.find('.temp').text()) {
								$(this).removeClass('inactive')
							}
						});
					}

					if (sheetItemArr.length > 0) {
						area.addClass('active');
					} else {
						area.removeClass('active');
					}

					sheet.find('.temp').remove();
					sheet.find('.add').remove();
					area.find('li').removeClass('selected');
				}
			});
		break;

		case 'mypage condition' :
		$('.lesson_area .next').click(function(){
			if ( !$('.lesson_area ul').is(':animated') && parseInt($('.lesson_area ul').css('left')) > -236 ) {
				$('.lesson_area ul').animate({'left':'-=118px'});
			}
		});
		$('.lesson_area .prev').click(function(){
			if ( !$('.lesson_area ul').is(':animated') && parseInt($('.lesson_area ul').css('left')) < 0 ) {
				$('.lesson_area ul').animate({'left':'+=118px'});
			}
		});
		break;

		case 'mypage hour' :
			fn.calendar('load', 'month');

			$('.calendar .btn').click(function(){
				fn.calendar('change', 'month', this);
			});

			$(document).on('click', '.calendar a, .calendar .dimd', function(){
				$('.calendar').hide();
			})

			$('.calendar_view').click(function(){
				$('.calendar').show();
			});

			fn.hourGraph();
			fn.hourGraphDetail();
		break;

		case 'mypage diary weekly' :
			fn.calendar('load', 'month');

			$('.calendar .btn').click(function(){
				fn.calendar('change', 'month', this);
			});

			$('.calendar a, .calendar .dimd').click(function(){
				$('.calendar').hide();
			});

			$('.calendar_view').click(function(){
				$('.calendar').show();
			});

			$('.diary-swiper').each(function(){
				var diarySwiperOption = {
					simulateTouch: false,
					slidesPerView: 7,
					spaceBetween: 40,
					navigation: {
				        nextEl: $(this).siblings('.swiper-button-next'),
				        prevEl: $(this).siblings('.swiper-button-prev'),
				      },
				}, diarySwiper = new Swiper($(this), diarySwiperOption);
			});
		break;

		case 'mypage diary monthly' :
			fn.calendar('load', 'year');

			$('.calendar .btn').click(function(){
				fn.calendar('change', 'year', this);
			});

			$('.calendar a, .calendar .dimd').click(function(){
				$('.calendar').hide();
			});

			$('.calendar_view').click(function(){
				$('.calendar').show();
			});
		break;

		case 'mypage cycle weekly' :
			fn.cycleGraph();
			fn.calendar('load', 'month');

			$('.calendar .btn').click(function(){
				fn.calendar('change', 'month', this);
			});

			$('.calendar a, .calendar .dimd').click(function(){
				$('.calendar').hide();
			});

			$('.calendar_view').click(function(){
				$('.calendar').show();
			});
		break;

		case 'mypage cycle monthly' :
			fn.cycleGraph();
			fn.calendar('load', 'year');

			$('.calendar .btn').click(function(){
				fn.calendar('change', 'year', this);
			});

			$('.calendar a, .calendar .dimd').click(function(){
				$('.calendar').hide();
			});

			$('.calendar_view').click(function(){
				$('.calendar').show();
			});
		break;

		case 'mypage speed' :
			fn.progressLen();
			fn.speedGraph();
		break;
	}
});
