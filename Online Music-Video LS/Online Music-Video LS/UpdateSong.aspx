<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateSong.aspx.cs" Inherits="Online_Music_Video_LS.UpdateSong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<legend>Update Songs:</legend>
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
        CellPadding="3" DataSourceID="SqlDataSource1" DataKeyNames="SongName" 
        Height="200px" HorizontalAlign="Left" 
                    Width="700px">
        <Columns>
            <asp:BoundField DataField="SongName" HeaderText="SongName" 
                SortExpression="SongName" ReadOnly="True" />
            <asp:BoundField DataField="CName" HeaderText="CName" 
                SortExpression="CName" />
            <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" 
                SortExpression="AlbumName" />
            <asp:BoundField DataField="ArtistName" HeaderText="ArtistName" 
                SortExpression="ArtistName" />

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
        SelectCommand="SELECT * FROM [Songs]" UpdateCommand="Update Songs SET SongName=@SongName, CName=@CName, AlbumName=@AlbumName, ArtistName=@ArtistName WHERE SongName=@SongName"
          OnUpdated="OnDSUpdatedHandler"></asp:SqlDataSource>

        <br />


</asp:Content>
