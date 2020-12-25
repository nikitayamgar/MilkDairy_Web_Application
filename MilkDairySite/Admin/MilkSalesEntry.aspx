<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="MilkSalesEntry.aspx.cs" Inherits="MilkSalesEntry" %>




<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />

<table style="margin:auto;width:700px;border:1px solid maroon">
<tr>
<td class="head">
    Milk Sales Entry :: 
</td>
</tr>
<tr>
<td>
    <table class="style1">
        <tr>
            <td>
                Customer</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="CustomerName" DataValueField="CustID" Width="300px">
                    <asp:ListItem>-- Select Customer --</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="(Required)" 
                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True" InitialValue="-- Select Customer --"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Date From:</td>
            <td>
                <asp:TextBox ID="DateTextBox" runat="server" Width="300px"></asp:TextBox>
                <asp:CalendarExtender ID="DateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="DateTextBox">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DateTextBox" Display="Dynamic" ErrorMessage="(Required)" 
                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Date To:</td>
            <td>
                <asp:TextBox ID="ToDateTextBox" runat="server" Width="300px"></asp:TextBox>
                <asp:CalendarExtender ID="ToDateTextBox_CalendarExtender" runat="server" DefaultView="Days" Enabled="True" PopupPosition="BottomLeft" TargetControlID="ToDateTextBox">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ToDateTextBox" Display="Dynamic" ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Total</td>
            <td>
                <asp:TextBox ID="TotalTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TotalTextBox" Display="Dynamic" ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" Text="Save" Width="60px" 
                    onclick="SaveButton_Click" />
&nbsp;<asp:Button ID="CancelButton" runat="server" Text="Cancel" onclick="CancelButton_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#336666" BorderWidth="3px" 
        CellPadding="4" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." 
        GridLines="Horizontal" 
        Width="706px" style="margin:auto" BorderStyle="Double" AllowPaging="True" DataKeyNames="BillNo" OnRowDataBound="GridView1_RowDataBound" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="BillNo" HeaderText="BillNo" 
                SortExpression="BillNo" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="BillDate" HeaderText="BillDate" 
                SortExpression="BillDate" DataFormatString="{0:MM/dd/yyyy}" />
            <asp:BoundField DataField="CustID" HeaderText="CustID" 
                SortExpression="CustID" />
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" 
                SortExpression="CustomerName" />
            <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                SortExpression="DateFrom" DataFormatString="{0:MM/dd/yyyy}" />
            <asp:BoundField DataField="DateTo" DataFormatString="{0:MM/dd/yyyy}" HeaderText="DateTo" SortExpression="DateTo" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
        
        
        SelectCommand="SELECT * FROM [CustomerBill]" 
        DeleteCommand="DELETE FROM [CustomerBill] WHERE [BillNo] = @BillNo" 
        InsertCommand="INSERT INTO [CustomerBill] ([BillDate], [CustID], [CustomerName], [DateFrom], [DateTo], [Total]) VALUES (@BillDate, @CustID, @CustomerName, @DateFrom, @DateTo, @Total)" 
        UpdateCommand="UPDATE [CustomerBill] SET [BillDate] = @BillDate, [CustID] = @CustID, [CustomerName] = @CustomerName, [DateFrom] = @DateFrom, [DateTo] = @DateTo, [Total] = @Total WHERE [BillNo] = @BillNo">
        <DeleteParameters>
            <asp:Parameter Name="BillNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BillDate" DbType="Date" />
            <asp:Parameter Name="CustID" Type="Int32" />
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="DateFrom" DbType="Date" />
            <asp:Parameter DbType="Date" Name="DateTo" />
            <asp:Parameter Name="Total" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BillDate" DbType="Date" />
            <asp:Parameter Name="CustID" Type="Int32" />
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="DateFrom" DbType="Date" />
            <asp:Parameter Name="DateTo" DbType="Date" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="BillNo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



</td>
</tr>
</table>



</asp:Content>

