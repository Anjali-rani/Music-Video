<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="AddAlbum.aspx.cs" Inherits="Online_Music_Video_LS.AddAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="up"></h2>


<fieldset>

<!-- Form Name -->
<legend>Add Album</legend>

<!-- Text input-->
<div class="form-group">
   <label class="col-md-4 control-label" for="Name">Album Name</label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" placeholder="Album Name" 
          class="form-control input-md" ID="TextBox1" runat="server" 
          CausesValidation="True" ></asp:TextBox>

               <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Album Name"
               ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />

  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Genre">Category</label>
  <div class="col-md-4">
<asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="220px" 
          class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" 
          DataTextField="CName" DataValueField="CName">
                    </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
          SelectCommand="SELECT [CName] FROM [Category]"></asp:SqlDataSource>

  </div>
</div>




<!-- Text input-->
<div class="form-group">
   <label class="col-md-4 control-label" for="Name">Year</label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" placeholder="Year" 
          class="form-control input-md" ID="TextBox2" runat="server" 
          CausesValidation="True" TextMode="Number" ></asp:TextBox>

               <asp:RequiredFieldValidator
            ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Year"
               ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />
<asp:RangeValidator ID="RangeValidator2" runat="server" 
                           ControlToValidate="TextBox2" Display="Dynamic" 
                           ErrorMessage="Year must be within 1940 to 2019" ForeColor="Red" Height="20px" 
                           MaximumValue="2019" MinimumValue="1940" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="Picture">Album Cover</label>
  <div class="col-md-4">
      <asp:FileUpload ID="FileUpload1" class="input-file" runat="server" />
       <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
      ErrorMessage="Upload Album Photo !" ControlToValidate="FileUpload1" 
          ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator
id="RegularExpressionValidator2"
runat="server"
ErrorMessage="<br>Invalid File Type"
ValidationExpression ="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpg|.JPG|.gif|.GIF|.png|.PNG|.bmp|.BMP|.jpeg|.JPEG)$"
ControlToValidate="FileUpload1" Display="Dynamic" ForeColor="Red" 
          SetFocusOnError="True"></asp:RegularExpressionValidator>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Submit"></label>
  <div class="col-md-8">

          <asp:Button ID="Button1" runat="server" name="Add" class="btn btn-success"  
          Text="Add" CausesValidation="true" 
                        onclick="Button1_Click" />

                                    <asp:Button ID="Button2"  name="Cancel" 
              class="btn btn-danger" runat="server" 
            Text="Cancel"
                        onclick="Button2_Click" CausesValidation="False" />
                       &nbsp; <b><i><a href="#down" style="color: #FF0000">View Albums </a></i></b>




    <br /><br />
      <asp:Label ID="Label1" runat="server"></asp:Label>
  </div>
</div>
</fieldset>

<legend>View Albums</legend>

<h2 id="down"></h2>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    Width="700px" OnRowDataBound="OnRowDataBound"
    BackColor="White" BorderColor="#CCCCCC"  
    CssClass="table table table-bordered table-hover" BorderStyle="None" BorderWidth="1px" 
    CellPadding="3" DataKeyNames="AlbumName" DataSourceID="SqlDataSource2" 
    AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" ReadOnly="True" 
            SortExpression="AlbumName" />
        <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200" Width="200" />
            </ItemTemplate>
        </asp:TemplateField>
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






<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
    SelectCommand="SELECT * FROM [Albums]"></asp:SqlDataSource>




     <b><i><a href="#up" style="color: #FF0000">Go To Top </a></i></b>

</asp:Content>
