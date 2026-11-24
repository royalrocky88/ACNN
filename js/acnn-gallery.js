/* Scientific Activities gallery: category filter + graceful handling of missing photos. */
(function () {
    'use strict';
    var grid = document.querySelector('.acnn-sa-grid');
    if (!grid) { return; }
    var cards = grid.querySelectorAll('.acnn-sa');
    var btns = document.querySelectorAll('.acnn-sa-filter button');
    var i;
    function noimg(img) { var f = img.closest ? img.closest('.acnn-sa') : null; if (f) { f.className += ' noimg'; } img.style.display = 'none'; }
    var imgs = grid.querySelectorAll('img');
    for (i = 0; i < imgs.length; i++) {
        (function (im) {
            im.addEventListener('error', function () { noimg(im); });
            if (im.complete && im.naturalWidth === 0 && im.getAttribute('src')) { /* may already have failed */ if (im.complete && !im.naturalWidth) { setTimeout(function () { if (!im.naturalWidth && im.complete) { noimg(im); } }, 1500); } }
        })(imgs[i]);
    }
    function apply(f) {
        for (var k = 0; k < cards.length; k++) {
            var show = f === 'all' || cards[k].getAttribute('data-cat') === f;
            cards[k].style.display = show ? '' : 'none';
        }
    }
    for (i = 0; i < btns.length; i++) {
        btns[i].addEventListener('click', function () {
            for (var j = 0; j < btns.length; j++) { btns[j].className = ''; }
            this.className = 'on';
            apply(this.getAttribute('data-f'));
        });
    }
})();
