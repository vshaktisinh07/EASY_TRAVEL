using System;

namespace WebApplication1
{
    public partial class Forgot : System.Web.UI.Page
    {
        protected void BtnSend_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // TODO: generate and send a real OTP here.
            Response.Redirect("~/Account/NewPass.aspx");
        }
    }
}
