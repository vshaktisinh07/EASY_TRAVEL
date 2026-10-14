using System;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            try
            {
                using (SqlConnection con = Db.GetConnection())
                using (SqlCommand cmd = new SqlCommand(
                    "SELECT TOP 1 FullName FROM Users WHERE Email = @Email AND PasswordHash = @Hash", con))
                {
                    cmd.Parameters.AddWithValue("@Email", TxtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Hash", Db.HashPassword(TxtPassword.Text));
                    con.Open();
                    object result = cmd.ExecuteScalar();

                    if (result == null)
                    {
                        LblMsg.Text = "Invalid email or password. (Demo: demo@easytravel.in / Demo@123)";
                        return;
                    }

                    string name = result.ToString();
                    Session["UserName"] = name;
                    Response.Redirect("~/Account/dash.aspx?user=" + Server.UrlEncode(name));
                }
            }
            catch (System.Threading.ThreadAbortException) { throw; }       // normal after Redirect
            catch (Exception ex)
            {
                LblMsg.Text = "Database error: " + ex.Message +
                              " (Run Database/EasyTravel.sql first.)";
            }
        }
    }
}
