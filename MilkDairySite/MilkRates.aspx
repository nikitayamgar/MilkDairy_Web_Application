<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MilkRates.aspx.cs" Inherits="MilkRates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1
    {
        width: 100%;
    }
    .auto-style2
    {
        background-color: #66CCFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:700px">
<br />
<h2 class="head">COW and BUFFELOW MILK RATES</h2>
<br />

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <h3>COW MILK RATE</h3>
                </td>
                <td class="auto-style2">
                    <h3>BUFFELOW MILK RATE</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" Width="300px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                            <asp:BoundField DataField="Fat" HeaderText="Fat" SortExpression="Fat" />
                            <asp:BoundField DataField="MilkRate" HeaderText="MilkRate" SortExpression="MilkRate" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MilkDBConnectionString1 %>" DeleteCommand="DELETE FROM [CowMilkRate] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CowMilkRate] ([Fat], [MilkRate]) VALUES (@Fat, @MilkRate)" ProviderName="<%$ ConnectionStrings:MilkDBConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Fat], [MilkRate] FROM [CowMilkRate]" UpdateCommand="UPDATE [CowMilkRate] SET [Fat] = @Fat, [MilkRate] = @MilkRate WHERE [Id] = @Id">
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
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." Width="349px">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                            <asp:BoundField DataField="Fat" HeaderText="Fat" SortExpression="Fat" />
                            <asp:BoundField DataField="MilkRate" HeaderText="MilkRate" SortExpression="MilkRate" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MilkDBConnectionString1 %>" DeleteCommand="DELETE FROM [BuffelowMilkRate] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BuffelowMilkRate] ([Fat], [MilkRate]) VALUES (@Fat, @MilkRate)" ProviderName="<%$ ConnectionStrings:MilkDBConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Fat], [MilkRate] FROM [BuffelowMilkRate]" UpdateCommand="UPDATE [BuffelowMilkRate] SET [Fat] = @Fat, [MilkRate] = @MilkRate WHERE [Id] = @Id">
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

</div>
</asp:Content>

