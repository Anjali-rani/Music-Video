<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewLyrics.aspx.cs" Inherits="Online_Music_Video_LS.ViewLyrics" %>

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
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
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

                <br />
            <h4 style="color: #FFFFFF">Download &amp; View Lyrics</h4><br /><br />
<asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="216px" Width="394px">
    <AlternatingRowStyle BackColor="White" ForeColor="#000000" />
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="File Name"/>
        <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                    CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />

<HeaderStyle BackColor="#006699" ForeColor="White" Font-Bold="True"></HeaderStyle>

    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />

<RowStyle BackColor="#A1DCF2" ForeColor="#000066"></RowStyle>
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>


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
