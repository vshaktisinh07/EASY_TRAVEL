<%@ Page Title="Create Account" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="auth-split">
    <aside class="auth-visual">
      <div class="auth-photo">
        <img runat="server" src="~/images/room-main.jpg" alt="Suite overlooking the city at night" />
        <span class="stamp"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9 &middot; 12,400 trips booked this month</span>
      </div>
      <blockquote>
        <p>&ldquo;Booked our whole honeymoon in one evening. Every detail just worked.&rdquo;</p>
        <footer>Meera &amp; Kabir, Udaipur trip</footer>
      </blockquote>
    </aside>
    <div class="auth-pane">
      <div class="auth-card">
        <h1>Create Your Account</h1>
        <p class="sub">Join EasyTravel and start planning your next adventure.</p>
        <asp:ValidationSummary ID="SignupVal01" runat="server" CssClass="val-summary" HeaderText="Please fix the following:" />
        <asp:Label ID="LblMsg" runat="server" CssClass="val-msg" EnableViewState="false" />
        <div class="stack">
          <div class="field">
            <label for="TxtName">Full Name</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-user"/></svg><asp:TextBox ID="TxtName" runat="server" CssClass="input" placeholder="Arjun Sharma" /></div>
          <asp:RequiredFieldValidator ID="SignupVal02" runat="server" ControlToValidate="TxtName" ErrorMessage="Full name is required." Display="Dynamic" CssClass="val-msg" />
          <asp:RegularExpressionValidator ID="SignupVal03" runat="server" ControlToValidate="TxtName" ValidationExpression="^[A-Za-z][A-Za-z .]{2,49}$" ErrorMessage="Name should be 3&#8211;50 letters." Display="Dynamic" CssClass="val-msg" />
          </div>
          <div class="field">
            <label for="TxtEmail">Email Address</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-mail"/></svg><asp:TextBox ID="TxtEmail" runat="server" CssClass="input" TextMode="Email" placeholder="name@example.in" /></div>
          <asp:RequiredFieldValidator ID="SignupVal04" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email is required." Display="Dynamic" CssClass="val-msg" />
          <asp:RegularExpressionValidator ID="SignupVal05" runat="server" ControlToValidate="TxtEmail" ValidationExpression="^[\w.+-]+@[\w-]+\.[\w.]+$" ErrorMessage="Enter a valid email address." Display="Dynamic" CssClass="val-msg" />
          </div>
          <div class="field">
            <label for="TxtPassword">Password</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-lock"/></svg><asp:TextBox ID="TxtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Minimum 8 characters" /></div>
          <asp:RequiredFieldValidator ID="SignupVal06" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password is required." Display="Dynamic" CssClass="val-msg" />
          <asp:RegularExpressionValidator ID="SignupVal07" runat="server" ControlToValidate="TxtPassword" ValidationExpression="^(?=.*[A-Z])(?=.*\d).{8,}$" ErrorMessage="Use 8+ characters with at least one capital letter and one number." Display="Dynamic" CssClass="val-msg" />
          </div>
          <div class="field">
            <label for="TxtConfirm">Confirm Password</label>
            <div class="input-icon"><svg class="icon" aria-hidden="true"><use href="#i-lock"/></svg><asp:TextBox ID="TxtConfirm" runat="server" CssClass="input" TextMode="Password" placeholder="Re-enter password" /></div>
          <asp:RequiredFieldValidator ID="SignupVal08" runat="server" ControlToValidate="TxtConfirm" ErrorMessage="Please confirm your password." Display="Dynamic" CssClass="val-msg" />
          <asp:CompareValidator ID="SignupVal09" runat="server" ControlToValidate="TxtConfirm" ControlToCompare="TxtPassword" Operator="Equal" ErrorMessage="Passwords do not match." Display="Dynamic" CssClass="val-msg" />
          </div>
          <label class="check"><input type="checkbox" id="ChkTerms" runat="server" /><span>I agree to the <a class="link" href="#">Terms of Service</a> and <a class="link" href="#">Privacy Policy</a>.</span></label>
          <asp:CustomValidator ID="ValTerms" runat="server" ErrorMessage="You must accept the Terms to continue." OnServerValidate="ValTerms_ServerValidate" ClientValidationFunction="easytravelValidateTerms" Display="Dynamic" CssClass="val-msg" />
          <asp:Button ID="BtnSignup" runat="server" Text="Create Account" CssClass="btn btn-primary btn-block" OnClick="BtnSignup_Click" />
        </div>
        <p class="auth-foot">Already have an account? <a runat="server" href="~/Account/Login.aspx">Sign In</a></p>
        <script>
          function easytravelValidateTerms(sender, args) {
            args.IsValid = document.getElementById('ChkTerms').checked;
          }
        </script>
      </div>
    </div>
  </div>
</asp:Content>
