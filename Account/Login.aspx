<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="auth-split">
    <aside class="auth-visual">
      <div class="auth-photo">
        <img runat="server" src="~/images/udaipur.jpg" alt="Lake Palace illuminated at night" />
        <span class="stamp"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9 &middot; 12,400 trips booked this month</span>
      </div>
      <blockquote>
        <p>&ldquo;The only travel app I trust with my family&rsquo;s plans.&rdquo;</p>
        <footer>Ritika S., Elite member since 2022</footer>
      </blockquote>
    </aside>
    <div class="auth-pane">
      <div class="auth-card">
        <h1>Welcome Back</h1>
        <p class="sub">Sign in to continue your journey with EasyTravel India.</p>
        <asp:ValidationSummary ID="LoginVal01" runat="server" CssClass="val-summary" HeaderText="Please fix the following:" />
        <asp:Label ID="LblMsg" runat="server" CssClass="val-msg" EnableViewState="false" />
        <div class="stack">
          <div class="field">
            <label for="TxtEmail">Email Address</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-mail"/></svg><asp:TextBox ID="TxtEmail" runat="server" CssClass="input" TextMode="Email" placeholder="explorer@easytravel.in" /></div>
          <asp:RequiredFieldValidator ID="LoginVal02" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email is required." Display="Dynamic" CssClass="val-msg" />
          <asp:RegularExpressionValidator ID="LoginVal03" runat="server" ControlToValidate="TxtEmail" ValidationExpression="^[\w.+-]+@[\w-]+\.[\w.]+$" ErrorMessage="Enter a valid email address." Display="Dynamic" CssClass="val-msg" />
          </div>
          <div class="field">
            <div class="row between">
              <label for="TxtPassword">Password</label>
              <a runat="server" class="link small" href="~/Account/Forgot.aspx">Forgot password?</a>
            </div>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-lock"/></svg><asp:TextBox ID="TxtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password" /></div>
          <asp:RequiredFieldValidator ID="LoginVal04" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password is required." Display="Dynamic" CssClass="val-msg" />
          <asp:RegularExpressionValidator ID="LoginVal05" runat="server" ControlToValidate="TxtPassword" ValidationExpression="^.{8,}$" ErrorMessage="Password must be at least 8 characters." Display="Dynamic" CssClass="val-msg" />
          </div>
          <label class="check"><input type="checkbox" id="ChkRemember" runat="server" checked="checked" /><span>Remember me</span></label>
          <asp:Button ID="BtnLogin" runat="server" Text="Sign In" CssClass="btn btn-primary btn-block" OnClick="BtnLogin_Click" />
        </div>
        <div class="or">OR CONTINUE WITH</div>
        <div class="grid grid-2">
          <button class="btn btn-outline" type="button" onclick="return false;"><svg class="icon" aria-hidden="true"><use href="#i-globe"/></svg> Google</button>
          <button class="btn btn-outline" type="button" onclick="return false;"><svg class="icon" aria-hidden="true"><use href="#i-phone"/></svg> Apple</button>
        </div>
        <p class="auth-foot">Don&rsquo;t have an account? <a runat="server" href="~/Account/Signup.aspx">Sign Up</a></p>
      </div>
    </div>
  </div>
</asp:Content>
