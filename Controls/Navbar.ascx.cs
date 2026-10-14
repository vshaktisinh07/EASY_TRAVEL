using System;
using System.IO;
using System.Web.UI.HtmlControls;

namespace WebApplication1.Controls
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Highlight the menu item of the page being shown (detail pages belong to a menu section).
            string page = Path.GetFileNameWithoutExtension(Request.AppRelativeCurrentExecutionFilePath).ToLowerInvariant();
            HtmlAnchor active = null;
            switch (page)
            {
                case "dash": case "cancel": case "cancelled": case "edit": case "saved": case "trips":
                    active = LnkDashboard; break;
                case "flights": case "confirmed": case "seat":
                    active = LnkFlights; break;
                case "hotels": case "hotel":
                    active = LnkHotels; break;
                case "destination":
                    active = LnkDestinations; break;
            }
            if (active != null) active.Attributes["aria-current"] = "page";
        }
    }
}
