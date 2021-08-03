/**
* --------------------------------
* Function JS
* --------------------------------
*/

var fn = (function() {
    'use strict';

    return {
        // add active
        addActive : function(target) {
            var $this = $(target);

            $this.addClass('active');
        },

        // remove active
        removeActive : function(target) {
            var $this = $(target);

            $this.removeClass('active');
        },

        // toggle active
        toggleActive : function(target) {
            var $this = $(target);

            $this.toggleClass('active');
        },

        // 팝업 열기
        popupOpen : function(target){
            // event.preventDefault();

            if (typeof target === 'object') {
                target = target.attributes.href.value
            }

            var $popup = $(target);

            $popup.show().attr({'tabindex':'0'});

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
            var $popup = $('[class^="popup"], [class^="alert"], [class^="confirm"]');

            if (target) {
                $popup = $(target).closest('[class*="popup"], [class*="alert"], [class*="confirm"]');
                $popup.hide();
            } else {
                $popup.hide().removeAttr('tabindex');

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

        // 광고 닫기
        adClose: function(getThis){
            if (typeof getThis === 'object') {
                var $ad = $(getThis).closest('[class^="ad-"]')
            } else {
                var $ad = $(getThis)
            }

            $ad.remove();
        },

        // 채팅목록 열기
        chatListOpen: function(getThis){
            var $this = $(getThis);

            $this.addClass('active');
            $('.chat.list-area').addClass('active');
        },

        // 채팅목록 닫기
        chatListClose: function(getThis){
            var $this = $(getThis);


            fn.viewerClose('chat');
            setTimeout(function(){
                $('.btn-chat').removeClass('active');
                $('.chat.list-area').removeClass('active');
            }, 300);
        },

        // 알림목록 열기
        notifyListOpen: function(getThis){
            var $this = $(getThis);

            $this.addClass('active');
            $('.notify.list-area').addClass('active');
        },
        // 채팅목록 닫기
        notifyListClose: function(getThis){
            var $this = $(getThis);


            fn.viewerClose('notify');
            setTimeout(function(){
                $('.btn-alert').removeClass('active');
                $('.notify.list-area').removeClass('active');
            }, 300);
        },

        // 채팅 상세
        // chatJoin: function(getThis){
        //     var $btn = $(getThis);
        //
        //     // $('#container').addClass('view join chat');
        // },

        // 상세보기 열기, 참여하기 열기
        viewerOpen: function(getThis, getTarget){
            var $btn = $(getThis),
                target = getTarget,
                targetMirror = getTarget === 'detail' ? 'join' : 'detail';

            switch(target) {
                case 'detail':
                    if ($('#container').hasClass('detail')) {
                        if ($btn.closest('li').hasClass('active')) {
                            fn.viewerClose(target);
                        } else {
                            $('.list-area li').removeClass('active');
                            $btn.closest('li').addClass('active');
                            $('.list-area li .btn-join, .list-area li .btn-chat').prop('disabled', false);
                            $btn.closest('li').siblings('li').find('.btn-join, .btn-chat').prop('disabled', true);
                        }
                    } else {
                        $('#container').addClass('view detail');
                        $('.list-area, #search-area').addClass('border-color');
                        $('.list-area li').removeClass('active');
                        $btn.closest('li').addClass('active');
                        $btn.closest('li').siblings('li').find('.btn-join, .btn-chat').prop('disabled', true);
                    }
                break;

                case 'join':
                    if ($('#container').hasClass('join')) {
                        if ($btn.closest('li').hasClass('active')) {
                            fn.viewerClose(target);
                        } else {
                            $('.list-area li').removeClass('active');
                            $btn.closest('li').addClass('active');
                            $('.list-area li .btn-join').removeClass('active');
                            $btn.addClass('active');
                            $('.list-area li .btn-chat').prop('disabled', false);
                            $('.list-area li .btn-detail').prop('disabled', false);
                            $btn.closest('li').siblings('li').find('.btn-detail').prop('disabled', true);
                            $('.list-area li .btn-join + label [type="checkbox"]').prop('checked', false);
                        }
                    } else {
                        fn.viewerClose('chat');
                        $('#container').addClass('view join');
                        $('.list-area, #search-area').addClass('border-color');
                        $('.list-area li').removeClass('active');
                        $btn.closest('li').addClass('active');
                        $('.list-area li .btn-join').removeClass('active');
                        $btn.addClass('active');
                        $('.list-area li .btn-chat').prop('disabled', true);
                        $('.list-area li .btn-detail').prop('disabled', false);
                        $btn.closest('li').siblings('li').find('.btn-detail').prop('disabled', true);
                        $btn.siblings('label').find('[type="checkbox"]').prop('checked', true);
                    }
                break;

                case 'chat':
                    if ($('#container').hasClass('chat')) {
                        if ($btn.closest('li').hasClass('active')) {
                            fn.viewerClose(target);
                        } else {
                            $('.list-area li').removeClass('active');
                            $btn.closest('li').addClass('active');
                            $('.list-area li .btn-chat').removeClass('active');
                            $btn.addClass('active');
                            $('.btn-multijoin').prop('disabled', false);
                            $('.list-area li .btn-join').prop('disabled', false);
                            $('.list-area li .btn-detail').prop('disabled', false);
                            $btn.closest('li').siblings('li').find('.btn-detail').prop('disabled', true);
                            $('.list-area li .btn-join + label [type="checkbox"]').prop('checked', false);
                        }
                    } else {
                        $('#container').addClass('view chat');
                        $('.list-area, #search-area').addClass('border-color');
                        $('.list-area li').removeClass('active');
                        $btn.closest('li').addClass('active');
                        $('.list-area li .btn-chat').removeClass('active');
                        $btn.addClass('active');
                        $('.btn-multijoin').prop('disabled', true);
                        $('.list-area li .btn-join').prop('disabled', true);
                        $('.list-area li .btn-detail').prop('disabled', false);
                        $btn.closest('li').siblings('li').find('.btn-detail').prop('disabled', true);
                        $btn.siblings('label').find('[type="checkbox"]').prop('checked', true);
                    }
                break;
            }
        },

        // 상세보기 닫기, 참여하기 닫기
        viewerClose: function(getTarget){
            var target = getTarget;

            switch(target) {
                case 'detail':
                    if ($('#container').hasClass('join') || $('#container').hasClass('chat')) {
                        if ($('.join-area').hasClass('multi')) {
                            $('#container').removeClass('detail');
                            $('.list-area li').removeClass('active');
                        } else {
                            $('#container').removeClass('detail');
                            $('.list-area, #search-area').removeClass('border-color');
                            $('.list-area li .btn-join').prop('disabled', false);
                        }
                    } else {
                        $('#container').removeClass('view');
                        $('#container').removeClass('detail');
                        $('.list-area, #search-area').removeClass('border-color');
                        $('.list-area li').removeClass('active');
                        $('.list-area li .btn-join').prop('disabled', false);
                    }
                break;

                case 'join':
                    if ($('#container').hasClass('detail')) {
                        $('#container').removeClass('join');
                        $('.list-area li .btn-chat').prop('disabled', false);
                        $('.list-area li .btn-join').removeClass('active');
                        $('.list-area li .btn-detail').prop('disabled', false);
                    } else {
                        $('#container').removeClass('view');
                        $('#container').removeClass('join');
                        $('.list-area, #search-area').removeClass('border-color');
                        $('.list-area, #search-area').removeClass('border-color');
                        $('.list-area li').removeClass('active');
                        $('.list-area li .btn-join').removeClass('active');
                        $('.list-area li .btn-chat').prop('disabled', false);
                        $('.list-area li .btn-detail').prop('disabled', false);
                        $('.list-area li .btn-join + label [type="checkbox"]').prop('checked', false);
                    }

                    if ($('.join-area').hasClass('multi')) {
                        fn.multiJoin($('.btn-multijoin'))
                    }
                break;

                case 'chat':
                    if ($('#container').hasClass('detail')) {
                        $('#container').removeClass('chat');
                        $('.list-area li .btn-chat').removeClass('active');
                        $('.btn-multijoin').prop('disabled', false);
                        $('.list-area li .btn-join').prop('disabled', false);
                        $('.list-area li .btn-detail').prop('disabled', false);
                    } else {
                        $('#container').removeClass('view');
                        $('#container').removeClass('chat');
                        $('.list-area, #search-area').removeClass('border-color');
                        $('.list-area, #search-area').removeClass('border-color');
                        $('.list-area li').removeClass('active');
                        $('.list-area li .btn-chat').removeClass('active');
                        $('.btn-multijoin').prop('disabled', false);
                        $('.list-area li .btn-join').prop('disabled', false);
                        $('.list-area li .btn-detail').prop('disabled', false);
                        $('.list-area li .btn-join + label [type="checkbox"]').prop('checked', false);
                    }
                break;
            }
        },

        // 다중참여하기 활성화
        multiJoin: function(getThis){
            var $btn = $(getThis);

            $btn.toggleClass('active');
            $('.join-area').toggleClass('multi');

            if ($btn.hasClass('active')) {
                // fn.viewerClose('join');
                if ($('#container').hasClass('join')) {
                    $('.list-area li').removeClass('active');
                }
                $('#container').removeClass('view');
                $('#container').removeClass('join');
                $('.list-area li .btn-join').removeClass('active');
                $('.list-area li .btn-chat').prop('disabled', true);
                $('.list-area li .btn-detail').prop('disabled', false);
                $('.list-area .btn-join + label [type="checkbox"]').prop('disabled', false)
                $('.list-area .btn-join + label [type="checkbox"]:checked').closest('label').siblings('.btn-join').addClass('active');
                $('.list-area .btn-join').prop('disabled', true);
                $('#container').addClass('view join');
            } else {
                $('.info .btn-area .btn-join + label [type="checkbox"]').prop('checked', false).prop('disabled', true);
                $('.list-area li .btn-chat').prop('disabled', false);
                $('.list-area .btn-join').prop('disabled', false).removeClass('active');

                if ($('#container').hasClass('detail')) {
                    $('#container').removeClass('join');
                } else {
                    $('#container').removeClass('view join');
                }
            }
        },

        // 다중참여하기 체크
        multiJoinCheck: function(getThis){
            var $check = $(getThis);

            if ($check.is(':checked')) {
                $check.closest('label').siblings('.btn-join').addClass('active');
            } else {
                // if (!$check.closest('li').hasClass('active')) {
                $check.closest('label').siblings('.btn-join').removeClass('active');
                // }
            }
        },

        // select 직접입력
        selectDirect: function(target){
            console.log(target)
            var $select = $(target),
                $selectWrap = $select.parent();
                console.log($select, $selectWrap)

            if($select.val() === 'direct'){
                $selectWrap.addClass('direct');
                $select.siblings('input').val('');
            } else {
                $selectWrap.removeClass('direct');
            }
        },

        // 별점
        rating: function(getTarget){
            var $rating = $(getTarget),
                $ratingWrap = $rating.closest('.rating'),
                ratingIdx = $rating.closest('label').index();

            $ratingWrap.find('label').each(function(){
                if ($(this).index() > ratingIdx) {
                    $(this).children().prop('checked', false);
                } else {
                    $(this).children().prop('checked', true);
                }
            });

            $ratingWrap.find('.output').text(ratingIdx+1+'.0');
        },

        // 파일업로드 버튼
        fileBtn: function(getTarget){
            var $btn = $(getTarget);

            $btn.siblings('input').trigger('click');
        },

        // 파일업로드
        file: function(getThis){
            var $file = $(getThis);

            $file.each(function(){
                var $this = $(this),
                    name = $this[0].files[0].name;

                $this.siblings('[type="text"]').val(name)
            });
        },

        // 파일업로드 미리보기
        filePreview: function(getThis, getPreview){
            var $file = $(getThis),
                $preview = $(getPreview);

            if ($file[0].files[0].type.match(/image\//)) {
                var reader = new FileReader();

                reader.onload = function(e){
                    var src = e.target.result,
                        fileIdx = $file.index();

                    $preview.find('.img').remove();
                    $preview.append('<figure class="img"><img src="'+src+'" alt=""></figure>');
                }

                reader.readAsDataURL($file[0].files[0]);
            }

            $file.closest('.file').find('.btn-del').remove();
            $file.closest('.file').append('<button type="button" class="btn-del" data-preview="'+getPreview+'" onclick="fn.filePreviewRemove(this);">삭제</button>');
        },

        // 파일업로드 미리보기 삭제
        filePreviewRemove: function(getThis, getPreview){
            var $btnDel = $(getThis),
                $preview = $($btnDel.attr('data-preview'));

            $preview.find('.img').remove();
            $btnDel.siblings('[type="text"]').val('');
            $btnDel.remove();
        },

        // 자동검색어완성
        autoCompleate: function(getState){
            var state = getState,
                autocompleateArea = $('.autocompleate-area'),
                $searchInput = $('#search-area .field-input input[type="text"], .search-area .field-input input[type="text"]'),
                searchWord = $searchInput.val(),
                searchWordRegExp = RegExp(searchWord),
                bookmarkWord,
                changeWord;

            if ($searchInput.val() === '' || state === 'close') {
                autocompleateArea.removeClass('active');
            } else {
                autocompleateArea.find('li').each(function(){
                    bookmarkWord = $(this).find('span').text(),
                    changeWord = bookmarkWord.replace(searchWord, '<em>'+searchWord+'</em>');

                    $(this).find('span').html(changeWord);
                });

                if (bookmarkWord.indexOf(searchWord) !== -1) {
                    autocompleateArea.addClass('active');
                }

            }
        },

        // 시간 카운트
        timeCount: function(getDday){
            var ddayTmp = getDday;
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
                        d = 'Day'
                    }
                    h = ''+(h<10  ? h = '0'+h : h)+'';
                    m = ''+(m<10  ? m = '0'+m : m)+'';
                    s = ''+(s<10  ? s = '0'+s : s)+'';
                    $('.timeset .day-number .number').html(d);
                    $('.timeset .time-h').html(h);
                    $('.timeset .time-m').html(m);
                    $('.timeset .time-s').html(s);

                }else{
                    $('.timeset .state span').text('마감');
                    clearInterval(cdtimer);
                }
                nt++;
            }
            cdtimer = setInterval(timer, 1000);
        },

        // 시간 카운트 (초단위 입력)
        deltaTimer: function(target,countTime){
            var countDownDate;
            var timer = setInterval(function() {
                if(countDownDate == undefined){
                    countDownDate = parseInt(Date.now() + (countTime * 1000));
                }
                var now = parseInt(Date.now());

                var distance = countDownDate - now;
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = "0" + Math.floor((distance % (1000 * 60)) / 1000);
                seconds = seconds.slice(-2);

                document.querySelector(target).innerHTML = minutes + ":" + seconds;

                if (distance < 0) {
                    clearInterval(timer);
                    document.querySelector(target).innerHTML = "0:00";
                }
            }, 1000);
        },

        // 탭메뉴
        tabMenu : function(e, getTarget){
            var $tabMenu = $(getTarget),
                objHref = getTarget.attributes.href.value,
                $tabContents = $(objHref),
                tabContentsTop = $tabContents.offset().top;


            if (objHref.indexOf('#') != -1) {
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

        // // 필터 전부 초기화
        // filterAllReset: function(getTarget){
        //     var $filter = $(getTarget).closest('.reset-area').siblings('.depth2');
        //
        //     $filter.find('[type="checkbox"], [type="radio"]').prop('checked', false);
        //     $filter.find('[data-init][type="checkbox"], [data-init][type="radio"]').prop('checked', true);
        //
        //     $filter.find('[type="text"]').each(function(){
        //         $(this).val($(this).attr('data-init-value'))
        //     });
        // },

        // 필터 초기화
        filterAllReset: function(getThis){
            var $this = $(getThis);

            $this.closest('.inner').find('[type="checkbox"], [type="radio"]').prop('checked', false);
            $this.closest('.inner').find('[data-init][type="checkbox"], [data-init][type="radio"]').prop('checked', true);
        },

        // 필터 초기화
        filterReset: function(getTarget){
            var $filter = $(getTarget).closest('.row').find('.field-con');

            $filter.find('[type="checkbox"], [type="radio"]').prop('checked', false);
            $filter.find('[data-init][type="checkbox"], [data-init][type="radio"]').prop('checked', true);
            //
            // $filter.find('[type="text"]').each(function(){
            //     $(this).val($(this).attr('data-init-value'))
            // });
        },

        // 필터 체크
        filterCheck: function(getThis){
            var $this = $(getThis);
            var $all = $this.closest('.inner').find('[type="checkbox"][data-init]');
            var $reset = $this.closest('.row').find('[type="checkbox"][data-all]');

            if ($this.is('[data-init]')) {
                $this.closest('.inner').find('[type="checkbox"]').prop('checked', false);
                $all.prop('checked', true);
            } else {
                $all.prop('checked', false);
                $reset.prop('checked', false);

                var checkLen = $this.closest('.inner').find('[type="checkbox"]').length-1;
                var checkedLen = $this.closest('.inner').find('[type="checkbox"]:checked').length;

                if (checkedLen === checkLen) {
                    $this.closest('.inner').find('[type="checkbox"]').prop('checked', false);
                    $all.prop('checked', true);
                } else if (checkedLen === 0) {
                    $all.prop('checked', true);
                }
            }
        },

        // 참여하기 상세업무
        joinWork: function(getThis){
            var $this = $(getThis),
                $rowDetail = $('.row-detail');

            if ($this.closest('.row').find('[type="checkbox"]:checked').length > 0) {
                $rowDetail.addClass('active');
            } else {
                $rowDetail.removeClass('active');
            }
        },

        // 필터 - 인허가일 슬라이드
        weekSelected: function(getThis){
            var $this = $(getThis),
                thisVal = ($this.attr('data-week')/4)/12;

            $this.addClass('selected');

            var selectedLen = $this.closest('.inner').find('.btn-licensing.selected').length;

            if ($this.siblings('button').hasClass('selected')) {
                var valMin = thisVal > licensingSlider.slider('values')[1] ? licensingSlider.slider('values')[1] : thisVal;
                var valMax = thisVal > licensingSlider.slider('values')[1] ? thisVal : licensingSlider.slider('values')[1];

                licensingSlider.slider('values', [valMin, valMax] );
                $this.closest('.inner').find('.btn-licensing').removeClass('selected');
            } else {
                fn.licensingSliderReset('.btn-reset');
                licensingSlider.slider('values', ['0', thisVal] );
            }
        },

        // 필터 - 인허가일 슬라이드 리셋
        licensingSliderReset: function(getThis){
            // var $this = $(getThis);

            // licensingSlider.slider('values', ['0', '5']);
            $this.siblings('.filter').find('.btn-licensing:not(:first-child)').removeClass('active');
        },

        // 체크리스트 체크
        inputChoose: function(getThis){
            var $this = $(getThis),
                checkboxLen = $this.closest('.inner').find('[type="checkbox"]').length,
                checkedLen = $this.closest('.inner').find('[type="checkbox"]:checked').length,
                checklistIdx = $this.closest('.choose').index()+1;

            $this.closest('label').siblings('.txt').children('.number').text(checkboxLen-checkedLen);

            if (checkboxLen === checkedLen) {
                $this.closest('.row').prev('.row').find('li:nth-child('+checklistIdx+')').addClass('complete');
            } else {
                $this.closest('.row').prev('.row').find('li:nth-child('+checklistIdx+')').removeClass('complete');
            }
        },

        // 체크리스트 선택
        checklist: function(getThis){
            var $this = $(getThis),
                checklistIdx = $this.closest('li').index()+1;

                console.log(checklistIdx)

            $this.closest('ol').find('li').removeClass('ing');
            $this.closest('li').addClass('ing');

            $this.closest('.row').next().find('.choose').removeClass('active');
            $this.closest('.row').next().find('.choose:nth-child('+checklistIdx+')').addClass('active');
        },

        // 수량
        optionEa: function(target, state, type){
            event.preventDefault();

            var $btn = $(target),
                type = type || '',
                eaVal = parseInt($btn.siblings('input').val()),
                limitMin = parseInt($btn.siblings('input').attr('data-min')),
                limitMax = parseInt($btn.siblings('input').attr('data-max'));

            switch (state) {
                case 'up' :
                    if (eaVal < limitMax) {
                        eaVal++;
                        $btn.siblings('input').val(eaVal+type);
                    }
                break;

                case 'down' :
                    if (eaVal > limitMin) {
                        eaVal--;
                        $btn.siblings('input').val(eaVal+type);
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

        // 수량 인풋
        optionEaFocus: function(target){
            var $input = $(target),
                inputVal = $input.val();

            $input.val(inputVal.replace(/[^0-9]/g, ''));
        },

        // 수량 인풋
        optionEaBlur: function(target, type){
            var $input = $(target),
                initValue = $input.attr('data-init-value'),
                inputVal = $input.val().replace(/[^0-9]/g, ''),
                type = type || '';

            if (inputVal === '') {
                $input.val(initValue);
            } else {
                $input.val(inputVal+type);
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

        // 목록 필터 위치
        listFilterOffset: function(){
            $('#gnb .depth2 > li > .filter-area').each(function(){
                var depth2FilterTop = $(this).closest('li').offset().top;
                $(this).css({'top':depth2FilterTop});
            });
            $('#gnb .depth3').each(function(){
                var depth3Top = $(this).closest('li').offset().top;
                $(this).css({'top':depth3Top});
                $(this).children().css({'max-height':$(window).height()-depth3Top})
            });
            $('#gnb .depth3 li > .filter-area').each(function(){
                var depth3FilterTop = $(this).closest('li').offset().top;

                $(this).css({'bottom':'auto', 'top':depth3FilterTop})
            });
        },

        // 나만의데이터 건축인허가 상세열기
        dataInfo: function(getThis){
            var $this = $(getThis);

            $this.toggleClass('active');
            $this.closest('tr').next('tr').toggleClass('active');
        },

        // 채팅 목록 우클릭
        chatContextmenu: function(getThis){
            event.preventDefault();

            var $this = $(getThis);
            $('.chat-context').removeClass('active');
            $('.img-context').removeClass('active');
            $this.closest('li').find('.chat-context').addClass('active');
        },

        // 채팅 목록 이미지 우클릭
        imgContextmenu: function(getThis){
            event.preventDefault();

            var $this = $(getThis);
            $('.chat-context').removeClass('active');
            $('.img-context').removeClass('active');
            $this.closest('li').find('.img-context').addClass('active');
        },

        // 채팅 입력 줄바꿈
        chatBrake: function(getThis){
            var $this = $(getThis);
            var scrollHeight = $this.closest('.contents').height()-$this.closest('.write-area').outerHeight();

            if (event.keyCode === 13) {
                if (event.shiftKey) {
                    event.enterKey;
                } else {
                    event.preventDefault();
                }
            }

            $this.css({'height':'40px'}).css({'height':$this.prop('scrollHeight')});
            $this.closest('.write-area').siblings('.scrollbar').css({'height':scrollHeight});
            $this.closest('.write-area').siblings('.scrollbar').children().scrollTop(scrollHeight);
        },

        // 마이페이지 광고관리 위치 토글
        adOffsetMenuToggle: function(getThis){
            var $this = $(getThis)

            $this.parent('li').toggleClass('active');
        },

        adOffsetMenuHover: function(getThis, getImgName){
            var $this = $(getThis),
                $img = $this.closest('.menu').siblings('.example-area').find('.img img'),
                imgName = getImgName;

            $img.attr('src', function(){ return this.src.replace(/ad_offset_.*\.jpg/g, 'ad_offset_'+imgName+'.jpg' ); } );
        },

        //마이페이지 > 활동관리 > 매물관리 단위 값 여백 조정
        pdUnit: function(){
            var unit = [].slice.call(document.querySelectorAll('.unit'));
            unit.forEach(function(e) {
                e.parentNode.childNodes[0].style.cssText = 'padding-right:' + e.offsetWidth + 'px';
            });
        },

        // 검색어 삭제
        inputWordDel: function(getThis, getTarget){
            var eventType = event.type,
                $input = $(getThis),
                $btn = $(getTarget);

            if (eventType === 'keyup' || eventType === 'focus') {
                if ($input.val() !== '') {
                    $btn.addClass('active');
                } else {
                    $btn.removeClass('active');
                }
            } else if (eventType === 'blur') {
                setTimeout(function(){
                    $btn.removeClass('active');
                }, 150);
            }
        },

        // 사전
        dictionary: function(getThis, getPopup){
            var eventType = event.type,
                $word = $(getThis),
                $dictionary = $(getPopup),
                wordLeft = $word.offset().left,
                wordTop = $word.offset().top+30;

            $dictionary.css({'top':wordTop, 'left':wordLeft});

            if (eventType === 'mouseover') {
            fn.popupOpen(getPopup)
        } else if (eventType === 'mouseout') {
                fn.popupClose(getPopup)
            }
        }
    }
})();
