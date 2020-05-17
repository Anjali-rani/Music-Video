<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="AddArtists.aspx.cs" Inherits="Online_Music_Video_LS.AddArtists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="up"></h2>

<fieldset>

<!-- Form Name -->
<legend>Add Artist</legend>

<!-- Text input-->
<div class="form-group">
   <label class="col-md-4 control-label" for="Name">Artist Name</label>  
  <div class="col-md-4">
    <asp:TextBox name="Name" type="text" placeholder="Artist" 
          class="form-control input-md" ID="TextBox11" runat="server" 
          CausesValidation="True"></asp:TextBox>

               <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Artist Name"
               ControlToValidate="TextBox11" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                ValidationExpression="^[a-zA-Z ]+$"   runat="server" 
                   ErrorMessage="Enter Only Alphabets" ControlToValidate="TextBox11" 
          ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
   <label class="col-md-4 control-label" for="Message">Description</label>
  <div class="col-md-4">                     

    <asp:TextBox ID="TextBox33" runat="server" class="form-control"  rows="4"  placeholder="Description" TextMode="MultiLine" 
                    ></asp:TextBox>
<asp:RequiredFieldValidator
            ID="rfvName" runat="server" ErrorMessage="Please Enter Description"
               ControlToValidate="TextBox33" Display="Dynamic" ForeColor="Red"
               SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp;<br />

  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="Submit"></label>
  <div class="col-md-8">

          <asp:Button ID="Button1" runat="server" name="Submit" class="btn btn-success"  
          Text="Add"
                        onclick="Button1_Click" />

                                    <asp:Button ID="Button2"  name="Cancel" 
              class="btn btn-danger" runat="server" 
            Text="Cancel"
                        onclick="Button2_Click" CausesValidation="False" />
                        &nbsp; <b><i><a href="#down" style="color: #FF0000">View Artists </a></i></b>
    <br /><br />
      <asp:Label ID="Label1" runat="server"></asp:Label>
  </div>
</div>

</fieldset>
<legend>View Albums</legend>
<h2 id="down"></h2>
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" CssClass="table table table-bordered table-hover" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ArtistName" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ArtistName" HeaderText="ArtistName" ReadOnly="True" 
            SortExpression="ArtistName" />
        <asp:BoundField DataField="ArtistDescription" HeaderText="ArtistDescription" 
            SortExpression="ArtistDescription" />
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

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:FUSIC+DBConnectionString %>" 
    SelectCommand="SELECT * FROM [Artists]"></asp:SqlDataSource>
 <b><i><a href="#up" style="color: #FF0000">Go To Top </a></i></b>

</asp:Content>