<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


              

                <h2>Contact Details/Queries/Feedback of the Users</h2>
                <p></p>
                <p> <code></code></p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CssClass="table table table-bordered table-hover" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1" Height="194px" Width="700px" 
                    DataKeyNames="Name" >
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                            SortExpression="Feedback" />
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
                    SelectCommand="SELECT * FROM [Contact/Feedback]" DeleteCommand="DELETE FROM [Contact/Feedback] WHERE [Name]=@Name"></asp:SqlDataSource>


              

</asp:Content>