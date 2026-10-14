<%@ Page Title="Hotels | EasyTravel Admin" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="adm_hotels.aspx.cs" Inherits="WebApplication1.AdmHotels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="admin-head">
        <div>
          <h1>Hotel Properties</h1>
          <p>Monitor occupancy, pricing, and reviews across all partner properties.</p>
        </div>
        <button class="btn btn-sm btn-primary" type="button"><svg class="icon" aria-hidden="true"><use href="#i-plus"/></svg> Add Property</button>
      </div>

      <div class="kpis" style="grid-template-columns:repeat(3,1fr)">
        <div class="kpi"><small>Total Properties</small><b>1,248</b><span class="delta">↗ +12 this month</span></div>
        <div class="kpi"><small>Avg. Occupancy</small><b>84%</b><span class="delta">Across all regions</span></div>
        <div class="kpi"><small>Reviews Pending</small><b>24</b><span class="delta">Requires review</span></div>
      </div>

      <section class="panel" style="padding:0;margin-bottom:24px">
        <div class="table-wrap">
          <table>
            <thead>
              <tr><th>Property</th><th>Location</th><th class="t-right">Price / Night</th><th>Rating</th><th>Status</th><th class="t-right">Actions</th></tr>
            </thead>
            <tbody>
              <tr>
                <td><b>The Leela Palace</b><br><span class="faint xs">Royal Luxury</span></td>
                <td>Udaipur, India</td><td class="t-right"><b>₹45,000</b></td>
                <td><span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 5.0</span></td>
                <td><span class="badge badge-green">Live</span></td>
                <td class="t-right"><label class="switch"><input type="checkbox" checked><span></span></label></td>
              </tr>
              <tr>
                <td><b>Taj Mahal Palace</b><br><span class="faint xs">Heritage Luxury</span></td>
                <td>Mumbai, India</td><td class="t-right"><b>₹38,000</b></td>
                <td><span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 5.0</span></td>
                <td><span class="badge badge-green">Live</span></td>
                <td class="t-right"><label class="switch"><input type="checkbox" checked><span></span></label></td>
              </tr>
              <tr>
                <td><b>ITC Grand Chola</b><br><span class="faint xs">Maintenance</span></td>
                <td>Chennai, India</td><td class="t-right"><b>₹22,500</b></td>
                <td><span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.2</span></td>
                <td><span class="badge badge-amber">Paused</span></td>
                <td class="t-right"><label class="switch"><input type="checkbox"><span></span></label></td>
              </tr>
            </tbody>
          </table>
        </div>
      </section>

      <div class="alert">
        <svg class="icon" aria-hidden="true"><use href="#i-trending"/></svg>
        <span><b>Inventory forecast:</b> based on booking trends for Q3, consider increasing allocation in Udaipur and expanding boutique inventory in Goa. High-net-worth bookings indicate a 14% surge in demand for properties with integrated spa services.</span>
      </div>
      <footer>
        <span>© 2024 EasyTravel. Premium Admin Suite.</span>
        <span>Support · Documentation · API Status</span>
      </footer>
    
</asp:Content>
