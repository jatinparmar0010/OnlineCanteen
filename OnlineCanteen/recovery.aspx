<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="recovery.aspx.cs" Inherits="recovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Password Recovery
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="recoveryStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="remain">
        <h2>
            <asp:Label ID="Label1" runat="server" Text="Reset Password" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        </h2>

            <asp:Label ID="Label4" runat="server" Text="" Font-Size="Large" ForeColor="Black"></asp:Label><br /><br />
            
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter New Password" 
                    style="width: 370px; height:50px;" Font-Size="Large" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Password is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br /><br />
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="Confirm New Password" 
                    style="width: 370px; height:50px;" Font-Size="Large" TextMode="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Password is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                 <br /><asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox1" ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Password and Confirm Password did not Match" Font-Size="Large" 
                    ForeColor="Red" SetFocusOnError="True">Password Mismatched</asp:CompareValidator>                   
                    <br />
            <asp:Button ID="Button2" runat="server" Text="RESET" 
                style="width: 370px; height:50px;" BackColor="Red" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" onclick="Button2_Click" />
                <br /><br />  
            <asp:HyperLink class="slink" ID="HyperLink2" runat="server" NavigateUrl="login.aspx">Login!</asp:HyperLink>
            <br /><br />    
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>

    </div>
</asp:Content>

