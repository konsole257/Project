/**
* --------------------------------
* Sub JS
* --------------------------------
*/

var path1 = document.querySelector('#container').getAttribute('class');
var path2 = document.querySelector('#contents').getAttribute('class');

switch (path1) {
    case 'business' :
        //
        var chkToggle = function(getThis){
            var $this = getThis;

            if ($this.checked) {
                $this.parentNode.parentNode.children[0].setAttribute('disabled', 'true');
            } else {
                $this.parentNode.parentNode.children[0].removeAttribute('disabled');
            }
        }

        //
        var $menu = document.querySelector('.cont .menu');
        var menuTop = window.pageYOffset+$menu.getBoundingClientRect().top-105;

        window.addEventListener('scroll', function(){
            if (window.pageYOffset > menuTop) {
                $menu.classList.add('fixed');
            } else {
                $menu.classList.remove('fixed');
            }
        });

        //
        var $menuChild = $menu.children[0].children;
        var menuChildIdx = 0;
        var menuChildLen = $menu.children[0].children.length-3;
        var menuCont = [];
        $('.cont .menu a').each(function(idx, item){
            if ($(item).attr('href') !== '#confirm-file') {
                menuCont.push($($(item).attr('href')).offset().top-161);
            }
        });

        Array.prototype.forEach.call($menuChild, function(item, idx){
            if (idx < 3) {
                window.addEventListener('scroll', function(){
                    if (window.pageYOffset >= menuCont[idx] && window.pageYOffset < menuCont[idx+1]) {
                        $menuChild[idx].classList.add('active');
                    } else if (window.pageYOffset >= menuCont[idx] && !menuCont[idx+1]) {
                        $menuChild[idx].classList.add('active');
                    } else {
                        $menuChild[idx].classList.remove('active');
                    }
                });


                item.addEventListener('click', function(e){
                    e.preventDefault();
                    window.scrollTo(0, menuCont[idx]);
                });
            }
        });
    break;

    case 'policy' :
        window.addEventListener('load', function(){
            var $menu = document.querySelector('.cont .menu');

            //
            var $menuChild1 = $menu.children[0].children;
            var $menuChild2 = $menu.children[1].children;

            var menuCont1 = [];
            var menuCont2 = [];
            $('.cont .menu > div:nth-child(1) a').each(function(idx, item){
                menuCont1.push($($(item).attr('href')).offset().top-100);
            });
            $('.cont .menu > div:nth-child(2) a').each(function(idx, item){
                menuCont2.push($($(item).attr('href')).offset().top-100);
            });

            Array.prototype.forEach.call($menuChild1, function(item, idx){
                item.addEventListener('click', function(e){
                    e.preventDefault();
                    window.scrollTo(0, menuCont1[idx]);
                });
            });
            Array.prototype.forEach.call($menuChild2, function(item, idx){
                item.addEventListener('click', function(e){
                    e.preventDefault();
                    window.scrollTo(0, menuCont2[idx]);
                });
            });
        })
    break;
}
