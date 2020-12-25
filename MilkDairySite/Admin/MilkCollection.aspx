<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true"
    CodeFile="MilkCollection.aspx.cs" Inherits="MilkCollection" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <table style="margin: auto; width: 700px; border: 1px solid maroon">
        <tr>
            <td class="head">
                Milk Collection</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="auto-style3">
                            Collection Date</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="DateTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:CalendarExtender ID="DateTextBox_CalendarExtender" runat="server" Enabled="True" TargetControlID="DateTextBox">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DateTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Collection Time</td>
                        <td>
                            <asp:TextBox ID="TimeTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TimeTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Supplier</td>
                        <td>
                            <asp:DropDownList ID="SuppDropDownList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="SupplierName" DataValueField="SupplID" Width="300px">
                                <asp:ListItem>-- Select Supplier --</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="SuppDropDownList"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True" Display="Dynamic" InitialValue="-- Select Supplier --"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Milk Type</td>
                        <td>
                            <asp:DropDownList ID="TypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TypeDropDownList_SelectedIndexChanged">
                                <asp:ListItem>Cow</asp:ListItem>
                                <asp:ListItem>Buffelow</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Milk In Litre</td>
                        <td>
                            <asp:TextBox ID="LitreTextBox" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="LitreTextBox"
                                ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" 
                                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="LitreTextBox" Display="Dynamic" ErrorMessage="(number)" 
                                Font-Bold="True" ForeColor="#CC0066" SetFocusOnError="True" 
                                ValidationExpression="\d+(\.\d+)?"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            FAT</td>
                        <td>
                            <asp:DropDownList ID="FatDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="FatDropDownList_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            RATE</td>
                        <td>
                            <asp:TextBox ID="RateTextBox" runat="server" Width="300px" ReadOnly="True"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Total</td>
                        <td>
                            <asp:TextBox ID="TotalTextBox" runat="server" Width="300px" ReadOnly="True"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="SaveButton" runat="server" Text="Submit" Width="93px" OnClick="SaveButton_Click"
                                Height="33px" />
                            &nbsp;<asp:Button ID="SaveButton0" runat="server" Text="Supplier Collections" Width="151px"
                                Height="33px" CausesValidation="False" PostBackUrl="~/Admin/SupplierMilk.aspx" />
                            </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
