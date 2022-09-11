<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Ebook_Pvt.Ltd.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style1 {
            width: 484px;
            
        }
        .auto-style3 {
            height: 307px;
            width: 100%;
        }
    .auto-style7 {
        width: 100%;
        height: 67px;
    }
    .auto-style8 {
        width: 100%;
        height: 51px;
    }
    .auto-style9 {
        width: 100%;
        height: 41px;
    }
    .auto-style10 {
        width: 100%;
        height: 46px;
    }
    .auto-style11 {
        width: 100%;
        height: 7px;
    }
    .auto-style12 {
        width: 100%;
    }
    .auto-style13 {
        width: 100%;
        height: 31px;
    }
          .auto-style14 {
              height: 60px;
          }
          .auto-style15 {
              width: 100%;
              height: 62px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <ul class="nav">
              <li><a href="AdminHome.aspx"  >Home</a></li>
              <li><a href="ManageOrders.aspx"  >Manage Orders</a></li>
              <li><a href="ManageBooks.aspx" >Manage Books</a></li>
              <li><a href="ManageUsers.aspx" class="active">Manage Users</a></li>
              <li><a href="Reports.aspx" >Reports</a></li>
            </ul>
    </div>
    <div style="font-family: 'Copperplate Gothic Bold';">
         <table align="center"  class="auto-style1" >
        <tr>
            <td colspan="2" align="center"><h2>Registration</h2></td>
            
        </tr>
        <tr>
            <td colspan="2" align="center" class="auto-style14">
                    <asp:TextBox ID="txt_search" runat="server" Width="313px"></asp:TextBox>
                    <asp:Button ID="btn_Search" runat="server" Text="Search" Style=" /* Green */border: none;color: white;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="28px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" CausesValidation="False" OnClick="btn_Search_Click" />
                    </td>
            
        </tr>
        <tr>
            <td class="auto-style13"><b>First Name</b></td>
            <td class="auto-style13">
                <asp:TextBox ID="Fname" runat="server" Height="30px" Width="327px" CssClass="auto-style3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validate_fname" runat="server" ControlToValidate="Fname" ErrorMessage="First name is empty!" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Fname" ErrorMessage="Please use letters only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" ><b>Last Name</b></td>
            <td class="auto-style12">
                <asp:TextBox ID="Lname" runat="server" Height="30px" Width="327px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validate_lname" runat="server" ControlToValidate="Lname" ErrorMessage="Last name is empty!" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Lname" ErrorMessage="Please use letters only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><b>Username</b></td>
            <td class="auto-style7">
                <asp:TextBox ID="Username" runat="server" Height="30px" Width="327px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validate_username" runat="server" ControlToValidate="Username" ErrorMessage="Username  is empty!" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><b>Password</b></td>
            <td class="auto-style8">
                <asp:TextBox ID="password" runat="server" Height="30px" Width="327px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validate_password" runat="server" ControlToValidate="password" ErrorMessage="Password  is empty!" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><b>Age</b></td>
            <td class="auto-style9">
                <asp:TextBox ID="Age" runat="server" Height="30px" Width="327px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validate_age" runat="server" ControlToValidate="Age" ErrorMessage="Age  is empty!" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Age" ErrorMessage="Please use a number" ForeColor="Red" ValidationExpression="^[1-9]?[0-9]{1}$|^100$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><b>Email</b></td>
            <td class="auto-style10">
                <asp:TextBox ID="Email" runat="server" Height="30px" Width="327px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validate_email" runat="server" ControlToValidate="Email" ErrorMessage="Email  is empty!" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><b>Address</b></td>
            <td class="auto-style11">
                <asp:TextBox ID="Address" runat="server" Height="30px" Width="327px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validate_address" runat="server" ControlToValidate="Address" ErrorMessage="Address  is empty!" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>User Type</strong></td>
            <td class="auto-style15">
                <asp:DropDownList ID="ddl_Utype" runat="server" CssClass="auto-style35" Width="321px">
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  colspan="2" align="center" >
                    <asp:Button ID="btn_add" runat="server" Text="Add" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_add_Click" />
                    &nbsp;
                    <asp:Button ID="btn_update" runat="server" Text="Update" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_update_Click" />
                    &nbsp;
                    <asp:Button ID="btn_delete" runat="server" Text="Delete" Style="  /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="131px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_delete_Click" />
                    &nbsp;
                    &nbsp;
                </td>
        </tr>
        <tr>
          <td  colspan="2" align="center" >
              <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

          </td> 
        </tr>
        <tr>
            <td  colspan="2" align="center" >
                <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    <div algin="center">
        
        
        <asp:GridView ID="gv_Users" runat="server" CellPadding="4" align="center" ForeColor="CornflowerBlue" GridLines="None" Width="725px" AutoGenerateSelectButton="True" BackColor="CornflowerBlue" BorderColor="CornflowerBlue" OnSelectedIndexChanged="gv_Books_SelectedIndexChanged">
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
