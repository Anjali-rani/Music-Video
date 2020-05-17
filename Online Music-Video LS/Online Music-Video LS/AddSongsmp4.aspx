<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddSongsmp4.aspx.cs" Inherits="Online_Music_Video_LS.AddSongsmp4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="up"></h2>

<fieldset>
    <legend>Add/Delete Song(MP4)</legend>
    
    <br />
    <h3> Add Song(mp4)</h3>
<!-- Form Name -->


    
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


    <!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Message">Description:</label>
  <div class="col-md-4">                     

    <asp:TextBox ID="TextBox33" runat="server" class="form-control" Width="280" rows="5"  placeholder="Description" TextMode="MultiLine" 
                    ></asp:TextBox>
<asp:RequiredFieldValidator
            ID="rfvName" runat="server" ErrorMessage="Please Enter Description!"
               ControlToValidate="TextBox33" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />

  </div>
</div>





    <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="Picture">Choose Mp4</label>
  <div class="col-md-4">
      <asp:FileUpload ID="FileUpload1" runat="server" class="input-file"/>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
      ErrorMessage="Upload mp4 File !" ControlToValidate="FileUpload1" 
          ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator
id="RegularExpressionValidator3"
runat="server"
ErrorMessage="<br>Invalid File Type"
ValidationExpression ="^.+(.mp4|.MP4)$"
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
            Text="Cancel" CausesValidation="false" 
                        onclick="Button2_Click" />
                        &nbsp; <b><i><a href="#down" style="color: #FF0000">View Songs(mp4) </a></i></b>
    <br /><br /><br />
      <asp:Label ID="Label1" runat="server"></asp:Label>
  </div>
</div>


  
   
     <legend>View Songs(MP4)</legend>
    <h2 id="down"></h2>

        <hr />

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
  
       



 <b><i><a href="#up" style="color: #FF0000">Go To Top </a></i></b>


</asp:Content>

