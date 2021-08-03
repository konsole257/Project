/**
* --------------------------------
* FUNCTION JS
* --------------------------------
*/

var fn = (function() {
    'use strict';

    return {
        scroll : function(state){
            switch (state) {
                case 'enabled' :
                    $('html').removeClass('remodal-is-locked');
                break;

                case 'disabled' :
                    $('html').addClass('remodal-is-locked');
                break;
            }
        },

        popupOpen : function(obj){
            if (typeof obj === 'object') {
                obj = obj.attributes.href.value;
            }

            var $obj = $(obj);

            $obj.fadeIn(200);
            $obj.find('.inner').animate({'top':'50%'},300);

            fn.scroll('disabled');
        },

        popupClose : function(callback){
            var $obj = $('[class^="popup"]');

            $obj.find('.inner').animate({'top':'60%'},300);
            $obj.fadeOut(200);

            fn.scroll('enabled');

            if (callback) {
                setTimeout(function(){
                    callback();
                }, 400);
            }
        },

        goodsOptionOpen : function(obj){
            if (typeof obj === 'object') {
                obj = obj.attributes.href.value
            }

            var $obj = $(obj);

            $('[href="#'+$obj.attr("id")+'"]').addClass('on');

            $('.cart_option').hide();
            $obj.show();
        },

        goodsOptionClose : function(){
            var $obj = $('.popup');

            $('.btn_cart').removeClass('on');

            $obj.hide();
        },

        cartOptionOpen : function(obj){
            if (typeof obj === 'object') {
                obj = obj.attributes.href.value
            }

            var $obj = $(obj),
                $btn = $('[href="'+obj+'"]');

            $('.cart_option').hide();
            $('.btn_option').removeClass('open');
            $obj.show();
            $btn.addClass('open');
        },

        cartOptionClose : function(){
            $('.cart_option').hide();
            $('.btn_option').removeClass('open');
        },

        goodsViewShow : function(obj){
            $('.goods_view_area').show();
        },

        goodsViewHide : function(callback){
            $('.goods_view_area').hide();
            $('body').css({'overflow':'auto'});
        },

        // 탭메뉴
        tabMenu : function(e, obj){
            var $obj = $(obj),
                objHref = obj.attributes.href.value;

            if (objHref.indexOf('#') != -1) {
                e.preventDefault();

                $('.tab_menu a').removeClass('on');
    			$obj.addClass('on');

    			$('.tab_contents').removeClass('show');
    			$(objHref).addClass('show');
            }
        },

        // 굿즈 소팅
        goodsSortAdd : function(obj){
            var $obj = $(obj),
                checkType = $obj.attr('name'),
                checkState = $obj.is(':checked'),
                checkId = $obj.attr('id'),
                checkTxt = $obj.next('[for='+checkId+']').text(),
                checkLen = $('input[name='+checkType+']').length-1,
                checkedLen = $('input[name='+checkType+']:checked').length;

            if (checkId.indexOf('all') !== -1) {
                if ($obj.is(':checked')) {
                    $('input[name='+checkType+']:not(:checked)').trigger('click');
                } else {
                    $('input[name='+checkType+']:checked').trigger('click');
                }
            } else {
                var chooseList = '';
                    chooseList += '<button type="button" class='+checkId+' onclick="fn.goodsSortDel(this);">'+checkTxt+'</button>';

                if (checkState) {
                    if (checkType === 'artist' || checkType === 'theme') {
                        $obj.closest('table').parent().find('.choose_area').find('.choose_list [class*='+checkType+']').remove();
                        $obj.closest('table').addClass('checked');
                    }
                    $obj.closest('table').parent().find('.choose_area').children('.choose_list').append(chooseList);

                    if (checkLen === checkedLen) {
                        $('input[name='+checkType+'][id*="all"]').prop('checked', true);
                    }
                } else {
                    $('input[name='+checkType+'][id*="all"]').prop('checked', false);
                    $obj.closest('table').parent().find('.choose_area').find('.choose_list [class*='+checkId+']').remove();
                }
            }
        },

        // 굿즈 소팅 삭제
        goodsSortDel : function(obj){
            var $obj = $(obj),
                checkId = $obj.attr('class'),
                $check = $('input[id='+checkId+']'),
                checkType = $check.attr('name');

            if (checkType === 'artist' || checkType === 'theme' || checkType === 'brand') {
                $obj.remove();
                $check.prop('checked', false);
            } else {
                $check.trigger('click');
            }
        },

        // 굿즈 소팅 리셋
        goodsSortReset : function(){
            $('.choose_area').find('.choose_list button').remove();
        },

        // 굿즈 옵션 추가
        optionAdd : function(obj){
            var $obj = $(obj),
                checkState = $obj.is(':checked'),
                checkId = $obj.attr('id'),
                checkTxt = $obj.next('[for='+checkId+']').text();

            var optionEa = '';
                optionEa += '<li class='+checkId+'>';
                optionEa += '	<span class="option_name">'+checkTxt+'</span>';
                optionEa += '	<div class="ea_area">';
                optionEa += '		<input type="number" title="수량 입력" value="1" readonly>';
                optionEa += '		<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>';
                optionEa += '		<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>';
                optionEa += '	</div>';
                optionEa += '	<span class="price">5,000원</span>';
                optionEa += '	<button type="button" class="btn_del" onclick="fn.optionDel(this);">삭제</button>';
                optionEa += '</li>';

            if (checkState) {
                $obj.closest('.option_area').next('.option_ea_area').children('.option_ea_list').append(optionEa);
            } else {
                $obj.closest('.option_area').next('.option_ea_area').find('.option_ea_list [class='+checkId+']').remove();
            }
        },

        // 굿즈 옵션 삭제
        optionDel : function(obj){
            var $obj = $(obj),
                checkId = $obj.parent().attr('class'),
                $check = $('input[id='+checkId+']');

            $check.trigger('click');
        },

        // 굿즈 옵션 수량 올리기
        optionEaUp : function(obj){
            var $obj = $(obj),
                eaVal = parseInt($obj.siblings('input').val());

            eaVal++;
            $obj.siblings('input').val(eaVal);
        },

        // 굿즈 옵션 수량 내리기
        optionEaDown : function(obj){
            var $obj = $(obj),
                eaVal = parseInt($obj.siblings('input').val());

            if (eaVal > 1) {
                eaVal--;
                $obj.siblings('input').val(eaVal);
            }
        },

        payLoading : function(){
            $('.pay_loading').show();
            setInterval(function(){
                if (!$('.pay_loading .progress .bar').is(':animated')) {
                    if ($('.pay_loading .progress .bar').css('left') !== '560px') {
                        $('.pay_loading .progress .bar').animate({'width':'560px'}, 500, function(){
                            $('.pay_loading .progress .bar').animate({'left':'560px'}, 500);
                        });
                    } else {
                        $('.pay_loading .progress .bar').css({'left':'0', 'width':'0'})
                    }
                }
            }, 0);
        },

		//말줄임 처리
		ellipsis: function(obj) {
			$(obj).each(function() {
				var obj = $(this),
					tempTxt = obj.text(),
					tempTxtArr = tempTxt.split(''),
					tempTxtLen = tempTxt.length,
					ellipsisTxt = '',
					ellipsisTxtLen;

				obj.empty();
				obj.append('<div></div>');

				for (var i = 0; i <= tempTxtLen - 1; i++) {
					if (obj.height() >= obj.children().height()) {
						ellipsisTxt += tempTxtArr[i];
						obj.children().text(ellipsisTxt);
					}
				}

				if (obj.height() < obj.children().height()) {
					ellipsisTxtLen = ellipsisTxt.length;
					ellipsisTxt = ellipsisTxt.substr(0, ellipsisTxtLen - 5);
					ellipsisTxt += '...';
				}

				obj.empty();
				obj.text(ellipsisTxt);
			});
		}


    }
})();
