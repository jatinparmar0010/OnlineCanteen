<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="profile1.aspx.cs" Inherits="profile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
            <asp:Label ID="Label1" runat="server" Text="Click Save to Update" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        </h1>
            <fieldset>
      <table class="style1">
        <tr>
            <td class="style2" style="font-size: large">
                Email:</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="" style="width: 370px; height:50px;" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">
                Name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="227px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Name is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">
                Cabin No.</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="82px" Width="238px" 
                     TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Cabin No. is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">
                Mobile:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Mobile Number is Mandatory" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Enter Valid Mobile Number" Font-Size="Large" ForeColor="Red" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" 
                    style="width: 250px; height:50px;" BackColor="Red" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" onclick="Button1_Click"/>
            </td>
        </tr>
          <tr>
              <td class="style2">
                  &nbsp;</td>
              <td>
                  <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
              </td>
          </tr>
    </table>
        </fieldset>
</asp:Content>

