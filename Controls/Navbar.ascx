<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="WebApplication1.Controls.Navbar" %>
<header class="site-header">
  <div class="container">
    <a runat="server" class="logo" href="~/Pages/index.aspx"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> EasyTravel</a>
    <nav class="nav" id="site-nav" aria-label="Main">
      <a runat="server" id="LnkFlights" href="~/Pages/flights.aspx">Flights</a>
      <a runat="server" id="LnkHotels" href="~/Pages/hotels.aspx">Hotels</a>
      <a runat="server" id="LnkDestinations" href="~/Pages/destination.aspx">Destinations</a>
      <a runat="server" id="LnkDashboard" href="~/Account/dash.aspx">Dashboard</a>
    </nav>
    <div class="header-actions">
      <span class="auth-cta">
        <a runat="server" class="btn btn-sm btn-ghost" href="~/Account/Login.aspx">Sign In</a>
        <a runat="server" class="btn btn-sm btn-soft" href="~/Account/Signup.aspx">Sign Up</a>
      </span>
      <details class="user-menu" hidden>
        <summary aria-label="Account menu">
          <span class="avatar-sm" data-user-initials>A</span>
          <span data-user-name>Account</span>
          <svg class="icon" aria-hidden="true"><use href="#i-chevron-down"/></svg>
        </summary>
        <div class="menu-pop">
          <a runat="server" href="~/Account/dash.aspx"><svg class="icon" aria-hidden="true"><use href="#i-home"/></svg> Dashboard</a>
          <a runat="server" href="~/Booking/trips.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> My Trips</a>
          <a runat="server" href="~/Account/Profile.aspx"><svg class="icon" aria-hidden="true"><use href="#i-settings-user"/></svg> Profile</a>
          <a runat="server" href="~/Pages/index.aspx" data-signout="true"><svg class="icon" aria-hidden="true"><use href="#i-logout"/></svg> Sign Out</a>
        </div>
      </details>
      <button class="menu-toggle" aria-expanded="false" aria-controls="site-nav" aria-label="Menu"><svg class="icon" aria-hidden="true"><use href="#i-menu"/></svg></button>
    </div>
  </div>
</header>
