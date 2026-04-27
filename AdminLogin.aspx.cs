using System;

namespace ProductFeedbackManagment
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            string username = "admin";
            string password = "123";

            if (txtUser.Text == username && txtPass.Text == password)
            {
                Session["admin"] = txtUser.Text;
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password');</script>");
            }
        }
    }
}