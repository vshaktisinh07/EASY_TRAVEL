<%@ Page Title="Guest Details" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Traveler.aspx.cs" Inherits="WebApplication1.Traveler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container section-sm">
      <div class="steps" aria-label="Booking progress">
        <span class="step current"><span class="num">1</span> Guest Details</span>
        <span class="bar"></span>
        <span class="step"><span class="num">2</span> Payment</span>
        <span class="bar"></span>
        <span class="step"><span class="num">3</span> Confirmation</span>
      </div>
      <div class="page-head" style="padding:0 0 28px">
        <h1 style="font-size:2.2rem">Who&rsquo;s traveling?</h1>
        <p>We&rsquo;ll send your booking confirmation and updates here.</p>
      </div>
      <asp:ValidationSummary ID="TravelerVal01" runat="server" CssClass="val-summary" HeaderText="Please fix the following:" />
      <div class="split">
        <div class="stack" style="gap:24px">
          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-mail"/></svg> Primary Contact</h3>
            <div class="form-grid">
              <div class="field">
                <label for="TxtEmail">Email Address</label>
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="input" TextMode="Email" placeholder="arjun@example.com" />
              <asp:RequiredFieldValidator ID="TravelerVal02" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="TravelerVal03" runat="server" ControlToValidate="TxtEmail" ValidationExpression="^[\w.+-]+@[\w-]+\.[\w.]+$" ErrorMessage="Enter a valid email address." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtPhone">Phone Number</label>
                <asp:TextBox ID="TxtPhone" runat="server" CssClass="input" placeholder="+91 98765 43210" />
              <asp:RequiredFieldValidator ID="TravelerVal04" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Phone number is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="TravelerVal05" runat="server" ControlToValidate="TxtPhone" ValidationExpression="^(\+91[\s-]?)?[6-9]\d{9}$" ErrorMessage="Enter a valid 10-digit Indian mobile number." Display="Dynamic" CssClass="val-msg" />
              </div>
            </div>
          </section>
          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-user"/></svg> Passenger 1 (Adult)</h3>
            <div class="form-grid">
              <div class="field">
                <label for="TxtFirst">First Name</label>
                <asp:TextBox ID="TxtFirst" runat="server" CssClass="input" placeholder="Arjun" />
              <asp:RequiredFieldValidator ID="TravelerVal06" runat="server" ControlToValidate="TxtFirst" ErrorMessage="First name is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="TravelerVal07" runat="server" ControlToValidate="TxtFirst" ValidationExpression="^[A-Za-z]{2,30}$" ErrorMessage="Letters only (2&#8211;30 characters)." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtLast">Last Name</label>
                <asp:TextBox ID="TxtLast" runat="server" CssClass="input" placeholder="Sharma" />
              <asp:RequiredFieldValidator ID="TravelerVal08" runat="server" ControlToValidate="TxtLast" ErrorMessage="Last name is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="TravelerVal09" runat="server" ControlToValidate="TxtLast" ValidationExpression="^[A-Za-z]{2,30}$" ErrorMessage="Letters only (2&#8211;30 characters)." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtDob">Date of Birth</label>
                <asp:TextBox ID="TxtDob" runat="server" CssClass="input" placeholder="dd/mm/yyyy" />
              <asp:RequiredFieldValidator ID="TravelerVal10" runat="server" ControlToValidate="TxtDob" ErrorMessage="Date of birth is required." Display="Dynamic" CssClass="val-msg" />
              <asp:CompareValidator ID="TravelerVal11" runat="server" ControlToValidate="TxtDob" Operator="DataTypeCheck" Type="Date" ErrorMessage="Enter a valid date (dd/mm/yyyy)." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="DdlGender">Gender</label>
                <asp:DropDownList ID="DdlGender" runat="server" CssClass="select">
                  <asp:ListItem>Male</asp:ListItem>
                  <asp:ListItem>Female</asp:ListItem>
                  <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
              </div>
              <div class="field">
                <label for="TxtPax">No. of Passengers</label>
                <asp:TextBox ID="TxtPax" runat="server" CssClass="input" Text="1" />
              <asp:RequiredFieldValidator ID="TravelerVal12" runat="server" ControlToValidate="TxtPax" ErrorMessage="Passenger count is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RangeValidator ID="TravelerVal13" runat="server" ControlToValidate="TxtPax" MinimumValue="1" MaximumValue="9" Type="Integer" ErrorMessage="Passengers must be between 1 and 9." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtPassport">Passport Number (optional)</label>
                <asp:TextBox ID="TxtPassport" runat="server" CssClass="input" placeholder="e.g. Z1234567" />
              <asp:RegularExpressionValidator ID="TravelerVal14" runat="server" ControlToValidate="TxtPassport" ValidationExpression="^[A-PR-WY][0-9]{7}$" ErrorMessage="Enter a valid Indian passport number (e.g. Z1234567)." Display="Dynamic" CssClass="val-msg" />
              </div>
            </div>
          </section>
          <asp:Button ID="BtnContinue" runat="server" Text="Continue to Payment →" CssClass="btn btn-primary btn-lg" OnClick="BtnContinue_Click" />
        </div>
        <aside class="card sticky">
          <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg> Trip Summary</h3>
          <div class="row" style="gap:14px">
            <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg></div>
            <div>
              <b>BOM &rarr; DEL</b>
              <div class="muted small">Oct 15, 2024 · Non-stop · 6E-204</div>
            </div>
          </div>
          <hr class="divider">
          <ul class="list-plain">
            <li class="kv"><span>1x Adult ticket</span><strong>₹4,580</strong></li>
            <li class="kv"><span>Seat 1C (Business)</span><strong>₹3,500</strong></li>
            <li class="kv"><span>Taxes &amp; fees</span><strong>₹1,220</strong></li>
          </ul>
          <div class="kv kv-total"><span>Total</span><strong>₹9,300</strong></div>
        </aside>
      </div>
  </div>
</asp:Content>
