<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="Online_Music_Video_LS.ForgotPass" %>

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
            <a class="nav-link js-scroll-trigger" href="Login.aspx" >Login</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Login.aspx" >Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav> 
        

    
    
    
    
    
    
    
    
    
    
     <center>
 <form id="Form1" class="form-horizontal" runat="server">
<fieldset>
<section class="py-5" style="background-image:url('img/banner6.jpg'); height: 100%; width: 100%;">
<!-- Form Name -->
    <br /><br />
<legend style="color: #FFFFFF">Forgot Password</legend><br />


    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Email" style="color: #FFFFFF">Username</label>  
  <div class="col-md-4">
    <asp:TextBox ID="TextBox1" runat="server" name="Email" type="text" Height="40" Width="280" onchange="UserOrEmailAvailability1()"  placeholder="Username" class="form-control input-md"></asp:TextBox>
                &nbsp;

      <asp:RequiredFieldValidator
            ID="rfvuserNameTextBox1" runat="server"
            ErrorMessage="Please Enter User Name" ControlToValidate="TextBox1"
            Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox1" ID="RegularExpressionValidator2"
       ForeColor="Red"  SetFocusOnError="True"
            ValidationExpression = "^[\s\S]{4,}$" runat="server" ErrorMessage="Minimum 5 characters required !">
      </asp:RegularExpressionValidator>
            <br /><div id="checkusernameoremail1" runat="server">  
            <asp:Label ID="lblSignUpStatus1" runat="server" ForeColor="Red" 
                Font-Bold="True" Font-Italic="True" Font-Size="14pt"  ></asp:Label>



  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Email"  style="color: #FFFFFF">Email:</label>  
  <div class="col-md-4">
 
    <asp:TextBox ID="TextBox2" TextMode="Email" onchange="UserOrEmailAvailability2()"  Height="40" Width="280" runat="server" name="Email" type="text" placeholder="Email" class="form-control input-md"  ></asp:TextBox>

           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Email" 
               ForeColor="Red"></asp:RequiredFieldValidator>
      <div id="Div1" runat="server">  
            
           &nbsp;<br />
      <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="TextBox2"
        Text="Invalid email"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        Runat="server" ForeColor="Red" /> 
          <br /><div id="checkusernameoremail2" runat="server">  
            <asp:Label ID="lblop" runat="server" ForeColor="Red" 
                Font-Bold="True" Font-Italic="True" Font-Size="14pt"  ></asp:Label>




  </div>
</div>








<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Submit"></label>
  <div class="col-md-8">
   <asp:Button ID="btnSubmit" name="Submit" class="btn btn-success"  runat="server" 
          Text="Send To Email" onclick="btnSubmit_Click1" CausesValidation="true"/>
         
                <asp:Button ID="btnReset" name="Cancel" class="btn btn-danger" runat="server" CausesValidation="False" Text="Cancel" onclick="btnReset_Click1" />
    <br /><asp:Label ID="Label1" runat="server" Font-Bold="True"  ></asp:Label>


      <br />


    <a href="Login.aspx" style="color: #FFFF00; font-size: x-large" ><img src="img/login12.png" width="200" /></a>
      <br /><br /><br /><br /><br /><br />
  </div>
</div>
</section>
</fieldset>
</form>

         


         


   <!-- Footer -->
    <footer class="py-4 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Developed by Shweta & Anjali | All Rights Reserved | 2019.</p>
        </div>
      <!-- /.container -->
    </footer>


         <!-- Bootstrap core JavaScript -->
    <script type="text/javascript"  src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>




   
          </center>



</asp:Content>
