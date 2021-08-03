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
}
