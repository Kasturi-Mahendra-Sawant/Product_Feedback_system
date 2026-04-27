using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ProductFeedbackManagment
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPassword.Text != txtConfirm.Text)
                {
                    Response.Write("<script>alert('Password not match')</script>");
                    return;
                }

                con.Open();

                SqlCommand cmd = new SqlCommand(
                "INSERT INTO Users(Name,Email,Mobile,Password,Address) VALUES(@n,@e,@m,@p,@a)", con);

                cmd.Parameters.AddWithValue("@n", txtName.Text);
                cmd.Parameters.AddWithValue("@e", txtEmail.Text);
                cmd.Parameters.AddWithValue("@m", txtMobile.Text);
                cmd.Parameters.AddWithValue("@p", txtPassword.Text);
                cmd.Parameters.AddWithValue("@a", txtAddress.Text);

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Registration Successful');window.location='Login.aspx';</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}