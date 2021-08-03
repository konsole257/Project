/**
* --------------------------------
* Main JS
* --------------------------------
*/

var userAgent, ieReg, ie;
userAgent = window.navigator.userAgent;
ieReg = /msie|Trident.*rv[ :]*11\./gi;
ie = ieReg.test(userAgent);

if(ie) {
  $(".visual-area .swiper-slide").each(function () {
    var $container = $(this),
        txtUrl = $container.find(".txt").prop("src");
        imgUrl = $container.find(".img").prop("src");
        $container.find("img.txt").wrap('<div class="txt"></div>');
        $container.find("img.img").wrap('<div class="img"></div>');
        $container.find("img").hide();
    // if (imgUrl) {
        $container.children('div.txt').css("backgroundImage", 'url(' + txtUrl + ')').addClass("custom-object-fit");
        $container.children('div.img').css("backgroundImage", 'url(' + imgUrl + ')').addClass("custom-object-fit");
    // }
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

            var research = new CountUp("research", 0, 49);
            var book = new CountUp("book", 0, 26);
            var scholarship = new CountUp("scholarship", 0, 25);

            research.start();
            book.start();
            scholarship.start();
        }
    })
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
