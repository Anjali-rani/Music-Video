<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Online_Music_Video_LS.UserHome" %>

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
<form id="Form1" runat="server">
        <center>
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
                
     
       <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Size="20pt" ForeColor="White" Height="30px" 
            Width="100px"></asp:Label>
        <br />
        <br />
           <br />
                &nbsp;&nbsp;
      <asp:LinkButton ID="lnk_changepassword" runat="server" Font-Size="20pt"
        onclick="lnk_changepassword_Click" ForeColor="White">Change Password</asp:LinkButton>

   
    </form></center>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->






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
