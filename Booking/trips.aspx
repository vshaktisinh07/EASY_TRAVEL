<%@ Page Title="My Trips | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="trips.aspx.cs" Inherits="WebApplication1.Trips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
      <div class="app-shell">
        <nav class="side-nav" aria-label="Dashboard">
          <span class="label">Dashboard</span>
          <a runat="server" href="~/Account/dash.aspx"><svg class="icon" aria-hidden="true"><use href="#i-home"/></svg> Overview</a>
          <a runat="server" href="~/Booking/trips.aspx" aria-current="page"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> My Trips</a>
          <a runat="server" href="~/Booking/saved.aspx"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg> Saved</a>
          <a runat="server" href="~/Account/Profile.aspx"><svg class="icon" aria-hidden="true"><use href="#i-settings-user"/></svg> Profile</a>
          <a runat="server" href="~/Pages/index.aspx" data-signout="true"><svg class="icon" aria-hidden="true"><use href="#i-logout"/></svg> Sign Out</a>
        </nav>
        <div>
          <div style="margin-bottom:24px">
            <h1 style="font-size:2.2rem">My Trips</h1>
            <p class="muted" style="margin-top:8px">Manage your upcoming journeys and review past adventures.</p>
          </div>

          <div class="tabs" role="tablist" aria-label="Trips" style="margin-bottom:24px">
            <button type="button" class="tab" role="tab" aria-selected="true" aria-controls="trips-upcoming" id="tab-upcoming">Upcoming</button>
            <button type="button" class="tab" role="tab" aria-selected="false" aria-controls="trips-past" id="tab-past">Past</button>
            <button type="button" class="tab" role="tab" aria-selected="false" aria-controls="trips-cancelled" id="tab-cancelled">Cancelled</button>
          </div>

          <div class="tab-panel" id="trips-upcoming" role="tabpanel" aria-labelledby="tab-upcoming">
            <div class="grid grid-2">
              <article class="dest-card trip-card">
                <div class="relative">
                  <img runat="server" class="photo" src="~/images/leh.jpg" alt="Manali, Himachal Pradesh" />
                  <span class="badge badge-blue" style="position:absolute;top:14px;left:14px">In 14 Days</span>
                </div>
                <div class="body">
                  <h3>Manali, Himachal Pradesh</h3>
                  <p class="muted small">Oct 12 – Oct 19, 2024 · Booking ID: ET-8492</p>
                  <div class="row wrap" style="gap:10px">
                    <a runat="server" class="btn btn-sm btn-primary" href="~/Booking/edit.aspx">Manage Booking</a>
                    <a runat="server" class="btn btn-sm btn-danger" href="~/Booking/cancel.aspx">Cancel</a>
                  </div>
                </div>
              </article>
              <article class="dest-card trip-card">
                <div class="relative">
                  <img runat="server" class="photo" src="~/images/lake.jpg" alt="Udaipur, Rajasthan" />
                  <span class="badge badge-amber" style="position:absolute;top:14px;left:14px">Planning</span>
                </div>
                <div class="body">
                  <h3>Udaipur, Rajasthan</h3>
                  <p class="muted small">Dec 22, 2024 – Jan 03, 2025 · Booking ID: ET-9110</p>
                  <div class="row wrap" style="gap:10px">
                    <a runat="server" class="btn btn-sm btn-outline" href="~/Booking/confirmed.aspx">View Itinerary</a>
                  </div>
                </div>
              </article>
            </div>
            <div class="empty" style="margin-top:24px">
              <h3>Plan Your Next Escape</h3>
              <p class="small" style="margin:10px 0 18px">Browse flights and stays to craft the perfect itinerary for your next journey.</p>
              <a runat="server" class="btn btn-sm btn-primary" href="~/Pages/destination.aspx">Explore Destinations</a>
            </div>
          </div>

          <div class="tab-panel" id="trips-past" role="tabpanel" aria-labelledby="tab-past" hidden>
            <div class="grid grid-2">
              <article class="dest-card trip-card">
                <div class="relative">
                  <img runat="server" class="photo" src="~/images/munnar.jpg" alt="Munnar, Kerala" />
                  <span class="badge badge-green" style="position:absolute;top:14px;left:14px">Completed</span>
                </div>
                <div class="body">
                  <h3>Munnar, Kerala</h3>
                  <p class="muted small">Aug 2023 · Completed</p>
                  <div class="row wrap" style="gap:10px">
                    <a runat="server" class="btn btn-sm btn-outline" href="~/Booking/confirmed.aspx">View Details</a>
                  </div>
                </div>
              </article>
              <article class="dest-card trip-card">
                <div class="relative">
                  <img runat="server" class="photo" src="~/images/goa.jpg" alt="Jaipur, Rajasthan" />
                  <span class="badge badge-green" style="position:absolute;top:14px;left:14px">Completed</span>
                </div>
                <div class="body">
                  <h3>Jaipur, Rajasthan</h3>
                  <p class="muted small">Dec 2022 · Completed</p>
                  <div class="row wrap" style="gap:10px">
                    <a runat="server" class="btn btn-sm btn-outline" href="~/Booking/confirmed.aspx">View Details</a>
                  </div>
                </div>
              </article>
            </div>
          </div>

          <div class="tab-panel" id="trips-cancelled" role="tabpanel" aria-labelledby="tab-cancelled" hidden>
            <div class="empty">
              <h3>No cancelled trips</h3>
              <p class="small" style="margin-top:10px">Cancelled bookings and their refunds will appear here.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
