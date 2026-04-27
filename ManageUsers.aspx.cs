using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace ProductFeedbackManagment
{
    public partial class ManageUsers : System.Web.UI.Page
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
                LoadUsers();
            }
        }

        void LoadUsers()
        {
            SqlDataAdapter da = new SqlDataAdapter(
            "select UserId,Name,Email,Mobile,Address from Users order by UserId desc", con);

            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            SqlCommand cmd = new SqlCommand(
            "delete from Users where UserId=@id", con);

            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            LoadUsers();
        }
    }
}
