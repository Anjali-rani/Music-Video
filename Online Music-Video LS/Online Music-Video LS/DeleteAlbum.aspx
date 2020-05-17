<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="DeleteAlbum.aspx.cs" Inherits="Online_Music_Video_LS.DeleteAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h2>Delete Album</h2><br />
              
    <asp:GridView ID="GridView2" CssClass="table table table-bordered table-hover" 
    runat="server" AutoGenerateColumns="False" BackColor="White" Datakeynames="AlbumName" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                   CellPadding="3" DataSourceID="SqlDataSource2" Height="170px" HorizontalAlign="Left" 
                    Width="700px" OnRowDataBound="OnRowDataBound">
        <Columns>
            <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" 
                SortExpression="AlbumName" />
            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                   <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200" Width="200" />
            </ItemTemplate>
        </asp:TemplateField>
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



                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
                    
                   SelectCommand="SELECT [AlbumName], [CName], [Year], [Picture] FROM [Albums]" DeleteCommand="Delete from [Albums] where AlbumName=@AlbumName"></asp:SqlDataSource>
                    
</asp:Content>

