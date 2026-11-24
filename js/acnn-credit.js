/* Footer credit guard: keeps the developer credit in place and unaltered. */
(function () {
  var TEXT = 'Developed by Rocky Ranjan (IT Cell)';
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
    if (el.textContent !== TEXT) el.textContent = TEXT;
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
