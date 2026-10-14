using System;

namespace WebApplication1
{
    public partial class Traveler : System.Web.UI.Page
    {
        protected void BtnContinue_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // TODO: INSERT INTO Bookings + Passengers (see Database/EasyTravel.sql) using Db.GetConnection().
            Session["PassengerName"] = TxtFirst.Text.Trim() + " " + TxtLast.Text.Trim();
            Response.Redirect("~/Booking/Payment.aspx");
        }
    }
}
