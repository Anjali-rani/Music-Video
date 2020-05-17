<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Online_Music_Video_LS.Search1" %>
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
            <a class="nav-link js-scroll-trigger" href="Search.aspx" style="color: #FFFF00">Search</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="AllSongs.aspx">All Songs</a>
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
       
       <br /><br /><br /><br /><br />

        <h3 style="color: #FFFFFF">  Search Songs (MP3/MP4)
<br /><br />
            <asp:Button ID="Button1" runat="server" Text="MP3" class="btn btn-primary" 
        PostBackUrl="SearchMp3.aspx" Height="50px" Width="120px"/>
        <asp:Button ID="Button2" runat="server" Text="MP4" class="btn btn-primary" 
        PostBackUrl="SearchMp4.aspx" Height="50px" Width="120px"/>
           </h3>
          <br /><br />










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


