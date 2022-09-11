<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageOrders.aspx.cs" Inherits="Ebook_Pvt.Ltd.ManageOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <ul class="nav">
              <li><a href="AdminHome.aspx"  >Home</a></li>
              <li><a href="ManageOrders.aspx" class="active" >Manage Orders</a></li>
              <li><a href="ManageBooks.aspx" >Manage Books</a></li>
              <li><a href="ManageUsers.aspx" >Manage Users</a></li>
              <li><a href="Reports.aspx" >Reports</a></li>
            </ul>
    </div>
     <div>
        <asp:GridView ID="gv_Orders" runat="server" CellPadding="4" align="center" ForeColor="CornflowerBlue" GridLines="None" Width="725px" AutoGenerateSelectButton="True" BackColor="CornflowerBlue" BorderColor="CornflowerBlue" OnSelectedIndexChanged="gv_Orders_SelectedIndexChanged">
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
                    
                    <asp:DropDownList ID="ddl_status" runat="server">
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Delivered</asp:ListItem>
                    </asp:DropDownList>

                    &nbsp;
                    &nbsp;
                    <asp:Button ID="btn_update" runat="server" Text="Update Status" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="179px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_update_Click" />
                     &nbsp;
                    <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" Style="  /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="179px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_delete_Click" />
                    &nbsp;
                   
                
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
