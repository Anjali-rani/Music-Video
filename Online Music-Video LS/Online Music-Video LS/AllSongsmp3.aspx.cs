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
    public partial class AllSongs : System.Web.UI.Page
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
                        //GridView1.DataSource = dt;
                        //GridView1.DataBind();
                    }
                }
            }
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
