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
    public partial class AddSongsmp4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindDataList();
            }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
                string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(strConnString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        try
                        {
                            cmd.CommandText = "INSERT INTO Songsmp4(Name,Description, ContentType, Data) VALUES (@Name,@Description, @ContentType, @Data)";
                            cmd.Parameters.AddWithValue("@Name", Path.GetFileName(FileUpload1.PostedFile.FileName));
                            cmd.Parameters.AddWithValue("@Description", TextBox33.Text.Trim());
                            cmd.Parameters.AddWithValue("@ContentType", "video/mp4");
                            cmd.Parameters.AddWithValue("@Data", bytes);
                            Response.Write("<script>alert('New Song(mp4) Added !')</script>");
                            Label1.Text = "Song(mp4) Added !";
                            cmd.Connection = con;
                            con.Open();
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

                    }
                }

                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
    }
}