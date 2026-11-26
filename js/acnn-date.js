/* Picture cards: a date written in the title ("14 Sep 2024 | Title", "14-09-2024 Title", "Sep 14, 2024 ...") becomes a calendar tile on the
   picture, and the title slides up on hover in a black card. Titles without a date just get the hover card. Progressive enhancement only. */
(function () {
    'use strict';
    var MON = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
    var NAMES = { jan: 0, january: 0, feb: 1, february: 1, mar: 2, march: 2, apr: 3, april: 3, may: 4, jun: 5, june: 5, jul: 6, july: 6, aug: 7, august: 7, sep: 8, sept: 8, september: 8, oct: 9, october: 9, nov: 10, november: 10, dec: 11, december: 11 };
    var SEP = '\\s*[\\|\\-\\u2013\\u2014:,]*\\s*';
    var RES = [
        { re: /(^|[\s(\[])(\d{1,2})[\-\/.](\d{1,2})[\-\/.](\d{4})(?=$|[\s)\]|,:])/, f: function (m) { return [m[2], m[3] - 1, m[4]]; } },
        { re: /(^|[\s(\[])(\d{4})[\-\/.](\d{1,2})[\-\/.](\d{1,2})(?=$|[\s)\]|,:])/, f: function (m) { return [m[4], m[3] - 1, m[2]]; } },
        { re: /(^|[\s(\[])(\d{1,2})(?:st|nd|rd|th)?[\s\-]+([A-Za-z]{3,9})\.?,?[\s\-]+(\d{4})(?=$|[\s)\]|,:])/, f: function (m) { var k = NAMES[m[3].toLowerCase()]; return k === undefined ? null : [m[2], k, m[4]]; } },
        { re: /(^|[\s(\[])([A-Za-z]{3,9})\.?[\s\-]+(\d{1,2})(?:st|nd|rd|th)?,?[\s\-]+(\d{4})(?=$|[\s)\]|,:])/, f: function (m) { var k = NAMES[m[2].toLowerCase()]; return k === undefined ? null : [m[3], k, m[4]]; } }
    ];
    function parse(text) {
        for (var i = 0; i < RES.length; i++) {
            var m = RES[i].re.exec(text);
            if (!m) { continue; }
            var v = RES[i].f(m);
            if (!v || v[1] < 0 || v[1] > 11 || +v[0] < 1 || +v[0] > 31) { continue; }
            var rest = (text.slice(0, m.index) + ' ' + text.slice(m.index + m[0].length)).replace(/\s+/g, ' ').replace(new RegExp('^' + SEP), '').replace(new RegExp(SEP + '$'), '').trim();
            return { d: ('0' + (+v[0])).slice(-2), m: MON[v[1]], y: v[2], rest: rest };
        }
        return null;
    }
    function tile(p) {
        var t = document.createElement('div');
        t.className = 'acnn-dt';
        t.innerHTML = '<b>' + p.d + '</b><span>' + p.m + '</span><em>' + p.y + '</em>';
        return t;
    }
    function hoverCap(host, text) {
        var c = document.createElement('span');
        c.className = 'acnn-hovercap';
        c.textContent = text;
        host.appendChild(c);
        return c;
    }
    var i, all;
    /* home events + any .acnn-vgrid */
    all = document.querySelectorAll('.acnn-vgrid .gallery');
    for (i = 0; i < all.length; i++) {
        var d1 = all[i].querySelector('.desc'); if (!d1) { continue; }
        var iso = /^(\d{4})-(\d{2})-(\d{2})$/.exec(all[i].getAttribute('data-date') || ''), p1 = null;
        if (iso && +iso[2] >= 1 && +iso[2] <= 12) { p1 = { d: iso[3], m: MON[+iso[2] - 1], y: iso[1], rest: d1.textContent }; }   /* Event_Date column */
        else { p1 = parse(d1.textContent); }
        if (p1) { all[i].insertBefore(tile(p1), all[i].firstChild); d1.textContent = p1.rest; }
    }
    /* media response */
    all = document.querySelectorAll('#gallery.acnn-mgrid li');
    for (i = 0; i < all.length; i++) {
        var c2 = all[i].querySelector('.acnn-cap'); if (!c2) { continue; }
        all[i].classList.add('acnn-hovercard');
        var p2 = parse(c2.textContent);
        if (p2) { all[i].insertBefore(tile(p2), all[i].firstChild); all[i].classList.add('has-date'); c2.textContent = p2.rest; }
    }
    /* event gallery: the group title lives in the link title */
    all = document.querySelectorAll('.acnn-eventpg .event-images li');
    for (i = 0; i < all.length; i++) {
        var a = all[i].querySelector('a'); if (!a) { continue; }
        var txt = (a.getAttribute('title') || '').trim(); if (!txt) { continue; }
        all[i].classList.add('acnn-hovercard');
        var p3 = parse(txt);
        if (p3) { all[i].insertBefore(tile(p3), all[i].firstChild); all[i].classList.add('has-date'); txt = p3.rest; }
        hoverCap(a, txt);
    }
})();
