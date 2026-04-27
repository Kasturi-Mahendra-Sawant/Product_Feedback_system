using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ProductFeedbackManagment
{
    public partial class ManageProducts : System.Web.UI.Page
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
                LoadProducts();
            }
        }

        void LoadProducts()
        {
            SqlDataAdapter da = new SqlDataAdapter(
            "select * from Products", con);

            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}