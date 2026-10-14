<%@ Page Title="Udaipur | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="destination.aspx.cs" Inherits="WebApplication1.Destination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
      <div class="dest-hero">
        <div>
          <span class="eyebrow">Rajasthan, India</span>
          <h1 style="margin-top:12px">Udaipur: The City of Lakes</h1>
          <p class="muted" style="margin-top:18px;line-height:1.8">Experience the royal grandeur of Rajasthan. Known for its stunning palaces, shimmering lakes, and rich cultural heritage, Udaipur is the crown jewel of India&rsquo;s most vibrant state.</p>
          <div class="row wrap" style="margin-top:24px">
            <span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9 <span class="muted small">(1,284 reviews)</span></span>
            <span class="badge"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Rajasthan, India</span>
          </div>
        </div>
        <img runat="server" class="photo" src="~/images/udaipur.jpg" alt="Udaipur Lake Palace illuminated at night" />
      </div>

      <section class="section-sm">
        <h2 style="margin-bottom:20px">Quick Insights</h2>
        <div class="grid grid-4">
          <div class="fact">
            <svg class="icon" aria-hidden="true"><use href="#i-calendar"/></svg>
            <div><span class="muted small">Best Time</span><b>Oct – Mar</b></div>
          </div>
          <div class="fact">
            <svg class="icon" aria-hidden="true"><use href="#i-activity"/></svg>
            <div><span class="muted small">Avg Temp</span><b>12°C / 30°C</b></div>
          </div>
          <div class="fact">
            <svg class="icon" aria-hidden="true"><use href="#i-wallet"/></svg>
            <div><span class="muted small">Est. Budget</span><b>₹₹₹</b></div>
          </div>
          <div class="fact">
            <svg class="icon" aria-hidden="true"><use href="#i-clock"/></svg>
            <div><span class="muted small">Ideal Stay</span><b>5 – 7 Days</b></div>
          </div>
        </div>
      </section>

      <section class="section-sm">
        <h2 style="margin-bottom:8px">The Experience</h2>
        <p class="muted" style="max-width:760px;line-height:1.8">Udaipur, often called the &ldquo;Venice of the East&rdquo;, is a city of unparalleled romance and history. Built around the azure waters of Lake Pichola, the city is a labyrinth of narrow lanes, bustling bazaars, and magnificent havelis that whisper tales of Rajput valor. Whether you&rsquo;re exploring the intricate carvings of Jagdish Temple or enjoying a quiet dinner overlooking the illuminated Lake Palace, Udaipur offers a sensory journey through India&rsquo;s royal past.</p>
      </section>

      <section class="section-sm">
        <div class="section-head" style="margin-bottom:24px">
          <div>
            <h2>Top Attractions</h2>
            <p>The places that make Udaipur unforgettable.</p>
          </div>
        </div>
        <div class="grid grid-3">
      <a class="dest-card" href="#">
        <img runat="server" class="photo" src="~/images/lake.jpg" alt="Lake Pichola" />
        <div class="dest-card-body">
          <h3>Lake Pichola</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Iconic boat rides at sunset</span>
            <span class="price">₹1,200<small> onwards</small></span>
          </div>
        </div>
      </a>
      <a class="dest-card" href="#">
        <img runat="server" class="photo" src="~/images/udaipur.jpg" alt="City Palace" />
        <div class="dest-card-body">
          <h3>City Palace</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> A majestic complex of palaces</span>
            <span class="price">₹700<small> onwards</small></span>
          </div>
        </div>
      </a>
      <a class="dest-card" href="#">
        <img runat="server" class="photo" src="~/images/munnar.jpg" alt="Saheliyon-ki-Bari" />
        <div class="dest-card-body">
          <h3>Saheliyon-ki-Bari</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Royal gardens and fountains</span>
            <span class="price">₹300<small> onwards</small></span>
          </div>
        </div>
      </a>
        </div>
      </section>

      <section class="section-sm">
        <div class="split">
          <div class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-info"/></svg> Travel Tips</h3>
            <ul class="list-plain stack">
            <li class="tip"><svg class="icon" aria-hidden="true"><use href="#i-check-circle"/></svg><span><b>Payments:</b> <span class="muted">Use UPI (GPay / PhonePe) for almost everything from street food to boutiques. It is the most convenient way to pay in India.</span></span></li>
            <li class="tip"><svg class="icon" aria-hidden="true"><use href="#i-check-circle"/></svg><span><b>Transit:</b> <span class="muted">Use e-rickshaws for short distances in the old city. For longer trips, app-based cabs are reliable and avoid fare negotiation.</span></span></li>
            <li class="tip"><svg class="icon" aria-hidden="true"><use href="#i-check-circle"/></svg><span><b>Sightseeing:</b> <span class="muted">Visit the City Palace early in the morning to avoid the heat and crowds. The Rajasthan sun can be intense even in winter.</span></span></li>
            </ul>
          </div>
          <aside class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Ready to go?</h3>
            <p class="muted small" style="margin-bottom:18px">Secure the best rates for your royal escape.</p>
            <ul class="list-plain">
              <li class="kv"><span class="row"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> Flights from DEL</span><strong>₹25,000</strong></li>
              <li class="kv"><span class="row"><svg class="icon" aria-hidden="true"><use href="#i-bed"/></svg> 4-star hotels / night</span><strong>₹15,000</strong></li>
            </ul>
            <div class="stack" style="margin-top:18px;gap:10px">
              <a runat="server" class="btn btn-primary btn-block" href="~/Pages/hotels.aspx"><svg class="icon" aria-hidden="true"><use href="#i-bed"/></svg> View Hotels</a>
              <a runat="server" class="btn btn-outline btn-block" href="~/Pages/flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> View Flights</a>
            </div>
            <p class="faint xs" style="text-align:center;margin-top:14px">Prices are estimates based on upcoming 30 days.</p>
          </aside>
        </div>
      </section>
    </div>
</asp:Content>
