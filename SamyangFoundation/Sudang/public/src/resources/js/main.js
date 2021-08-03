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

if (window.matchMedia("(min-width: 1025px)").matches) {
    var menuListArea = document.querySelector('.menu-list-area');

    menuListArea.addEventListener('mouseenter', function(){
        if (window.pageYOffset < 347) {
            $('html, body').animate({'scrollTop':'347px'}, 400);
        }
    });
}

// var userAgent, ieReg, ie;
// userAgent = window.navigator.userAgent;
// ieReg = /msie|Trident.*rv[ :]*11\./gi;
// ie = ieReg.test(userAgent);
//
// if(ie) {
//   $(".visual-area .swiper-slide").each(function () {
//     var $container = $(this),
//         imgUrl = $container.find("img").prop("src");
//         $container.find("img").hide();
//     if (imgUrl) {
//       $container.css("backgroundImage", 'url(' + imgUrl + ')').addClass("custom-object-fit");
//     }
//   });
// }

var visualSwiper = new Swiper('.visual-area .swiper-container', {
    autoplay: {
        delay: 6000,
    },
    loop: true,
    effect: 'fade',
    speed: 800,
    pagination: {
        el: '.visual-area .indicator .swiper-pagination',
        clickable: true,
        type: 'bullets',
        renderBullet: function (index, className) {
            return '<span class="' + className + '">' + $(this.slides[index + 1]).children().children('img').attr('alt') + '</span>';
        }
    },
    on: {
        init: function(){
            Array.prototype.forEach.call(this.slides,function(item,index){
                item.children[1].style.backgroundImage = 'url('+item.children[0].children[2].src+')'
                item.children[2].style.backgroundImage = 'url('+item.children[0].children[2].src+')'
                item.children[3].style.backgroundImage = 'url('+item.children[0].children[2].src+')'

                if (window.matchMedia("(min-width: 1025px)").matches) {
                    item.children[1].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/m/', '/pc/')+')'
                    item.children[2].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/m/', '/pc/')+')'
                    item.children[3].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/m/', '/pc/')+')'
                } else {
                    item.children[1].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/pc/', '/m/')+')'
                    item.children[2].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/pc/', '/m/')+')'
                    item.children[3].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/pc/', '/m/')+')'
                }
            });
        },

        resize: function(){
            Array.prototype.forEach.call(this.slides,function(item,index){
                if (window.matchMedia("(min-width: 1025px)").matches) {
                    item.children[1].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/m/', '/pc/')+')'
                    item.children[2].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/m/', '/pc/')+')'
                    item.children[3].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/m/', '/pc/')+')'
                } else {
                    item.children[1].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/pc/', '/m/')+')'
                    item.children[2].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/pc/', '/m/')+')'
                    item.children[3].style.backgroundImage = 'url('+item.children[0].children[2].src.replace('/pc/', '/m/')+')'
                }
            });
        }
    }
});

window.addEventListener('scroll', function(){
    var scrollTop = document.body.scrollTop||document.documentElement.scrollTop;
    var contributeNumbers = document.querySelectorAll('.contribute-area .number span');

    Array.prototype.forEach.call(contributeNumbers,function(item,index){
        if (scrollTop+(window.innerHeight/2) >= $('.contribute-area').offset().top && !item.classList.contains('active')) {
            item.classList.add('active');

            var scholarship = new CountUp("scholarship", 0, 76);
            var research = new CountUp("research", 0, 14);
            var academic = new CountUp("academic", 0, 4);
            var educational = new CountUp("educational", 0, 1);
            var performance = new CountUp("performance", 0, 28);

            scholarship.start();
            research.start();
            academic.start();
            educational.start();
            performance.start();
        }
    })
});

if (window.matchMedia("(max-width: 1024px)").matches) {
    var shortcutSwiper = new Swiper('.shortcut-area .swiper-container', {
        slidesPerView: 'auto',
        spaceBetween: 12,

        pagination: {
            el: '.shortcut-area .indicator .swiper-pagination',
            type: 'progressbar',
          },
    });
}

var newsSwiper = new Swiper('.news-area .swiper-container', {
    simulateTouch: false,
    autoplay: true,
    loop: true,
    direction: 'vertical',
    slidesPerView: 'auto',
});
