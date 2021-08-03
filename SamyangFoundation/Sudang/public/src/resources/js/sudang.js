/**
* --------------------------------
* Sudang JS
* --------------------------------
*/

window.addEventListener('scroll', function(){
    sticky();
});

var header = document.querySelector('#header'),
    headerTop = header.offsetTop;

function sticky() {
    var scrollLeft = document.body.scrollLeft||document.documentElement.scrollLeft;

    if (window.pageYOffset > headerTop) {
        header.classList.add('sticky');
        header.style.left = '-'+scrollLeft+'px';
    } else {
        header.classList.remove('sticky');
    }
}

if (window.matchMedia("(min-width: 1025px)").matches) {
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

    $('#header > .inner .menu-list-area .menu-list > li > a').click(function(e) {
        if ($(this).siblings('ul').find('a').length > 0) {
            e.preventDefault();

            $('#header > .inner .menu-list-area .menu-list > li').removeClass('active');
            $(this).parent().addClass('active');
        }
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

//
var pathMenu = document.querySelectorAll('.path .menu');
Array.prototype.forEach.call(pathMenu, function(item){
    item.addEventListener('click', function(){
        if (this.getAttribute('class').indexOf('active') === -1) {
            if (this.previousElementSibling) {
                this.previousElementSibling.classList.remove('active');

                if (this.previousElementSibling.previousElementSibling) {
                    this.previousElementSibling.previousElementSibling.classList.remove('active');
                }
            }

            if (this.nextElementSibling) {
                this.nextElementSibling.classList.remove('active');

                if (this.nextElementSibling.nextElementSibling) {
                    this.nextElementSibling.nextElementSibling.classList.remove('active');
                }
            }

            this.classList.add('active');
        } else {
            this.classList.remove('active');
        }
    });
});
document.addEventListener('click', function(){
    if (event.target.className !== 'menu-txt') {
        var pahtMenuLen = 0;

        for (pahtMenuLen; pahtMenuLen<pathMenu.length; pahtMenuLen++) {
            pathMenu[pahtMenuLen].classList.remove('active')
        }
    }
});
