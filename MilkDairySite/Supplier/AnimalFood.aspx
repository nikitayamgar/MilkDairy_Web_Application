﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Supplier/SupplierSite.master" AutoEventWireup="true" CodeFile="AnimalFood.aspx.cs" Inherits="AnimalFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:1000px;margin:auto">

        <strong><span class="auto-style1">Choose Animal Foods</span></strong><asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="254px">
            <asp:ListItem Value="1410">Cattle Feed Pellet:59 kg (Rs. 1410)</asp:ListItem>
            <asp:ListItem Value="1340">Cotton Seed Oil cake:50 kg (Rs 1340)</asp:ListItem>
            <asp:ListItem Value="450">Corn Maize: 30 kg (Rs 450)</asp:ListItem>
        </asp:CheckBoxList>

<h2 class="head">Supplier Advance Status &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Request Animal Food" />
        &nbsp; <asp:Button ID="Button2" runat="server" Text="Refresh" PostBackUrl="~/Supplier/AnimalFood.aspx" />
        </h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                EmptyDataText="No Rows to display" OnRowCommand="GridView1_RowCommand" Width="860px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Req Id" ReadOnly="True" 
                        SortExpression="Id" />
                    <asp:BoundField DataField="RDate" DataFormatString="{0:MM/dd/yyyy}" 
                        HeaderText="Req Date" SortExpression="TDate" />
                    <asp:BoundField DataField="SupplId" HeaderText="SupplId" 
                        SortExpression="SupplId" />
                    <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" 
                        SortExpression="SupplierName" />
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                    <asp:BoundField DataField="Amt" HeaderText="Amt" SortExpression="Amt" />
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
                SelectCommand="SELECT * FROM [AnimalFoodView] WHERE ([SupplId] = @SupplId)">
                <SelectParameters>
                    <asp:SessionParameter Name="SupplId" SessionField="SupplId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>


</div>
</asp:Content>

