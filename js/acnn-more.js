/* Home events: show the first 4 pictures of each group, "More" reveals the rest in the same section. Without JS everything stays visible. */
(function () {
    'use strict';
    var LIMIT = 4;
    var grids = document.querySelectorAll('.acnn-vgrid');
    for (var g = 0; g < grids.length; g++) { setup(grids[g]); }
    function setup(grid) {
        var items = grid.querySelectorAll(':scope > .gallery');
        if (items.length <= LIMIT) { return; }
        var extra = [], i;
        for (i = LIMIT; i < items.length; i++) { items[i].classList.add('is-extra'); extra.push(items[i]); }
        var wrap = document.createElement('div');
        wrap.className = 'acnn-more-wrap';
        var btn = document.createElement('button');
        btn.type = 'button'; btn.className = 'acnn-more-btn';
        btn.setAttribute('aria-expanded', 'false');
        btn.innerHTML = '<span class="t">More</span> <span class="n">+' + extra.length + '</span> <i class="icon-chevron-down"></i>';
        wrap.appendChild(btn);
        grid.parentNode.insertBefore(wrap, grid.nextSibling);
        var open = false;
        btn.addEventListener('click', function () {
            open = !open;
            btn.setAttribute('aria-expanded', open ? 'true' : 'false');
            btn.classList.toggle('open', open);
            btn.querySelector('.t').textContent = open ? 'Show less' : 'More';
            btn.querySelector('.n').style.display = open ? 'none' : '';
            for (var k = 0; k < extra.length; k++) {
                if (open) { extra[k].style.setProperty('--i', k % 4); extra[k].classList.add('show'); }
                else { extra[k].classList.remove('show'); }
            }
            if (!open) { grid.scrollIntoView({ block: 'center', behavior: 'smooth' }); }
        });
    }
})();
