<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="Home1StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="ad">
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/AdXMLFile.xml" />
    </div>
    <h2>Featured</h2>
	<div id="desc">
        <div class="prod">
            <img src="images/bf1.jpg" alt="image"/>
        </div>
        <div class="prod">
            <img src="images/bf2.jpg" alt="image"/>
        </div>
        <div class="prod">
            <img src="images/lc1.jpg" alt="image"/>
        </div>
        <div class="prod">
            <img src="images/lc2.jpg" alt="image"/>
        </div>
        <div class="prod">
            <img src="images/sn1.jpg" alt="image"/>
        </div>
        <div class="prod">
            <img src="images/sn2.jpg" alt="image"/>
        </div>
	</div>
</asp:Content>

