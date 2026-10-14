<%@ Page Title="Customers | EasyTravel Admin" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="adm_customers.aspx.cs" Inherits="WebApplication1.AdmCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="admin-head">
        <div>
          <h1>Customer Management</h1>
          <p>Manage your client base, view travel histories, and analyze loyalty tiers.</p>
        </div>
        <button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg> Export Data</button>
      </div>

      <div class="row wrap" style="margin-bottom:20px;gap:12px">
        <div class="input-icon grow" style="max-width:380px"><svg class="icon" aria-hidden="true"><use href="#i-search"/></svg><input class="input" type="search" placeholder="Search by name, email, or ID…" aria-label="Search customers"></div>
        <select class="select" style="width:150px;height:44px"><option>All Tiers</option><option>Elite</option><option>Platinum</option><option>Gold</option></select>
        <select class="select" style="width:170px;height:44px"><option>Sort by Spend</option><option>Sort by Bookings</option></select>
        <button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-filter"/></svg> More Filters</button>
      </div>

      <section class="panel" style="padding:0">
        <div class="table-wrap">
          <table>
            <thead>
              <tr><th>Customer</th><th>Contact</th><th>Tier</th><th class="t-right">Bookings</th><th class="t-right">LTV Spend</th><th class="t-right">Action</th></tr>
            </thead>
            <tbody>
              <tr>
                <td><b>Isha Patel</b><br><span class="faint xs">ID: CUST-IN-8820</span></td>
                <td>isha.patel@example.in<br><span class="faint xs">+91 98765 41270</span></td>
                <td><span class="badge badge-blue">Elite</span></td>
                <td class="t-right">42</td><td class="t-right"><b>₹1,04,50,000</b></td>
                <td class="t-right"><button class="btn btn-sm btn-ghost" type="button">View <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></button></td>
              </tr>
              <tr>
                <td><b>Aarav Sharma</b><br><span class="faint xs">ID: CUST-IN-7742</span></td>
                <td>aarav.sharma@corp.in<br><span class="faint xs">+91 91234 56788</span></td>
                <td><span class="badge">Platinum</span></td>
                <td class="t-right">18</td><td class="t-right"><b>₹57,20,000</b></td>
                <td class="t-right"><button class="btn btn-sm btn-ghost" type="button">View <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></button></td>
              </tr>
              <tr>
                <td><b>Rohan Gupta</b><br><span class="faint xs">ID: CUST-IN-9892</span></td>
                <td>rohan.gupta@ventures.in<br><span class="faint xs">+91 88667 79603</span></td>
                <td><span class="badge badge-amber">Gold</span></td>
                <td class="t-right">8</td><td class="t-right"><b>₹20,95,000</b></td>
                <td class="t-right"><button class="btn btn-sm btn-ghost" type="button">View <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></button></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="row between" style="padding:16px 18px;border-top:1px solid var(--border)">
          <span class="muted small">Showing 1 to 3 of 1,248</span>
          <span class="row"><button class="btn btn-sm btn-outline" type="button">‹ Prev</button><button class="btn btn-sm btn-outline" type="button">Next ›</button></span>
        </div>
      </section>
      <footer>
        <span>© 2024 EasyTravel. Premium Admin Suite.</span>
        <span>Support · Documentation · API Status</span>
      </footer>
    
</asp:Content>
