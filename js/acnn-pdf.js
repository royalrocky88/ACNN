/*
 * ACNN PDF viewer - progressive enhancement for <div class="acnn-pdf" data-src="..." data-title="...">.
 * Renders every page onto a canvas with PDF.js (js/pdfjs/), so a document is visible in any
 * browser, with or without a built-in PDF plugin. Toolbar: page indicator, zoom, Open, Download.
 * Download / Open are plain links, so they work even when scripts are disabled or the file is missing.
 */
(function () {
    'use strict';

    var viewers = document.querySelectorAll('.acnn-pdf');
    if (!viewers.length) { return; }

    var base = (function () {
        var s = document.getElementsByTagName('script');
        for (var i = s.length - 1; i >= 0; i--) {
            var m = (s[i].getAttribute('src') || '').match(/^(.*?)acnn-pdf\.js/);
            if (m) { return m[1]; }
        }
        return 'js/';
    })();

    var loading = null, libErr = '';
    var CDN = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/';
    function addScript(url, ok, bad) {
        var sc = document.createElement('script');
        sc.src = url; sc.onload = ok; sc.onerror = bad;
        document.head.appendChild(sc);
    }
    function done(good) {
        var q = loading; loading = null;
        for (var i = 0; i < q.length; i++) { q[i][good ? 0 : 1](); }
    }
    function loadLib(cb, fail) {
        if (window.pdfjsLib) { cb(); return; }
        if (loading) { loading.push([cb, fail]); return; }
        loading = [[cb, fail]];
        addScript(base + 'pdfjs/pdf.min.js', function () {
            window.pdfjsLib.GlobalWorkerOptions.workerSrc = base + 'pdfjs/pdf.worker.min.js';
            done(true);
        }, function () {
            libErr = 'local viewer files (js/pdfjs) not found on server - using CDN';
            addScript(CDN + 'pdf.min.js', function () {
                // cross-origin worker: wrap in a same-origin blob
                try {
                    var blob = new Blob(['importScripts("' + CDN + 'pdf.worker.min.js");'], { type: 'text/javascript' });
                    window.pdfjsLib.GlobalWorkerOptions.workerSrc = URL.createObjectURL(blob);
                } catch (e) { window.pdfjsLib.GlobalWorkerOptions.workerSrc = CDN + 'pdf.worker.min.js'; }
                done(true);
            }, function () { libErr = 'PDF engine could not be loaded'; done(false); });
        });
    }

    function el(tag, cls, text) {
        var n = document.createElement(tag);
        if (cls) { n.className = cls; }
        if (text) { n.textContent = text; }
        return n;
    }

    function init(box) {
        var src = box.getAttribute('data-src');
        var body = box.querySelector('.acnn-pdf-body');
        var status = box.querySelector('.acnn-pdf-status');
        var pageLbl = box.querySelector('.acnn-pdf-page');
        var zin = box.querySelector('[data-act="zoom-in"]');
        var zout = box.querySelector('[data-act="zoom-out"]');
        var zlbl = box.querySelector('.acnn-pdf-zoom');
        if (!src || !body) { return; }

        var pdf = null, zoom = 1, pages = [], lastW = 0, token = 0, io = null;
        box.className += ' is-js';

        function fail(msg, detail) {
            token++;
            body.innerHTML = '';
            var m = el('div', 'acnn-pdf-error');
            m.appendChild(el('strong', '', msg || 'This document could not be displayed here.'));
            m.appendChild(el('span', '', 'Use the Download PDF button above to save the file and open it on your device.'));
            if (detail) { m.appendChild(el('small', '', 'Details: ' + detail)); }
            body.appendChild(m);
            box.className = box.className.replace(/\s*is-loading/, '') + ' is-error';
            if (pageLbl) { pageLbl.textContent = ''; }
        }

        function renderPage(p) {
            if (p.done || p.busy) { return; }
            p.busy = true;
            var my = token;
            pdf.getPage(p.num).then(function (page) {
                if (my !== token) { return; }
                var cw = body.clientWidth - 24;
                var base1 = page.getViewport({ scale: 1 });
                var cssScale = Math.max(0.01, (cw / base1.width) * zoom);
                var dpr = Math.min(window.devicePixelRatio || 1, 2);
                var vp = page.getViewport({ scale: cssScale * dpr });
                p.canvas.width = Math.floor(vp.width);
                p.canvas.height = Math.floor(vp.height);
                p.canvas.style.width = Math.floor(vp.width / dpr) + 'px';
                p.canvas.style.height = Math.floor(vp.height / dpr) + 'px';
                p.wrap.style.width = p.canvas.style.width;
                p.wrap.style.height = p.canvas.style.height;
                return page.render({ canvasContext: p.canvas.getContext('2d'), viewport: vp }).promise.then(function () {
                    if (my === token) { p.done = true; p.wrap.className = 'acnn-pdf-pg is-ready'; }
                });
            }).catch(function () { p.busy = false; }).then(function () { p.busy = false; });
        }

        function layout() {
            token++;
            lastW = body.clientWidth;
            body.innerHTML = '';
            pages = [];
            if (io) { io.disconnect(); }
            var my = token;
            var jobs = [];
            for (var n = 1; n <= pdf.numPages; n++) { jobs.push(pdf.getPage(n)); }
            // size every placeholder first so the scrollbar is right, then draw lazily
            Promise.all(jobs).then(function (list) {
                if (my !== token) { return; }
                var cw = body.clientWidth - 24;
                for (var i = 0; i < list.length; i++) {
                    var v = list[i].getViewport({ scale: 1 });
                    var s = Math.max(0.01, (cw / v.width) * zoom);
                    var wrap = el('div', 'acnn-pdf-pg');
                    wrap.style.width = Math.floor(v.width * s) + 'px';
                    wrap.style.height = Math.floor(v.height * s) + 'px';
                    var cv = document.createElement('canvas');
                    wrap.appendChild(cv);
                    body.appendChild(wrap);
                    var rec = { num: i + 1, wrap: wrap, canvas: cv, done: false, busy: false };
                    wrap._rec = rec;
                    pages.push(rec);
                }
                observe();
                updateUi();
            });
        }

        function observe() {
            if (!('IntersectionObserver' in window)) {
                for (var i = 0; i < pages.length; i++) { renderPage(pages[i]); }
                return;
            }
            io = new IntersectionObserver(function (entries) {
                for (var i = 0; i < entries.length; i++) {
                    if (entries[i].isIntersecting) { renderPage(entries[i].target._rec); }
                }
                updatePageLabel();
            }, { root: body, rootMargin: '600px 0px' });
            for (var j = 0; j < pages.length; j++) { io.observe(pages[j].wrap); }
        }

        function updatePageLabel() {
            if (!pageLbl || !pages.length) { return; }
            var mid = body.scrollTop + body.clientHeight / 3, cur = 1;
            for (var i = 0; i < pages.length; i++) {
                if (pages[i].wrap.offsetTop <= mid) { cur = i + 1; }
            }
            pageLbl.textContent = 'Page ' + cur + ' / ' + pages.length;
        }

        function updateUi() {
            updatePageLabel();
            if (zlbl) { zlbl.textContent = Math.round(zoom * 100) + '%'; }
        }

        function setZoom(z) {
            zoom = Math.max(0.5, Math.min(3, z));
            if (pdf) { layout(); }
        }

        if (zin) { zin.addEventListener('click', function () { setZoom(zoom + 0.25); }); }
        if (zout) { zout.addEventListener('click', function () { setZoom(zoom - 0.25); }); }
        body.addEventListener('scroll', updatePageLabel, { passive: true });

        var rt;
        function onSize() {
            clearTimeout(rt);
            rt = setTimeout(function () {
                if (pdf && Math.abs(body.clientWidth - lastW) > 8) { layout(); }
            }, 150);
        }
        window.addEventListener('resize', onSize);
        if ('ResizeObserver' in window) { new ResizeObserver(onSize).observe(body); }

        function start() {
            box.className += ' is-loading';
            if (status) { status.textContent = 'Loading document…'; }
            loadLib(function () {
                var url = encodeURI(decodeURI(src));
                function ok(doc) {
                    pdf = doc;
                    box.className = box.className.replace(/\s*is-loading/, '') + ' is-ready';
                    layout();
                }
                function bad(err) {
                    var missing = err && (err.name === 'MissingPDFException' || err.status === 404);
                    var empty = err && err.status === 204;
                    var why = (err && (err.name || '')) + (err && err.status ? ' HTTP ' + err.status : '') + (err && err.message ? ' - ' + err.message : '');
                    fail(missing ? 'This document is not available on the server yet.' :
                         empty ? 'This document is empty or missing on the server. Please upload the PDF again.' :
                         'This document could not be displayed here.', libErr || why);
                }
                // 1st try: normal (range / streaming). Some servers (VS dev server, some IIS setups) answer range requests badly,
                // so on any error try once more with one plain full download.
                window.pdfjsLib.getDocument({ url: url }).promise.then(ok, function () {
                    window.pdfjsLib.getDocument({ url: url, disableRange: true, disableStream: true, disableAutoFetch: true }).promise.then(ok, bad);
                });
            }, function () { fail('The PDF viewer could not be loaded.', libErr); });
        }

        // load when near the viewport so long pages don't fetch every PDF at once
        if ('IntersectionObserver' in window) {
            var once = new IntersectionObserver(function (en) {
                if (en[0].isIntersecting) { once.disconnect(); start(); }
            }, { rootMargin: '400px 0px' });
            once.observe(box);
        } else { start(); }
    }

    for (var i = 0; i < viewers.length; i++) { init(viewers[i]); }
})();
