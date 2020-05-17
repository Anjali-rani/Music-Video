using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Online_Music_Video_LS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "Admin" && TextBox2.Text == "admin7157")
            {
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("AdminHome.aspx");
                
            }
            else
            {
                string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
                string str = null;
                SqlCommand com;
                object obj = null;
                SqlConnection con = new SqlConnection(strConnString);
                con.Open();

                Session["UserName"] = TextBox1.Text;

               
                str = "select count(*) from LoginDetails where UserName=@UserName and Password =@Password";
                com = new SqlCommand(str, con);
                com.CommandType = CommandType.Text;
                com.Parameters.AddWithValue("@UserName", Session["UserName"]);
                com.Parameters.AddWithValue("@Password", TextBox2.Text);
                obj = com.ExecuteScalar();
                if ((int)(obj) != 0)
                {

                    
                        Response.Redirect("UserHome.aspx");
                    Session["LoggedIn"] = "1";
                }
                else
                {
                    //Label1.Text = "Invalid Username and Password";
                    Response.Write("<script>alert('Invalid UserName OR Password !')</script>");
                }
                con.Close();
            }

        }
        private void Clear_Controls()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Clear_Controls();
            Label1.Text = string.Empty;
        }
    }
}