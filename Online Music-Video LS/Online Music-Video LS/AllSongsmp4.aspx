<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="AllSongsmp4.aspx.cs" Inherits="Online_Music_Video_LS.AllSongsmp4" %>
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






          <h2><b><i style="color: #FFFFFF"> All Songs(MP4)</i></b></h2><br />
          <h5><b><i style="color: #FF0000"> To Play/Download, Please Login !</i></b></h5><br />

    <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>

                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" />
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Video" SortExpression="Data">
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="Data" Mode="Edit" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>'></asp:Literal>
                        <video id="VideoPlayer" src='<%# Eval("Id", "FileCS.ashx?Id={0}") %>' controls="true"
            width="300" height="300" loop="true" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" DeleteCommand="DELETE FROM [Songsmp4] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Songsmp4] ([Name], [Description],[ContentType], [Data]) VALUES (@Name, @ContentType, @Data)" 
            SelectCommand="SELECT * FROM [Songsmp4]" UpdateCommand="UPDATE [Songsmp4] SET [Name] = @Name, [Description]=@Description,[ContentType] = @ContentType, [Data] = @Data WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ContentType" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ContentType" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
  
       


    </center>


  

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>




          </center><br /><br /><br /><br /><br /><br /><br />
      </div>
    </section>
    </form>
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


