<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
Items in Cart
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="OrderNow.aspx">continue Ordering</asp:HyperLink>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="5" ForeColor="Black" GridLines="None" Height="200px" 
        onrowdeleting="GridView1_RowDeleting" Width="951px" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" ShowFooter="True" 
        BackColor="#FF3300" Font-Size="Large">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="SR. No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="fid" HeaderText="Item Id">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="fname" HeaderText="Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="fprice" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
            <asp:CommandField SelectText="Remove" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" 
            BorderColor="Red" />
        <HeaderStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" 
            BorderColor="Red" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br /><br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" onclick="LinkButton1_Click1" 
    >Clear_All</asp:LinkButton><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Checkout" Font-Size="Large" 
        Height="50px" Width="370px" BackColor="Red" Font-Bold="True" 
    ForeColor="White"/>

    <br /><br />
    
</asp:Content>

