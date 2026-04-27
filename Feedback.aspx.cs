using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ProductFeedbackManagment
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(
            "insert into Feedback(ProductName,UserName,Rating,Comment) values(@p,@u,@r,@c)", con);

            cmd.Parameters.AddWithValue("@p", ddlProduct.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@u", txtName.Text);
            cmd.Parameters.AddWithValue("@r", ddlRating.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", txtComment.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Feedback Submitted')</script>");
        }
    }
}