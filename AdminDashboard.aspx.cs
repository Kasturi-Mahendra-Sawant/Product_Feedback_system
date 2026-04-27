using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ProductFeedbackManagment
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadCounts();
            }
        }

        void LoadCounts()
        {
            con.Open();

            SqlCommand cmd1 = new SqlCommand("select count(*) from Users", con);
            lblUsers.Text = cmd1.ExecuteScalar().ToString();

            SqlCommand cmd2 = new SqlCommand("select count(*) from Products", con);
            lblProducts.Text = cmd2.ExecuteScalar().ToString();

            SqlCommand cmd3 = new SqlCommand("select count(*) from Feedback", con);
            lblFeedback.Text = cmd3.ExecuteScalar().ToString();

            con.Close();
        }
    }
}