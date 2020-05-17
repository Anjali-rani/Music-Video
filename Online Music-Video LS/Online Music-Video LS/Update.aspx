<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

               
                <h2>Update</h2>

        <asp:Button ID="Button1" runat="server" Text="Category" class="btn btn-primary" 
        PostBackUrl="UpdateCategory.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button2" runat="server" Text="Album" class="btn btn-primary" 
        PostBackUrl="UpdateAlbum.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button3" runat="server" Text="Artist" class="btn btn-primary" 
        PostBackUrl="UpdateArtist.aspx" Height="50px" Width="120px"/>
         <asp:Button ID="Button4" runat="server" Text="Song" class="btn btn-primary" 
        PostBackUrl="UpdateSong.aspx" Height="50px" Width="120px"/>

      

</asp:Content>