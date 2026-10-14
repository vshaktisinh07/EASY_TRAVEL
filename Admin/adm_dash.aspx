<%@ Page Title="Dashboard | EasyTravel Admin" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="adm_dash.aspx.cs" Inherits="WebApplication1.AdmDash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="admin-head">
        <div>
          <h1>Welcome back, Rehan 👋</h1>
          <p>Here&rsquo;s what&rsquo;s happening with EasyTravel today.</p>
        </div>
        <div class="row">
          <button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-bell"/></svg> Alerts</button>
          <span class="badge badge-blue">Super User</span>
        </div>
      </div>

      <div class="kpis">
        <div class="kpi"><small>Total Bookings</small><b>12,480</b><span class="delta">↗ +12% vs last month</span></div>
        <div class="kpi"><small>Revenue</small><b>₹48,75,000</b><span class="delta">↗ +8% vs last month</span></div>
        <div class="kpi"><small>Active Users</small><b>8,420</b><span class="delta">↗ +15% vs last month</span></div>
        <div class="kpi"><small>New Signups</small><b>3,210</b><span class="delta">↗ +22% vs last month</span></div>
      </div>

      <div class="split split-wide" style="margin-bottom:24px">
        <section class="panel">
          <div class="panel-head">
            <h3>Revenue Analytics</h3>
            <span class="badge">This Month</span>
          </div>
          <svg class="chart-area" viewBox="0 0 100 40" preserveAspectRatio="none" role="img" aria-label="Revenue trend, rising through the month">
            <defs>
              <linearGradient id="rev-fill" x1="0" y1="0" x2="0" y2="1">
                <stop offset="0" stop-color="#3b82f6" stop-opacity=".35"/>
                <stop offset="1" stop-color="#3b82f6" stop-opacity="0"/>
              </linearGradient>
            </defs>
            <path d="M0 34 10 32 20 28 30 29 40 24 50 25 60 18 70 20 80 10 90 14 100 6 V40 H0 Z" fill="url(#rev-fill)"/>
            <path d="M0 34 10 32 20 28 30 29 40 24 50 25 60 18 70 20 80 10 90 14 100 6" fill="none" stroke="#adc6ff" stroke-width="1.2"/>
          </svg>
        </section>
        <section class="panel">
          <div class="panel-head">
            <h3>Live Requests</h3>
            <a runat="server" class="link small" href="~/Admin/adm_customers.aspx">View all</a>
          </div>
          <div class="stack" style="gap:12px">
            <div class="request">
              <em class="muted">&ldquo;Booking request: Goa beach stay, 2 adults, under ₹5,000 per night.&rdquo;</em>
              <div class="row between"><span class="faint xs">2 mins ago · User K-882</span><button class="btn btn-sm btn-outline" type="button">Review</button></div>
            </div>
            <div class="request">
              <em class="muted">&ldquo;Honeymoon package for Europe, 14 days, historical sites.&rdquo;</em>
              <div class="row between"><span class="faint xs">12 mins ago · User A-114</span><button class="btn btn-sm btn-outline" type="button">Review</button></div>
            </div>
            <div class="request">
              <em class="muted">&ldquo;Corporate retreat for 20 people near Bangalore.&rdquo;</em>
              <div class="row between"><span class="faint xs">45 mins ago · User C-402</span><button class="btn btn-sm btn-outline" type="button">Review</button></div>
            </div>
          </div>
        </section>
      </div>

      <section class="panel">
        <div class="panel-head">
          <h3>Recent Bookings</h3>
          <a runat="server" class="link small" href="~/Admin/adm_customers.aspx">View all</a>
        </div>
        <div class="table-wrap">
          <table>
            <thead>
              <tr><th>ID</th><th>Customer</th><th>Destination</th><th>Date</th><th class="t-right">Amount</th><th>Status</th></tr>
            </thead>
            <tbody>
              <tr><td>#BK-8902</td><td>Aarav Sharma</td><td>Tokyo, Japan</td><td>Oct 12, 2024</td><td class="t-right">₹1,45,000</td><td><span class="badge badge-green">Confirmed</span></td></tr>
              <tr><td>#BK-8901</td><td>Neha Gupta</td><td>Bali, Indonesia</td><td>Oct 11, 2024</td><td class="t-right">₹85,000</td><td><span class="badge badge-green">Confirmed</span></td></tr>
              <tr><td>#BK-8900</td><td>Vikram Singh</td><td>Goa, India</td><td>Oct 10, 2024</td><td class="t-right">₹32,500</td><td><span class="badge badge-amber">Pending</span></td></tr>
              <tr><td>#BK-8899</td><td>Priya Patel</td><td>Zermatt, Switzerland</td><td>Oct 09, 2024</td><td class="t-right">₹3,20,000</td><td><span class="badge badge-green">Confirmed</span></td></tr>
              <tr><td>#BK-8898</td><td>Rahul Desai</td><td>Udaipur, India</td><td>Oct 08, 2024</td><td class="t-right">₹45,000</td><td><span class="badge badge-green">Confirmed</span></td></tr>
            </tbody>
          </table>
        </div>
      </section>
      <footer>
        <span>© 2024 EasyTravel. Premium Admin Suite.</span>
        <span>Support · Documentation · API Status</span>
      </footer>
    
</asp:Content>
