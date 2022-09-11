<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="Ebook_Pvt.Ltd.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            height: 38px;
        }
        .auto-style13 {
            height: 238px;
            margin: 0 auto;
            
            
            width: 639px;
        }
        .auto-style22 {
            width: 100%;
        }
         .auto-style23 {
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <ul class="nav">
              <li><a href="UserHome.aspx"  >Home</a></li>
              <li><a href="Shop.aspx" class="active" >Shop</a></li>
              <li><a href="MyOrders.aspx" >My Orders</a></li>
              <li><a href="MyAccount.aspx" >Account</a></li>
              
            </ul>
    </div>
    <div>
        <div  style="font-family: 'Copperplate Gothic Bold'; " class="auto-style22" >
        
        <table  class="auto-style13"  >
            <tr>
                <td colspan="2" align="center" class="auto-style11"><h2 class="auto-style23"><strong>Shop For Books</strong></h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="auto-style11">
                    <asp:TextBox ID="txt_search" runat="server" Width="313px"></asp:TextBox>
                    <asp:Button ID="btn_Search" runat="server" Text="Search" Style=" /* Green */border: none;color: white;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="28px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" CausesValidation="False" OnClick="btn_Search_Click"  />
                    </td>
            </tr>
            </table>
        </div>
    </div>
     <div algin="center">
        
        
        <asp:GridView ID="gv_Books" runat="server" CellPadding="4" align="center" ForeColor="CornflowerBlue" GridLines="None" Width="725px" AutoGenerateSelectButton="True" BackColor="CornflowerBlue" BorderColor="CornflowerBlue">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        
    </div>
    <div align="center">

                    <asp:Label ID="lbl_msg" runat="server"></asp:Label>

    </div>
    <div>
        <table align="center">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txt_quantity" runat="server" Width="61px"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="btn_addtoCart" runat="server" Text="Add to Cart" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="185px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_addtoCart_Click"  />
                    &nbsp;
                    <asp:Button ID="btn_viewCart" runat="server" Text="View Cart" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="183px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_viewCart_Click"  />
                    &nbsp;
                
                    <asp:Button ID="btn_Feedback" runat="server" Text="View Feedback" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="184px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_Feedback_Click"   />
                
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
