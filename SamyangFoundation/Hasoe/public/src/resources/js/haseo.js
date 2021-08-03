/**
* --------------------------------
* Yangyoung JS
* --------------------------------
*/

// header sticky
function headerSticky() {
    var scrollLeft = document.body.scrollLeft||document.documentElement.scrollLeft;

    header.style.left = '-'+scrollLeft+'px';
}

window.addEventListener('scroll', function(){
    headerSticky();
});

if (window.matchMedia("(min-width: 1024px)").matches) {
    var menuListArea = document.querySelector('.menu-list-area');

    menuListArea.addEventListener('mouseenter', function(){
        document.querySelector('#header').classList.add('active');
    });

    menuListArea.addEventListener('mouseleave', function(){
        document.querySelector('#header').classList.remove('active');
    });
} else {
    var btnMenuOpen = document.querySelector('.btn-menu-open'),
        btnMenuClose = document.querySelector('.btn-menu-close');

    btnMenuOpen.addEventListener('click', function(){
        document.querySelector('#header').classList.add('active');
    });

    btnMenuClose.addEventListener('click', function(){
        document.querySelector('#header').classList.remove('active');
    });

    $('#header > .inner .menu-list-area .menu-list > li > a').click(function(e){
        e.preventDefault();

        $('#header > .inner .menu-list-area .menu-list > li').removeClass('active');
        $(this).parent().addClass('active');
    });
}

// input number 숫자만
var $inputNumer = document.querySelectorAll('input[pattern]');
Array.prototype.forEach.call($inputNumer, function(item){
    item.setAttribute('onkeypress', 'return (event.charCode == 8 || event.charCode == 0 || event.charCode == 13) ? null : event.charCode >= 48 && event.charCode <= 57')
});

//
$('.datepicker input').datepicker({
    changeYear: true,
    changeMonth: true,
    dateFormat: "yy.mm.dd",
    yearRange: "1940:2030",
    monthNamesShort:
        [ "1", "2", "3", "4", "5", "6",
        "7", "8", "9", "10", "11", "12" ],
    showMonthAfterYear:true
});

//
$(document).on('click', '.tab-menu a', function(e){
	fn.tabMenu(e, this);
});

//
$(document).ready(function(e){
    $('.file').each(function(){
        if ($(this).find('input[type="text"]').val()) {
            $(this).append('<button type="button" class="btn-mute btn-cancel" onclick="fn.fileCancel(this);">삭제</button>');
        }
    });
});


// var a = document.querySelectorAll('a');
// Array.prototype.forEach.call(a,function(item){
//     item.addEventListener('click', function(e){
//         if (item.href.indexOf('#') !== -1) {
//             e.preventDefault();
//         }
//     });
// });


// var didScroll;
// var lastScrollTop = 0;
// var delta = 0;
// var navbarHeight = $('#toolbar').outerHeight();
//
// window.addEventListener('scroll', function(){
//     didScroll = true;
// });
//
// setInterval(function() {
//     if (didScroll) {
//         hasScrolled();
//         didScroll = false;
//     }
// }, 0);
// function hasScrolled() {
//     var scrollTop = $(this).scrollTop();
//
//     if (Math.abs(lastScrollTop - scrollTop) <= delta) return;
//
//     if (scrollTop > lastScrollTop && scrollTop > navbarHeight){
//         // Scroll Down
//         $('#toolbar').addClass('hide');
//     } else {
//         // Scroll Up
//         if(scrollTop + $(window).height() < $(document).height()) {
//             $('#toolbar').removeClass('hide');
//         }
//     }
//     lastScrollTop = scrollTop;
// }
//
// $(document).on('click', '.tooltip .btn-tooltip', function(){
//     fn.tooltip($(this).parent())
// });
//

//
// $(window).bind("touchstart",function(){
//     if ($('.tooltip').hasClass('active')) {
//         $('.tooltip').removeClass('active');
//     }
// });
//
// $(window).bind("touchmove",function(){
//     $('input').blur();
// });
//
// $(document).ready(function(){
//     fn.grade('.grade-area input[type="radio"]:checked');
// }).on('click', '.grade-area input[type="radio"]', function(e){
// 	fn.grade(this);
// });
//
// var rangeReset = function() {
//     event.preventDefault();
//     $('.popup-filter form')[0].reset();
//
//     $('.price-area .slider-range').slider('values', [0, price.length-1]);
//     $('.price-area .price-min').val(price[0]);
//     $('.price-area .price-max').val(price[price.length-1]);
//
//     $('.distance-area .slider-range').slider('values', [0, distance.length-1]);
//     $('.distance-area .distance-min').val(distance[0]);
//     $('.distance-area .distance-max').val(distance[distance.length-1]);
//
//     $('.year-area .slider-range').slider('values', [0, year.length-1]);
//     $('.year-area .year-min').val(year[0]);
//     $('.year-area .year-max').val(year[year.length-1]);
// };
//
// var price = [
//         '0원', '100만원', '200만원', '300만원', '400만원', '500만원', '600만원', '700만원', '800만원', '900만원',
//         '1000만원', '2000만원', '3000만원', '4000만원', '5000만원', '6000만원', '7000만원', '8000만원', '9000만원',
//         '1억원', '2억원', '3억원', '4억원', '5억원'
//     ];
//
// var distance = [
//         '0km', '10000km', '20000km', '30000km', '40000km', '50000km', '60000km', '70000km', '80000km', '90000km', '100000km',
//         '150000km', '200000km', '250000km', '300000km', '350000km', '400000km', '450000km', '500000km 이상'
//     ];
//
// var year = [
//         '1980년', '1990년', '2000년', '2010년', '2020년', '현재'
//     ];
//
// $(document).ready(function(){
//     $('.popup-filter .price-area .slider-range').slider({
//         range: true,
//         min: 0,
//         max: price.length-1,
//         values: [0, price.length-1],
//         create: function(event, ui) {
//             $('.popup-filter .price-area .price-min').val(price[0]);
//             $('.popup-filter .price-area .price-max').val(price[price.length-1]);
//         },
//         slide: function(event, ui) {
//             var min = ui.values[0],
//                 max = ui.values[1];
//
//             $('.popup-filter .price-area .price-min').val(price[min]);
//             $('.popup-filter .price-area .price-max').val(price[max]);
//         }
//     });
//
//     $('.popup-filter .distance-area .slider-range').slider({
//         range: true,
//         min: 0,
//         max: distance.length-1,
//         values: [0, distance.length-1],
//         create: function(event, ui) {
//             $('.popup-filter .distance-area .distance-min').val(distance[0]);
//             $('.popup-filter .distance-area .distance-max').val(distance[distance.length-1]);
//         },
//         slide: function(event, ui) {
//             var min = ui.values[0],
//                 max = ui.values[1];
//
//             $('.popup-filter .distance-area .distance-min').val(distance[min]);
//             $('.popup-filter .distance-area .distance-max').val(distance[max]);
//         }
//     });
//
//     $('.popup-filter .year-area .slider-range').slider({
//         range: true,
//         min: 0,
//         max: year.length-1,
//         values: [0, year.length-1],
//         create: function(event, ui) {
//             $('.popup-filter .year-area .year-min').val(year[0]);
//             $('.popup-filter .year-area .year-max').val(year[year.length-1]);
//         },
//         slide: function(event, ui) {
//             var min = ui.values[0],
//                 max = ui.values[1];
//
//             $('.popup-filter .year-area .year-min').val(year[min]);
//             $('.popup-filter .year-area .year-max').val(year[max]);
//         }
//     });
// });
