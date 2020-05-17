using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Online_Music_Video_LS
{
    public partial class UserFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
               // Label1.Text = " WELCOME :: " + Session["UserName"];
                Label2.Text = "Welcome : " + Session["UserName"];
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=SHWETA\SQLEXPRESS;Initial Catalog=FUSIC+;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into Contact/Feedback values(' " + TextBox11.Text + " ','" + TextBox22.Text + "','" + TextBox33.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your Feedback has been submitted succcessfully !')</script>");
            // Label1.Text = "Your Feedback has been submitted succcessfully !";
        }
        private void Clear_Controls()
        {
            TextBox11.Text = string.Empty;
            TextBox22.Text = string.Empty;
            TextBox33.Text = string.Empty;
            TextBox11.Focus();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Clear_Controls();
            Label1.Text = string.Empty;

        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}
