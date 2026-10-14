using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void ValTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = ChkTerms.Checked;
        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string name = TxtName.Text.Trim();
            string email = TxtEmail.Text.Trim();

            try
            {
                using (SqlConnection con = Db.GetConnection())
                {
                    con.Open();

                    using (SqlCommand check = new SqlCommand(
                        "SELECT COUNT(*) FROM Users WHERE Email = @Email", con))
                    {
                        check.Parameters.AddWithValue("@Email", email);
                        if ((int)check.ExecuteScalar() > 0)
                        {
                            LblMsg.Text = "This email is already registered. Please login instead.";
                            return;
                        }
                    }

                    using (SqlCommand insert = new SqlCommand(
                        "INSERT INTO Users (FullName, Email, PasswordHash) VALUES (@Name, @Email, @Hash)", con))
                    {
                        insert.Parameters.AddWithValue("@Name", name);
                        insert.Parameters.AddWithValue("@Email", email);
                        insert.Parameters.AddWithValue("@Hash", Db.HashPassword(TxtPassword.Text));
                        insert.ExecuteNonQuery();
                    }
                }

                Session["UserName"] = name;
                Response.Redirect("~/Account/dash.aspx?user=" + Server.UrlEncode(name));
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
