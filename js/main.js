/* EasyTravel — small progressive enhancements. The site works without JS. */
(function () {
  'use strict';

  /* Mobile navigation */
  var toggle = document.querySelector('.menu-toggle');
  var nav = document.getElementById('site-nav');
  if (toggle && nav) {
    toggle.addEventListener('click', function () {
      var open = nav.classList.toggle('is-open');
      toggle.setAttribute('aria-expanded', open);
    });
  }

  /* Tabs (search card, trips) */
  document.querySelectorAll('[role="tablist"]').forEach(function (list) {
    var tabs = list.querySelectorAll('[role="tab"]');
    tabs.forEach(function (tab) {
      tab.addEventListener('click', function () {
        tabs.forEach(function (t) {
          t.setAttribute('aria-selected', t === tab);
          var panel = document.getElementById(t.getAttribute('aria-controls') || '');
          if (panel) panel.hidden = t !== tab;
        });
      });
    });
  });

  /* Toggle buttons: filter chips, hearts, save */
  document.querySelectorAll('[data-toggle]').forEach(function (btn) {
    btn.addEventListener('click', function () {
      btn.setAttribute('aria-pressed', btn.getAttribute('aria-pressed') !== 'true');
    });
  });

  /* Password visibility */
  document.querySelectorAll('.toggle-pass').forEach(function (btn) {
    btn.addEventListener('click', function () {
      var input = btn.parentElement.querySelector('input');
      var show = input.type === 'password';
      input.type = show ? 'text' : 'password';
      btn.setAttribute('aria-label', show ? 'Hide password' : 'Show password');
    });
  });

  /* Guest stepper */
  document.querySelectorAll('.stepper').forEach(function (stepper) {
    var out = stepper.querySelector('output');
    stepper.querySelectorAll('[data-step]').forEach(function (btn) {
      btn.addEventListener('click', function () {
        var next = parseInt(out.value || out.textContent, 10) + parseInt(btn.dataset.step, 10);
        out.textContent = Math.min(9, Math.max(1, next));
      });
    });
  });

  /* Seat map: single selection + running total */
  var seatmap = document.querySelector('.seatmap');
  if (seatmap) {
    var label = document.getElementById('seat-label');
    var total = document.getElementById('seat-total');
    seatmap.querySelectorAll('.seat:not([disabled])').forEach(function (seat) {
      seat.addEventListener('click', function () {
        seatmap.querySelectorAll('.seat[aria-pressed="true"]').forEach(function (s) {
          s.setAttribute('aria-pressed', 'false');
        });
        seat.setAttribute('aria-pressed', 'true');
        if (label) label.textContent = seat.textContent;
        if (total) total.textContent = '₹' + Number(seat.dataset.price).toLocaleString('en-IN');
      });
    });
  }
})();

/* Demo auth state (replace with real backend later).
   Login/Signup store the user in localStorage; header swaps to an account menu. */
(function () {
  'use strict';
  var KEY = 'easytravel_user';
  var user = null;
  try { user = JSON.parse(localStorage.getItem(KEY)); } catch (e) { /* storage unavailable */ }

  if (user && user.name) {
    document.querySelectorAll('.auth-cta').forEach(function (el) { el.hidden = true; });
    document.querySelectorAll('.user-menu').forEach(function (el) { el.hidden = false; });
    var first = user.name.trim().split(/\s+/)[0];
    document.querySelectorAll('[data-user-name]').forEach(function (el) { el.textContent = first; });
    document.querySelectorAll('[data-user-initials]').forEach(function (el) {
      el.textContent = user.name.trim().split(/\s+/).map(function (w) { return w[0]; }).slice(0, 2).join('').toUpperCase();
    });
  }

  document.querySelectorAll('form[data-auth]').forEach(function (form) {
    form.addEventListener('submit', function () {
      var name = form.querySelector('[name="fullname"]');
      var email = form.querySelector('[name="email"]');
      var value = (name && name.value.trim()) || (email && email.value.split('@')[0]) || 'Traveller';
      value = value.charAt(0).toUpperCase() + value.slice(1);
      try { localStorage.setItem(KEY, JSON.stringify({ name: value })); } catch (e) { /* ignore */ }
    });
  });

  document.querySelectorAll('[data-signout]').forEach(function (link) {
    link.addEventListener('click', function () {
      try { localStorage.removeItem(KEY); } catch (e) { /* ignore */ }
    });
  });

  /* Close the account menu when clicking elsewhere */
  document.addEventListener('click', function (e) {
    document.querySelectorAll('.user-menu[open]').forEach(function (menu) {
      if (!menu.contains(e.target)) menu.removeAttribute('open');
    });
  });
})();

/* Accept login handoff from the ASP.NET pages (dash.aspx?user=Name) */
(function () {
  'use strict';
  var name = new URLSearchParams(location.search).get('user');
  if (name) {
    try { localStorage.setItem('easytravel_user', JSON.stringify({ name: name })); } catch (e) { /* ignore */ }
    history.replaceState(null, '', location.pathname);
    location.reload();
  }
})();
