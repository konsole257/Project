/**
* --------------------------------
* jessicar JS
* --------------------------------
*/

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

// $(document).ready(function(){
//     $('select').selectmenu();
// });

$(document).on('click', '.tooltip .btn-tooltip', function(){
    fn.tooltip($(this).parent())
});

$(document).on('click', '.tab-menu a.menu', function(e){
	fn.tabMenu(e, this);
});

$(window).bind("touchstart",function(){
    if ($('.tooltip').hasClass('active')) {
        $('.tooltip').removeClass('active');
    }
});

$(window).bind("touchmove",function(){
    $('input').blur();
});

$(document).ready(function(){
    fn.grade('.grade-area input[type="radio"]:checked');
}).on('click', '.grade-area input[type="radio"]', function(e){
	fn.grade(this);
});

var rangeReset = function() {
    event.preventDefault();
    $('.popup-filter form')[0].reset();

    $('.price-area .slider-range').slider('values', [0, price.length-1]);
    $('.price-area .price-min').val(price[0]);
    $('.price-area .price-max').val(price[price.length-1]);

    $('.distance-area .slider-range').slider('values', [0, distance.length-1]);
    $('.distance-area .distance-min').val(distance[0]);
    $('.distance-area .distance-max').val(distance[distance.length-1]);

    $('.year-area .slider-range').slider('values', [0, year.length-1]);
    $('.year-area .year-min').val(year[0]);
    $('.year-area .year-max').val(year[year.length-1]);
};

var price = [
        '0원', '100만원', '200만원', '300만원', '400만원', '500만원', '600만원', '700만원', '800만원', '900만원',
        '1000만원', '2000만원', '3000만원', '4000만원', '5000만원', '6000만원', '7000만원', '8000만원', '9000만원',
        '1억원', '2억원', '3억원', '4억원', '5억원'
    ];

var distance = [
        '0km', '10000km', '20000km', '30000km', '40000km', '50000km', '60000km', '70000km', '80000km', '90000km', '100000km',
        '150000km', '200000km', '250000km', '300000km', '350000km', '400000km', '450000km', '500000km 이상'
    ];

var year = [
        '1980년', '1990년', '2000년', '2010년', '2020년', '현재'
    ];

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
