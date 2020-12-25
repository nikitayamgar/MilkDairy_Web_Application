<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/Supplier/SupplierSite.master" AutoEventWireup="true"
    CodeFile="AdvanceEntry.aspx.cs" Inherits="CustomerEntry" %>

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
                Supplier Advance Request::</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="auto-style3">
                            Advance Amount</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="AmtTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AmtTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="AmtTextBox" Display="Dynamic" ErrorMessage="(10 digits)" 
                                Font-Bold="True" ForeColor="#CC0066" SetFocusOnError="True" 
                                ValidationExpression="\d+(\.\d+)?"></asp:RegularExpressionValidator>
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
                            &nbsp;<asp:Button ID="SaveButton0" runat="server" Text="Advance History" Width="135px"
                                Height="33px" PostBackUrl="~/Supplier/SuppAdvance.aspx" CausesValidation="False" />
                            </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
