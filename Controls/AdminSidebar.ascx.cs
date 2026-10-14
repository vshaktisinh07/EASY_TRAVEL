using System;
using System.IO;
using System.Web.UI.HtmlControls;

namespace WebApplication1.Controls
{
    public partial class AdminSidebar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Mark the sidebar link of the admin page being shown.
            string page = Path.GetFileNameWithoutExtension(Request.AppRelativeCurrentExecutionFilePath).ToLowerInvariant();
            HtmlAnchor active = null;
            switch (page)
            {
                case "adm_dash": active = LnkDashboard; break;
                case "adm_customers": active = LnkCustomers; break;
                case "adm_flights": active = LnkFlights; break;
                case "adm_hotels": active = LnkHotels; break;
                case "adm_revenue": active = LnkRevenue; break;
                case "adm_reports": active = LnkReports; break;
                case "adm_settings": active = LnkSettings; break;
            }
            if (active != null) active.Attributes["aria-current"] = "page";
        }
    }
}
