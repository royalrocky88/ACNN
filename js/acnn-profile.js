/* Reveal-on-scroll and count-up numbers for the profile page. Pure enhancement: without JS everything is visible. */
(function () {
    'use strict';
    var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    var els = document.querySelectorAll('.reveal');
    if (!('IntersectionObserver' in window) || reduce) { return; }
    document.documentElement.className += ' js-reveal';
    function count(n) {
        var to = parseInt(n.getAttribute('data-count'), 10), t0 = null, dur = 1400;
        function step(ts) {
            if (t0 === null) { t0 = ts; }
            var p = Math.min(1, (ts - t0) / dur), e = 1 - Math.pow(1 - p, 3);
            n.textContent = Math.round(to * e);
            if (p < 1) { requestAnimationFrame(step); }
        }
        n.textContent = '0';
        requestAnimationFrame(step);
    }
    var io = new IntersectionObserver(function (en) {
        for (var i = 0; i < en.length; i++) {
            if (en[i].isIntersecting) {
                var el = en[i].target; el.className += ' in'; io.unobserve(el);
                var c = el.querySelectorAll('[data-count]');
                for (var k = 0; k < c.length; k++) { count(c[k]); }
            }
        }
    }, { threshold: 0.12 });
    for (var i = 0; i < els.length; i++) { io.observe(els[i]); }
})();
