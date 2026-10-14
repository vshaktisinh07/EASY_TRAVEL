<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminSidebar.ascx.cs" Inherits="WebApplication1.Controls.AdminSidebar" %>
<aside class="admin-side">
  <a runat="server" class="logo" href="~/Admin/adm_dash.aspx"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> EasyTravel</a>
  <span class="tag">Admin Suite</span>
  <a runat="server" class="btn btn-primary btn-sm" href="~/Admin/adm_flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-plus"/></svg> New Booking</a>
  <nav aria-label="Admin">
    <a runat="server" id="LnkDashboard" href="~/Admin/adm_dash.aspx"><svg class="icon" aria-hidden="true"><use href="#i-home"/></svg> Dashboard</a>
    <a runat="server" id="LnkCustomers" href="~/Admin/adm_customers.aspx"><svg class="icon" aria-hidden="true"><use href="#i-users"/></svg> Customers</a>
    <a runat="server" id="LnkFlights" href="~/Admin/adm_flights.aspx"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> Flights</a>
    <a runat="server" id="LnkHotels" href="~/Admin/adm_hotels.aspx"><svg class="icon" aria-hidden="true"><use href="#i-bed"/></svg> Hotels</a>
    <a runat="server" id="LnkRevenue" href="~/Admin/adm_revenue.aspx"><svg class="icon" aria-hidden="true"><use href="#i-trending"/></svg> Revenue</a>
    <a runat="server" id="LnkReports" href="~/Admin/adm_reports.aspx"><svg class="icon" aria-hidden="true"><use href="#i-file"/></svg> Reports</a>
    <a runat="server" id="LnkSettings" href="~/Admin/adm_settings.aspx"><svg class="icon" aria-hidden="true"><use href="#i-sliders"/></svg> Settings</a>
  </nav>
  <div class="push"></div>
  <a runat="server" class="btn btn-ghost btn-sm" href="~/Account/Login.aspx" style="justify-content:flex-start"><svg class="icon" aria-hidden="true"><use href="#i-logout"/></svg> Logout</a>
</aside>
