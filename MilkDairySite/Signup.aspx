<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style1
        {
            height: 26px;
        }
        .auto-style2
        {
            width: 152px;
        }
        .auto-style3
        {
            height: 26px;
            width: 152px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <table style="margin: auto; width: 700px; border: 1px solid maroon">
        <tr>
            <td class="head">
                Member Registration</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="auto-style3">
                            Member Type</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="TypeDropDownList" runat="server" Width="300px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                
                                <asp:ListItem>Customer</asp:ListItem>
                                <asp:ListItem>Supplier</asp:ListItem>
                                
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TypeDropDownList"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True" InitialValue="--Select--"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;Name
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="NameTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Address
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AddressTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Mobile No</td>
                        <td>
                            <asp:TextBox ID="MobileTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="MobileTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="MobileTextBox" Display="Dynamic" ErrorMessage="(10 digits)" 
                                Font-Bold="True" ForeColor="#CC0066" SetFocusOnError="True" 
                                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Email ID</td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="EmailTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="EmailTextBox" Display="Dynamic" 
                                ErrorMessage="(Incorrect format of mail id)" Font-Bold="True" 
                                ForeColor="#CC0066" SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            UserName</td>
                        <td>
                            <asp:TextBox ID="UserTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="UserTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Password</td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="PasswordTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="SaveButton" runat="server" Text="Submit" Width="93px" OnClick="SaveButton_Click"
                                Height="33px" />
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
