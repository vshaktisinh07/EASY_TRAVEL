<%@ Page Title="Select Seat | EasyTravel" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="seat.aspx.cs" Inherits="WebApplication1.Seat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container section-sm">
      <div class="page-head" style="padding-top:28px">
        <h1 style="font-size:2.2rem">Select Your Seat</h1>
        <p>Flight 6E-204 · Mumbai (BOM) to Delhi (DEL) · Airbus A321neo · Oct 15, 2024</p>
      </div>
      <div class="split">
        <section class="card">
          <div class="legend" style="margin-bottom:10px">
            <span><i></i>Available</span>
            <span><i class="sel"></i>Selected</span>
            <span><i class="occ"></i>Occupied</span>
            <span><i class="leg"></i>Extra Legroom (+₹3,500)</span>
          </div>
          <hr class="divider">
          <div class="plane-nose"><svg class="icon" aria-hidden="true"><use href="#i-plane"/></svg></div>
          <div class="seatmap">
            <p class="cabin-title">BUSINESS CLASS</p>
            <div class="seat-row biz">
              <span class="rn">1</span>
              <button type="button" class="seat legroom" data-price="3500" aria-pressed="false">1A</button>
              <button type="button" class="seat" data-price="3500" aria-pressed="true">1C</button>
              <span class="rn"></span>
              <button type="button" class="seat" disabled aria-label="Seat 1D unavailable">✕</button>
              <button type="button" class="seat legroom" data-price="3500" aria-pressed="false">1F</button>
            </div>
            <div class="seat-row biz">
              <span class="rn">2</span>
              <button type="button" class="seat" data-price="3500" aria-pressed="false">2A</button>
              <button type="button" class="seat" data-price="3500" aria-pressed="false">2C</button>
              <span class="rn"></span>
              <button type="button" class="seat" disabled aria-label="Seat 2D unavailable">✕</button>
              <button type="button" class="seat" data-price="3500" aria-pressed="false">2F</button>
            </div>
            <p class="cabin-title">ECONOMY</p>
            <div class="seat-row">
              <span class="rn">10</span>
              <button type="button" class="seat" data-price="850" aria-pressed="false">10A</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">10B</button>
              <button type="button" class="seat" disabled aria-label="Seat 10C unavailable">✕</button>
              <span class="rn"></span>
              <button type="button" class="seat" data-price="850" aria-pressed="false">10D</button>
              <button type="button" class="seat" disabled aria-label="Seat 10E unavailable">✕</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">10F</button>
            </div>
            <div class="seat-row">
              <span class="rn">11</span>
              <button type="button" class="seat" disabled aria-label="Seat 11A unavailable">✕</button>
              <button type="button" class="seat" disabled aria-label="Seat 11B unavailable">✕</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">11C</button>
              <span class="rn"></span>
              <button type="button" class="seat" data-price="850" aria-pressed="false">11D</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">11E</button>
              <button type="button" class="seat" disabled aria-label="Seat 11F unavailable">✕</button>
            </div>
            <div class="seat-row">
              <span class="rn">12</span>
              <button type="button" class="seat" data-price="850" aria-pressed="false">12A</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">12B</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">12C</button>
              <span class="rn"></span>
              <button type="button" class="seat" disabled aria-label="Seat 12D unavailable">✕</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">12E</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">12F</button>
            </div>
            <div class="seat-row">
              <span class="rn">14</span>
              <button type="button" class="seat" data-price="850" aria-pressed="false">14A</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">14B</button>
              <button type="button" class="seat" disabled aria-label="Seat 14C unavailable">✕</button>
              <span class="rn"></span>
              <button type="button" class="seat" data-price="850" aria-pressed="false">14D</button>
              <button type="button" class="seat" disabled aria-label="Seat 14E unavailable">✕</button>
              <button type="button" class="seat" data-price="850" aria-pressed="false">14F</button>
            </div>
          </div>
        </section>

        <aside class="card sticky">
          <h3 class="card-title"><svg class="icon" aria-hidden="true"><use href="#i-luggage"/></svg> Trip Summary</h3>
          <ul class="list-plain">
            <li class="kv"><span>Passenger</span><strong>1 of 1</strong></li>
            <li class="kv"><span>Selected seat</span><strong id="seat-label">1C</strong></li>
            <li class="kv"><span>Cabin</span><strong>Business Class</strong></li>
          </ul>
          <div class="kv kv-total"><span>Seat Total</span><strong id="seat-total">₹3,500</strong></div>
          <a runat="server" class="btn btn-primary btn-block" style="margin-top:20px" href="~/Booking/Traveler.aspx">Confirm Selection <svg class="icon" aria-hidden="true"><use href="#i-arrow-right"/></svg></a>
          <p class="faint xs" style="text-align:center;margin-top:12px">Prices are in INR and include taxes.</p>
        </aside>
      </div>
    </div>
</asp:Content>
