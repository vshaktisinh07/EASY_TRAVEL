<%@ Page Title="Reports | EasyTravel Admin" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="adm_reports.aspx.cs" Inherits="WebApplication1.AdmReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="admin-head">
        <div>
          <h1>Reports &amp; Notifications</h1>
          <p>System performance, financial metrics, and recent alerts.</p>
        </div>
        <div class="row">
          <button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-filter"/></svg> Filter</button>
          <button class="btn btn-sm btn-primary" type="button"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg> Export All</button>
        </div>
      </div>

      <div class="split split-wide">
        <div class="grid grid-2">
        <article class="panel report">
          <div class="row between">
            <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-chart"/></svg></div>
            <button class="btn btn-sm btn-ghost" type="button" aria-label="Download Booking Volume"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg></button>
          </div>
          <h3>Booking Volume</h3>
          <p class="muted small">Monthly breakdown of reservations across all regions.</p>
          <p class="faint xs">Last generated: <strong>Today, 08:30 AM</strong></p>
        </article>
        <article class="panel report">
          <div class="row between">
            <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-wallet"/></svg></div>
            <button class="btn btn-sm btn-ghost" type="button" aria-label="Download Financial Overview (₹)"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg></button>
          </div>
          <h3>Financial Overview (₹)</h3>
          <p class="muted small">Revenue, taxes and settlement summary.</p>
          <p class="faint xs">Last generated: <strong>Today, 09:10 AM</strong></p>
        </article>
        <article class="panel report">
          <div class="row between">
            <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-users"/></svg></div>
            <button class="btn btn-sm btn-ghost" type="button" aria-label="Download Customer Demographics"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg></button>
          </div>
          <h3>Customer Demographics</h3>
          <p class="muted small">User acquisition, retention rates, and profile analysis.</p>
          <p class="faint xs">Last generated: <strong>Oct 12, 09:00 AM</strong></p>
        </article>
        <article class="panel report">
          <div class="row between">
            <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-search"/></svg></div>
            <button class="btn btn-sm btn-ghost" type="button" aria-label="Download Search Analytics"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg></button>
          </div>
          <h3>Search Analytics</h3>
          <p class="muted small">Top searches, conversions, and page load latency.</p>
          <p class="faint xs">Last generated: <strong>Today, 10:15 AM</strong></p>
        </article>
        </div>

        <section class="panel">
          <div class="panel-head">
            <h3><svg class="icon" aria-hidden="true"><use href="#i-bell"/></svg> Recent Alerts</h3>
            <button class="link small" type="button">Mark all read</button>
          </div>
          <div class="stack" style="gap:12px">
            <div class="request"><b class="small">Traffic Spike</b><span class="muted small">High API latency detected in Europe region during peak hours.</span><span class="faint xs">2m ago</span></div>
            <div class="request"><b class="small">New VIP Booking</b><span class="muted small">Aarav Sharma confirmed a ₹10L luxury package.</span><span class="faint xs">15m ago</span></div>
            <div class="request"><b class="small">Payment Processed</b><span class="muted small">Invoice #INV-2024-893 settled successfully.</span><span class="faint xs">1h ago</span></div>
            <div class="request"><b class="small">System Update</b><span class="muted small">v2.4.1 deployed successfully. Booking engine updated.</span><span class="faint xs">Yesterday</span></div>
          </div>
        </section>
      </div>
      <footer>
        <span>© 2024 EasyTravel. Premium Admin Suite.</span>
        <span>Support · Documentation · API Status</span>
      </footer>
    
</asp:Content>
