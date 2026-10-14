<%@ Page Title="Dashboard | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="dash.aspx.cs" Inherits="WebApplication1.Dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
      <div class="app-shell">
        <nav class="side-nav" aria-label="Dashboard">
          <span class="label">Dashboard</span>
          <a runat="server" href="~/Account/dash.aspx" aria-current="page"><svg class="icon" aria-hidden="true"><use href="#i-home"/></svg> Overview</a>
          <a runat="server" href="~/Booking/trips.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> My Trips</a>
          <a runat="server" href="~/Booking/saved.aspx"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg> Saved</a>
          <a runat="server" href="~/Account/Profile.aspx"><svg class="icon" aria-hidden="true"><use href="#i-settings-user"/></svg> Profile</a>
          <a runat="server" href="~/Pages/index.aspx" data-signout="true"><svg class="icon" aria-hidden="true"><use href="#i-logout"/></svg> Sign Out</a>
        </nav>
        <div>
          <div class="row between wrap" style="margin-bottom:28px">
            <div>
              <h1 style="font-size:2.2rem">Welcome back, <span data-user-name>Arjun</span> 👋</h1>
              <p class="muted" style="margin-top:8px">Your upcoming trips are all set and ready to go.</p>
            </div>
            <a runat="server" class="btn btn-primary" href="~/Pages/flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-plus"/></svg> Plan a Trip</a>
          </div>

          <div class="grid grid-3" style="margin-bottom:24px">
            <div class="stat"><div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg></div><div><b>12</b><span>Trips Taken</span></div></div>
            <div class="stat"><div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-trending"/></svg></div><div><b>45k</b><span>Miles Travelled</span></div></div>
            <div class="stat"><div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg></div><div><b>42k</b><span>Loyalty Points</span></div></div>
          </div>

          <div class="split split-wide" style="margin-bottom:24px">
            <article class="next-trip">
              <img runat="server" src="~/images/leh.jpg" alt="Snow-capped mountains in Manali" />
              <span class="badge badge-blue" style="justify-self:start;margin-bottom:auto">Upcoming · In 14 Days</span>
              <h2 style="margin-top:120px">Manali, Himachal Pradesh</h2>
              <p class="muted" style="margin:8px 0 18px">Oct 12 – Oct 19 · 2 Travelers · Confirmed</p>
              <a runat="server" class="btn btn-soft" style="justify-self:start" href="~/Booking/trips.aspx">View Itinerary <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
            </article>
            <article class="card">
              <div class="panel-head">
                <h3>Travel Spending</h3>
                <span class="badge">This Year</span>
              </div>
              <div class="bars" aria-hidden="true">
                <div style="height:34%"></div>
                <div style="height:48%"></div>
                <div style="height:28%"></div>
                <div class="hi" style="height:88%"></div>
                <div style="height:52%"></div>
                <div style="height:40%"></div>
              </div>
              <div class="bars-labels"><span>Jan</span><span>Feb</span><span>Mar</span><span>Apr</span><span>May</span><span>Jun</span></div>
              <hr class="divider">
              <div class="kv" style="padding:0"><span>Total this year</span><strong>₹4,82,000</strong></div>
            </article>
          </div>

          <div class="section-head" style="margin-bottom:20px">
            <div>
              <h2 style="font-size:1.5rem">Curated for you</h2>
              <p class="small">Picked from your saved places and past trips.</p>
            </div>
            <a runat="server" class="btn btn-sm btn-outline" href="~/Booking/saved.aspx">View saved <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
          </div>
          <div class="grid grid-3">
      <a runat="server" class="dest-card" href="~/Pages/destination.aspx">
        <img runat="server" class="photo" src="~/images/munnar.jpg" alt="Munnar" />
        <div class="dest-card-body">
          <h3>Munnar</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Tea Gardens, Kerala</span>
            <span class="price">₹9,500<small> onwards</small></span>
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
        <img runat="server" class="photo" src="~/images/lake.jpg" alt="Udaipur" />
        <div class="dest-card-body">
          <h3>Udaipur</h3>
          <div class="dest-meta">
            <span class="row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Lakes and Palaces</span>
            <span class="price">₹12,500<small> onwards</small></span>
          </div>
        </div>
      </a>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
