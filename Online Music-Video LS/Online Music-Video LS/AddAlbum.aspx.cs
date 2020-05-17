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
    public partial class AddAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("SELECT Picture FROM Albums", conn))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        //GridView2.DataSource = dt;
                        //GridView2.DataBind();
                    }
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Insert into Albums(AlbumName,CName,Year,Picture) values (@AlbumName,@CName,@Year,@Picture)", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@AlbumName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@CName", DropDownList1.SelectedItem.Text.Trim());
                cmd.Parameters.AddWithValue("@Year", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@Picture", FileUpload1.HasFile);
                cmd.Parameters.AddWithValue("@Picture", bytes);
                cmd.ExecuteNonQuery();
                //Label1.Text = "Album Added !";
                Response.Write("<script>alert('New Album Added !')</script>");
                Clear_Controls();
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
            GridView1.DataBind();
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
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["Picture"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }
    }
}

