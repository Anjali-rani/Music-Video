<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Music_Video_LS.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <a class="nav-link js-scroll-trigger" href="Login.aspx">Login</a>
          </li>
            <li class="nav-item active">
            <a class="nav-link js-scroll-trigger" href="Register.aspx" style="color: #FFFF00">Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav> 
        


     <!-- Page Content -->
    <section class="py-5" style="background-image:url('img/55.jpg'); height: 100%; width: 100%; top: auto; right: auto; bottom: auto; left: auto;">

 <center>
 <form id="Form1" class="form-horizontal" runat="server">
<fieldset >

<!-- Form Name -->
<legend ><b><i><h3> <br />Sign Up</h3></i></b></legend>
<!-- Text input-->
<div class="form-group" >
  <label class="col-md-4 control-label" for="Name">Name:</label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" Height="40" Width="300" placeholder="Name" class="form-control input-md" ID="txtName" runat="server"></asp:TextBox>

               <asp:RequiredFieldValidator
            ID="rfvName" runat="server" ErrorMessage="Please Enter Name"
               ControlToValidate="txtName" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                ValidationExpression="^[a-zA-Z ]+$"   runat="server" 
                   ErrorMessage="Enter Only Alphabets" ControlToValidate="txtName" ForeColor="Red"></asp:RegularExpressionValidator>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="UserName">UserName:</label>  
  <div class="col-md-4">
    <asp:TextBox ID="txtUserName"  onchange="UserOrEmailAvailability()"  runat="server" Height="40" Width="300" 
    name="UserName" type="text" placeholder="UserName" class="form-control input-md" ></asp:TextBox>
        <asp:RequiredFieldValidator
            ID="rfvuserName" runat="server"
            ErrorMessage="Please Enter User Name" ControlToValidate="txtUserName"
            Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtUserName" ID="RegularExpressionValidator3"
       ForeColor="Red"  SetFocusOnError="True"
            ValidationExpression = "^[\s\S]{4,}$" runat="server" ErrorMessage="Minimum 4 characters required !">
      </asp:RegularExpressionValidator>
            <br /><div id="checkusernameoremail" runat="server">  
            <asp:Label ID="lblSignUpStatus" runat="server" ForeColor="Red" 
                Font-Bold="True" Font-Italic="True" Font-Size="14pt"  ></asp:Label>
  </div>
</div>

                           







<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Email">Email:</label>  
  <div class="col-md-4">
 
    <asp:TextBox ID="emailid" TextMode="Email" runat="server" Height="40" Width="300" name="Email" type="text" placeholder="Email" class="form-control input-md"  ></asp:TextBox>

           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ControlToValidate="emailid" Display="Dynamic" ErrorMessage="Enter Email" 
               ForeColor="Red"></asp:RequiredFieldValidator>
           &nbsp;<br />
      <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="emailid"
        Text="Invalid email"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        Runat="server" ForeColor="Red" /> 
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Password">Password:</label>
  <div class="col-md-4">
    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Height="40" Width="300" name="Password" type="password" placeholder="Password" class="form-control input-md" ></asp:TextBox>
           <br />
           <asp:RequiredFieldValidator
            ID="rfvpwd" runat="server"
               ErrorMessage="Please Enter  Password" ControlToValidate="txtPwd"
               Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
      <br />
      <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtPwd" ID="RegularExpressionValidator2"
       ForeColor="Red"  SetFocusOnError="True"
            ValidationExpression = "^[\s\S]{5,}$" runat="server" ErrorMessage="Minimum 5 characters required !">
      </asp:RegularExpressionValidator>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Retype Password">Confirm Password:</label>
  <div class="col-md-4">
    <asp:TextBox ID="cpass" runat="server" TextMode="Password" Height="40" Width="300" name="Retype Password" type="password" placeholder="Retype Password" class="form-control input-md"></asp:TextBox>
           <asp:CompareValidator ID="CompareValidator1" runat="server" 
               ControlToCompare="txtPwd" ControlToValidate="cpass" Display="Dynamic" 
               ErrorMessage="CompareValidator" ForeColor="Red">Password Mismatch</asp:CompareValidator>
           <br />           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ControlToValidate="cpass" Display="Dynamic" 
               ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
  </div>
</div>
</div>
 

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Submit"></label>
  <div class="col-md-8">

<asp:Button ID="btnSubmit" name="Submit" class="btn btn-success"  runat="server" 
          Text="Submit" onclick="btnSubmit_Click1" CausesValidation="true"/>
         
                <asp:Button ID="btnReset" name="Cancel" class="btn btn-danger"  CausesValidation="false" runat="server" Text="Cancel" onclick="btnReset_Click1" />
    <br /><br />
</fieldset>
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" Font-Bold="True" ForeColor="White">Sign In</asp:HyperLink>

    <br /><br />    <br /><br /></form>
          </center>
    </section>
 





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




    <script type="text/javascript"  src="Scripts/jquery-1.4.1.min.js"></script> 
    <script type="text/javascript">

        function UserOrEmailAvailability() { //This function call on text change.             
            $.ajax({
                type: "POST",
                url: "Register.aspx/CheckEmail", // this for calling the web method function in cs code.  
                data: '{useroremail: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }', // user name or email value  
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response);
                }
            });
        }

        // function OnSuccess  
        function OnSuccess(response) {
            var msg = $("#<%=lblSignUpStatus.ClientID%>")[0];
            switch (response.d) {
                case "true":
                    msg.style.display = "block";
                    msg.style.color = "red";
                    msg.innerHTML = "User Name already exists !";
                    break;
                case "false":
                    msg.style.display = "block";
                    msg.style.color = "green";
                    msg.innerHTML = "User Name Available !";
                    break;
            }
        }

    </script>  

</asp:Content>
