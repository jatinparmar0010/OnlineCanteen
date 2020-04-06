<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Click Update" Font-Size="X-Large" ForeColor="Red"></asp:Label>
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
                <asp:Label ID="Label4" runat="server" Text="" style="width: 370px; height:50px;" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">
                Cabin No.</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="" style="width: 370px; height:50px;" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">
                Mobile:</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="" style="width: 370px; height:50px;" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" 
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

