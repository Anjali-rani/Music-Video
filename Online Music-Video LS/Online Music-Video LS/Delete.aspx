<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <h1>Delete</h1>

        <asp:Button ID="Button1" runat="server" Text="Category" class="btn btn-primary" 
        PostBackUrl="DeleteCategory.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button2" runat="server" Text="Album" class="btn btn-primary" 
        PostBackUrl="DeleteAlbum.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button3" runat="server" Text="Artist" class="btn btn-primary" 
        PostBackUrl="DeleteArtist.aspx" Height="50px" Width="120px"/>
         <asp:Button ID="Button4" runat="server" Text="Song" class="btn btn-primary" 
        PostBackUrl="DeleteSong.aspx" Height="50px" Width="120px"/>

   

</asp:Content>