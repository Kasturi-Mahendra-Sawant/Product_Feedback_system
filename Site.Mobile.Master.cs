using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductFeedbackManagment
{
    public partial class Site_Mobile : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Optional: Common logic for mobile pages

                // Example:
                // Page.Title = "Mobile View";
            }
        }
    }
}