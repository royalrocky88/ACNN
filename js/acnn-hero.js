/* ACNN hero slider - vanilla JS. Crossfade + slow zoom, autoplay with progress bar,
   dots, arrows, swipe, keyboard, pause on hover/focus/hidden tab, reduced-motion aware. */
(function () {
    'use strict';
    var root = document.querySelector('.acnn-hero');
    if (!root) { return; }
    var slides = root.querySelectorAll('.acnn-slide');
    var dotsBox = root.querySelector('.acnn-hero-dots');
    var bar = root.querySelector('.acnn-hero-bar span');
    var DELAY = 6500, cur = 0, timer = null, started = 0, paused = false, remain = DELAY, dots = [];
    var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    for (var i = 0; i < slides.length; i++) {
        (function (n) {
            var d = document.createElement('button');
            d.type = 'button'; d.setAttribute('aria-label', 'Go to slide ' + (n + 1));
            d.addEventListener('click', function () { go(n, true); });
            dotsBox.appendChild(d); dots.push(d);
        })(i);
    }

    function restartBar() {
        if (!bar) { return; }
        bar.style.transition = 'none'; bar.style.width = '0';
        void bar.offsetWidth;
        if (!reduce) { bar.style.transition = 'width ' + remain + 'ms linear'; bar.style.width = '100%'; }
    }
    function schedule() {
        clearTimeout(timer);
        if (paused || slides.length < 2) { return; }
        started = Date.now();
        timer = setTimeout(function () { go(cur + 1); }, remain);
        restartBar();
    }
    function go(n, user) {
        n = (n + slides.length) % slides.length;
        slides[cur].className = slides[cur].className.replace(/\s*is-active/g, '');
        dots[cur].className = '';
        cur = n;
        // re-trigger the caption/zoom animation
        slides[cur].className += ' is-active';
        dots[cur].className = 'on';
        var im = slides[cur].querySelector('img');
        if (im && im.getAttribute('loading') === 'lazy') { im.removeAttribute('loading'); }
        var nx = slides[(cur + 1) % slides.length].querySelector('img');
        if (nx) { nx.removeAttribute('loading'); }
        remain = DELAY;
        schedule();
    }
    function pause() { if (paused) { return; } paused = true; clearTimeout(timer); remain = Math.max(800, remain - (Date.now() - started)); if (bar) { var w = bar.getBoundingClientRect().width / root.getBoundingClientRect().width; bar.style.transition = 'none'; bar.style.width = (w * 100) + '%'; } }
    function resume() { if (!paused) { return; } paused = false; schedule(); }

    root.querySelector('.prev').addEventListener('click', function () { go(cur - 1, true); });
    root.querySelector('.next').addEventListener('click', function () { go(cur + 1, true); });
    root.addEventListener('mouseenter', pause);
    root.addEventListener('mouseleave', resume);
    root.addEventListener('focusin', pause);
    root.addEventListener('focusout', resume);
    document.addEventListener('visibilitychange', function () { if (document.hidden) { pause(); } else { resume(); } });
    root.addEventListener('keydown', function (e) {
        if (e.key === 'ArrowLeft') { go(cur - 1, true); } else if (e.key === 'ArrowRight') { go(cur + 1, true); }
    });
    var x0 = null;
    root.addEventListener('touchstart', function (e) { x0 = e.touches.length === 1 ? e.touches[0].clientX : null; }, { passive: true });
    root.addEventListener('touchend', function (e) {
        if (x0 === null) { return; }
        var dx = e.changedTouches[0].clientX - x0; x0 = null;
        if (Math.abs(dx) > 45) { go(cur + (dx < 0 ? 1 : -1), true); }
    }, { passive: true });

    dots[0].className = 'on';
    schedule();
})();
