<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="SuppAdvance.aspx.cs" Inherits="SuppAdvance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:1000px;margin:auto">
<h2 class="head">Supplier Advance History</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                EmptyDataText="No Rows to display" OnRowCommand="GridView1_RowCommand" Width="694px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Req Id" ReadOnly="True" 
                        SortExpression="Id" />
                    <asp:BoundField DataField="TDate" DataFormatString="{0:MM/dd/yyyy}" 
                        HeaderText="Req Date" SortExpression="TDate" />
                    <asp:BoundField DataField="SupplId" HeaderText="SupplId" 
                        SortExpression="SupplId" />
                    <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" 
                        SortExpression="SupplierName" />
                    <asp:BoundField DataField="AdvanceAmt" HeaderText="AdvanceAmt" 
                        SortExpression="AdvanceAmt" />
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Status") %>'>
                                <asp:ListItem>Issued</asp:ListItem>
                                <asp:ListItem>Pending</asp:ListItem>
                                <asp:ListItem>Rejected</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField ButtonType="Button" CommandName="UpdateStatus" Text="Update" />
                </Columns>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                SelectCommand="SELECT * FROM [SuppAdvView]">
            </asp:SqlDataSource>
        </p>


</div>
</asp:Content>

