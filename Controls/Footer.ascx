<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="WebApplication1.Controls.Footer" %>
<footer class="site-footer">
  <div class="container">
    <div class="footer-grid">
      <div>
        <a runat="server" class="logo" href="~/Pages/index.aspx"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> EasyTravel</a>
        <p class="muted small" style="margin-top:14px;max-width:280px">Your trusted companion for flights and luxury stays across India and the world.</p>
      </div>
      <div>
        <h4>Platform</h4>
        <ul>
          <li><a runat="server" href="~/Pages/flights.aspx">Flights</a></li>
          <li><a runat="server" href="~/Pages/hotels.aspx">Hotels</a></li>
          <li><a runat="server" href="~/Pages/destination.aspx">Destinations</a></li>
          <li><a runat="server" href="~/Account/dash.aspx">Dashboard</a></li>
        </ul>
      </div>
      <div>
        <h4>Account</h4>
        <ul>
          <li><a runat="server" href="~/Account/Login.aspx">Sign In</a></li>
          <li><a runat="server" href="~/Account/Signup.aspx">Create Account</a></li>
          <li><a runat="server" href="~/Booking/trips.aspx">My Trips</a></li>
          <li><a runat="server" href="~/Admin/adm_dash.aspx">Admin Suite</a></li>
        </ul>
      </div>
      <div>
        <h4>Legal</h4>
        <ul>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">Terms of Service</a></li>
          <li><a href="#">Support</a></li>
        </ul>
      </div>
    </div>
    <p class="copyright">© 2024 EasyTravel. All rights reserved. Registered in India.</p>
  </div>
</footer>
