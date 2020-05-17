<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="DeleteCategory.aspx.cs" Inherits="Online_Music_Video_LS.DeleteCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h2>Delete Category</h2><br />  

    <asp:GridView ID="GridView1" CssClass="table table table-bordered table-hover" 
    runat="server" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    AutoGenerateColumns="False" Datakeynames="CName" 
                    DataSourceID="SqlDataSource1" Height="210px" HorizontalAlign="Left" 
                    Width="800px">
        <Columns>
            <asp:BoundField DataField="CName" HeaderText="CName" 
                SortExpression="CName" ReadOnly="True" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
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
  

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]" DeleteCommand="Delete from Category where CName=@CName"></asp:SqlDataSource>

                      
</asp:Content>

