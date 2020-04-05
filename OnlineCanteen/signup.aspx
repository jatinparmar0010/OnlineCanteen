<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true"
    CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
SignUp
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="signupStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="smain">
        <h2>Create Your Account</h2>
        <asp:TextBox class="txt" ID="TextBox1" runat="server" placeholder="Enter Email Address" Font-Size="Medium" Height="30" Width="300"></asp:TextBox>
        <br /><asp:RequiredFieldValidator class="txt" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            Display="Dynamic" ErrorMessage="Email Address is Required" Font-Size="Large"
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator class="txt" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
            Display="Dynamic" ErrorMessage="Invalid Email" Font-Size="Large"
            ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox class="txt" ID="TextBox2" runat="server" placeholder="Choose Password" Font-Size="Medium" TextMode="Password" Height="30" Width="300"></asp:TextBox>
        <br /><asp:RequiredFieldValidator class="txt" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            Display="Dynamic" ErrorMessage="Password is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:TextBox class="txt" ID="TextBox3" runat="server" placeholder="Enter Mobile Number" 
            Font-Size="Medium" Height="30" Width="300px"></asp:TextBox>
        <br /><asp:RequiredFieldValidator class="txt" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            Display="Dynamic" ErrorMessage="Mobile Number is Mandatory" Font-Size="Large"
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator class="txt" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3"
            Display="Dynamic" ErrorMessage="Invalid Mobile Number" Font-Size="Large"
            ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <br />
        <fieldset class="txt" >
            <legend>I'm a</legend>
            <asp:RadioButton class="rbtn" ID="RadioButton1" runat="server" GroupName="gender" Text="Male"
                Font-Size="Large" Font-Bold="True" />
            <asp:RadioButton class="rbtn" ID="RadioButton2" runat="server" GroupName="gender" Text="Female"
                Font-Size="Large" Font-Bold="True" />
        </fieldset>
        <br />
        <asp:Button class="sbtn" ID="Button1" runat="server" Text="REGISTER"
            BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="Button1_Click" Height="40" Width="120" /><br />
        <br />
        <asp:Label class="slink" ID="Label2" runat="server" 
            Text="Already have an account?" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx" 
            Font-Bold="True" Font-Size="Medium">Login Now</asp:HyperLink>
        <br />
        <br />
        <asp:Label class="slink" ID="Label3" runat="server" Text="" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
