using System;

namespace WebApplication1
{
    public partial class AdmSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            // TODO: save the settings (e.g. UPDATE the settings table), then go back to the dashboard.
            Response.Redirect("~/Admin/adm_dash.aspx");
        }
    }
}
