<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddSongsmp3mp4.aspx.cs" Inherits="Online_Music_Video_LS.AddSongsmp3mp4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

     <h1>Add Songs(MP3/MP4)</h1><br />

     <asp:Button ID="Button1" runat="server" Text="MP3" class="btn btn-primary" 
        PostBackUrl="AddSong.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button2" runat="server" Text="MP4" class="btn btn-primary" 
        PostBackUrl="AddSongsmp4.aspx" Height="50px" Width="120px"/>

</asp:Content>
