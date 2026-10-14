<%@ Page Title="Saved Destinations | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="saved.aspx.cs" Inherits="WebApplication1.Saved" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
      <div class="app-shell">
        <nav class="side-nav" aria-label="Dashboard">
          <span class="label">Dashboard</span>
          <a runat="server" href="~/Account/dash.aspx"><svg class="icon" aria-hidden="true"><use href="#i-home"/></svg> Overview</a>
          <a runat="server" href="~/Booking/trips.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> My Trips</a>
          <a runat="server" href="~/Booking/saved.aspx" aria-current="page"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg> Saved</a>
          <a runat="server" href="~/Account/Profile.aspx"><svg class="icon" aria-hidden="true"><use href="#i-settings-user"/></svg> Profile</a>
          <a runat="server" href="~/Pages/index.aspx" data-signout="true"><svg class="icon" aria-hidden="true"><use href="#i-logout"/></svg> Sign Out</a>
        </nav>
        <div>
          <div class="row between wrap" style="margin-bottom:24px">
            <div>
              <h1 style="font-size:2.2rem">Saved Destinations</h1>
              <p class="muted" style="margin-top:8px">Your curated list of future escapes.</p>
            </div>
            <div class="segmented" role="tablist" aria-label="Region">
              <button type="button" role="tab" aria-selected="true">All</button>
              <button type="button" role="tab" aria-selected="false">North</button>
              <button type="button" role="tab" aria-selected="false">South</button>
            </div>
          </div>
          <div class="grid grid-3">
            <article class="dest-card">
              <div class="relative">
                <img runat="server" class="photo" src="~/images/goa.jpg" alt="Alleppey" />
                <button class="heart" type="button" data-toggle aria-pressed="true" aria-label="Remove from saved"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg></button>
              </div>
              <div class="dest-card-body">
                <div class="row between">
                  <h3>Alleppey</h3>
                  <span class="price" style="font-size:1.05rem">₹12,000+</span>
                </div>
                <p class="muted small row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Kerala, India</p>
                <p class="muted small">Cruise through tranquil backwaters on a traditional houseboat.</p>
                <a runat="server" class="btn btn-sm btn-outline" style="justify-self:start" href="~/Pages/flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Plan Trip</a>
              </div>
            </article>
            <article class="dest-card">
              <div class="relative">
                <img runat="server" class="photo" src="~/images/munnar.jpg" alt="Coorg" />
                <button class="heart" type="button" data-toggle aria-pressed="true" aria-label="Remove from saved"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg></button>
              </div>
              <div class="dest-card-body">
                <div class="row between">
                  <h3>Coorg</h3>
                  <span class="price" style="font-size:1.05rem">₹8,500+</span>
                </div>
                <p class="muted small row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Karnataka, India</p>
                <p class="muted small">Explore misty hills, sprawling coffee plantations, and waterfalls.</p>
                <a runat="server" class="btn btn-sm btn-outline" style="justify-self:start" href="~/Pages/flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Plan Trip</a>
              </div>
            </article>
            <article class="dest-card">
              <div class="relative">
                <img runat="server" class="photo" src="~/images/leh.jpg" alt="Gokarna" />
                <button class="heart" type="button" data-toggle aria-pressed="true" aria-label="Remove from saved"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg></button>
              </div>
              <div class="dest-card-body">
                <div class="row between">
                  <h3>Gokarna</h3>
                  <span class="price" style="font-size:1.05rem">₹6,000+</span>
                </div>
                <p class="muted small row"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Karnataka, India</p>
                <p class="muted small">Unwind on secluded beaches and explore ancient temples.</p>
                <a runat="server" class="btn btn-sm btn-outline" style="justify-self:start" href="~/Pages/flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Plan Trip</a>
              </div>
            </article>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
