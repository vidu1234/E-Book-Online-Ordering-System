<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Ebook_Pvt.Ltd.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
       <b style="font-size: xx-large; font-family: 'copperplate Gothic Bold'"><label style="font-size: large">My Cart</label> </b>
    </div>
     <div algin="center">
        
        
        <asp:GridView ID="gv_cart" runat="server" CellPadding="4" align="center" ForeColor="CornflowerBlue" GridLines="None" Width="725px" AutoGenerateSelectButton="True" BackColor="CornflowerBlue" BorderColor="CornflowerBlue" AutoGenerateColumns="False" EmptyDataText="Cart Empty" ShowFooter="True" OnRowDeleting="OnRowDeleting">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                <asp:BoundField DataField="Book_ID" HeaderText="Book ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Book_Name" HeaderText="Book Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Total" HeaderText="Total">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
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
                    
                    <asp:Button ID="btn_Checkout" runat="server" Text="Checkout" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="167px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_Checkout_Click"  />
                    &nbsp;
                    <asp:Button ID="btn_back" runat="server" Text="Back" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="167px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_back_Click"  />
                    &nbsp;
                
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
