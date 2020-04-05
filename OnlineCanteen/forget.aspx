<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Forget Password?" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        </h1>
            <asp:Label ID="Label4" runat="server" Text="We will send you code to reset your password." Font-Size="Large" ForeColor="Black"></asp:Label><br /><br />
            
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email Address" 
                    style="width: 370px; height:50px;" Font-Size="Large"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Email Address is Required" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Enter Valid Email Address" Font-Size="Large" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
            <br />
            <asp:Button ID="Button1" runat="server" Text="SEND CODE" 
                style="width: 370px; height:50px;" BackColor="Red" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" onclick="Button1_Click"  />
                <br /><br />  
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="login.aspx">Login!</asp:HyperLink>
            <br /><br />    
            <asp:Label ID="Label3" runat="server" Text="" ></asp:Label>

</asp:Content>

