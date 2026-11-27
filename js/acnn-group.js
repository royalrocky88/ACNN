/* Home events: pictures that carry a group name (Table_Event_Response.Event_Group, rendered as data-group) are collected under
   their own sub-heading, in order of first appearance; inside a group newest Event_Date comes first. Pictures without a group stay
   in the original grid under its original heading. Without JS (or without the column) nothing changes. */
(function () {
    'use strict';
    var items = document.querySelectorAll('.acnn-vgrid .gallery');
    function txt(el, cls, attr) { var s = el.querySelector(cls); return ((s ? s.textContent : '') || el.getAttribute(attr) || '').replace(/^\s+|\s+$/g, ''); }
    var hasCol = false; for (var q = 0; q < items.length; q++) { if (items[q].querySelector('.acnn-dg')) { hasCol = true; break; } }
    if (!hasCol) { return; }
    if (!items.length) { return; }
    var first = null; for (q = 0; q < items.length; q++) { if (items[q].querySelector('.acnn-dg')) { first = items[q]; break; } }
    var src = first.parentNode;                 /* the Repeater grid */
    var anchor = src.previousElementSibling;       /* its original heading */
    if (anchor && !/(^|\s)acnn-vsub(\s|$)/.test(anchor.className)) { anchor = null; }
    var order = [], map = {}, i, g, k;
    for (i = 0; i < items.length; i++) {
        g = txt(items[i], '.acnn-dg', 'data-group');
        if (!g) { continue; }
        k = g.toLowerCase();
        if (!map[k]) { map[k] = { name: g, list: [] }; order.push(k); }
        map[k].list.push(items[i]);
    }
    if (!order.length) { return; }
    function when(el) { var d = txt(el, '.acnn-dd', 'data-date'); return /^\d{4}-\d{2}-\d{2}$/.test(d) ? d : ''; }
    for (i = 0; i < order.length; i++) {
        var grp = map[order[i]], list = grp.list.slice(0), j;
        list = list.map(function (el, n) { return { el: el, n: n, d: when(el) }; });
        list.sort(function (a, b) {
            if (a.d && b.d && a.d !== b.d) { return a.d < b.d ? 1 : -1; }
            if (a.d && !b.d) { return -1; }
            if (!a.d && b.d) { return 1; }
            return a.n - b.n;
        });
        var h = document.createElement('h3');
        h.className = 'acnn-vsub';
        h.textContent = grp.name;
        var grid = document.createElement('div');
        grid.className = 'acnn-vgrid';
        grid.style.marginBottom = '34px';
        for (j = 0; j < list.length; j++) { grid.appendChild(list[j].el); }
        src.parentNode.insertBefore(h, anchor || src);
        src.parentNode.insertBefore(grid, anchor || src);
    }
    /* nothing left without a group: drop the old heading and the empty grid */
    if (!src.querySelector('.gallery')) {
        src.parentNode.removeChild(src);
        if (anchor && anchor.parentNode) { anchor.parentNode.removeChild(anchor); }
    }
})();
