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
    public partial class UserSearchMp3 : System.Web.UI.Page
    {
        string cons = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;
            GridView1.Visible = false;
            Label2.Text = "Welcome : " + Session["UserName"];

        }
        public DataSet Bind()
        {

            SqlConnection con = new SqlConnection(cons);
            SqlCommand cmd = new SqlCommand("select Id,SongName,CName,AlbumName,ArtistName from Songs where SongName like'" + TextBox1.Text + "%' OR AlbumName like'" + TextBox1.Text + "%' OR ArtistName like'" + TextBox1.Text + "%' OR CName like'" + TextBox1.Text + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {

                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    BindGrid();
                }

            }
            return ds;
        }
        private void BindGrid()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Id, SongName from Songs";
                    cmd.Connection = con;
                    con.Open();
                    // GridView1.DataSource = cmd.ExecuteReader();
                    //  GridView1.DataBind();
                    con.Close();
                }
            }
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
            Response.Redirect("UserSearchMp3.aspx");
        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}
