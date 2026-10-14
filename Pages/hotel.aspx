<%@ Page Title="The Taj Mahal Palace | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="hotel.aspx.cs" Inherits="WebApplication1.Hotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm">
      <p style="padding:24px 0 16px"><a runat="server" class="link row small" href="~/Pages/hotels.aspx" style="display:inline-flex"><svg class="icon" aria-hidden="true"><use href="#i-arrow-left"/></svg> Back to results</a></p>
      <div class="row between wrap" style="margin-bottom:20px">
        <div>
          <h1 style="font-size:2.4rem">The Taj Mahal Palace</h1>
          <p class="muted row" style="margin-top:10px"><svg class="icon" aria-hidden="true"><use href="#i-pin"/></svg> Apollo Bandar, Colaba, Mumbai, Maharashtra 400001 · <a class="link" href="#">Show on map</a></p>
        </div>
        <div class="row">
          <span class="rating" style="font-size:1.05rem"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9</span>
          <span class="muted small">1,284 reviews</span>
          <button class="btn btn-sm btn-outline" type="button" data-toggle aria-pressed="false"><svg class="icon" aria-hidden="true"><use href="#i-heart"/></svg> Save</button>
        </div>
      </div>

      <div class="gallery">
        <img runat="server" class="big" src="~/images/room-main.jpg" alt="Hotel suite with city skyline view" />
        <img runat="server" src="~/images/room-deluxe.jpg" alt="Deluxe king room" />
        <img runat="server" src="~/images/lake.jpg" alt="Lake view from the hotel" />
        <img runat="server" src="~/images/room-suite.jpg" alt="Premier suite living room" />
        <img runat="server" src="~/images/udaipur.jpg" alt="Palace exterior at night" />
      </div>

      <div class="split" style="margin-top:40px">
        <div class="stack" style="gap:40px">
          <section>
            <h2>The Experience</h2>
            <p class="muted" style="margin-top:14px;line-height:1.8">Occupying a landmark position on Mumbai&rsquo;s waterfront, The Taj Mahal Palace is an urban sanctuary above the atmospheric whirl of tradition and modernity. Classic Indian materials such as timber, marble and stone are blended to great effect with modern technology and luxurious fabrics.</p>
            <p class="muted" style="margin-top:12px;line-height:1.8">The hotel features a large, peaceful inner courtyard, a serene spa, and a swimming pool with panoramic city views, offering an exclusive retreat for the discerning traveller.</p>
          </section>
          <section>
            <h2 style="margin-bottom:20px">Luxury Amenities</h2>
            <div class="grid grid-3" style="gap:14px">
            <div class="amenity"><svg class="icon" aria-hidden="true"><use href="#i-wifi"/></svg> Free Wi-Fi</div>
            <div class="amenity"><svg class="icon" aria-hidden="true"><use href="#i-droplet"/></svg> Infinity Pool</div>
            <div class="amenity"><svg class="icon" aria-hidden="true"><use href="#i-activity"/></svg> Fitness Center</div>
            <div class="amenity"><svg class="icon" aria-hidden="true"><use href="#i-utensils"/></svg> Fine Dining</div>
            <div class="amenity"><svg class="icon" aria-hidden="true"><use href="#i-parking"/></svg> Valet Parking</div>
            <div class="amenity"><svg class="icon" aria-hidden="true"><use href="#i-headphones"/></svg> 24/7 Concierge</div>
            </div>
          </section>
          <section>
            <h2 style="margin-bottom:20px">Select Your Room</h2>
            <div class="stack" style="gap:16px">
              <article class="room">
                <img runat="server" src="~/images/room-deluxe.jpg" alt="Deluxe Room" />
                <div>
                  <h3>Deluxe Room</h3>
                  <p class="muted small" style="margin:6px 0 10px">71 sq m · King Bed · City View</p>
                  <div class="tag-list"><span class="badge">Soaking Tub</span><span class="badge">Living Area</span></div>
                </div>
                <div class="stack" style="align-items:flex-end;gap:10px">
                  <span class="price">₹24,999<small> / night</small></span>
                  <button class="btn btn-sm btn-outline" type="button">Select Room</button>
                </div>
              </article>
              <article class="room is-selected">
                <img runat="server" src="~/images/room-suite.jpg" alt="Ocean View Suite" />
                <div>
                  <div class="row"><h3>Ocean View Suite</h3><span class="badge badge-blue">Recommended</span></div>
                  <p class="muted small" style="margin:6px 0 10px">121 sq m · King Bed · Ocean View · Balcony</p>
                  <div class="tag-list"><span class="badge">Free Cancellation</span><span class="badge">Breakfast Included</span><span class="badge">Lounge Access</span></div>
                </div>
                <div class="stack" style="align-items:flex-end;gap:10px">
                  <span class="price">₹37,500<small> / night</small></span>
                  <button class="btn btn-sm btn-primary" type="button">Selected ✓</button>
                </div>
              </article>
            </div>
          </section>
        </div>

        <aside class="card sticky">
          <div class="row between">
            <span class="price" style="font-size:1.8rem">₹37,500<small> / night</small></span>
            <span class="rating"><svg class="icon" aria-hidden="true"><use href="#i-star"/></svg> 4.9</span>
          </div>
          <hr class="divider">
          <div class="form-grid" style="gap:14px">
            <div class="field">
              <label for="bk-in">Check-in</label>
              <input class="input" id="bk-in" type="text" value="Oct 12, 2024">
            </div>
            <div class="field">
              <label for="bk-out">Check-out</label>
              <input class="input" id="bk-out" type="text" value="Oct 16, 2024">
            </div>
            <div class="field full">
              <label for="bk-guests">Guests</label>
              <select class="select" id="bk-guests">
                <option>2 Adults, 0 Children</option>
                <option>2 Adults, 1 Child</option>
                <option>1 Adult</option>
              </select>
            </div>
          </div>
          <ul class="list-plain" style="margin-top:10px">
            <li class="kv"><span>₹37,500 × 4 nights</span><strong>₹1,50,000</strong></li>
            <li class="kv"><span>Taxes &amp; fees</span><strong>₹27,000</strong></li>
          </ul>
          <div class="kv kv-total"><span>Total</span><strong>₹1,77,000</strong></div>
          <a runat="server" class="btn btn-primary btn-block" style="margin-top:18px" href="~/Booking/Payment.aspx">Reserve Now <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
          <p class="faint xs" style="text-align:center;margin-top:12px">You won&rsquo;t be charged yet.</p>
        </aside>
      </div>
    </div>
</asp:Content>
