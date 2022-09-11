<%@ Page Title="" Language="C#" MasterPageFile="~/Login_register.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ebook_Pvt.Ltd.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 268px;
            width: 453px;
        }
        
        .auto-style2 {
            height: 307px;
            width: 100%;
        }
        
        .auto-style3 {
            width: 86px;
            height: 73px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table align="center" class="auto-style1" style="background-color: #DDE4E6" >
        <tr>
            <td colspan="2" align="center">
                <img alt="" class="auto-style3" src="Images/user-login-icon-19.png" /></td>
           
        </tr>
        <tr>
            <td colspan="2" align="center"><h2>Login</h2></td>
           
        </tr>
        <tr>
            <td align="center" ><b>Username</b></td>
            <td>
                <asp:TextBox ID="txt_username" runat="server" Height="35px" Width="334px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" ErrorMessage="Please enter Username!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" ><b>Password</b></td>
            <td>
                <asp:TextBox ID="txt_password" runat="server" Height="35px" Width="334px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="Please enter Password!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btn_login" runat="server" Height="41px" Text="Login" Width="104px" BackColor="#2D2F79" Font-Bold="True" ForeColor="White" OnClick="btn_login_Click"   />
                &nbsp;
                <asp:Button ID="btn_register" runat="server" Height="41px" Text="Register" Width="104px" BackColor="#2D2F79" Font-Bold="True"  CausesValidation="false" ValidateRequestMode="Disabled" ForeColor="White" OnClick="btn_register_Click"  />
            </td>
            
            
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lbl_msg" runat="server" Text="Incorrect Username or Password!" Visible="False" ForeColor="Red"></asp:Label></td>
            
        </tr>
    </table>
        
    </form>
</asp:Content>
