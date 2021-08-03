/**
* --------------------------------
* Main JS
* --------------------------------
*/
var mainPopupSwiper = new Swiper('.main-popup .swiper-container', {
    loop: true,
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
});

var userAgent, ieReg, ie;
userAgent = window.navigator.userAgent;
ieReg = /msie|Trident.*rv[ :]*11\./gi;
ie = ieReg.test(userAgent);

if(ie) {
  $(".visual-area .swiper-slide").each(function () {
    var $container = $(this),
        imgUrl = $container.find("img").prop("src");
        $container.find("img").hide();
    if (imgUrl) {
      $container.css("backgroundImage", 'url(' + imgUrl + ')').addClass("custom-object-fit");
    }
  });
}

var visualSwiper = new Swiper('.visual-area .swiper-container', {
    simulateTouch: false,
    autoplay: true,
    loop: true,
    navigation: {
        nextEl: '.visual-area .indicator .swiper-button-next',
        prevEl: '.visual-area .indicator .swiper-button-prev'
    }
});

window.addEventListener('scroll', function(){
    var scrollTop = document.body.scrollTop||document.documentElement.scrollTop;
    var contributeNumbers = document.querySelectorAll('.contribute-area .number span');

    Array.prototype.forEach.call(contributeNumbers,function(item,index){
        if (scrollTop >= 1200 && !item.classList.contains('active')) {
            item.classList.add('active');

            var period = new CountUp("period", 0, 80);
            var education = new CountUp("education", 0, 9345);
            var research = new CountUp("research", 0, 527);
            var scholarship = new CountUp("scholarship", 0, 129);

            period.start();
            education.start();
            research.start();
            scholarship.start();
        }
    });
});

var reviewSwiper = new Swiper('.review-area .swiper-container', {
    simulateTouch: false,
    loop: true,
    slidesPerView: 'auto',
    spaceBetween: 40,
    navigation: {
        nextEl: '.review-area .indicator .swiper-button-next',
        prevEl: '.review-area .indicator .swiper-button-prev'
    }
});

var newsSwiper = new Swiper('.news-area .swiper-container', {
    simulateTouch: false,
    autoplay: true,
    loop: true,
    direction: 'vertical',
    slidesPerView: 'auto',
});
