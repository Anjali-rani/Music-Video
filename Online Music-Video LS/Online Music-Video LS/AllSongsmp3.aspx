<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="AllSongsmp3.aspx.cs" Inherits="Online_Music_Video_LS.AllSongs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="Form1" runat="server">
    <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="Home.aspx" style="color: #FFFF00">FUSIC+ </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto my-2 my-lg-0">
            <li class="nav-item" >
            <a class="nav-link js-scroll-trigger" href="Home.aspx" >Home</a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Search.aspx" >Search</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="AllSongs.aspx" style="color: #FFFF00">All Songs</a>
          </li>     
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Login.aspx" >Login</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Register.aspx">Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav> 
        
<!-- Page Content -->
    <section class="py-5" style="background-image:url('img/bg-masthead.jpg'); height: 100%; width: 100%;"> 
      <div class="container" > 
      <center>
       
       <br /><br /><br /><br />






          <h2><b><i style="color: #FFFFFF"> All Songs(MP3)</i></b></h2><br />
          <h5><b><i style="color: #FF0000"> To Play/Download, Please Login !</i></b></h5><br />

    <br />
    
        <asp:GridView ID="GridView1" 
        CssClass="table table table-bordered table-hover" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="SongName,AlbumName" DataSourceID="SqlDataSource1" 
        OnRowDataBound="OnRowDataBound" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" >
            <Columns>
             <asp:TemplateField HeaderText="Cover">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200" Width="200" />
            </ItemTemplate>
        </asp:TemplateField>
                <asp:BoundField DataField="SongName" HeaderText="Song Name" 
                    SortExpression="SongName" ReadOnly="True" />
                <asp:BoundField DataField="ArtistName" HeaderText="Artist Name" 
                    SortExpression="ArtistName" />

                <asp:BoundField DataField="AlbumName" HeaderText="Album Name" 
                    SortExpression="AlbumName" ReadOnly="True" />
                <asp:BoundField DataField="CName" HeaderText="Category" 
                    SortExpression="CName" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
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
            
       
        SelectCommand="SELECT Albums.Picture, Songs.SongName, Albums.AlbumName, Songs.ArtistName, Songs.CName, Albums.Year, Songs.SongDownload FROM Albums INNER JOIN Songs ON Albums.AlbumName = Songs.AlbumName">
        </asp:SqlDataSource>
</form>




    </center>


  

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>




          </center><br /><br /><br /><br /><br /><br /><br />
      </div>
    </section>
</form>

   <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Developed by Shweta & Anjali | All Rights Reserved | 2019.</p>
        </div>
      <!-- /.container -->
    </footer>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</asp:Content>


