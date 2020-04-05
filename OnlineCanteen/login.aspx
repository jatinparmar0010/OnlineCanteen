<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email Address" 
                    style="width: 370px; height:50px;" Font-Size="Large"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Email Address is Mandatory" Font-Size="Large" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Not a Valid Email Address" Font-Size="Large" ForeColor="Red" 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Choose Password" 
                    style="width: 370px; height:50px;" Font-Size="Large" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Password is Mandatory" Font-Size="Large" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <br /><br />

            <asp:Button ID="Button1" runat="server" Text="LOGIN" 
                style="width: 370px; height:50px;" BackColor="Red" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" onclick="Button1_Click" />
                <br /><br />    
            <asp:Label ID="Label2" runat="server" Text="New to KJSIM Canteen?"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="signup.aspx">Create Account</asp:HyperLink>
            <br /><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="forget.aspx">Recover Password</asp:HyperLink>
            <br /><br />    
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>

</asp:Content>

