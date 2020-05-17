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
    public partial class AddSong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {


                byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
                // byte[] bytes1 = br1.ReadBytes((int)FileUpload2.PostedFile.InputStream.Length);
                string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(strConnString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        try
                        {
                            cmd.CommandText = "Insert into Songs(SongName,CName,AlbumName,ArtistName,SongDownload) values(@SongName,@CName,@AlbumName,@ArtistName,@SongDownload)";
                            cmd.Parameters.AddWithValue("@SongName", Path.GetFileName(FileUpload1.PostedFile.FileName));
                            cmd.Parameters.AddWithValue("@CName", DropDownList1.SelectedItem.Text.Trim());
                            cmd.Parameters.AddWithValue("@AlbumName", DropDownList2.SelectedItem.Text.Trim());
                            cmd.Parameters.AddWithValue("@ArtistName", DropDownList3.SelectedItem.Text.Trim());
                            // cmd.Parameters.AddWithValue("@Length", TextBox2.Text.Trim());
                            cmd.Parameters.AddWithValue("@SongDownload", bytes);
                            // cmd.Parameters.AddWithValue("@ContentType", "video/mp4");
                            // cmd.Parameters.AddWithValue("@Data", bytes1);
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            //Label1.Text = "Song Added !";
                            Response.Write("<script>alert('New Song Added !')</script>");
                            con.Close();
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
                    }
                }
                GridView1.DataBind();
            }
            // Response.Redirect(Request.Url.AbsoluteUri);
        }


        private void Clear_Controls()
        {
            TextBox1.Text = string.Empty;
            // TextBox2.Text = string.Empty;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Clear_Controls();
            Label1.Text = string.Empty;
            Response.Redirect("AddSong.aspx");

        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from Songs";
                    cmd.Connection = con;
                    con.Open();
                    // GridView1.DataSource = cmd.ExecuteReader();
                    //GridView1.DataBind();
                    con.Close();
                }
            }
        }
    }
}
