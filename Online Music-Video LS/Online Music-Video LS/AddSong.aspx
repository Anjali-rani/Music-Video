<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="AddSong.aspx.cs" Inherits="Online_Music_Video_LS.AddSong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="up"></h2>

<fieldset>

<!-- Form Name -->
<legend>Add Song</legend>

<!-- Text input-->
<div class="form-group">
   <label class="col-md-4 control-label" for="Name">Song Name</label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" placeholder="Song Name" 
          class="form-control input-md" ID="TextBox1" runat="server" 
          CausesValidation="true" ></asp:TextBox>

               <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Song Name"
               ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                ValidationExpression="^[a-zA-Z ]+$"   runat="server" 
                   ErrorMessage="Enter Only Alphabets" ControlToValidate="TextBox1" 
          ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
  </div>
</div>

<!-- Select Multiple -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Select Genre">Select Category</label>
  <div class="col-md-4">
      <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
          DataSourceID="SqlDataSource1" DataTextField="CName" DataValueField="CName" >
      </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
          SelectCommand="SELECT [CName] FROM [Category]"></asp:SqlDataSource>
  </div>
</div>

<!-- Select Multiple -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Select Album">Select Album</label>
  <div class="col-md-4">
      <asp:DropDownList ID="DropDownList2" runat="server"  class="form-control" 
          DataSourceID="SqlDataSource2" DataTextField="AlbumName" 
          DataValueField="AlbumName">
      </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
          SelectCommand="SELECT [AlbumName] FROM [Albums]"></asp:SqlDataSource>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Singer Name">Artist Name</label>  
  <div class="col-md-4">
      <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" 
          DataSourceID="SqlDataSource3" DataTextField="ArtistName" 
          DataValueField="ArtistName">
          <asp:ListItem></asp:ListItem>
      </asp:DropDownList>    
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
          ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
          SelectCommand="SELECT [ArtistName] FROM [Artists]"></asp:SqlDataSource>
  </div>
</div>

<%-- 
<!-- Text input-->
<div class="form-group">
   <label class="col-md-4 control-label" for="Name">Length</label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" placeholder="Length" 
          class="form-control input-md" ID="TextBox2" runat="server" 
          CausesValidation="True" ></asp:TextBox>

               <asp:RequiredFieldValidator
            ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Length of the song"
               ControlToValidate="TextBox2" ForeColor="Red"
               SetFocusOnError="True" Type="Double"></asp:RequiredFieldValidator>
               &nbsp;<br />
<asp:RangeValidator ID="RangeValidator2" runat="server" 
                           ControlToValidate="TextBox2" Display="Dynamic" 
                           ErrorMessage="Song Length must be within 00.01 to 20.00 " ForeColor="Red" Height="20px" 
                           MaximumValue="20.00" MinimumValue="00.01" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
 
 
    </div>
</div>

   --%>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="Picture">Choose Mp3</label>
  <div class="col-md-4">
      <asp:FileUpload ID="FileUpload1" runat="server" class="input-file"/>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
      ErrorMessage="Upload mp3 File !" ControlToValidate="FileUpload1"  
          ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator
id="RegularExpressionValidator2"
runat="server"
ErrorMessage="<br>Invalid File Type"
ValidationExpression ="^.+(.wav|.WAV|.mp3|.MP3)$"
ControlToValidate="FileUpload1" Display="Dynamic" ForeColor="Red" 
          SetFocusOnError="True"></asp:RegularExpressionValidator>
  </div>
</div>



<%-- 

    <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="Picture">Choose Mp4</label>
  <div class="col-md-4">
      <asp:FileUpload ID="FileUpload2" runat="server" class="input-file"/>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
      ErrorMessage="Upload mp4 File !" ControlToValidate="FileUpload2" 
          ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator
id="RegularExpressionValidator3"
runat="server"
ErrorMessage="<br>Invalid File Type"
ValidationExpression ="^.+(.mp4|.MP4)$"
ControlToValidate="FileUpload2" Display="Dynamic" ForeColor="Red" 
          SetFocusOnError="True"></asp:RegularExpressionValidator>
  </div>
</div>
 
   --%>




<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Submit"></label>
  <div class="col-md-8">

          <asp:Button ID="Button1" runat="server" name="Add" class="btn btn-success"  
          Text="Add" CausesValidation="true" 
                        onclick="Button1_Click" />

                                    <asp:Button ID="Button2"  name="Cancel" 
                                    class="btn btn-danger" runat="server" 
            Text="Cancel" CausesValidation="false" 
                        onclick="Button2_Click" />
                        &nbsp; <b><i><a href="#down" style="color: #FF0000">View Songs </a></i></b>
    <br /><br /><br />
      <asp:Label ID="Label1" runat="server"></asp:Label>
  </div>
</div>

</fieldset>
<legend>View Albums</legend>
<h2 id="down"></h2>
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" CssClass="table table table-bordered table-hover" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    DataSourceID="SqlDataSource4">
    <Columns>
        <asp:BoundField DataField="CName" HeaderText="CName" 
            SortExpression="CName" />
        <asp:BoundField DataField="SongName" HeaderText="SongName" 
            SortExpression="SongName" />
        <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" 
            SortExpression="AlbumName" />
        <asp:BoundField DataField="ArtistName" HeaderText="ArtistName" 
            SortExpression="ArtistName" />
       
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


<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
    
    SelectCommand="SELECT [CName], [SongName], [AlbumName], [ArtistName] FROM [Songs]"></asp:SqlDataSource>


 <b><i><a href="#up" style="color: #FF0000">Go To Top </a></i></b>


</asp:Content>

