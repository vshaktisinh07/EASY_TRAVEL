<%@ Page Title="Revenue | EasyTravel Admin" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="adm_revenue.aspx.cs" Inherits="WebApplication1.AdmRevenue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="admin-head">
        <div>
          <h1>Revenue &amp; Finance</h1>
          <p>Current year versus previous year, taxes, and settlement summary.</p>
        </div>
        <div class="row">
          <div class="segmented" role="tablist" aria-label="Period">
            <button type="button" role="tab" aria-selected="true">Q3 2024</button>
            <button type="button" role="tab" aria-selected="false">YTD</button>
            <button type="button" role="tab" aria-selected="false">All Time</button>
          </div>
          <button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg> PDF Report</button>
        </div>
      </div>

      <div class="kpis">
        <div class="kpi"><small>Total Revenue</small><b>₹2.4 Cr</b><span class="delta">↗ +14.2% vs last quarter</span></div>
        <div class="kpi"><small>Net Profit</small><b>₹84.5 L</b><span class="delta">↗ +8.7% vs last quarter</span></div>
        <div class="kpi"><small>Taxes Collected</small><b>₹11.2 L</b><span class="delta">Stable</span></div>
        <div class="kpi"><small>Refunds Processed</small><b>₹4.5 L</b><span class="delta">↘ −2% (improvement)</span></div>
      </div>

      <div class="split split-wide" style="margin-bottom:24px">
        <section class="panel">
          <div class="panel-head">
            <h3>Revenue Comparison</h3>
            <span class="legend small"><i style="background:#adc6ff;border:0"></i>2024&ensp;<i style="background:#33415e;border:0"></i>2023</span>
          </div>
          <svg class="chart-area" viewBox="0 0 108 44" preserveAspectRatio="none" role="img" aria-label="Monthly revenue bars, 2024 versus 2023">
            <g><rect x="8" y="25" width="5" height="15" rx="1" fill="#adc6ff"/><rect x="14" y="28" width="5" height="12" rx="1" fill="#33415e"/></g>
            <g><rect x="24" y="19" width="5" height="21" rx="1" fill="#adc6ff"/><rect x="30" y="22" width="5" height="18" rx="1" fill="#33415e"/></g>
            <g><rect x="40" y="22" width="5" height="18" rx="1" fill="#adc6ff"/><rect x="46" y="20" width="5" height="20" rx="1" fill="#33415e"/></g>
            <g><rect x="56" y="14" width="5" height="26" rx="1" fill="#adc6ff"/><rect x="62" y="18" width="5" height="22" rx="1" fill="#33415e"/></g>
            <g><rect x="72" y="17" width="5" height="23" rx="1" fill="#adc6ff"/><rect x="78" y="15" width="5" height="25" rx="1" fill="#33415e"/></g>
            <g><rect x="88" y="7" width="5" height="33" rx="1" fill="#adc6ff"/><rect x="94" y="14" width="5" height="26" rx="1" fill="#33415e"/></g>
          </svg>
          <div class="bars-labels"><span>Jan</span><span>Feb</span><span>Mar</span><span>Apr</span><span>May</span><span>Jun</span></div>
        </section>
        <section class="panel">
          <div class="panel-head"><h3>Top Performer</h3><span class="badge badge-blue">42% margin</span></div>
          <h3 style="margin-bottom:8px">The Taj Lake Palace, Udaipur</h3>
          <p class="muted small" style="line-height:1.7">This property is currently driving the highest margin per booking due to optimized package deals offered last month.</p>
          <hr class="divider">
          <ul class="list-plain small">
            <li class="kv"><span>Revenue</span><strong>₹8,42,000</strong></li>
            <li class="kv"><span>Bookings</span><strong>126</strong></li>
          </ul>
        </section>
      </div>

      <section class="panel" style="padding:0">
        <div class="panel-head" style="padding:20px 20px 0"><h3>High-Value Transactions</h3><a runat="server" class="link small" href="~/Admin/adm_reports.aspx">View all</a></div>
        <div class="table-wrap">
          <table>
            <thead>
              <tr><th>Transaction ID</th><th>Date</th><th>Type</th><th class="t-right">Amount</th><th>Status</th></tr>
            </thead>
            <tbody>
              <tr><td>#TRX-8924</td><td>Oct 24, 2024</td><td>Heritage Wedding Pkg</td><td class="t-right"><b>₹35,00,000</b></td><td><span class="badge badge-green">Completed</span></td></tr>
              <tr><td>#TRX-8923</td><td>Oct 23, 2024</td><td>Goa Luxury Villa</td><td class="t-right"><b>₹10,25,000</b></td><td><span class="badge badge-green">Completed</span></td></tr>
              <tr><td>#TRX-8920</td><td>Oct 22, 2024</td><td>Business Class Mumbai–London</td><td class="t-right"><b>₹2,15,000</b></td><td><span class="badge badge-amber">Processing</span></td></tr>
            </tbody>
          </table>
        </div>
      </section>
      <footer>
        <span>© 2024 EasyTravel. Premium Admin Suite.</span>
        <span>Support · Documentation · API Status</span>
      </footer>
    
</asp:Content>
