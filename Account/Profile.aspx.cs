using System;

namespace WebApplication1
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // TODO: UPDATE Users SET ... WHERE UserId = ... (see Database/EasyTravel.sql).
            string name = TxtFirst.Text.Trim();
            Session["UserName"] = name;
            Response.Redirect("~/Account/dash.aspx?user=" + Server.UrlEncode(name));
        }
    }
}
