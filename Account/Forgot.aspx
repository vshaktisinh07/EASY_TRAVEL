<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Forgot.aspx.cs" Inherits="WebApplication1.Forgot" %>

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
        <h1>Forgot Password?</h1>
        <p class="sub">Enter your registered email or mobile number and we&rsquo;ll send you a secure recovery code.</p>
        <asp:ValidationSummary ID="ForgotVal01" runat="server" CssClass="val-summary" HeaderText="Please fix the following:" />
        <div class="stack">
          <div class="field">
            <label for="TxtContact">Email or Mobile Number</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-mail"/></svg><asp:TextBox ID="TxtContact" runat="server" CssClass="input" placeholder="user@example.com or 98765 43210" /></div>
          <asp:RequiredFieldValidator ID="ForgotVal02" runat="server" ControlToValidate="TxtContact" ErrorMessage="Enter your email or mobile number." Display="Dynamic" CssClass="val-msg" />
          <asp:RegularExpressionValidator ID="ForgotVal03" runat="server" ControlToValidate="TxtContact" ValidationExpression="^([\w.+-]+@[\w-]+\.[\w.]+|(\+91[\s-]?)?[6-9]\d{9})$" ErrorMessage="Enter a valid email or a 10-digit Indian mobile number." Display="Dynamic" CssClass="val-msg" />
          </div>
          <asp:Button ID="BtnSend" runat="server" Text="Send Recovery Code →" CssClass="btn btn-primary btn-block" OnClick="BtnSend_Click" />
        </div>
        <p class="auth-foot"><a runat="server" href="~/Account/Login.aspx"><svg class="icon" aria-hidden="true"><use href="#i-arrow-left"/></svg> Back to Login</a></p>
      </div>
    </div>
  </div>
</asp:Content>
