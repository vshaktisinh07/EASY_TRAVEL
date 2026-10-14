<%@ Page Title="Hotels | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="hotels.aspx.cs" Inherits="WebApplication1.Hotels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm">
      <div class="page-head" style="padding-top:36px">
        <h1 style="font-size:2.4rem">Find Your Stay</h1>
        <p>Udaipur, Rajasthan · Oct 12 – Oct 18 · 2 Guests · <strong>18 premium stays found</strong></p>
      </div>
      <div class="split-left">
        <aside class="filter-panel sticky" aria-label="Filters">
          <div class="row between">
            <h3>Filters</h3>
            <button class="link small" type="button">Reset</button>
          </div>
          <div>
            <h4>Price per night</h4>
            <input type="range" min="5000" max="100000" value="60000" aria-label="Maximum price per night">
            <div class="row between faint xs"><span>₹5,000</span><span>₹1,00,000+</span></div>
          </div>
          <div>
            <h4>Star Rating</h4>
            <div class="tag-list">
              <button class="chip" type="button" data-toggle aria-pressed="true">5 <svg class="icon" aria-hidden="true"><use href="#i-star"/></svg></button>
              <button class="chip" type="button" data-toggle aria-pressed="false">4 <svg class="icon" aria-hidden="true"><use href="#i-star"/></svg></button>
              <button class="chip" type="button" data-toggle aria-pressed="false">3 <svg class="icon" aria-hidden="true"><use href="#i-star"/></svg></button>
            </div>
          </div>
          <div>
            <h4>Property Type</h4>
            <div class="opts">
              <label class="check"><input type="checkbox" checked><span>Hotels</span></label>
              <label class="check"><input type="checkbox"><span>Resorts</span></label>
              <label class="check"><input type="checkbox" checked><span>Heritage Palaces</span></label>
            </div>
          </div>
          <div>
            <h4>Amenities</h4>
            <div class="opts">
              <label class="check"><input type="checkbox" checked><span>Pool</span></label>
              <label class="check"><input type="checkbox" checked><span>Spa &amp; Wellness</span></label>
              <label class="check"><input type="checkbox"><span>Fine Dining</span></label>
              <label class="check"><input type="checkbox" checked><span>Wi-Fi</span></label>
            </div>
          </div>
        </aside>

        <section class="stack" style="gap:20px">
          <div class="row between">
            <label class="row small muted">Sort by
              <select class="select" style="height:40px;width:170px">
                <option>Recommended</option>
                <option>Price: low to high</option>
                <option>Rating</option>
              </select>
            </label>
            <button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> View Map</button>
          </div>
        <article class="hotel-card">
          <img runat="server" class="photo" src="~/images/lake.jpg" alt="Taj Lake Palace" />
          <div class="body">
            <div class="row between wrap">
              <h3>Taj Lake Palace</h3>
              <span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9</span>
            </div>
            <p class="muted small row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Lake Pichola, Udaipur</p>
            <p class="muted small">A floating vision in white marble. This 18th-century royal summer retreat offers unmatched lake views.</p>
            <div class="tag-list"><span class="badge">Pool</span> <span class="badge">Spa</span> <span class="badge">Fine Dining</span></div>
            <div class="row between wrap" style="margin-top:6px">
              <span class="price">₹65,000<small> / night</small></span>
              <span class="row" style="gap:10px">
                <a runat="server" class="btn btn-sm btn-outline" href="~/Pages/hotel.aspx">View Details</a>
                <a runat="server" class="btn btn-sm btn-primary" href="~/Booking/Payment.aspx">Book Now</a>
              </span>
            </div>
          </div>
        </article>
        <article class="hotel-card">
          <img runat="server" class="photo" src="~/images/taj.jpg" alt="The Oberoi Udaivilas" />
          <div class="body">
            <div class="row between wrap">
              <h3>The Oberoi Udaivilas</h3>
              <span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.8</span>
            </div>
            <p class="muted small row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Lake Pichola, Udaipur</p>
            <p class="muted small">Experience the royal grandeur of a Mewar palace, nestled on the banks of Lake Pichola.</p>
            <div class="tag-list"><span class="badge">Pool</span> <span class="badge">Gym</span> <span class="badge">Bar</span></div>
            <div class="row between wrap" style="margin-top:6px">
              <span class="price">₹75,000<small> / night</small></span>
              <span class="row" style="gap:10px">
                <a runat="server" class="btn btn-sm btn-outline" href="~/Pages/hotel.aspx">View Details</a>
                <a runat="server" class="btn btn-sm btn-primary" href="~/Booking/Payment.aspx">Book Now</a>
              </span>
            </div>
          </div>
        </article>
        <article class="hotel-card">
          <img runat="server" class="photo" src="~/images/rambagh.jpg" alt="Rajasthan Heritage Haveli" />
          <div class="body">
            <div class="row between wrap">
              <h3>Rajasthan Heritage Haveli</h3>
              <span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.6</span>
            </div>
            <p class="muted small row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Civil Lines, Udaipur</p>
            <p class="muted small">Modern luxury steeped in Rajasthani heritage. A stunning boutique hotel with gold-leaf interiors.</p>
            <div class="tag-list"><span class="badge">Spa</span> <span class="badge">Boat Access</span></div>
            <div class="row between wrap" style="margin-top:6px">
              <span class="price">₹22,800<small> / night</small></span>
              <span class="row" style="gap:10px">
                <a runat="server" class="btn btn-sm btn-outline" href="~/Pages/hotel.aspx">View Details</a>
                <a runat="server" class="btn btn-sm btn-primary" href="~/Booking/Payment.aspx">Book Now</a>
              </span>
            </div>
          </div>
        </article>
        </section>
      </div>
    </div>
</asp:Content>
