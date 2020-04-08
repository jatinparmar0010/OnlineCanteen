<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="Lunch.aspx.cs" Inherits="Lunch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="3" RepeatDirection="Horizontal" 
        onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        ID.:-
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("fid") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name :-
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="225px" 
                            ImageUrl='<%# Eval("imgpath") %>' Width="300px" 
                            CommandArgument='<%# Eval("fid")%>' CommandName="Description" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Price :-
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("fprice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Quantity :-<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button class="btn" ID="Button1" runat="server" Text="ORDER NOW" BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="White"  Height="40" Width="120" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:website1ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:website1ConnectionString.ProviderName %>" 
        SelectCommand="Select fid,fname,imgpath,fprice from item where category=&quot;Lunch&quot; ;">
    </asp:SqlDataSource>


</asp:Content>

