<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="DeleteArtist.aspx.cs" Inherits="Online_Music_Video_LS.DeleteArtist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2> Delete Artist</h2><br />

              

               <asp:GridView ID="GridView1" CssClass="table table table-bordered table-hover" runat="server" AutoGenerateColumns="False" 
                   BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                   CellPadding="3" DataKeyNames="ArtistName" DataSourceID="SqlDataSource1">
                   <Columns>
                       <asp:BoundField DataField="ArtistName" HeaderText="ArtistName" ReadOnly="True" 
                           SortExpression="ArtistName" />
                       <asp:BoundField DataField="ArtistDescription" HeaderText="ArtistDescription" 
                           SortExpression="ArtistDescription" />
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
                   SelectCommand="SELECT * FROM [Artists]" DeleteCommand="Delete from Artists where ArtistName=@ArtistName"></asp:SqlDataSource>



                   
</asp:Content>

