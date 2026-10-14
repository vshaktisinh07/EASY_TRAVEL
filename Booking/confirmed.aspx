<%@ Page Title="Booking Confirmed | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="confirmed.aspx.cs" Inherits="WebApplication1.Confirmed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm" style="max-width:900px">
      <div style="text-align:center;padding:40px 0 32px">
        <div class="success-mark"><svg class="icon" aria-hidden="true"><use href="#i-check-circle"/></svg></div>
        <h1 style="font-size:2.4rem">Booking Confirmed!</h1>
        <p class="muted" style="margin-top:12px">Your adventure awaits. We&rsquo;ve sent a copy to your email.</p>
        <p style="margin-top:18px"><span class="badge badge-blue"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> CONFIRMED</span>&ensp;<span class="badge">Booking ID: EZ-78A9X2</span></p>
      </div>

      <div class="ticket">
        <section class="card">
          <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> Flight Details</h3>
          <div class="timeline" style="text-align:left">
            <div><div class="t">18:30</div><div class="c">BOM · Mumbai<br>Oct 15, 2024</div></div>
            <div class="mid"><span>2h 45m</span><div class="line"></div><span>Non-stop · 6E-204</span></div>
            <div style="text-align:right"><div class="t">21:15</div><div class="c">DEL · Delhi<br>Oct 15, 2024</div></div>
          </div>
          <hr class="divider">
          <ul class="list-plain">
            <li class="kv"><span>Passenger</span><strong>Arjun Sharma</strong></li>
            <li class="kv"><span>Seat</span><strong>1C · Business Class</strong></li>
            <li class="kv"><span>Total Paid</span><strong>₹9,300 · Visa ending 4242</strong></li>
          </ul>
        </section>
        <aside class="card" style="text-align:center;display:grid;gap:16px;align-content:center;justify-items:center">
          <div class="qr"><i></i></div>
          <div>
            <b>Digital Pass Ready</b>
            <p class="muted small">Scan at terminal or lounge</p>
          </div>
        </aside>
      </div>

      <div class="row wrap" style="justify-content:center;gap:14px;margin:32px 0 48px">
        <button type="button" class="btn btn-primary no-print" onclick="window.print()"><svg class="icon" aria-hidden="true"><use href="#i-download"/></svg> Download Ticket</button>
        <a runat="server" class="btn btn-outline" href="~/Booking/trips.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Go to My Trips</a>
      </div>
    </div>
</asp:Content>
