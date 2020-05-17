using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Online_Music_Video_LS
{
    public partial class UserAllSongsmp4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindDataList();
            }
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                // Label1.Text = " WELCOME :: " + Session["UserName"];
                Label2.Text = "Welcome : " + Session["UserName"];
            }
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("SELECT Picture FROM Albums", conn))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        //GridView1.DataSource = dt;
                        //GridView1.DataBind();
                    }
                }
            }
        }
        private void BindDataList()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT id, Name FROM Songsmp4 WHERE ContentType = 'video/mp4'";
                    cmd.Connection = con;
                    con.Open();
                    // DataList1.DataSource = cmd.ExecuteReader();
                    // DataList1.DataBind();
                    con.Close();
                }
            }
        }
        private void Clear_Controls()
        {
            //TextBox1.Text = string.Empty;
            // TextBox2.Text = string.Empty;

        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Login.aspx");
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["Picture"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }
        private void BindGrid()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Id, SongName from Songsmp4";
                    cmd.Connection = con;
                    con.Open();
                    // GridView1.DataSource = cmd.ExecuteReader();
                    //  GridView1.DataBind();
                    con.Close();
                }
            }
        }


    }
}
