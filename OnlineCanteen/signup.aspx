<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email Address" 
    style="width: 370px; height:50px;" Font-Size="Large"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="TextBox1" Display="Dynamic" 
    ErrorMessage="Email Address is Required" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ControlToValidate="TextBox1" Display="Dynamic" 
    ErrorMessage="Enter Valid Email Address" Font-Size="Large" ForeColor="Red" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />

    <asp:TextBox ID="TextBox2" runat="server" placeholder="Choose Password" 
    style="width: 370px; height:50px;" Font-Size="Large" TextMode="Password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ControlToValidate="TextBox2" Display="Dynamic" 
    ErrorMessage="Password is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />

    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Mobile Number" 
    style="width: 370px; height:50px;" Font-Size="Large"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ControlToValidate="TextBox3" Display="Dynamic" 
    ErrorMessage="Mobile Number is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
    ControlToValidate="TextBox3" Display="Dynamic" 
    ErrorMessage="Enter Valid Mobile Number" Font-Size="Large" ForeColor="Red" 
    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <br />

    <fieldset>
       <legend>I'm a</legend>
       <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" Font-Size="Large" />
       <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" Font-Size="Large" />
     </fieldset> <br />

     <asp:Button ID="Button1" runat="server" Text="REGISTER" 
        style="width: 370px; height:50px;" BackColor="Red" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" onclick="Button1_Click" /><br /><br />    
     <asp:Label ID="Label2" runat="server" Text="Already have an account?"></asp:Label>
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx">login</asp:HyperLink>
     <br /><br />
      <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                
</asp:Content>

