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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {

            int a;
            string connStr = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
            SqlCommand com;
            string str;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            
            
            
            
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Insert into date2(currentdate) values (@currentdate)", con);
                try
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@currentdate", DateTime.Now);
                    
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

    }
