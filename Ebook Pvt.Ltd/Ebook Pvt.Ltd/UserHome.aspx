<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Ebook_Pvt.Ltd.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <ul class="nav">
              <li><a href="UserHome.aspx" class="active" >Home</a></li>
              <li><a href="Shop.aspx" >Shop</a></li>
              <li><a href="MyOrders.aspx" >My Orders</a></li>
              <li><a href="MyAccount.aspx" >Account</a></li>
              
            </ul>
    </div>
    <div align="center">

        <asp:Panel ID="Panel1" runat="server" Height="149px" Width="219px" style="display:inline-block;" BackColor="CornflowerBlue">
            <h3>Number Of pending Orders</h3>
            <br />
            <asp:Label ID="lbl_penOrders" runat="server"></asp:Label>
        </asp:Panel>
        
        &nbsp
        <asp:Panel ID="Panel2" runat="server" Height="149px" Width="217px" style="display:inline-block;"  BackColor="CornflowerBlue">
            <h3>Number Of Delivered Orders</h3>
            <br />
            <asp:Label ID="lbl_delOrders" runat="server"></asp:Label>
        </asp:Panel>
        &nbsp
         
        <asp:Panel ID="Panel3" runat="server" Height="149px" Width="217px" style="display:inline-block;"  BackColor="CornflowerBlue">
            <h3>Number Of Total Orders</h3>
            <br />
            <br />
            <asp:Label ID="lbl_totalOrders" runat="server"></asp:Label>
        </asp:Panel>
        &nbsp
        <asp:Panel ID="Panel4" runat="server" Height="149px" Width="217px" style="display:inline-block;"  BackColor="CornflowerBlue">
            <h3>Date</h3>
            <br />
            <br />
            <asp:Label ID="lbl_date" runat="server"></asp:Label>
        </asp:Panel>
  
    </div>
    <br />
    <br />

    <br />


    <div align="center">
                            <asp:Button ID="btn_Logout" runat="server" Text="Logout" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_update_Click" />
                    
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />







</asp:Content>
