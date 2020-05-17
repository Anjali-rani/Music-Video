<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAllSongs.aspx.cs" Inherits="Online_Music_Video_LS.UserAllSongs" %>

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
                



      <h3><b><i style="color: #FFFFFF">All Songs(MP3)</i></b></h3><hr>


                <asp:GridView ID="GridView1" 
        CssClass="table table table-bordered table-hover" runat="server" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        OnRowDataBound="OnRowDataBound" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" 
        DataKeyNames="SongName,AlbumName,Id" >
            <Columns>
             <asp:TemplateField HeaderText="Cover">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200" Width="200" />
            </ItemTemplate>
        </asp:TemplateField>
                    <asp:BoundField DataField="SongName" 
                    SortExpression="SongName" HeaderText="Song Name" ReadOnly="True"/>
                <asp:BoundField DataField="AlbumName" HeaderText="Album Name" 
                    SortExpression="AlbumName" ReadOnly="True" />
                <asp:BoundField DataField="ArtistName" HeaderText="Artist Name" 
                    SortExpression="ArtistName" />
                <asp:BoundField DataField="CName" HeaderText="Category Name" 
                    SortExpression="CName" />


                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Id" Visible="False" />


 <asp:TemplateField HeaderText="Play">
                <ItemTemplate>
                    <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=FileCS1.ashx?Id=<%# Eval("Id") %>'
                        width="200" height="40" id="dewplayer">
                        <param name="wmode" value="transparent" />
                        <param name="movie" value='dewplayer-vol.swf?mp3=FileCS1.ashx?Id=<%# Eval("Id") %>'/>
                    </object>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="Id" Text = "Download" DataNavigateUrlFormatString = "~/FileCS1.ashx?Id={0}" HeaderText="Download" />
           
           
           
           
           
           
           
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
            
        
      
        SelectCommand="SELECT Albums.Picture, Songs.SongName, Albums.AlbumName, Songs.ArtistName, Songs.CName, Albums.Year,
            Songs.SongDownload, Songs.Id  FROM Albums 
           INNER JOIN Songs ON Albums.AlbumName = Songs.AlbumName">
        </asp:SqlDataSource> 
</form>





    <br />
    





</form>
</center>


</div>





  <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Developed by Shweta & Anjali | All Rights Reserved | 2019.</p>

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
