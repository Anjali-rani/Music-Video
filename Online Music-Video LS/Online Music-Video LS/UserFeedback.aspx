<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserFeedback.aspx.cs" Inherits="Online_Music_Video_LS.UserFeedback" %>

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
                 <li>      <a id="AnchorButton"
     onserverclick="logout_click" CausesValidation="False"
     runat="server"><i><b style="color: #FFFFFF">Log Out</b></i></a>
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
                



      <div class="container">
      
 <h3><span style="COLOR: white"><b><i>Feedback Form</i></b></span></h3><br />


  
<fieldset>

<!-- For</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Name"><font style="color: #FFFFFF;">Name:</font></label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" placeholder="Name" 
          class="form-control input-md" ID="TextBox11" runat="server" 
          CausesValidation="True" Height="40" Width="280"></asp:TextBox>

               <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name"
               ControlToValidate="TextBox11" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                ValidationExpression="^[a-zA-Z ]+$"   runat="server" 
                   ErrorMessage="Enter Only Alphabets" ControlToValidate="TextBox11" 
          ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
  </div>
  </div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="EmailID"><font style="color: #FFFFFF;">EmailID:</font></label>  
  <div class="col-md-4">
    <asp:TextBox ID="TextBox22" runat="server" Height="40" Width="280" name="EmailID" type="text" placeholder="EmailID" class="form-control input-md"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ControlToValidate="TextBox22" Display="Dynamic" ErrorMessage="Please Enter Email" 
               ForeColor="Red"></asp:RequiredFieldValidator>
           &nbsp;<br />
      <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="TextBox22"
        Text="Invalid email"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        Runat="server" ForeColor="Red" /> 
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Message"><font style="color: #FFFFFF;">Feedback:</font></label>
  <div class="col-md-4">                     

    <asp:TextBox ID="TextBox33" runat="server" class="form-control" Width="280" rows="5"  placeholder="Feedback" TextMode="MultiLine" 
                    ></asp:TextBox>
<asp:RequiredFieldValidator
            ID="rfvName" runat="server" ErrorMessage="Please Enter Your Feedback"
               ControlToValidate="TextBox33" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />

  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Submit"></label>
  <div class="col-md-8">

          <asp:Button ID="Button1" runat="server" name="Submit" class="btn btn-success"  
          Text="Submit" CausesValidation="true" 
                        onclick="Button1_Click" />

                                    <asp:Button ID="Button2"  name="Cancel" class="btn btn-danger" runat="server" 
            Text="Cancel" CausesValidation="false"
                        onclick="Button2_Click" />
    <br /><br />
      <asp:Label ID="Label1" runat="server"></asp:Label>
  </div>
</div>
</fieldset>
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
