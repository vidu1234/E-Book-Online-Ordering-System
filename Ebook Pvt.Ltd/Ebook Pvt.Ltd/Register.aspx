<%@ Page Title="" Language="C#" MasterPageFile="~/Login_register.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ebook_Pvt.Ltd.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 484px;
            
        }
        .auto-style2 {
            width: 159px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table align="center" style="background-color: #DDE4E6; " class="auto-style1" >
        <tr>
            <td colspan="2" align="center"><h2>Registration</h2></td>
            
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
            <td  colspan="2" align="center" >
                <asp:Button ID="btn_register" runat="server" Height="42px" Text="Register" Width="109px" Font-Bold="True" Font-Size="Large" OnClick="btn_register_Click"   />
                &nbsp;
                <asp:Button ID="btn_Back" runat="server" Height="42px" Text="Back" Width="109px" Font-Bold="True" Font-Size="Large"  CausesValidation="false" ValidateRequestMode="Disabled" OnClick="btn_Back_Click"  />
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
    </form>
</asp:Content>
