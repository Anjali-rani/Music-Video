<%@ WebHandler Language="C#" Class="FileCS1" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
public class FileCS1 : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        int id = int.Parse(context.Request.QueryString["id"]);
        byte[] bytes;
        string strConnString = ConfigurationManager.ConnectionStrings["FUSIC+DBConnectionString"].ConnectionString;
        string songname, categoryname, artistname, albumname;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select SongName,CName,AlbumName,ArtistName,SongDownload from Songs where Id=@Id";
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Connection = con;
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                bytes = (byte[])sdr["SongDownload"];
                songname = sdr["SongName"].ToString();
                categoryname = sdr["CName"].ToString();
                albumname = sdr["AlbumName"].ToString();
                artistname = sdr["ArtistName"].ToString();
                
                con.Close();
            }
        }
        context.Response.Clear();
        context.Response.Buffer = true;
        context.Response.AppendHeader("Content-Disposition", "attachment; filename=" + songname);
        context.Response.BinaryWrite(bytes);
       // context.Response.BinaryWrite(bytes1);
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