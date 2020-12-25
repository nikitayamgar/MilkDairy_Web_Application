<%@ Page UnobtrusiveValidationMode ="None" Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="CustomerList" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:800px;margin:auto">
<h2 class="head">Customer List</h2>
        <p>
            Enter CustId/Customer Name
            <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    &nbsp; <asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="New Customer" PostBackUrl="~/Admin/CustomerEntry.aspx" CausesValidation="False" />
    </p>
        <p class="head">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="753px" DataKeyNames="CustID" 
            AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Pay Fine" ShowDeleteButton="True" />
                <asp:BoundField DataField="CustID" HeaderText="CustID" ReadOnly="True" 
                    SortExpression="CustID" InsertVisible="False" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" 
                    SortExpression="CustomerName" />
                <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress" 
                    SortExpression="CustomerAddress" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                    SortExpression="EmailID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConStr %>" 
            SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [CustID] = @CustID" InsertCommand="INSERT INTO [Customer] ([CustomerName], [CustomerAddress], [MobileNo], [EmailID], [UserName], [Password]) VALUES (@CustomerName, @CustomerAddress, @MobileNo, @EmailID, @UserName, @Password)" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [CustomerAddress] = @CustomerAddress, [MobileNo] = @MobileNo, [EmailID] = @EmailID, [UserName] = @UserName, [Password] = @Password WHERE [CustID] = @CustID">
            <DeleteParameters>
                <asp:Parameter Name="CustID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="CustomerAddress" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="CustomerAddress" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="CustID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</div>
</asp:Content>

