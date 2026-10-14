<%@ Page Title="Settings | EasyTravel Admin" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="adm_settings.aspx.cs" Inherits="WebApplication1.AdmSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="admin-head">
        <div>
          <h1>Platform Settings</h1>
          <p>Manage your organization&rsquo;s configuration, billing, and security policies.</p>
        </div>
      </div>

      <div class="settings-grid">
        <nav class="settings-nav" aria-label="Settings sections">
          <a href="#" aria-current="true">Company Profile</a>
          <a href="#">Branding</a>
          <a href="#">Payment Settings</a>
          <a href="#">API Keys</a>
          <a href="#">Admin Users</a>
          <a href="#">Security</a>
        </nav>

        <div class="stack" style="gap:24px">
          <section class="panel">
            <div class="panel-head"><h3>Company Profile</h3></div>
            <div class="row" style="gap:16px;margin-bottom:20px">
              <div class="icon-box" style="width:56px;height:56px"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg></div>
              <div>
                <b>Company Logo</b>
                <p class="muted small">Recommended size 256×256 px, max 2 MB.</p>
              </div>
              <button class="btn btn-sm btn-outline" type="button" style="margin-left:auto">Upload New</button>
            </div>
            <div class="form-grid">
              <div class="field">
                <label for="st-name">Company Name</label>
                <input class="input" id="st-name" type="text" value="EasyTravel Pvt. Ltd.">
              </div>
              <div class="field">
                <label for="st-email">Contact Email</label>
                <input class="input" id="st-email" type="email" value="support@easytravel.in">
              </div>
              <div class="field full">
                <label for="st-addr">Headquarters Address</label>
                <input class="input" id="st-addr" type="text" value="101 Innovation Blvd, BKC, Mumbai, MH 400051">
              </div>
            </div>
          </section>

          <section class="panel">
            <div class="panel-head">
              <h3>API Configuration</h3>
              <button class="btn btn-sm btn-outline" type="button"><svg class="icon" aria-hidden="true"><use href="#i-plus"/></svg> Generate Key</button>
            </div>
            <div class="pref">
              <div><b>Production API Key <span class="badge badge-green">Active</span></b><span class="d">sk_live_4x…a8ip · Last used: 3 mins ago</span></div>
              <button class="btn btn-sm btn-danger" type="button">Revoke</button>
            </div>
            <div class="pref">
              <div><b>Staging Payment Gateway</b><span class="d">pk_test_s1…j692 · Created: Oct 12, 2023</span></div>
              <button class="btn btn-sm btn-danger" type="button">Revoke</button>
            </div>
          </section>

          <section class="panel">
            <div class="panel-head"><h3>System Preferences</h3></div>
            <div class="pref">
              <div><b>Critical Operational Alerts</b><span class="d">Receive immediate SMS for critical booking failures.</span></div>
              <label class="switch"><input type="checkbox" checked><span></span></label>
            </div>
            <div class="pref">
              <div><b>Automated Booking Emails</b><span class="d">Send confirmation emails automatically for new bookings.</span></div>
              <label class="switch"><input type="checkbox"><span></span></label>
            </div>
            <div class="pref">
              <div><b>Weekly Performance Insights</b><span class="d">Send summary report to all admin users every Monday.</span></div>
              <label class="switch"><input type="checkbox" checked><span></span></label>
            </div>
          </section>

          <div class="row" style="justify-content:flex-end">
            <button class="btn btn-ghost" type="reset">Cancel</button>
            <asp:LinkButton ID="BtnSave" runat="server" CssClass="btn btn-primary" CausesValidation="false" OnClick="BtnSave_Click">Save Changes</asp:LinkButton>
          </div>
        </div>
      </div>
      <footer>
        <span>© 2024 EasyTravel. Premium Admin Suite.</span>
        <span>Support · Documentation · API Status</span>
      </footer>
    
</asp:Content>
