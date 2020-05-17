<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddLyrics.aspx.cs" Inherits="Online_Music_Video_LS.AddLyrics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h2>Add/Delete Lyrics</h2>

        <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
      ErrorMessage="Upload Text File !" ControlToValidate="FileUpload1"  
          ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator
id="RegularExpressionValidator2"
runat="server"
ErrorMessage="<br>Invalid File Type"
ValidationExpression ="^.+(.txt|.TXT)$"
ControlToValidate="FileUpload1" Display="Dynamic" ForeColor="Red" 
          SetFocusOnError="True"></asp:RegularExpressionValidator>
<hr />



<br /><br />
    

    <h4>Delete Lyrics</h4>



    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="174px" Width="387px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>"
             SelectCommand="SELECT [Name], [id] FROM [SongLyrics]"
            DeleteCommand="Delete from SongLyrics where id=@id"
            ></asp:SqlDataSource>



</asp:Content>
