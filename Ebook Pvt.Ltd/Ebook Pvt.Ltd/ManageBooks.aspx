<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageBooks.aspx.cs" Inherits="Ebook_Pvt.Ltd.Manage_Books" %>
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
        .auto-style20 {
            width: 277px;
        }
        .auto-style21 {
            width: 274px;
        }
        .auto-style22 {
            width: 100%;
        }
         .auto-style25 {
             width: 274px;
             height: 61px;
         }
         .auto-style26 {
             height: 61px;
         }
         .auto-style27 {
             width: 274px;
             height: 62px;
         }
         .auto-style28 {
             height: 62px;
         }
         .auto-style29 {
             width: 274px;
             height: 60px;
         }
         .auto-style30 {
             height: 60px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <ul class="nav">
              <li><a href="AdminHome.aspx"  >Home</a></li>
              <li><a href="ManageOrders.aspx"  >Manage Orders</a></li>
              <li><a href="ManageBooks.aspx" class="active">Manage Books</a></li>
              <li><a href="ManageUsers.aspx" >Manage Users</a></li>
              <li><a href="Reports.aspx" >Reports</a></li>
            </ul>
    </div>
     
    <div  style="font-family: 'Copperplate Gothic Bold'; " class="auto-style22" >
        
        <table  class="auto-style13"  >
            <tr>
                <td colspan="2" align="center" class="auto-style11"><h2>Manage Books</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="auto-style11">
                    <asp:TextBox ID="txt_search" runat="server" Width="313px"></asp:TextBox>
                    <asp:Button ID="btn_Search" runat="server" Text="Search" Style=" /* Green */border: none;color: white;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="28px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" CausesValidation="False" OnClick="btn_Search_Click" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style20" ><strong>Book </strong><b>ID</b></td>
                <td >
                    <asp:TextBox ID="txt_BID" runat="server" Width="313px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Book ID!" ForeColor="Red" ControlToValidate="txt_BID"></asp:RequiredFieldValidator>
                </td>
                

            </tr>
            <tr>
                <td class="auto-style21" ><b>Book Name</b></td>
                <td ><asp:TextBox ID="txt_Bname" runat="server" Width="313px"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Book Name!" ForeColor="Red" ControlToValidate="txt_Bname"></asp:RequiredFieldValidator>
                </td>  
            </tr>
            <tr>
                <td class="auto-style20" ><strong>Author</strong></td>
                <td >
                    <asp:TextBox ID="txt_Author" runat="server" Width="313px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Author!" ForeColor="Red" ControlToValidate="txt_Author"></asp:RequiredFieldValidator></td>
                
            </tr>
            <tr>
                <td class="auto-style25" ><strong>Publisher</strong></td>
                <td class="auto-style26"><asp:TextBox ID="txt_publisher" runat="server" Width="313px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Publisher!" ForeColor="Red" ControlToValidate="txt_publisher"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27" ><strong>Book Descrription</strong></td>
                <td class="auto-style28"><asp:TextBox ID="txt_Bdescription" runat="server" Width="313px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Book Description!" ForeColor="Red" ControlToValidate="txt_Bdescription"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" ><strong>Stock</strong></td>
                <td class="auto-style30"><asp:TextBox ID="txt_Stock" runat="server" Width="313px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Stock!" ForeColor="Red" ControlToValidate="txt_Stock"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" ><strong>Price</strong></td>
                <td class="auto-style30"><asp:TextBox ID="txt_Price" runat="server" Width="313px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Price!" ForeColor="Red" ControlToValidate="txt_Price"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btn_add" runat="server" Text="Add" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_add_Click" />
                    &nbsp;
                    <asp:Button ID="btn_update" runat="server" Text="Update" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_update_Click" />
                    &nbsp;
                    <asp:Button ID="btn_delete" runat="server" Text="Delete" Style="  /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_delete_Click" />
                    &nbsp;
                    </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div algin="center">
        
        
        <asp:GridView ID="gv_Books" runat="server" CellPadding="4" align="center" ForeColor="CornflowerBlue" GridLines="None" Width="725px" AutoGenerateSelectButton="True" BackColor="CornflowerBlue" BorderColor="CornflowerBlue" OnSelectedIndexChanged="gv_Books_SelectedIndexChanged">
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

    
        
    
</asp:Content>
