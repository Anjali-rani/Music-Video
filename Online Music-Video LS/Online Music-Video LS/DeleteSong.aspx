<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteSong.aspx.cs" Inherits="Online_Music_Video_LS.DeleteSong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Delete Song</h2><br />
              
    <asp:GridView ID="GridView4" CssClass="table table table-bordered table-hover" runat="server" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" DataKeyNames="SongName" 
                   CellPadding="3" DataSourceID="SqlDataSource4" Height="200px" HorizontalAlign="Left" 
                    Width="700px">
        <Columns>
            <asp:BoundField DataField="SongName" HeaderText="SongName" 
                SortExpression="SongName" />
            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
            <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" 
                SortExpression="AlbumName" />
            <asp:BoundField DataField="ArtistName" HeaderText="ArtistName" 
                SortExpression="ArtistName" />

            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>


                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
                    
                   SelectCommand="SELECT  [SongName], [CName], [AlbumName], [ArtistName], 
                   [SongDownload] FROM [Songs]" DeleteCommand="Delete from [Songs] where SongName=@SongName" ></asp:SqlDataSource>


</asp:Content>

