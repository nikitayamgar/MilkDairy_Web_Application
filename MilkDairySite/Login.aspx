<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 180px;
        }
    .auto-style1
    {
        width: 100%;
    }
    .auto-style2
    {
        height: 38px;
        background-color: #99CCFF;
    }
   
    .auto-style4
    {
        background-color: #99CCFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center;padding-top:100px;margin:auto; width:400px">
    &nbsp;
        <table class="auto-style1">
            <tr style="background-color: #003366">
                <td class="auto-style2" colspan="2" style="background-color: #003366;color:white" >
                    <h1 class="auto-style3" >LOGIN</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Role</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="160px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Customer</asp:ListItem>
                        <asp:ListItem>Supplier</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">UserName</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="(Required)" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="(Required)" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

