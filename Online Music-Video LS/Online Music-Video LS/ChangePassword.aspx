<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Online_Music_Video_LS.ChangePassword" %>

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
       
    <form id="form2" runat="server" class="form-horizontal">

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
                    <a href="UserSearch.aspx">Search</a>
                </li>
                <li>
                    <a href="UserAllSongs.aspx">All Songs</a>
                </li>
                
                <li>
                    <a href="UserFeedback.aspx">Feedback </a>
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
            <br />
            <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Menu</a>
            <br /><br />

           

      <div class="container">
      <br /><center>
      <h3><span style="COLOR: white"><b><i>Change Your Password</i></b></span></h3><br />
    
<fieldset>

<!-- For</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Name"><font style="color: #FFFFFF;">Enter Your Current Password:</font></label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" placeholder="Current Password" TextMode="Password" 
          class="form-control input-md" ID="txt_cpassword" runat="server" 
          CausesValidation="True" Height="40" Width="280"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txt_cpassword" 
            ErrorMessage="Please Enter Your Current Password" ForeColor="red"></asp:RequiredFieldValidator>

  </div>
  </div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="EmailID"><font style="color: #FFFFFF;">Enter New Password:</font></label>  
  <div class="col-md-4">
    <asp:TextBox ID="txt_npassword" runat="server" TextMode="Password"
     Height="40" Width="280"  type="text" placeholder="New Password" 
     class="form-control input-md"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt_npassword" 
            ErrorMessage="Please Enter New Password" ForeColor="red"></asp:RequiredFieldValidator>


  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Message">
  <font style="color: #FFFFFF;">Confirm New Password:</font></label>
  <div class="col-md-4">                     

    <asp:TextBox ID="txt_ccpassword" runat="server" TextMode="Password" 
    class="form-control" Width="280" rows="5"  placeholder="Confirm Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_ccpassword" 
            ErrorMessage="Please Confirm  Your Password" ForeColor="red"></asp:RequiredFieldValidator>
             <br />
             <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword" 
            ErrorMessage="Password Mismatch" ForeColor="red"></asp:CompareValidator>   

  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <div class="col-md-8">

<asp:Button ID="btn_update" runat="server" name="Cancel" 
 class="btn btn-success"  onclick="btn_update_Click"
            Text="Update Password" CausesValidation="True"/>
      <br />
       <asp:Label ID="lbl_msg" Font-Bold="True"  ForeColor="red" runat="server" Text=""></asp:Label>
    <br />
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx" 
        ForeColor="red" Font-Size="22" Font-Bold="True" Font-Italic="True">Login Again</asp:HyperLink>

  </div>
</div>
<br />
</fieldset>
</form>
</center>
    
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
