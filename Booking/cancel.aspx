<%@ Page Title="Cancel Booking | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="cancel.aspx.cs" Inherits="WebApplication1.Cancel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm" style="max-width:860px">
      <p style="padding:24px 0 8px"><a runat="server" class="link row small" href="~/Booking/trips.aspx" style="display:inline-flex"><svg class="icon" aria-hidden="true"><use href="#i-arrow-left"/></svg> Back to Booking Details</a></p>
      <div style="margin-bottom:28px">
        <h1 style="font-size:2.2rem">Are you sure you want to cancel your Manali trip?</h1>
        <p class="muted" style="margin-top:10px">Booking Ref: <strong>ET-8492</strong> · This action cannot be undone.</p>
      </div>

      <div class="grid grid-2" style="align-items:start">
        <section class="card">
          <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-wallet"/></svg> Refund Breakdown</h3>
          <ul class="list-plain">
            <li class="kv"><span>Total paid</span><strong>₹1,45,000</strong></li>
            <li class="kv"><span>Cancellation fee (policy applied)</span><strong style="color:var(--danger)">−₹15,000</strong></li>
          </ul>
          <div class="kv kv-total"><span>Amount to be refunded</span><strong>₹1,30,000</strong></div>
          <p class="faint xs" style="margin-top:14px">Refund will be processed to the original payment method (HDFC Bank ending 4092) within 5–7 business days.</p>
        </section>

        <aside class="card" style="border-color:rgba(59,130,246,.4)">
          <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-info"/></svg> Good to know</h3>
          <p class="muted small" style="line-height:1.7">Prices for stays in Manali are expected to rise by <strong style="color:var(--primary)">40% next month</strong> due to peak season demand. Would you prefer to reschedule for free instead of cancelling?</p>
          <a runat="server" class="btn btn-soft btn-block" style="margin-top:18px" href="~/Booking/edit.aspx">Reschedule Trip for Free</a>
        </aside>
      </div>

      <section class="card" style="margin-top:24px">
        <div class="field" style="max-width:420px">
          <label for="cx-reason">Please tell us why you are cancelling (optional)</label>
          <select class="select" id="cx-reason">
            <option>Select a reason…</option>
            <option>Change of plans</option>
            <option>Found a better price</option>
            <option>Personal emergency</option>
          </select>
        </div>
        <div class="row wrap" style="margin-top:22px">
          <a runat="server" class="btn btn-outline" href="~/Booking/trips.aspx">Keep Booking</a>
          <a runat="server" class="btn btn-danger" href="~/Booking/cancelled.aspx"><svg class="icon" aria-hidden="true"><use href="#i-x"/></svg> Confirm Cancellation</a>
        </div>
      </section>
    </div>
</asp:Content>
