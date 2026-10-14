<%@ Page Title="Flights | EasyTravel Admin" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="adm_flights.aspx.cs" Inherits="WebApplication1.AdmFlights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="admin-head">
        <div>
          <h1>Flight Operations</h1>
          <p>Manage and monitor active flight schedules and seating capacity.</p>
        </div>
        <div class="segmented" role="tablist" aria-label="Scope">
          <button type="button" role="tab" aria-selected="true"><svg class="icon" aria-hidden="true"><use href="#i-globe"/></svg> International</button>
          <button type="button" role="tab" aria-selected="false">Domestic</button>
        </div>
      </div>

      <div class="alert" style="margin-bottom:24px">
        <svg class="icon" aria-hidden="true"><use href="#i-trending"/></svg>
        <span><b>Demand alert:</b> Flight AI 864 (BOM → DEL) is experiencing higher than usual demand. Consider opening premium economy seating or adjusting pricing thresholds.</span>
      </div>

      <section class="panel" style="padding:0">
        <div class="table-wrap">
          <table>
            <thead>
              <tr><th>Flight</th><th>Route &amp; Time</th><th>Capacity</th><th class="t-right">Price (Base)</th><th class="t-right">Actions</th></tr>
            </thead>
            <tbody>
              <tr>
                <td><b>AI 864</b><br><span class="faint xs">Air India</span></td>
                <td>BOM &rarr; DEL<br><span class="faint xs">19:00 – 21:15</span></td>
                <td><div class="row"><div class="meter"><i class="hot" style="width:89%"></i></div><span class="small">89%</span></div><span class="faint xs">42 seats left</span></td>
                <td class="t-right"><b>₹5,450</b></td>
                <td class="t-right"><button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-edit"/></svg> Edit</button></td>
              </tr>
              <tr>
                <td><b>6E 2134</b><br><span class="faint xs">IndiGo</span></td>
                <td>BLR &rarr; MAA<br><span class="faint xs">08:15 – 09:20</span></td>
                <td><div class="row"><div class="meter"><i style="width:63%"></i></div><span class="small">63%</span></div><span class="faint xs">160 seats left</span></td>
                <td class="t-right"><b>₹3,820</b></td>
                <td class="t-right"><button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-edit"/></svg> Edit</button></td>
              </tr>
              <tr>
                <td><b>QP 1102</b><br><span class="faint xs">Akasa Air</span></td>
                <td>CCU &rarr; HYD<br><span class="faint xs">11:45 – 14:00</span></td>
                <td><div class="row"><div class="meter"><i class="hot" style="width:96%"></i></div><span class="small">96%</span></div><span class="faint xs">12 seats left</span></td>
                <td class="t-right"><b>₹6,250</b></td>
                <td class="t-right"><button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-edit"/></svg> Edit</button></td>
              </tr>
            </tbody>
          </table>
        </div>
      </section>
      <footer>
        <span>© 2024 EasyTravel. Premium Admin Suite.</span>
        <span>Support · Documentation · API Status</span>
      </footer>
    
</asp:Content>
