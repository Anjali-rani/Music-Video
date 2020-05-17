using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Online_Music_Video_LS
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                //Label1.Text = " WELCOME :: " + Session["UserName"];
                Label2.Text = "Welcome : " + Session["UserName"];
            }
        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
            string str = null;
            SqlCommand com;
            byte up = 0;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select * from LoginDetails ";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (txt_cpassword.Text == reader["Password"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            con.Close();
            if (up == 1)
            {
                con.Open();
                str = "update LoginDetails set Password=@Password where UserName='" + Session["UserName"].ToString() + "'";
                com = new SqlCommand(str, con);
                com.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
                com.Parameters["@Password"].Value = txt_npassword.Text;
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password Changed Successfully !')</script>");
            }
            else
            {
                lbl_msg.Text = "Please Enter Correct Password !";
            }
        }
    }
}