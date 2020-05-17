using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Music_Video_LS
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSignUpStatus.Text = string.Empty;
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {


            string connStr = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
            SqlCommand com;
            string str;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            str = "select count(*)from LoginDetails where UserName='" + txtUserName.Text + "'";
            com = new SqlCommand(str, con);
            int count = Convert.ToInt32(com.ExecuteScalar());
            if (count > 0)
            {
                lblSignUpStatus.Text = "username exist";
                Response.Write("<script>alert('UserName Already Exist ! Try Something Else !')</script>");


            }
            else
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                str = "select count(*)from LoginDetails where UserName='" + txtUserName.Text + "'";
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Insert into LoginDetails(Name,UserName,Password,Email,DateOfJoining) values (@Name,@UserName,@Password,@Email,@DateOfJoining)", con);
                try
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPwd.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", emailid.Text.Trim());
                    cmd.Parameters.AddWithValue("@DateOfJoining", DateTime.Now);
                    cmd.ExecuteNonQuery();


                }
                catch (Exception ex)
                {
                    Response.Write("Error occured: " + ex.Message.ToString());
                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }
                Response.Write("<script>alert('You Are Successfully Registered ! Please Log In !')</script>");
                
            }
        }
        private void Clear_Controls()
        {
            txtName.Text = string.Empty;
            txtPwd.Text = string.Empty;
            txtUserName.Text = string.Empty;
            emailid.Text = string.Empty;
            lblSignUpStatus.Text = string.Empty;
            txtName.Focus();

        }

        protected void btnReset_Click1(object sender, EventArgs e)
        {
            Clear_Controls();
            lblSignUpStatus.Text = string.Empty;
            Response.Redirect("Register.aspx");
        }
        [System.Web.Services.WebMethod]
        public static string CheckEmail(string useroremail)
        {
            string retval = "";
            SqlConnection con = new SqlConnection(@"Data Source=SHWETA\SQLEXPRESS;Initial Catalog=FUSIC+;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("select UserName from LoginDetails where UserName=@UserName", con);
            cmd.Parameters.AddWithValue("@UserName", useroremail);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                retval = "true";
            }
            else
            {
                retval = "false";
            }

            return retval;
        } 
    }
}