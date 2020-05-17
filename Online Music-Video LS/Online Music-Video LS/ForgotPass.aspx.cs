using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace Online_Music_Video_LS
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            String password;
            String mycon = @"Data Source=SHWETA\SQLEXPRESS;Initial Catalog=FUSIC+;Integrated Security=True;Pooling=False";
            String myquery = "Select * from LoginDetails where UserName='" + TextBox1.Text + "' and Email='" + TextBox2.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";

                password = ds.Tables[0].Rows[0]["Password"].ToString();
                sendpassword(password, TextBox2.Text);
                Response.Write("<script>alert('Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox !')</script>");
               // lblop.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

            }
            else
            {
                Response.Write("<script>alert('Invalid UserName OR Email !')</script>");

            }
            con.Close();

        }
        private void sendpassword(String password, String email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("fusicplus@gmail.com", "shwetafusic");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( FUSIC+ )";
            msg.Body = "Dear " + TextBox1.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\nFUSIC+";
            string toaddress = TextBox2.Text;
            msg.To.Add(toaddress);
            string fromaddress = "FUSIC+ <fusicplus@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }


        protected void btnReset_Click1(object sender, EventArgs e)
        {

            Response.Redirect("ForgotPass.aspx");
        }
    }
}