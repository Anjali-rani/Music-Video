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
using System.IO;

namespace Online_Music_Video_LS
{
    public partial class SearchMp4 : System.Web.UI.Page
    {
        string cons = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;
            GridView1.Visible = false;

        }
        public DataSet Bind()
        {

            SqlConnection con = new SqlConnection(cons);
            SqlCommand cmd = new SqlCommand("select Name,Description from Songsmp4 where Name like'" + TextBox1.Text +    "%' OR Description like'" + TextBox1.Text + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    GridView1.Visible = true;
                }

            }


            return ds;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataSet ds = Bind();

            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.Visible = true;
                    TextBox1.Text = " ";
                    Label1.Text = " ";
                }


                else
                {
                    GridView1.Visible = false;
                    Label1.Visible = true;
                    Label1.Text = " Record Not Found !";

                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;
            GridView1.Visible = false;
            Response.Redirect("SearchMp4.aspx");
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Play")
            {
                Label1.Text = " Login To Play/Download The Song!";
                GridView1.Visible = true;

            }
            if (e.CommandName == "Download")
            {

                Label1.Text = " Login To Download/Play The Song!";
                GridView1.Visible = true;

            }

        }
    }
}