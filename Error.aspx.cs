using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductFeedbackManagment
{
    public partial class Error : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Optional: Page title set
                Page.Title = "Error Page";

                // Optional: Session clear (logout-like behavior)
                Session.Clear();
            }
        }
    }
}