/*
 * ACNN UI helpers - vanilla JavaScript, no dependencies.
 *   1. Image lightbox: any link to an image opens an overlay with a Back button, a Close button,
 *      Esc, arrow keys, swipe, and the browser Back button all closing / navigating it.
 *   2. Menu dropdowns close on outside click and on Esc.
 *   3. Images that are missing on the server fall back to img/no-image.svg.
 */
(function () {
    'use strict';

    var IMG_RE = /\.(?:jpe?g|png|gif|webp|bmp|svg)(?:[?#].*)?$/i;
    var PLACEHOLDER = 'img/no-image.svg';
    var GROUPS = ['.acnn-visitors', '.event-images', '.acnn-clip-grid', '.acnn-gallery-grid', '#gallery', 'section'];
    var FALLBACK_SCOPE = '.gallery, .event-images, .acnn-clip-grid, .acnn-gallery-grid, .acnn-visitors, .acnn-person, .mu-our-teacher-area, .acnn-staff-grid';

    /* ------------------------------------------------------------------
       1. Missing-image fallback
       ------------------------------------------------------------------ */
    function markMissing(img) {
        if (img.getAttribute('data-acnn-missing')) { return; }
        img.setAttribute('data-acnn-missing', '1');
        img.className += ' is-missing';
        img.src = PLACEHOLDER;
    }

    document.addEventListener('error', function (e) {
        var t = e.target;
        if (t && t.tagName === 'IMG' && t.closest && t.closest(FALLBACK_SCOPE)) { markMissing(t); }
    }, true);

    function sweepBrokenImages() {
        var imgs = document.querySelectorAll(FALLBACK_SCOPE.split(',').join(' img,') + ' img');
        for (var i = 0; i < imgs.length; i++) {
            if (imgs[i].complete && imgs[i].naturalWidth === 0 && imgs[i].getAttribute('src')) { markMissing(imgs[i]); }
        }
    }
    document.addEventListener('DOMContentLoaded', sweepBrokenImages);
    window.addEventListener('load', sweepBrokenImages);

    /* ------------------------------------------------------------------
       2. Lightbox
       ------------------------------------------------------------------ */
    var root, stage, img, msg, caption, count, orig, btnBack, btnClose, btnPrev, btnNext;
    var items = [], index = 0, token = 0, isOpen = false, pushed = false, opener = null;

    function el(tag, cls, html) {
        var n = document.createElement(tag);
        if (cls) { n.className = cls; }
        if (html) { n.innerHTML = html; }
        return n;
    }

    function build() {
        if (root) { return; }
        root = el('div', 'acnn-lb');
        root.setAttribute('role', 'dialog');
        root.setAttribute('aria-modal', 'true');
        root.setAttribute('aria-label', 'Image viewer');

        var bar = el('div', 'acnn-lb-bar');
        var left = el('div', 'grp');
        var right = el('div', 'grp');
        btnBack = el('button', 'acnn-lb-back', '&larr; Back');
        btnBack.type = 'button';
        btnBack.setAttribute('aria-label', 'Back to the page');
        count = el('span', 'acnn-lb-count');
        orig = el('a', 'acnn-lb-orig', 'Open original');
        orig.target = '_blank';
        orig.rel = 'noopener';
        btnClose = el('button', 'acnn-lb-close', '&times; Close');
        btnClose.type = 'button';
        btnClose.setAttribute('aria-label', 'Close (Esc)');
        left.appendChild(btnBack);
        right.appendChild(count);
        right.appendChild(orig);
        right.appendChild(btnClose);
        bar.appendChild(left);
        bar.appendChild(right);

        var main = el('div', 'acnn-lb-main');
        btnPrev = el('button', 'acnn-lb-nav prev', '&#10094;');
        btnPrev.type = 'button';
        btnPrev.setAttribute('aria-label', 'Previous image');
        btnNext = el('button', 'acnn-lb-nav next', '&#10095;');
        btnNext.type = 'button';
        btnNext.setAttribute('aria-label', 'Next image');
        stage = el('figure', 'acnn-lb-stage');
        img = document.createElement('img');
        img.alt = '';
        msg = el('div', 'acnn-lb-msg', 'This image is not available on the server.');
        caption = el('figcaption');
        stage.appendChild(img);
        stage.appendChild(msg);
        stage.appendChild(caption);
        main.appendChild(btnPrev);
        main.appendChild(stage);
        main.appendChild(btnNext);

        root.appendChild(bar);
        root.appendChild(main);
        document.body.appendChild(root);

        btnBack.addEventListener('click', close);
        btnClose.addEventListener('click', close);
        btnPrev.addEventListener('click', function () { show(index - 1); });
        btnNext.addEventListener('click', function () { show(index + 1); });
        root.addEventListener('click', function (e) {
            if (e.target === root || e.target === main || e.target === stage) { close(); }
        });

        var x0 = null;
        stage.addEventListener('touchstart', function (e) { x0 = e.touches.length === 1 ? e.touches[0].clientX : null; }, { passive: true });
        stage.addEventListener('touchend', function (e) {
            if (x0 === null) { return; }
            var dx = e.changedTouches[0].clientX - x0;
            x0 = null;
            if (Math.abs(dx) > 50) { show(index + (dx < 0 ? 1 : -1)); }
        }, { passive: true });
    }

    function captionOf(a) {
        var t = a.getAttribute('title');
        if (!t) {
            var im = a.querySelector('img');
            t = im ? im.getAttribute('alt') : '';
        }
        if (!t) {
            var d = a.parentNode && a.parentNode.querySelector ? a.parentNode.querySelector('.desc') : null;
            t = d ? d.textContent : '';
        }
        return (t || '').replace(/\s+/g, ' ').replace(/^\s+|\s+$/g, '');
    }

    function groupRoot(a) {
        for (var i = 0; i < GROUPS.length; i++) {
            var r = a.closest(GROUPS[i]);
            if (r) { return r; }
        }
        return document.body;
    }

    function collect(a) {
        var scope = groupRoot(a);
        var links = scope.querySelectorAll('a[href]');
        var seen = {};
        items = [];
        for (var i = 0; i < links.length; i++) {
            var l = links[i];
            if (!IMG_RE.test(l.getAttribute('href')) || l.closest('nav, header, footer')) { continue; }
            if (seen[l.href]) { continue; }
            seen[l.href] = true;
            items.push({ href: l.href, caption: captionOf(l) });
        }
        index = 0;
        for (var j = 0; j < items.length; j++) {
            if (items[j].href === a.href) { index = j; break; }
        }
        if (!items.length) { items.push({ href: a.href, caption: captionOf(a) }); }
    }

    function show(i) {
        var n = items.length;
        index = ((i % n) + n) % n;
        var it = items[index];
        var my = ++token;
        stage.className = 'acnn-lb-stage is-loading';
        caption.textContent = it.caption;
        count.textContent = (index + 1) + ' / ' + n;
        orig.href = it.href;
        img.onload = function () { if (my === token) { stage.className = 'acnn-lb-stage is-ready'; } };
        img.onerror = function () { if (my === token) { stage.className = 'acnn-lb-stage is-error'; } };
        img.alt = it.caption;
        img.src = it.href;
        if (n > 1) {
            new Image().src = items[(index + 1) % n].href;
            new Image().src = items[(index - 1 + n) % n].href;
        }
    }

    function open(a) {
        closeMenus();
        build();
        opener = a;
        collect(a);
        root.className = 'acnn-lb is-open' + (items.length < 2 ? ' single' : '');
        document.documentElement.className += ' acnn-lb-open';
        isOpen = true;
        show(index);
        try { history.pushState({ acnnLb: 1 }, '', location.href); pushed = true; } catch (err) { pushed = false; }
        btnClose.focus();
    }

    function hide() {
        if (!isOpen) { return; }
        isOpen = false;
        root.className = 'acnn-lb';
        img.removeAttribute('src');
        document.documentElement.className = document.documentElement.className.replace(/\s*acnn-lb-open/g, '');
        if (opener && opener.focus) { try { opener.focus(); } catch (err) { /* ignore */ } }
    }

    function close() {
        if (!isOpen) { return; }
        if (pushed) { history.back(); } else { hide(); }   // popstate below finishes the job
    }

    window.addEventListener('popstate', function () {
        if (isOpen) { pushed = false; hide(); }
    });

    document.addEventListener('keydown', function (e) {
        if (isOpen) {
            if (e.key === 'Escape' || e.key === 'Esc') { e.preventDefault(); close(); }
            else if (e.key === 'ArrowLeft') { show(index - 1); }
            else if (e.key === 'ArrowRight') { show(index + 1); }
            else if (e.key === 'Tab') {
                var f = root.querySelectorAll('button, a[href]');
                var vis = [];
                for (var i = 0; i < f.length; i++) { if (f[i].offsetParent !== null) { vis.push(f[i]); } }
                if (!vis.length) { return; }
                var first = vis[0], last = vis[vis.length - 1];
                if (e.shiftKey && document.activeElement === first) { e.preventDefault(); last.focus(); }
                else if (!e.shiftKey && document.activeElement === last) { e.preventDefault(); first.focus(); }
            }
            return;
        }
        if (e.key === 'Escape' || e.key === 'Esc') { closeMenus(); }
    });

    /* Capture phase so the old prettyPhoto handlers and target="_blank" never fire a second time. */
    document.addEventListener('click', function (e) {
        if (e.defaultPrevented || e.button !== 0 || e.metaKey || e.ctrlKey || e.shiftKey || e.altKey) { return; }
        var a = e.target.closest ? e.target.closest('a[href]') : null;
        if (!a || a.closest('.acnn-lb, nav, header, footer')) { return; }
        if (!IMG_RE.test(a.getAttribute('href'))) { return; }
        e.preventDefault();
        e.stopImmediatePropagation();
        open(a);
    }, true);

    /* ------------------------------------------------------------------
       3. Menu dropdowns: close on outside click / Esc
       ------------------------------------------------------------------ */
    function closeMenus() {
        var boxes = document.querySelectorAll('.megamenu .drop-down-container');
        for (var i = 0; i < boxes.length; i++) {
            if (window.getComputedStyle(boxes[i]).display !== 'none') { boxes[i].style.display = 'none'; }
        }
    }
    document.addEventListener('click', function (e) {
        var t = e.target;
        if (!t.closest) { return; }
        /* menu toggles are href="#": stop them jumping the page back to the top */
        if (t.closest('.megamenu_container a[href="#"]')) { e.preventDefault(); }
        if (!t.closest('.megamenu')) { closeMenus(); }
    });
    /* ------------------------------------------------------------------
       4. Sticky navigation: add a shadow once the page has scrolled
       ------------------------------------------------------------------ */
    (function () {
        var nav = document.querySelector('nav');
        if (!nav) { return; }
        var on = false;
        function upd() {
            var y = window.pageYOffset || document.documentElement.scrollTop;
            var st = y > nav.offsetTop + 2 || y > 120;
            if (st !== on) { on = st; nav.className = on ? nav.className + ' is-stuck' : nav.className.replace(/\s*is-stuck/g, ''); }
        }
        window.addEventListener('scroll', upd, { passive: true });
        upd();
    })();
})();
