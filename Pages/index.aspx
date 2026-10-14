<%@ Page Title="Home | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="hero">
      <div class="container">
        <span class="pill-tag"><svg class="icon" aria-hidden="true"><use href="#i-globe"/></svg> Discover India &amp; the World</span>
        <h1>Travel Smarter<br><span>with EasyTravel</span></h1>
        <p class="lead">Your journey, refined with care. Book flights and luxury stays across India and the world, all in one place.</p>
        <div class="actions">
          <a runat="server" class="btn btn-lg btn-primary" href="~/Pages/flights.aspx">Start Planning <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
          <a runat="server" class="btn btn-lg btn-outline" href="~/Pages/destination.aspx">Explore Destinations</a>
        </div>
        <ul class="trust-row list-plain">
          <li><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> 500+ destinations</li>
          <li><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9 average rating</li>
          <li><svg class="icon" aria-hidden="true"><use href="#i-headphones"/></svg> 24/7 concierge</li>
        </ul>
      </div>
    </section>

    <section class="container">
      <div class="search-card">
        <div class="tabs" role="tablist" aria-label="Search type">
          <button type="button" class="tab" role="tab" aria-selected="true" aria-controls="panel-flights" id="tab-flights">Flights</button>
          <button type="button" class="tab" role="tab" aria-selected="false" aria-controls="panel-hotels" id="tab-hotels">Hotels</button>
        </div>
        <div class="search-form tab-panel" id="panel-flights" role="tabpanel" aria-labelledby="tab-flights" onkeydown="if(event.key==='Enter'){location.href='<%= ResolveUrl("~/Pages/flights.aspx") %>';return false;}">
          <div class="field">
            <label for="sf-from">From</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg><input class="input" id="sf-from" type="text" placeholder="Mumbai"></div>
          </div>
          <div class="field">
            <label for="sf-to">To</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg><input class="input" id="sf-to" type="text" placeholder="Delhi"></div>
          </div>
          <div class="field">
            <label for="sf-dates">Dates</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-calendar"/></svg><input class="input" id="sf-dates" type="text" placeholder="Add dates"></div>
          </div>
          <div class="field">
            <label for="sf-pax">Travellers</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-users"/></svg><input class="input" id="sf-pax" type="text" placeholder="1 Adult"></div>
          </div>
          <a runat="server" class="btn btn-primary" href="~/Pages/flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-search"/></svg> Search</a>
        </div>
        <div class="search-form tab-panel" id="panel-hotels" role="tabpanel" aria-labelledby="tab-hotels" hidden onkeydown="if(event.key==='Enter'){location.href='<%= ResolveUrl("~/Pages/hotels.aspx") %>';return false;}">
          <div class="field">
            <label for="sh-city">Destination</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg><input class="input" id="sh-city" type="text" placeholder="Udaipur"></div>
          </div>
          <div class="field">
            <label for="sh-in">Check-in</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-calendar"/></svg><input class="input" id="sh-in" type="text" placeholder="Add date"></div>
          </div>
          <div class="field">
            <label for="sh-out">Check-out</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-calendar"/></svg><input class="input" id="sh-out" type="text" placeholder="Add date"></div>
          </div>
          <div class="field">
            <label for="sh-guests">Guests</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-users"/></svg><input class="input" id="sh-guests" type="text" placeholder="2 Adults"></div>
          </div>
          <a runat="server" class="btn btn-primary" href="~/Pages/hotels.aspx"><svg class="icon" aria-hidden="true"><use href="#i-search"/></svg> Search</a>
        </div>
      </div>
    </section>

    <section class="section container">
      <div class="section-head">
        <div>
          <h2>Curated for you</h2>
          <p>Handpicked destinations loved by travellers.</p>
        </div>
        <a runat="server" class="btn btn-sm btn-outline" href="~/Pages/destination.aspx">View all <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
      </div>
      <div class="grid grid-3">
      <a runat="server" class="dest-card" href="~/Pages/destination.aspx">
        <img runat="server" class="photo" src="~/images/udaipur.jpg" alt="Udaipur" />
        <div class="dest-card-body">
          <h3>Udaipur</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Royal Heritage</span>
            <span class="price">₹12,500<small> onwards</small></span>
          </div>
        </div>
      </a>
      <a runat="server" class="dest-card" href="~/Pages/destination.aspx">
        <img runat="server" class="photo" src="~/images/goa.jpg" alt="Goa" />
        <div class="dest-card-body">
          <h3>Goa</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Coastal Escape</span>
            <span class="price">₹7,500<small> onwards</small></span>
          </div>
        </div>
      </a>
      <a runat="server" class="dest-card" href="~/Pages/destination.aspx">
        <img runat="server" class="photo" src="~/images/leh.jpg" alt="Leh" />
        <div class="dest-card-body">
          <h3>Leh</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Mountain Adventure</span>
            <span class="price">₹15,000<small> onwards</small></span>
          </div>
        </div>
      </a>
      </div>
    </section>

    <section class="section container" style="padding-top:0">
      <div class="section-head">
        <div>
          <h2>Featured stays</h2>
          <p>Premium hotels and palaces across India.</p>
        </div>
        <a runat="server" class="btn btn-sm btn-outline" href="~/Pages/hotels.aspx">Browse hotels <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
      </div>
      <div class="grid grid-3">
      <a runat="server" class="dest-card stay-card relative" href="~/Pages/hotel.aspx">
        <img runat="server" class="photo" src="~/images/taj.jpg" alt="The Taj Mahal Palace" />
        <span class="rating-pill rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9</span>
        <div class="dest-card-body">
          <h3>The Taj Mahal Palace</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Mumbai</span>
            <span class="price">₹25,000<small> / night</small></span>
          </div>
        </div>
      </a>
      <a runat="server" class="dest-card stay-card relative" href="~/Pages/hotel.aspx">
        <img runat="server" class="photo" src="~/images/oberoi.jpg" alt="Oberoi Amarvilas" />
        <span class="rating-pill rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.8</span>
        <div class="dest-card-body">
          <h3>Oberoi Amarvilas</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Agra</span>
            <span class="price">₹35,000<small> / night</small></span>
          </div>
        </div>
      </a>
      <a runat="server" class="dest-card stay-card relative" href="~/Pages/hotel.aspx">
        <img runat="server" class="photo" src="~/images/rambagh.jpg" alt="Rambagh Palace" />
        <span class="rating-pill rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 5.0</span>
        <div class="dest-card-body">
          <h3>Rambagh Palace</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Jaipur</span>
            <span class="price">₹45,000<small> / night</small></span>
          </div>
        </div>
      </a>
      </div>
    </section>

    <section class="section container" style="padding-top:0">
      <div class="section-head">
        <div>
          <h2>Why EasyTravel</h2>
          <p>Everything you need for a seamless journey.</p>
        </div>
      </div>
      <div class="grid grid-3">
        <article class="card feature">
          <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-zap"/></svg></div>
          <h3>Instant Booking</h3>
          <p>Seamless reservations processed in milliseconds with zero friction.</p>
        </article>
        <article class="card feature">
          <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-shield"/></svg></div>
          <h3>Secure Trips</h3>
          <p>Bank-level encryption and full coverage insurance for peace of mind.</p>
        </article>
        <article class="card feature">
          <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-headphones"/></svg></div>
          <h3>24/7 Concierge</h3>
          <p>Round-the-clock global support for any travel requirement.</p>
        </article>
      </div>
    </section>

    <section class="section container" style="padding-top:0">
      <div class="cta-band">
        <h2>Ready for your next adventure?</h2>
        <p>Create a free account and start planning in minutes.</p>
        <a runat="server" class="btn btn-lg btn-primary" href="~/Account/Signup.aspx">Create Account <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
      </div>
    </section>
</asp:Content>
