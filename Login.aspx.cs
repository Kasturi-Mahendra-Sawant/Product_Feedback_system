using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ProductFeedbackManagment
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(
                "SELECT COUNT(*) FROM Users WHERE Email=@e AND Password=@p", con);

                cmd.Parameters.AddWithValue("@e", txtEmail.Text);
                cmd.Parameters.AddWithValue("@p", txtPassword.Text);

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                con.Close();

                if (count > 0)
                {
                    Session["user"] = txtEmail.Text;
                    Response.Redirect("Products.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}