<%@ Page Title="New Password" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="NewPass.aspx.cs" Inherits="WebApplication1.NewPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="auth-split">
    <aside class="auth-visual">
      <div class="auth-photo">
        <img runat="server" src="~/images/lake.jpg" alt="Calm mountain lake at dusk" />
        <span class="stamp"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9 &middot; 12,400 trips booked this month</span>
      </div>
      <blockquote>
        <p>&ldquo;Support had me back in my account before my coffee went cold.&rdquo;</p>
        <footer>Dev P., frequent flyer</footer>
      </blockquote>
    </aside>
    <div class="auth-pane">
      <div class="auth-card">
        <h1>Create New Password</h1>
        <p class="sub">Secure your account with a strong, unique password.</p>
        <asp:ValidationSummary ID="NewPassVal01" runat="server" CssClass="val-summary" HeaderText="Please fix the following:" />
        <div class="stack">
          <div class="field">
            <label for="TxtNewPass">New Password</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-lock"/></svg><asp:TextBox ID="TxtNewPass" runat="server" CssClass="input" TextMode="Password" placeholder="Enter new password" /></div>
          <asp:RequiredFieldValidator ID="NewPassVal02" runat="server" ControlToValidate="TxtNewPass" ErrorMessage="New password is required." Display="Dynamic" CssClass="val-msg" />
          <asp:RegularExpressionValidator ID="NewPassVal03" runat="server" ControlToValidate="TxtNewPass" ValidationExpression="^(?=.*[A-Z])(?=.*[\W_]).{8,}$" ErrorMessage="Use 8+ characters with one capital letter and one symbol." Display="Dynamic" CssClass="val-msg" />
          </div>
          <div class="field">
            <label for="TxtConfirm">Confirm New Password</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-lock"/></svg><asp:TextBox ID="TxtConfirm" runat="server" CssClass="input" TextMode="Password" placeholder="Confirm your password" /></div>
          <asp:RequiredFieldValidator ID="NewPassVal04" runat="server" ControlToValidate="TxtConfirm" ErrorMessage="Please confirm your new password." Display="Dynamic" CssClass="val-msg" />
          <asp:CompareValidator ID="NewPassVal05" runat="server" ControlToValidate="TxtConfirm" ControlToCompare="TxtNewPass" Operator="Equal" ErrorMessage="Passwords do not match." Display="Dynamic" CssClass="val-msg" />
          </div>
          <ul class="rules">
            <li class="ok">At least 8 characters</li>
            <li>One uppercase letter</li>
            <li>One special character or symbol</li>
          </ul>
          <asp:Button ID="BtnUpdate" runat="server" Text="Update Password &amp; Login →" CssClass="btn btn-primary btn-block" OnClick="BtnUpdate_Click" />
        </div>
        <p class="auth-foot"><a runat="server" href="~/Account/Login.aspx"><svg class="icon" aria-hidden="true"><use href="#i-arrow-left"/></svg> Back to Login</a></p>
      </div>
    </div>
  </div>
</asp:Content>
