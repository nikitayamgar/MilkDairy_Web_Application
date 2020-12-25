<%@ Page UnobtrusiveValidationMode ="None" Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="SupplierMilk.aspx.cs" Inherits="SupplierMilk" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:800px;margin:auto">
<h2 class="head">Supplier Milk Collection List</h2>
        <p>
            Enter SupplId/Supplier Name/Collection Date:
            <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    &nbsp; <asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="Collection Entry" PostBackUrl="~/Admin/MilkCollection.aspx" CausesValidation="False" />
    </p>
        <p class="head">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="784px" DataKeyNames="Id" 
            AllowPaging="True" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Net Pay" ShowSelectButton="True" />
                <asp:ButtonField CommandName="DeleteRecord" Text="Delete" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="TDate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="TDate" SortExpression="TDate" />
                <asp:BoundField DataField="TTime" HeaderText="TTime" SortExpression="TTime" />
                <asp:BoundField DataField="SupplId" HeaderText="SupplId" SortExpression="SupplId" />
                <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" SortExpression="SupplierName" />
                <asp:BoundField DataField="MilkType" HeaderText="MilkType" SortExpression="MilkType" />
                <asp:BoundField DataField="MilkInLtr" HeaderText="MilkInLtr" SortExpression="MilkInLtr" />
                <asp:BoundField DataField="Fat" HeaderText="Fat" SortExpression="Fat" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
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
            SelectCommand="SELECT * FROM [SuppMilkCollectionView]">
        </asp:SqlDataSource>
    </p>
     <p>
            Total Bill Amount :
            <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
        <p>
            Animal Food :<asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
        <p>
            Net Pay :<asp:Label ID="Label4" runat="server"></asp:Label>
    </p>



</div>
</asp:Content>

