<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="SearchMp3.aspx.cs" Inherits="Online_Music_Video_LS.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
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

        <h3 style="color: #FFFFFF">  Search Top Hindi, English, Bollywood & Hollywood Songs !
Play, Download & Enjoy !<br /><br />
            Search Songs By Song OR Album OR Artist OR Category Name !</h3>
          <br /><br />

          <asp:TextBox ID="TextBox1" runat="server" placeholder="Search Songs By Song OR Album OR Artist OR Category Name" class="form-control" Height="50px" Width="670px"></asp:TextBox>
<br />
<asp:Button ID="Button1" runat="server" name="Add" class="btn btn-success"  
          Text="  Search  " onclick="Button1_Click" />
<asp:Button ID="Button2"  name="Cancel" class="btn btn-danger" runat="server" 
            Text="Cancel"
                        onclick="Button2_Click" />
	    
        <br /><br />
	    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True"  
            Font-Size="18pt" ForeColor="Red" BackColor="White" ></asp:Label>
          <br /><br />
        <div id="result">
        <center>
<asp:GridView ID="GridView1" runat="server" 
                CssClass="table table table-bordered table-hover" 
                BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="20px" 
                Width="100px" onrowcommand="GridView1_RowCommand">
    <Columns>

        <asp:ButtonField ButtonType="Button"  ImageUrl="img/play.png"  Text="Play" CommandName="Play" />
        <asp:ButtonField ButtonType="Button"  ImageUrl="img/download.png"  
            Text="Download" CommandName="Download" />

    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" 
        Height="10px" Width="10px" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>











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


