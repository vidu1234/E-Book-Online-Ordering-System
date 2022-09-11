<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Ebook_Pvt.Ltd.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style20 {
            width: 277px;
        }
        .auto-style21 {
            width: 274px;
        }
        .auto-style13 {
            height: 238px;
            margin: 0 auto;
            
            
            width: 639px;
        }
        .auto-style13 {
            height: 238px;
            margin: 0 auto;
            
            
            width: 639px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-family: 'Copperplate Gothic Bold'; width:100% ">
    <table  class="auto-style13"  >
        <tr>
            <td class="auto-style20" colspan="2" align="center" ><strong><h2>Feedback</h2></strong></td>
           
        </tr>
        <tr>
            <td class="auto-style20" ><strong>Rating</strong></td>
            <td >
                <asp:TextBox ID="txt_Rating" runat="server" Width="313px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Rating!" ForeColor="Red" ControlToValidate="txt_Rating"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" ><strong>Feedback</strong></td>
            <td >
                <asp:TextBox ID="txt_feedback" runat="server" Width="313px" Height="60px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Feedback!" ForeColor="Red" ControlToValidate="txt_feedback"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2"  align="center">
                    <asp:Button ID="btn_feedback" runat="server" Text="Add Feedback" Style=" /* Green */border: none;color: white;padding: 10px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;" Height="40px" Width="176px" Font-Bold="True"  BackColor="CornflowerBlue" OnClick="btn_feedback_Click" />
                    </td>
            
        </tr>
        <tr>
            <td class="auto-style21" colspan="2"  align="center">

                    <asp:Label ID="lbl_msg" runat="server"></asp:Label>

                    </td>
            
        </tr>
    </table>
    </div>
    <div>
       <asp:GridView ID="gv_Feedback" runat="server" CellPadding="4" align="center" ForeColor="CornflowerBlue" GridLines="None" Width="725px" AutoGenerateSelectButton="True" BackColor="CornflowerBlue" BorderColor="CornflowerBlue">
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
