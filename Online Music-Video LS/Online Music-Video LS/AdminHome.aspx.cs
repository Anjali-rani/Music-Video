using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Music_Video_LS
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = " WELCOME :: " + Session["UserName"];
                // Label2.Text = "Welcome : " + Session["UserName"];
                
            }
        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}