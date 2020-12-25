<%@ Page UnobtrusiveValidationMode ="None" Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Suppliers.aspx.cs" Inherits="SupplierList" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:800px;margin:auto">
<h2 class="head">Supplier List</h2>
        <p>
            Enter SupplId/Supplier Name
            <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    &nbsp; <asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="New Supplier" PostBackUrl="~/Admin/SupplierEntry.aspx" CausesValidation="False" />
    </p>
        <p class="head">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="753px" DataKeyNames="SupplID" 
            AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Pay Fine" ShowDeleteButton="True" />
                <asp:BoundField DataField="SupplID" HeaderText="SupplID" ReadOnly="True" 
                    SortExpression="SupplID" InsertVisible="False" />
                <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" 
                    SortExpression="SupplierName" />
                <asp:BoundField DataField="SupplierAddress" HeaderText="SupplierAddress" 
                    SortExpression="SupplierAddress" />
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
            SelectCommand="SELECT * FROM [Supplier]" DeleteCommand="DELETE FROM [Supplier] WHERE [SupplID] = @SupplID" InsertCommand="INSERT INTO [Supplier] ([SupplierName], [SupplierAddress], [MobileNo], [EmailID], [UserName], [Password]) VALUES (@SupplierName, @SupplierAddress, @MobileNo, @EmailID, @UserName, @Password)" UpdateCommand="UPDATE [Supplier] SET [SupplierName] = @SupplierName, [SupplierAddress] = @SupplierAddress, [MobileNo] = @MobileNo, [EmailID] = @EmailID, [UserName] = @UserName, [Password] = @Password WHERE [SupplID] = @SupplID">
            <DeleteParameters>
                <asp:Parameter Name="SupplID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SupplierName" Type="String" />
                <asp:Parameter Name="SupplierAddress" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SupplierName" Type="String" />
                <asp:Parameter Name="SupplierAddress" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="SupplID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</div>
</asp:Content>

