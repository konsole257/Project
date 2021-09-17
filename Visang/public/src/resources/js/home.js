/**
* --------------------------------
* Home JS
* --------------------------------
*/
// const prefersDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: Dark)').matches

window.addEventListener('load', () => {
        setTimeout(function(){
            $('.card_set').removeClass('rotate');
        }, 500);

        let $card = document.querySelectorAll('.card_set');

        let
        flick = false,
        startX,
        startY,
        moveX,
        moveY,
        endX,
        endY,
        direction;

        Array.prototype.forEach.call($card, (item) => {
            item.addEventListener('touchstart', (e) => {
                flick = true;
                startX = e.changedTouches[0].pageX;
                startY = e.changedTouches[0].pageY;
            });

            item.addEventListener('touchmove', (e) => {
                if (flick === true) {
                    // moveX = e.changedTouches[0].pageX;
                    // moveY = e.changedTouches[0].pageY;
                    //
                    // if (startY-moveY > 0) {
                    //     direction = 'up';
                    // } else if (startY-moveY < 0) {
                    //     direction = 'down';
                    // }
                    //
                    // switch (direction) {
                    //     case 'up':
                    //         if (item.classList.contains('rotate')) {
                    //             item.classList.remove('rotate');
                    //         }
                    //     break;
                    //
                    //     case 'down':
                    //         if (!item.classList.contains('rotate')) {
                    //             item.classList.add('rotate');
                    //         }
                    //     break;
                    // }
                }
            });

            item.addEventListener('touchend', (e) => {
                if (flick === true) {
                    endX = e.changedTouches[0].pageX;
                    endY = e.changedTouches[0].pageY;

                    if (startX-endX > 0) {
                        direction = 'left';
                    } else if (startX-endX < 0) {
                        direction = 'right';
                    }

                    if (startY-endY > 0) {
                        direction = 'up';
                    } else if (startY-endY < 0) {
                        direction = 'down';
                    }

                    switch (direction) {
                        case 'up':
                            if (item.classList.contains('rotate')) {
                                item.classList.remove('rotate');
                            }
                        break;

                        case 'down':
                            if (!item.classList.contains('rotate')) {
                                item.classList.add('rotate');
                            }
                        break;
                    }

                    flick = false;
                }
            });
        });

        var swiper = new Swiper(".swiper", {
            speed: 600,
            // autoplay: {
            //     delay: 2500,
            // },
            // freeMode: true,
            slidesPerView: "auto",
            centeredSlides: true,
            spaceBetween: 16,
            // loop: true,
            slidesOffsetBefore: -132,
            initialSlide: 5,
            on: {
                slideChangeTransitionEnd: function(){
                    $('.card_set').removeClass('rotate');
                }
            }

        });
    });
