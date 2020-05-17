using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Music_Video_LS
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Session["LoggedIn"] = "1";
        if (Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label1.Text = "WELCOME :: " + Session["UserName"];
            Label2.Text = "Welcome : " + Session["UserName"];
        }*/
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = " WELCOME :: " + Session["UserName"];
                Label2.Text = "Welcome : " + Session["UserName"];
            }
        }
        protected void lnk_changepassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}