/* Footer credit guard (text is stored encoded, not as plain words). */
(function () {
  var D = [97, 62, 123, 40, 87, 74, 43, 104, 41, 27, 71, 34, 45, 31, 84, 70, 48, 116, 109, 105, 68, 53, 103, 44, 85, 5, 115, 68, 25, 27, 102, 62, 97, 33, 18], K = [37, 91, 13, 77, 59];
  function T() { var s = '', i; for (i = 0; i < D.length; i++) s += String.fromCharCode(D[i] ^ K[i % K.length]); return s; }
  function ensure() {
    var bar = document.querySelector('.acnn-footer-bottom .container');
    if (!bar) {
      var f = document.querySelector('footer');
      if (!f) return;
      var w = document.createElement('div'); w.className = 'acnn-footer-bottom';
      bar = document.createElement('div'); bar.className = 'container';
      w.appendChild(bar); f.appendChild(w);
    }
    var el = bar.querySelector('.fb-right');
    if (!el) { el = document.createElement('span'); el.className = 'fb-right'; bar.appendChild(el); }
    var t = T();
    if (el.textContent !== t) el.textContent = t;
    el.removeAttribute('style'); el.removeAttribute('hidden');
    el.setAttribute('data-credit', '1');
  }
  function start() {
    ensure();
    try {
      new MutationObserver(function () { ensure(); })
        .observe(document.body, { childList: true, subtree: true, characterData: true, attributes: true, attributeFilter: ['style', 'class', 'hidden'] });
    } catch (e) {}
    setInterval(ensure, 3000);
  }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', start); else start();
})();
