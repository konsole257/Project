/**
* --------------------------------
* Function JS
* --------------------------------
*/

var fn = (function() {
    'use strict';

    return {

        // addClass active
        addActive: function(getTarget){
            var $target = document.querySelectorAll(getTarget);

            Array.prototype.forEach.call($target, function(item){
                item.classList.add('active');
            });
            event.preventDefault();
        },

        // removeClass active
        removeActive: function(getTarget){
            var $target = document.querySelectorAll(getTarget);

            Array.prototype.forEach.call($target, function(item){
                item.classList.remove('active');
            });
            event.preventDefault();
        },

        // toggleClass active
        toggleActive: function(getTarget){
            var $target = document.querySelectorAll(getTarget);

            Array.prototype.forEach.call($target, function(item){
                item.classList.toggle('active');
            });
            event.preventDefault();
        },

        // form caution
        caution: function(getState, getTarget, getTxt){
            var state = getState,
                $target = document.querySelector(getTarget),
                txt = document.createTextNode(getTxt);

            switch(state) {
                case 'add' :
                    var $caution = document.createElement('div');
                        $caution.classList.add('caution');
                        $caution.appendChild(txt);

                    if (!$target.lastChild.isEqualNode($caution)) {
                        $target.appendChild($caution);
                    }
                break;

                case 'remove' :
                    var $caution = document.querySelector('.caution');

                    if ($(getTarget).find($caution).length > 0) {
                        $target.removeChild($caution);
                    }
                break;
            }
        },

        confirmTimer: function(getTime, callback){
            var time = getTime;

            var minute = Number(time.split(':')[0]),
                second = Number(time.split(':')[1]),
                second = minute*60+(second-1);

                time = function(){
                    if (second%3600%60 < 10) {
                        return ['0',parseInt(second%3600/60), ':0', second%3600%60].join('');
                    }else{
                        return ['0',parseInt(second%3600/60), ':', second%3600%60].join('');
                    }
                }

            var $target = document.querySelector('.confirm > span');

            if (!document.querySelector('.timer')) {
                var $timer = document.createElement('span');

                    $timer.classList.add('timer');
                    $timer.innerText = time();

                    $target.appendChild($timer);

                    var timeInterval = setInterval(function(){
                        if (second > 0) {
                            second--;
                            $timer.innerText = time();
                        } else {
                            clearInterval(timeInterval);
                            $('.timer').remove();
                            callback();
                        }
                    }, 1000);
            }
        },

        // 팝업 열기
        popupOpen : function(target){


            if (typeof target === 'object') {
                event.preventDefault();
                target = target.attributes.href.value;
            }

            var $popup = $(target);

            $popup.addClass('active').attr({'tabindex':'0'});

            $(':focus').attr('data-focus', true);

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
            var $popup = $('[class^="popup"]');

            if (target) {
                $popup = $(target).closest('[class*="popup"]');
                $popup.removeClass('active');
            } else {
                $popup.removeClass('active').removeAttr('tabindex');

                $('[data-focus]').focus().removeAttr('data-focus');
            }

            if (callback) {
                setTimeout(function(){
                    callback();
                }, 400);
            }
        },

        tooltip: function(getThis){
            var $this = $(getThis),
                $tooltip = $this.parent();

            $tooltip.toggleClass('active');
        },

        // 파일업로드 버튼
        fileBtn: function(getTarget){
            var $btn = $(getTarget);

            $btn.siblings('input[type="file"]').focus().trigger('click');
        },

        // 파일업로드
        file: function(getThis){
            var $file = $(getThis);

            $file.each(function(){
                var $this = $(this),
                    name = $this[0].files[0].name;

                $this.siblings('[type="text"]').val(name);
                $(this).closest('.file').append('<button type="button" class="btn-mute btn-cancel" onclick="fn.fileCancel(this);">삭제</button>');
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
        },

        // 파일취소
        fileCancel: function(getThis){
            var $btn = $(getThis);

            $btn.siblings('input').val('');
            $btn.remove();
        },

        //
        numberMaxLength: function(getNumberLen){
            var numberLen = getNumberLen;
            if(numberLen.value.length > numberLen.maxLength){
                numberLen.value = numberLen.value.slice(0, numberLen.maxLength);
            }
        },

        //
        addCommas: function(getTarget) {
            var $target = $(getTarget);
            var targetVal = $target.val();
                targetVal = targetVal.replace(/,/g,'');
            $target.val(targetVal.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
        },

        tabMenu: function(e, getThis){
            var $this = $(getThis),
                objHref = getThis.attributes.href.value,
                $tabContents = $(objHref);

            if (objHref.indexOf('#') != -1) {
                e.preventDefault();

                $this.siblings('a').removeClass('active');
                $this.addClass('active');

                $(objHref).siblings('.tab-contents').removeClass('active');
                $tabContents.addClass('active');
            }
        },

        //
        // active: function(getTarget){
        //     var $target = $(getTarget);
        //
        //     $target.addClass('active');
        // },
        //
        // inactive: function(getTarget){
        //     var $target = $(getTarget);
        //
        //     $target.removeClass('active');
        // },
        //
        // toggleActive: function(){
        //     var $target = $(getTarget);
        //
        //     $target.toggleClass('active');
        // },
        //
        // fold: function(getThis){
        //     var $this = $(getThis);
        //
        //     $this.closest('.fold').toggleClass('active');
        // },
        //

        //
        // anchorMenu: function(e, getThis){
        //     var $this = $(getThis);
        //
        //     $this.siblings('a').removeClass('active');
        //     $this.addClass('active');
        // },
        //
        // grade: function(getThis){
        //     var $this = $(getThis);
        //
        //     $this.closest('label').prevAll().find('input[type="radio"]').addClass('active');
        //     $this.closest('label').nextAll().find('input[type="radio"]').removeClass('active');
        // },
        //

        //
        // pdf: function(getFile){
        //     // If absolute URL from the remote server is provided, configure the CORS
        //     // header on that server.
        //     var url = getFile;
        //
        //     // Loaded via <script> tag, create shortcut to access PDF.js exports.
        //     var pdfjsLib = window['pdfjs-dist/build/pdf'];
        //
        //     // The workerSrc property shall be specified.
        //     pdfjsLib.GlobalWorkerOptions.workerSrc = '//mozilla.github.io/pdf.js/build/pdf.worker.js';
        //
        //     // Asynchronous download of PDF
        //     var loadingTask = pdfjsLib.getDocument(url);
        //     loadingTask.promise.then(function(pdf) {
        //       console.log('PDF loaded');
        //
        //       // Fetch the first page
        //       var pageNumber = 1;
        //       pdf.getPage(pageNumber).then(function(page) {
        //         console.log('Page loaded');
        //
        //         var scale = 1.5;
        //         var viewport = page.getViewport({scale: scale});
        //
        //         // Prepare canvas using PDF page dimensions
        //         var canvas = document.querySelector('.pdf-canvas');
        //         var context = canvas.getContext('2d');
        //         canvas.height = viewport.height;
        //         canvas.width = viewport.width;
        //
        //         // Render PDF page into canvas context
        //         var renderContext = {
        //           canvasContext: context,
        //           viewport: viewport
        //         };
        //         var renderTask = page.render(renderContext);
        //         renderTask.promise.then(function () {
        //           console.log('Page rendered');
        //         });
        //       });
        //     }, function (reason) {
        //       // PDF loading error
        //       console.error(reason);
        //     });
        // },
        //
        // // 파일업로드 미리보기
        // filePreview: function(getfile){
        //     var $file = $(getfile);
        //
        //     if ($file[0].files[0].type.match(/image\//)) {
        //         var reader = new FileReader();
        //
        //         reader.onload = function(e){
        //             var src = e.target.result,
        //                 fileIdx = $file.index();
        //
        //             if (!$file.siblings('.preview-area').length){
        //                 $file.parent().append('<div class="preview-area"></div>');
        //                 $file.siblings('.preview-area').append('<div class="preview" onclick="fn.filePreviewRemove(this)" data-index="'+fileIdx+'"><img src="'+src+'" alt="" class="img"></div>');
        //             } else {
        //                 $file.siblings('.preview-area').append('<div class="preview" onclick="fn.filePreviewRemove(this)" data-index="'+fileIdx+'"><img src="'+src+'" alt="" class="img"></div>');
        //             }
        //
        //             $file.attr({'data-index':fileIdx});
        //         }
        //
        //         reader.readAsDataURL($file[0].files[0]);
        //     }
        // },
        //
        // // 파일업로드 버튼
        // filePreviewBtn: function(target){
        //     var $btn = $(target);
        //
        //     $btn.siblings('input').each(function(){
        //         if (!$(this).attr('data-index')){
        //             $(this).trigger('click');
        //             return false;
        //         }
        //     });
        // },
        //
        // // 파일업로드 미리보기 삭제
        // filePreviewRemove: function(target){
        //     var $btnDel = $(target),
        //         btnDelIdx = Number($btnDel.attr('data-index'));
        //
        //     $btnDel.closest('.preview-area').siblings('input').each(function(){
        //         if ($(this).index() == btnDelIdx) {
        //             $btnDel.closest('.preview-area').siblings('input[data-index="'+btnDelIdx+'"]').val('').removeAttr('data-index');
        //         }
        //     });
        //
        //     $btnDel.remove();
        // },
        //
        // // 전부체크
        // allCheck: function(target){
        //     if ($(target).attr('data-name') === 'all') {
        //         var $allCheck = $(target);
        //
        //         if ($allCheck.is(':checked')) {
        //             $('[type="checkbox"][data-name="check"]').prop('checked', true);
        //         } else {
        //             $('[type="checkbox"][data-name="check"]').prop('checked', false);
        //         }
        //     }
        //
        //     var checkLen = $('[type="checkbox"][data-name="check"]').length,
        //         checkCnt = $('[type="checkbox"][data-name="check"]:checked').length;
        //
        //     if (checkLen === checkCnt) {
        //         $('[type="checkbox"][data-name="all"]').prop('checked', true);
        //     } else {
        //         $('[type="checkbox"][data-name="all"]').prop('checked', false);
        //     }
        // },
    }
})();
