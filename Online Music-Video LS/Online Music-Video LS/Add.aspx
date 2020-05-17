<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>


<%-- Add content controls here --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


                <h1>Add</h1>

        <asp:Button ID="Button1" runat="server" Text="Category" class="btn btn-primary" 
        PostBackUrl="AddCategory.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button2" runat="server" Text="Album" class="btn btn-primary" 
        PostBackUrl="AddAlbum.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button3" runat="server" Text="Artist" class="btn btn-primary" 
        PostBackUrl="AddArtists.aspx" Height="50px" Width="120px"/>
         <asp:Button ID="Button4" runat="server" Text="Song" class="btn btn-primary" 
        PostBackUrl="AddSongsmp3mp4.aspx" Height="50px" Width="120px"/>
    <asp:Button ID="Button5" runat="server" Text="Lyrics" class="btn btn-primary" 
        PostBackUrl="AddLyrics.aspx" Height="50px" Width="120px"/>

   


</asp:Content>
