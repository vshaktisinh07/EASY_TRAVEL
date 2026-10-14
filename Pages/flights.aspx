<%@ Page Title="Flight Results | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="flights.aspx.cs" Inherits="WebApplication1.Flights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm">
      <div class="sub-bar">
        <div class="row wrap" style="gap:18px">
          <span class="route">BOM <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg> DEL</span>
          <span class="badge"><svg class="icon" aria-hidden="true"><use href="#i-calendar"/></svg> Oct 15 – Oct 22</span>
          <span class="badge"><svg class="icon" aria-hidden="true"><use href="#i-user"/></svg> 1 Adult</span>
          <span class="badge">Economy</span>
        </div>
        <a runat="server" class="btn btn-sm btn-outline" href="~/Pages/index.aspx"><svg class="icon" aria-hidden="true"><use href="#i-edit"/></svg> Modify Search</a>
      </div>

      <div class="split-left">
        <aside class="filter-panel sticky" aria-label="Filters">
          <div class="row between">
            <h3>Filters</h3>
            <button class="link small" type="button">Reset</button>
          </div>
          <div>
            <h4>Stops</h4>
            <div class="opts">
              <label class="check"><input type="radio" name="stops" checked><span>Non-stop</span><span class="grow"></span><span class="faint small">₹5,500+</span></label>
              <label class="check"><input type="radio" name="stops"><span>1 Stop</span><span class="grow"></span><span class="faint small">₹4,800+</span></label>
            </div>
          </div>
          <div>
            <h4>Price Range</h4>
            <input type="range" min="4000" max="12000" value="8000" aria-label="Maximum price">
            <div class="row between faint xs"><span>₹4,000</span><span>₹12,000</span></div>
          </div>
          <div>
            <h4>Departure Time</h4>
            <div class="tag-list">
              <button class="chip" type="button" data-toggle aria-pressed="false">Morning</button>
              <button class="chip" type="button" data-toggle aria-pressed="true">Afternoon</button>
              <button class="chip" type="button" data-toggle aria-pressed="false">Evening</button>
            </div>
          </div>
        </aside>

        <section>
          <div class="row between" style="margin-bottom:18px">
            <p class="muted">Showing <strong>42</strong> premium results</p>
            <label class="row small muted">Sort by
              <select class="select" style="height:40px;width:170px">
                <option>Recommended</option>
                <option>Cheapest first</option>
                <option>Fastest first</option>
              </select>
            </label>
          </div>
          <div class="stack" style="gap:18px">
        <article class="result">
          <div class="airline">
            <span class="logo-dot">6E</span>
            <div>
              <b>IndiGo</b>
              <div class="muted small">Airbus A321neo</div>
            </div>
          </div>
          <div class="timeline">
            <div><div class="t">18:30</div><div class="c">BOM (Mumbai)</div></div>
            <div class="mid"><span>2h 45m</span><div class="line"></div><span>Non-stop</span></div>
            <div><div class="t">21:15</div><div class="c">DEL (Delhi)</div></div>
          </div>
          <div class="buy">
            <div><span class="price">₹4,580</span> <span class="muted small">/ person</span></div>
            <a runat="server" class="btn btn-sm btn-primary" href="~/Booking/seat.aspx">Book Now</a>
          </div>
        </article>
        <article class="result">
          <div class="airline">
            <span class="logo-dot">AI</span>
            <div>
              <b>Air India</b>
              <div class="muted small">Boeing 787 Dreamliner</div>
            </div>
          </div>
          <div class="timeline">
            <div><div class="t">08:00</div><div class="c">BOM (Mumbai)</div></div>
            <div class="mid"><span>2h 15m</span><div class="line"></div><span>Non-stop</span></div>
            <div><div class="t">10:15</div><div class="c">DEL (Delhi)</div></div>
          </div>
          <div class="buy">
            <div><span class="muted small" style="text-decoration:line-through">₹8,000</span> <span class="price">₹7,100</span> <span class="muted small">/ person</span></div>
            <a runat="server" class="btn btn-sm btn-primary" href="~/Booking/seat.aspx">Book Now</a>
          </div>
        </article>
        <article class="result">
          <div class="airline">
            <span class="logo-dot">UK</span>
            <div>
              <b>Vistara</b>
              <div class="muted small">Airbus A320neo</div>
            </div>
          </div>
          <div class="timeline">
            <div><div class="t">21:15</div><div class="c">BOM (Mumbai)</div></div>
            <div class="mid"><span>2h 10m</span><div class="line"></div><span>Non-stop</span></div>
            <div><div class="t">23:25</div><div class="c">DEL (Delhi)</div></div>
          </div>
          <div class="buy">
            <div><span class="price">₹5,800</span> <span class="muted small">/ person</span></div>
            <a runat="server" class="btn btn-sm btn-primary" href="~/Booking/seat.aspx">Book Now</a>
          </div>
        </article>
          </div>
        </section>
      </div>
    </div>
</asp:Content>
