<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="Description.aspx.cs" Inherits="Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 207px;
        }
        .style2
        {
            width: 434px;
        }
        .style3
        {
            height: 160px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 397px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
&nbsp;<table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                <asp:Image ID="Image1" runat="server" Height="225px" Width="300px" />
                            </td>
                            <td>
                                <table class="style1">
                                    <tr>
                                        <td class="style3" style="font-size: large">
                                            Description :-
                                            <asp:Label ID="Label2" runat="server" Font-Size="Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: larger">
&nbsp;Price :-
                                            <asp:Label ID="Label3" runat="server" Font-Size="Large"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style4" style="font-size: large">
                        <tr>
                            <td class="style5">
                                Quantity
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Button class="btn" ID="Button1" runat="server" Text="ORDER NOW" BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="White"  Height="40" Width="120" />
 
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>

</asp:Content>

