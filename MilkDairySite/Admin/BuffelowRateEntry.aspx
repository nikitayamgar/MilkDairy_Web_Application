<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="BuffelowRateEntry.aspx.cs" Inherits="BuffelowRateEntry" %>





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
    Buffelow Milk Rate Entry :: 
</td>
</tr>
<tr>
<td>
    <table class="style1">
        <tr>
            <td>
                FAT From</td>
            <td>
                <asp:TextBox ID="FromTextBox" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="FromTextBox" Display="Dynamic" ErrorMessage="(Required)" 
                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                FAT To</td>
            <td>
                <asp:TextBox ID="ToTextBox" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="ToTextBox" Display="Dynamic" ErrorMessage="(Required)" 
                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                New Rate</td>
            <td>
                <asp:TextBox ID="RateTextBox" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RateTextBox" Display="Dynamic" ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Increase Rate By</td>
            <td>
                <asp:TextBox ID="IncreaseTextBox" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="IncreaseTextBox" Display="Dynamic" ErrorMessage="(Required)" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
        Width="706px" style="margin:auto" BorderStyle="Double" AllowPaging="True" DataKeyNames="Id" OnRowDataBound="GridView1_RowDataBound" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" 
                SortExpression="Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Fat" HeaderText="Fat" 
                SortExpression="Fat" />
            <asp:BoundField DataField="MilkRate" HeaderText="MilkRate" 
                SortExpression="MilkRate" />
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
        
        
        SelectCommand="SELECT * FROM [BuffelowMilkRate]" 
        DeleteCommand="DELETE FROM [BuffelowMilkRate] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [BuffelowMilkRate] ([Fat], [MilkRate]) VALUES (@Fat, @MilkRate)" 
        UpdateCommand="UPDATE [BuffelowMilkRate] SET [Fat] = @Fat, [MilkRate] = @MilkRate WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Fat" Type="Decimal" />
            <asp:Parameter Name="MilkRate" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fat" Type="Decimal" />
            <asp:Parameter Name="MilkRate" Type="Decimal" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



</td>
</tr>
</table>



</asp:Content>

