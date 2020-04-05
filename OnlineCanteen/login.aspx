<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    User Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="loginStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main1">
        <div id="desc">
            <img src="images/clogo1.png" alt="logo" />
            <h3>Login to KJSIM Canteen</h3>
        </div>
        <div id="det">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email Address" 
               Font-Size="Medium" Height="30" Width="250"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                Display="Dynamic" ErrorMessage="Email Address is Mandatory" Font-Size="Medium"
                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                Display="Dynamic" ErrorMessage="Inavlid Email" Font-Size="Medium"
                ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br /><br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Choose Password" Font-Size="Medium" TextMode="Password" Height="30" Width="250"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                Display="Dynamic" ErrorMessage="Password is Mandatory" Font-Size="Medium" ForeColor="Red"
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="forget.aspx" Font-Size="Medium" Font-Bold="True">Forget Password?</asp:HyperLink>
            <br /><br />
            <asp:Button class="btn" ID="Button1" runat="server" Text="LOGIN"
                BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="Button1_Click" Height="40" Width="120" />
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
        </div>
        <div id="signup">
            <asp:Label ID="Label2" runat="server" Text="New to KJSIM Canteen?" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="signup.aspx" Font-Size="Medium" Font-Bold="True">Create Account</asp:HyperLink>
        </div>
    </div>  
</asp:Content>
