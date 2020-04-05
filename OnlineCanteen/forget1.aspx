<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="forget1.aspx.cs" Inherits="forget1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Forget Password?" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        </h1>
            <asp:Label ID="Label4" runat="server" Text="Enter the Code which has been sent to you on your verified Email Address" Font-Size="Large" ForeColor="Black"></asp:Label><br /><br />
            
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Code" 
                    style="width: 370px; height:50px;" Font-Size="Large"></asp:TextBox>
                    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Enter the Code" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Please Enter a Four Digit Code" Font-Size="Large" ForeColor="Red" 
                    ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                <br />
                
                
                
            <br />
            <asp:Button ID="Button2" runat="server" Text="VERIFY CODE" 
                style="width: 370px; height:50px;" BackColor="Red" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" onclick="Button2_Click"  />
                <br /><br />  
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="login.aspx">Login!</asp:HyperLink>
            <br /><br />    
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>


</asp:Content>

