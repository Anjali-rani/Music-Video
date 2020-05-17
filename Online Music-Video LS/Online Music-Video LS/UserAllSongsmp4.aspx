<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAllSongsmp4.aspx.cs" Inherits="Online_Music_Video_LS.UserAllSongsmp4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FUSIC+</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
     
</head>

<body background="img/w.jpg">
    <center>
        <form id="Form1" runat="server">
<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
       
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="UserHome.aspx">
                       <i><b style="color: #FFFF00">FUSIC+</b></i> 
                    </a>
                </li>

                 <li>
                    <a href="UserHome.aspx">

                        <marquee direction="left" scrollamount="5" scrolldelay="4">
        <h4 style="font-style: oblique; 
            font-variant: normal; color: #FFFFFF;"><asp:Label ID="Label2" runat="server" ></asp:Label></h4>
       
        </marquee>     

                    </a>
              
                   </li>
                <li>
                    <a href="UserHome.aspx">Home</a>
                </li>

                <li>
                    <a href="UserSearchMp3.aspx">Search Songs</a>
                </li>

                <li>
                    <a href="UserAllSongs.aspx">All Songs(mp3)</a>
                </li>
                <li>
                    <a href="UserAllSongsmp4.aspx">All Songs(mp4)</a>
                </li>
                <li>
                    <a href="ViewLyrics.aspx">View Song Lyrics</a>
                </li>
                <li>
                    <a href="UserFeedback.aspx">Feedback</a>
                </li>
                <li>
                     <asp:LinkButton ID="LinkButton1" runat="server" 
        onclick="logout_click" ForeColor="Black"><i><b style="color: #FFFFFF">Log Out</b></i></asp:LinkButton>
                   
                </li>
        </div>
        <!-- /#sidebar-wrapper -->

    
        <!-- Page Content -->
  
       
         <div id="page-content-wrapper">
            <div class="container-fluid">
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">&nbsp;&nbsp;&nbsp;Menu&nbsp;&nbsp;&nbsp;</a>
            <br /><br />

           
                <br /><br />
                



      <h3><b><i style=" color: #FFFFFF;">All Songs(Mp4)</i></b></h3><hr>
                <br />
<asp:GridView ID="GridView1" runat="server" CssClass="table table table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" AllowSorting="True">
            <Columns>

                <asp:CommandField ShowSelectButton="True" />

                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" />
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Video" SortExpression="Data">
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="Data" Mode="Edit" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>'></asp:Literal>
                        <video id="VideoPlayer" src='<%# Eval("Id", "FileCS.ashx?Id={0}") %>' controls="true"
            width="300" height="300" loop="true" />
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" DeleteCommand="DELETE FROM [Songsmp4] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Songsmp4] ([Name], [Description],[ContentType], [Data]) VALUES (@Name, @ContentType, @Data)" 
            SelectCommand="SELECT * FROM [Songsmp4]" UpdateCommand="UPDATE [Songsmp4] SET [Name] = @Name, [Description]=@Description,[ContentType] = @ContentType, [Data] = @Data WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ContentType" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ContentType" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
  
       


              
</form>





    <br />
   
</center>


</div>





  <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Developed by Shweta & Anjali | All Rights Reserved | 2019.ts Reserved | 2019.</p>

        <br />
        <center>
       

 <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>


  </body>
  </html>
