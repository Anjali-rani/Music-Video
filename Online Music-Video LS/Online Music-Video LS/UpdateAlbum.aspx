<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="UpdateAlbum.aspx.cs" Inherits="Online_Music_Video_LS.UpdateAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<legend>Update Albums:</legend>
<script runat="server">
 private void OnDSUpdatedHandler(Object source, SqlDataSourceStatusEventArgs e) {
    if (e.AffectedRows > 0) {
        // Perform any additional processing, 
        // such as setting a status label after the operation.
        Label1.Text = Request.LogonUserIdentity.Name +
            " Updation Successful !";    
    }
    else {
        Label1.Text = "No Data Updated !";
    }
 }
</script>
   
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:GridView ID="GridView1" CssClass="table table table-bordered table-hover" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" Height="170px" HorizontalAlign="Left" 
                    Width="700px" DataKeyNames="AlbumName">
        <Columns>
            <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" 
                SortExpression="AlbumName" ReadOnly="True" />
            <asp:BoundField DataField="CName" HeaderText="CName" 
                SortExpression="CName" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:CommandField ShowEditButton="True" />
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
        SelectCommand="SELECT * FROM [Albums]" UpdateCommand="Update Albums SET CName=@CName, Year=@Year WHERE AlbumName=@AlbumName"
          OnUpdated="OnDSUpdatedHandler"></asp:SqlDataSource>

        <br />
       

</asp:Content>

