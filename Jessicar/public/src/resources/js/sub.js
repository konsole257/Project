/**
* --------------------------------
* Sub JS
* --------------------------------
*/

var path1 = $('#contents').attr('class');

switch (path1) {
    case 'search' :
        var dialMenuSwiper = new Swiper('.dial-menu .swiper-container', {
            slidesPerView: 'auto',
            spaceBetween: 10,
        });

        $(document).on('click', '.dial-menu .menu', function(e){
            fn.anchorMenu(e, this);
        });


        $('.popup-search input').on('propertychange change keyup paste input', function(){
            setTimeout(function(){
                if ($('.popup-search input').val() === '') {
                    $('.lately-area').addClass('active');
                    $('.autocompleate-area').removeClass('active');
                } else {
                    $('.lately-area').removeClass('active');
                    $('.autocompleate-area').addClass('active');
                }
            }, 0);
        });
    break;

    case 'bookmark' :
        $('select').selectmenu({
            open: function(e, ui){
                $('.ui-selectmenu-menu').css({'left':'auto', 'right':'14px', 'width':'112px'});
                $('.ui-menu').css({'width':'100%'});
            },
            change: function (event, ui) {
                $(this).change()
            }
        });
    break;

    case 'list' :
        var filterSwiper = new Swiper('.filter-area .swiper-container', {
            slidesPerView: 'auto',
            spaceBetween: 8,
        });

        $('select').selectmenu({
            open: function(e, ui){
                $('.ui-selectmenu-menu').css({'left':'auto', 'right':'14px', 'width':'112px'});
                $('.ui-menu').css({'width':'100%'});
            },
            change: function (event, ui) {
                $(this).change()
            }
        });
    break;

    case 'view' :
        // var viewSwiper = new Swiper('.view .pic-area .swiper-container', {
        //     slidesPerView: 'auto',
        //     pagination: {
        //         el: '.view .pic-area .swiper-pagination',
        //         type: 'fraction',
        //     },
        // });

        var picSwiper = new Swiper('.popup-image .pic-area .swiper-container', {
            pagination: {
                el: '.popup-image .pic-area .swiper-pagination',
                type: 'fraction',
            },
        });

        $('.thumb-list li').click(function(){
            var idx = $(this).index();
            picSwiper.slideTo(idx);
        });

        var repairSwiper = new Swiper('.popup-repair .repair .swiper-container', {
            spaceBetween: 20,
            navigation: {
                nextEl: '.popup-repair .repair .swiper-button-next',
                prevEl: '.popup-repair .repair .swiper-button-prev',
            },
        });
    break;

    case 'dealer' :
        var reviewSwiper = new Swiper('.popup-reviewimage .pic-area .swiper-container', {
            pagination: {
                el: '.popup-reviewimage .pic-area .swiper-pagination',
                type: 'fraction',
            },
        });

        $('.thumb-list li').click(function(){
            var idx = $(this).index();
            reviewSwiper.slideTo(idx);
        });
    break;

    case 'qna-write' :
        $('.write-area').scroll(function(){
            $('select').selectmenu('close');
        });
        $('select').selectmenu({
            open: function(e, ui){
                $('.ui-menu-item-wrapper').css({'text-align':'left', 'padding-left':'14px'});
            },
            change: function (event, ui) {
                $(this).change()
            }
        });
    break;

    case 'join' :
        $(document).on('change', '[type="checkbox"]', function(e){
            fn.allCheck(this);
        });
    break;
}
