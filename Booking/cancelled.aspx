<%@ Page Title="Cancellation Confirmed | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="cancelled.aspx.cs" Inherits="WebApplication1.Cancelled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm" style="max-width:720px">
      <div style="text-align:center;padding:48px 0 32px">
        <div class="success-mark"><svg class="icon" aria-hidden="true"><use href="#i-check-circle"/></svg></div>
        <h1 style="font-size:2.4rem">Cancellation Confirmed</h1>
        <p class="muted" style="margin-top:12px">We&rsquo;ve processed your request. A refund of <strong style="color:var(--text)">₹1,30,000</strong> is on its way to your original payment method (HDFC Bank ending 4092).</p>
      </div>

      <section class="card">
        <ul class="list-plain">
          <li class="kv"><span>Booking Ref</span><strong>ET-8492</strong></li>
          <li class="kv"><span>Trip</span><strong>Manali Retreat</strong></li>
          <li class="kv"><span>Refund amount</span><strong>₹1,30,000</strong></li>
          <li class="kv"><span>Estimated time</span><strong>5–7 business days</strong></li>
        </ul>
      </section>

      <div class="alert" style="margin-top:20px">
        <svg class="icon" aria-hidden="true"><use href="#i-info"/></svg>
        <span>Don&rsquo;t stop exploring. We&rsquo;ve saved your Manali preferences for your next adventure.</span>
      </div>

      <div class="row wrap" style="justify-content:center;margin:32px 0 40px">
        <a runat="server" class="btn btn-primary" href="~/Account/dash.aspx">Back to Dashboard</a>
        <a runat="server" class="btn btn-outline" href="~/Pages/destination.aspx">Explore New Destinations</a>
      </div>
    </div>
</asp:Content>
