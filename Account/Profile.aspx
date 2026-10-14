<%@ Page Title="Profile" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication1.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container">
    <div class="app-shell">
        <nav class="side-nav" aria-label="Dashboard">
          <span class="label">Dashboard</span>
          <a runat="server" href="~/Account/dash.aspx"><svg class="icon" aria-hidden="true"><use href="#i-home"/></svg> Overview</a>
          <a runat="server" href="~/Booking/trips.aspx"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> My Trips</a>
          <a runat="server" href="~/Booking/saved.aspx"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg> Saved</a>
          <a runat="server" href="~/Account/Profile.aspx" aria-current="page"><svg class="icon" aria-hidden="true"><use href="#i-settings-user"/></svg> Profile</a>
          <a runat="server" href="~/Pages/index.aspx" data-signout="true"><svg class="icon" aria-hidden="true"><use href="#i-logout"/></svg> Sign Out</a>
        </nav>
      <div>
        <div style="margin-bottom:24px">
          <h1 style="font-size:2.2rem">Personal Information</h1>
          <p class="muted" style="margin-top:8px">Keep your details up to date for faster bookings.</p>
        </div>
      <asp:ValidationSummary ID="ProfileVal01" runat="server" CssClass="val-summary" HeaderText="Please fix the following:" />
        <div class="split split-aside">
            <aside class="card" style="text-align:center">
              <div class="avatar">AS</div>
              <h3>Arjun Sharma</h3>
              <p class="muted small" style="margin:6px 0 16px"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> Gold Member · Elite Explorer Tier</p>
              <button class="btn btn-sm btn-outline btn-block" type="button">Edit Photo</button>
              <hr class="divider">
              <ul class="list-plain small">
                <li class="kv"><span>Trips Taken</span><strong>12</strong></li>
                <li class="kv"><span>Miles</span><strong>45k</strong></li>
              </ul>
            </aside>
          <div class="stack" style="gap:24px">
            <section class="card">
              <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-user"/></svg> Basic Details</h3>
            <div class="form-grid">
              <div class="field">
                <label for="TxtFirst">First Name</label>
                <asp:TextBox ID="TxtFirst" runat="server" CssClass="input" Text="Arjun" placeholder="" />
              <asp:RequiredFieldValidator ID="ProfileVal02" runat="server" ControlToValidate="TxtFirst" ErrorMessage="First name is required." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtLast">Last Name</label>
                <asp:TextBox ID="TxtLast" runat="server" CssClass="input" Text="Sharma" placeholder="" />
              <asp:RequiredFieldValidator ID="ProfileVal03" runat="server" ControlToValidate="TxtLast" ErrorMessage="Last name is required." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtEmail">Email Address</label>
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="input" TextMode="Email" Text="arjun.sharma@example.in" placeholder="" />
              <asp:RequiredFieldValidator ID="ProfileVal04" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="ProfileVal05" runat="server" ControlToValidate="TxtEmail" ValidationExpression="^[\w.+-]+@[\w-]+\.[\w.]+$" ErrorMessage="Enter a valid email address." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtPhone">Phone Number</label>
                <asp:TextBox ID="TxtPhone" runat="server" CssClass="input" Text="+91 98765 43210" placeholder="" />
              <asp:RequiredFieldValidator ID="ProfileVal06" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Phone number is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="ProfileVal07" runat="server" ControlToValidate="TxtPhone" ValidationExpression="^(\+91[\s-]?)?[6-9]\d{9}$" ErrorMessage="Enter a valid 10-digit Indian mobile number." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtDob">Date of Birth</label>
                <asp:TextBox ID="TxtDob" runat="server" CssClass="input" Text="15/01/1985" />
              <asp:CompareValidator ID="ProfileVal08" runat="server" ControlToValidate="TxtDob" Operator="DataTypeCheck" Type="Date" ErrorMessage="Enter a valid date (dd/mm/yyyy)." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtCity">City</label>
                <asp:TextBox ID="TxtCity" runat="server" CssClass="input" Text="Marine Drive, Mumbai" placeholder="" />
              </div>
            </div>
            </section>
            <section class="card">
              <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-shield"/></svg> Passport Details</h3>
            <div class="form-grid">
              <div class="field">
                <label for="TxtPassport">Passport Number</label>
                <asp:TextBox ID="TxtPassport" runat="server" CssClass="input" placeholder="e.g. Z1234567" />
              <asp:RegularExpressionValidator ID="ProfileVal09" runat="server" ControlToValidate="TxtPassport" ValidationExpression="^[A-PR-WY][0-9]{7}$" ErrorMessage="Enter a valid Indian passport number (e.g. Z1234567)." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtExpiry">Passport Expiry</label>
                <asp:TextBox ID="TxtExpiry" runat="server" CssClass="input" Text="05/09/2030" />
              <asp:CompareValidator ID="ProfileVal10" runat="server" ControlToValidate="TxtExpiry" Operator="DataTypeCheck" Type="Date" ErrorMessage="Enter a valid date (dd/mm/yyyy)." Display="Dynamic" CssClass="val-msg" />
              </div>
            </div>
            </section>
            <div class="row" style="justify-content:flex-end">
              <asp:Button ID="BtnSave" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="BtnSave_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
