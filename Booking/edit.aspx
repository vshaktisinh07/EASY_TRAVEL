<%@ Page Title="Edit Booking | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WebApplication1.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm">
      <p style="padding:24px 0 8px"><a runat="server" class="link row small" href="~/Booking/trips.aspx" style="display:inline-flex"><svg class="icon" aria-hidden="true"><use href="#i-arrow-left"/></svg> Back to My Trips</a></p>
      <div class="row between wrap" style="margin-bottom:28px">
        <div>
          <h1 style="font-size:2.2rem">Edit Booking</h1>
          <p class="muted" style="margin-top:8px">Reference: <strong>ET-8492</strong> · Manali, Himachal Pradesh · Arjun Sharma</p>
        </div>
        <span class="badge badge-blue">Modification Mode Active</span>
      </div>

      <div class="split">
        <div class="stack" style="gap:24px">
          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-calendar"/></svg> Stay Dates</h3>
            <p class="muted small" style="margin-bottom:16px">Currently: 12/10/2024 – 16/10/2024 (4 nights)</p>
            <div class="form-grid">
              <div class="field">
                <label for="ed-in">Check-in</label>
                <input class="input" id="ed-in" type="text" value="12/10/2024">
              </div>
              <div class="field">
                <label for="ed-out">Check-out</label>
                <input class="input" id="ed-out" type="text" value="18/10/2024">
              </div>
            </div>
            <p class="small" style="margin-top:12px;color:var(--success)">Extended by 2 nights. Rate differences apply.</p>
          </section>

          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-users"/></svg> Room &amp; Guests</h3>
            <div class="row between wrap" style="gap:18px">
              <div>
                <span class="label">Guests</span>
                <div class="stepper" style="margin-top:8px">
                  <button type="button" data-step="-1" aria-label="Fewer guests"><svg class="icon" aria-hidden="true"><use href="#i-minus"/></svg></button>
                  <output>2</output>
                  <button type="button" data-step="1" aria-label="More guests"><svg class="icon" aria-hidden="true"><use href="#i-plus"/></svg></button>
                </div>
              </div>
              <div class="field grow" style="max-width:320px">
                <label for="ed-room">Room Category</label>
                <select class="select" id="ed-room">
                  <option>Luxury Lake View</option>
                  <option selected>Palace Suite (Upgrade) · +₹15,000 / night</option>
                </select>
              </div>
            </div>
          </section>

          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> Flights</h3>
            <div class="row between wrap" style="gap:18px">
              <div class="timeline" style="text-align:left;max-width:380px;flex:1">
                <div><div class="t">09:45</div><div class="c">DEL</div></div>
                <div class="mid"><span>1h 20m</span><div class="line"></div><span>IndiGo 6E-219</span></div>
                <div><div class="t">11:05</div><div class="c">KUU</div></div>
              </div>
              <div class="stack" style="gap:10px">
                <a runat="server" class="btn btn-sm btn-outline" href="~/Booking/seat.aspx">Seat 12A · Change</a>
                <button class="btn btn-sm btn-ghost" type="button">Upgrade Class</button>
              </div>
            </div>
          </section>

          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Add Baggage</h3>
            <p class="muted small" style="margin-bottom:16px">Pre-book now and save up to 40% compared to airport prices.</p>
            <div class="grid grid-3" style="gap:14px">
              <label class="pay-method" style="flex-direction:column;align-items:flex-start">
                <input type="radio" name="bag">
                <b>+5 kg</b><span class="muted small">Additional checked bag</span><span class="price" style="font-size:1.1rem">₹1,200</span>
              </label>
              <label class="pay-method" style="flex-direction:column;align-items:flex-start">
                <input type="radio" name="bag" checked>
                <span class="row between" style="width:100%"><b>+10 kg</b><span class="badge badge-blue">Popular</span></span>
                <span class="muted small">Additional checked bag</span><span class="price" style="font-size:1.1rem">₹2,200</span>
              </label>
              <label class="pay-method" style="flex-direction:column;align-items:flex-start">
                <input type="radio" name="bag">
                <b>+15 kg</b><span class="muted small">Oversized / extra heavy</span><span class="price" style="font-size:1.1rem">₹3,000</span>
              </label>
            </div>
            <div class="alert alert-warn" style="margin-top:16px">
              <svg class="icon" aria-hidden="true"><use href="#i-info"/></svg>
              <span>Prices shown are valid for pre-booking only. Purchasing extra baggage at the airport counter will incur higher fees. A single piece cannot exceed 32&nbsp;kg.</span>
            </div>
          </section>
        </div>

        <aside class="card sticky">
          <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-edit"/></svg> Change Summary</h3>
          <ul class="list-plain">
            <li class="kv"><span>Base fare adjustment</span><strong>+₹30,000</strong></li>
            <li class="kv"><span>Seat selection (12A)</span><strong>+₹850</strong></li>
            <li class="kv"><span>Extra baggage (+10 kg)</span><strong>+₹2,200</strong></li>
            <li class="kv"><span>Change fee</span><strong style="color:var(--success)">₹0 (Elite waived)</strong></li>
            <li class="kv"><span>Taxes &amp; fees</span><strong>+₹5,400</strong></li>
          </ul>
          <div class="kv kv-total"><span>Difference to pay</span><strong>₹38,450</strong></div>
          <div class="stack" style="margin-top:18px;gap:10px">
            <a runat="server" class="btn btn-primary btn-block" href="~/Booking/Payment.aspx"><svg class="icon" aria-hidden="true"><use href="#i-check"/></svg> Confirm Changes</a>
            <a runat="server" class="btn btn-ghost btn-block" href="~/Booking/trips.aspx">Discard Modifications</a>
          </div>
        </aside>
      </div>
    </div>
</asp:Content>
