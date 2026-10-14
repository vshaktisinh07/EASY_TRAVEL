using System;

namespace WebApplication1
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void BtnPay_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // TODO: INSERT INTO Payments and UPDATE Bookings.Status (see Database/EasyTravel.sql).
            Response.Redirect("~/Booking/confirmed.aspx");
        }
    }
}
