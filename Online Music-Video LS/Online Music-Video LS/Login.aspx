<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Music_Video_LS.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FUSIC</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

     <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

     <style type="text/css">
        .style0
        {
            text-align:center;
        }
        .style9
        {
            color: #000000;
        }
        *
        {
            padding: 0em;
            margin-left: 0em;
            margin-right: 0em;
            margin-top: 0em;
        }

        .style10
        {
            height: 58px;
        }
        .style11
        {
            width: 79px;
        }
        .style12
        {
            height: 58px;
            width: 79px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
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
            <a class="nav-link js-scroll-trigger" href="Search.aspx">Search</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="AllSongs.aspx">All Songs</a>
          </li>     
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Login.aspx" style="color: #FFFF00">Login</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Register.aspx">Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav> 
        
    
    
    
    
    
    
    <form runat="server">
    
    
    <!-- Page Content -->
    <section class="py-5" style="background-image:url('img/banner6.jpg'); height: 100%; width: 100%;"> 
      <div class="container" > 
      <center>
       
       <br /><br /><br /><br /><br />
       <div class="login-card">
 <h1> <b> Log-in</b></h1><br />

    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="240px" placeholder="Username"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                   ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>


    <br />


   <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="240px"
                    TextMode="Password" placeholder="Password"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>


      <asp:Button ID="Button3" runat="server" Height="40px" Width="240px"  Text="Login" class="login login-submit" onclick="Button1_Click" CausesValidation="true"/>
   <asp:Button ID="Button2" runat="server"  Text="Cancel" Height="40px" Width="240px" class="login login-submit" onclick="Button2_Click" CausesValidation="false"/>
    
     <asp:Label ID="Label1" runat="server"></asp:Label>


  <div class="login-help">
   <b><h5><a href="Register.aspx">Register</a> • <a href="ForgotPass.aspx">Forgot Password</a></h5></b> 
  </div>
</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->

  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>


          </center><br /><br />
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

