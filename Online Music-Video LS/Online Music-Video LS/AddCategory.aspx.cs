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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=SHWETA\SQLEXPRESS;Initial Catalog=FUSIC;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into Genres values(' " + TextBox11.Text + " ','" + TextBox33.Text + "')";
            cmd.ExecuteNonQuery();
            //Label1.Text = "New Category Added !";
            Response.Write("<script>alert('New Category Added !')</script>");
            con.Close();
            GridView1.DataBind();
        }
        private void Clear_Controls()
        {
            TextBox11.Text = string.Empty;
            TextBox33.Text = string.Empty;
            TextBox11.Focus();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Clear_Controls();
            Label1.Text = string.Empty;
            Response.Redirect("AddCategory.aspx");
        }

    }
}
