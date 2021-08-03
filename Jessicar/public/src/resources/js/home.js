/**
* --------------------------------
* Home JS
* --------------------------------
*/

var visualSwiper = new Swiper('#contents > .visual-area .swiper-container', {
    autoplay: true,
    loop: true,
    pagination: {
        el: '#contents > .visual-area .swiper-pagination',
        type: 'fraction',
    },
});
$('#contents > .visual-area .btn-toggle').click(function(){
    if (visualSwiper.autoplay.running) {
        visualSwiper.autoplay.stop();
    } else {
        visualSwiper.autoplay.start();
    }
});


var specialSwiper = new Swiper('#contents > .special-area .swiper-container', {
    pagination: {
        el: '#contents > .special-area .swiper-pagination',
    },
});

var noticeSwiper = new Swiper('#contents > .notice-area .swiper-container', {
    direction: 'vertical',
    autoplay: true,
    slidesPerView: 1,
    loop: true,
});

var eventSwiper = new Swiper('#contents > .event-area .swiper-container', {
    pagination: {
        el: '#contents > .event-area .swiper-pagination',
    },
});

var newSwiper = new Swiper('.new-area .swiper-container', {
    spaceBetween: 14,
    pagination: {
        el: '#contents > .new-area .swiper-pagination',
    },
});

var reviewSwiper = new Swiper('#contents > .review-area .swiper-container', {
    spaceBetween: 14,
    pagination: {
        el: '#contents > .review-area .swiper-pagination',
    },
});

var dealerSwiper = new Swiper('#contents > .dealer-area .swiper-container', {
    slidesPerView: 'auto',
    loop: true,
    spaceBetween: 44,
    centeredSlides:true,
    effect: 'coverflow',
    coverflowEffect: {
        rotate: 0,
        stretch: 0,
        depth: 200,
        modifier: 1,
        slideShadows : false,
      },
    pagination: {
        el: '#contents > .dealer-area .swiper-pagination',
    },
});

var popupReviewSwiper = new Swiper('.popup-review .pic-area .swiper-container', {
});
$('.popup-review .thumb-list li').click(function(){
    var idx = $(this).index();
    popupReviewSwiper.slideTo(idx);
});
