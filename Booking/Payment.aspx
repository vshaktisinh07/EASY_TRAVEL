<%@ Page Title="Payment" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication1.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container section-sm">
      <div class="steps" aria-label="Booking progress">
        <span class="step done"><span class="num">✓</span> Guest Details</span>
        <span class="bar done"></span>
        <span class="step current"><span class="num">2</span> Payment</span>
        <span class="bar"></span>
        <span class="step"><span class="num">3</span> Confirmation</span>
      </div>
      <div class="page-head" style="padding:0 0 28px">
        <h1 style="font-size:2.2rem">Complete your booking</h1>
        <p>Choose how you&rsquo;d like to pay. All transactions are encrypted.</p>
      </div>
      <asp:ValidationSummary ID="PaymentVal01" runat="server" CssClass="val-summary" HeaderText="Please fix the following:" />
      <div class="split">
        <div class="stack" style="gap:24px">
          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-wallet"/></svg> Payment Method</h3>
            <asp:RadioButtonList ID="RblMethod" runat="server" CssClass="stack pay-list" RepeatLayout="UnorderedList">
              <asp:ListItem Selected="True">Credit / Debit Card</asp:ListItem>
              <asp:ListItem>UPI (Google Pay, PhonePe, BHIM)</asp:ListItem>
              <asp:ListItem>Net Banking</asp:ListItem>
            </asp:RadioButtonList>
          </section>
          <section class="card">
            <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-card"/></svg> Card Details</h3>
            <div class="form-grid">
              <div class="field full">
                <label for="TxtCardName">Cardholder Name</label>
                <asp:TextBox ID="TxtCardName" runat="server" CssClass="input" placeholder="Arjun Sharma" />
              <asp:RequiredFieldValidator ID="PaymentVal02" runat="server" ControlToValidate="TxtCardName" ErrorMessage="Cardholder name is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="PaymentVal03" runat="server" ControlToValidate="TxtCardName" ValidationExpression="^[A-Za-z][A-Za-z .]{2,49}$" ErrorMessage="Enter the name as printed on the card." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field full">
                <label for="TxtCardNo">Card Number</label>
                <asp:TextBox ID="TxtCardNo" runat="server" CssClass="input" placeholder="0000 0000 0000 0000" />
              <asp:RequiredFieldValidator ID="PaymentVal04" runat="server" ControlToValidate="TxtCardNo" ErrorMessage="Card number is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="PaymentVal05" runat="server" ControlToValidate="TxtCardNo" ValidationExpression="^(\d{4}[\s-]?){3}\d{4}$" ErrorMessage="Enter a valid 16-digit card number." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtExpiry">Expiry Date</label>
                <asp:TextBox ID="TxtExpiry" runat="server" CssClass="input" placeholder="MM/YY" />
              <asp:RequiredFieldValidator ID="PaymentVal06" runat="server" ControlToValidate="TxtExpiry" ErrorMessage="Expiry date is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="PaymentVal07" runat="server" ControlToValidate="TxtExpiry" ValidationExpression="^(0[1-9]|1[0-2])/\d{2}$" ErrorMessage="Use MM/YY format." Display="Dynamic" CssClass="val-msg" />
              </div>
              <div class="field">
                <label for="TxtCvv">CVV</label>
                <asp:TextBox ID="TxtCvv" runat="server" CssClass="input" TextMode="Password" placeholder="•••" />
              <asp:RequiredFieldValidator ID="PaymentVal08" runat="server" ControlToValidate="TxtCvv" ErrorMessage="CVV is required." Display="Dynamic" CssClass="val-msg" />
              <asp:RegularExpressionValidator ID="PaymentVal09" runat="server" ControlToValidate="TxtCvv" ValidationExpression="^\d{3,4}$" ErrorMessage="CVV is the 3&#8211;4 digit code on the back." Display="Dynamic" CssClass="val-msg" />
              </div>
            </div>
            <label class="check" style="margin-top:16px"><input type="checkbox" id="ChkSave" runat="server" /><span>Save card securely for future trips</span></label>
          </section>
          <asp:Button ID="BtnPay" runat="server" Text="Pay ₹9,300 Securely" CssClass="btn btn-primary btn-lg" OnClick="BtnPay_Click" />
          <p class="faint small row"><svg class="icon" aria-hidden="true"><use href="#i-shield"/></svg> Secure 256-bit SSL encryption. By confirming you agree to our Terms &amp; Privacy Policy.</p>
        </div>
        <aside class="card sticky">
          <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Order Summary</h3>
          <div class="row" style="gap:14px">
            <div class="icon-box"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg></div>
            <div>
              <b>BOM &rarr; DEL · 6E-204</b>
              <div class="muted small">Oct 15, 2024 · 1 Adult · Business</div>
            </div>
          </div>
          <hr class="divider">
          <div class="row" style="gap:10px;margin-bottom:16px">
            <input class="input grow" type="text" placeholder="Enter promo code" aria-label="Promo code">
            <button class="btn btn-outline" type="button">Apply</button>
          </div>
          <ul class="list-plain">
            <li class="kv"><span>Subtotal</span><strong>₹8,080</strong></li>
            <li class="kv"><span>Taxes &amp; Fees (GST)</span><strong>₹1,220</strong></li>
            <li class="kv"><span class="small" style="color:var(--success)">Early Bird Discount</span><strong style="color:var(--success)">−₹0</strong></li>
          </ul>
          <div class="kv kv-total"><span>Total</span><strong>₹9,300</strong></div>
        </aside>
      </div>
  </div>
</asp:Content>
