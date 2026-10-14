using System;

namespace WebApplication1
{
    public partial class NewPass : System.Web.UI.Page
    {
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // TODO: UPDATE Users SET PasswordHash = Db.HashPassword(TxtNewPass.Text) WHERE Email = ...
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}
