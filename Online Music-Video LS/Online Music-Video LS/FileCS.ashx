<%@ WebHandler Language="C#" Class="FileCS" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
public class FileCS : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        int id = int.Parse(context.Request.QueryString["id"]);
            byte[] bytes;
            string contentType;
            string songname, description;
            string constr = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT Name,Description, ContentType, Data FROM Songsmp4 WHERE id=@id";
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        
                        songname = sdr["Name"].ToString();
                        description = sdr["Description"].ToString();
                        contentType = sdr["ContentType"].ToString();
                        bytes = (byte[])sdr["Data"];
                        
                    }
                    con.Close();
                }
            }
            context.Response.Clear();
            context.Response.Buffer = true;
            context.Response.AppendHeader("Content-Disposition", "attachment; filename=" + songname);
            context.Response.ContentType = contentType;
            context.Response.BinaryWrite(bytes);
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
