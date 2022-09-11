<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Ebook_Pvt.Ltd.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <ul class="nav">
              <li><a href="AdminHome.aspx" class="active" >Home</a></li>
              <li><a href="ManageOrders.aspx" >Manage Orders</a></li>
              <li><a href="ManageBooks.aspx" >Manage Books</a></li>
              <li><a href="ManageUsers.aspx" >Manage Users</a></li>
              <li><a href="Reports.aspx" >Reports</a></li>
            </ul>
    </div>

     <div align="center">

        <asp:Panel ID="Panel1" runat="server" Height="149px" Width="219px" style="display:inline-block;" BackColor="CornflowerBlue">
            <h3>Number Of Orders</h3>
            <br />
            <asp:Label ID="lbl_Orders" runat="server"></asp:Label>
        </asp:Panel>
        
        &nbsp
        <asp:Panel ID="Panel2" runat="server" Height="149px" Width="217px" style="display:inline-block;"  BackColor="CornflowerBlue">
            <h3>Total Books</h3>
            <br />
            <asp:Label ID="lbl_books" runat="server"></asp:Label>
        </asp:Panel>
        &nbsp
         
        <asp:Panel ID="Panel3" runat="server" Height="149px" Width="217px" style="display:inline-block;"  BackColor="CornflowerBlue">
            <h3>Number Of Users</h3>
            <br />
           
            <asp:Label ID="lbl_Users" runat="server"></asp:Label>
        </asp:Panel>
        &nbsp
        <asp:Panel ID="Panel4" runat="server" Height="149px" Width="217px" style="display:inline-block;"  BackColor="CornflowerBlue">
            <h3>Date</h3>
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
