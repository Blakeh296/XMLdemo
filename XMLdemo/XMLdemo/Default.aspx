<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XMLdemo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnLoad" runat="server" OnClick="btnLoad_Click" Text="Load" />
            <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbGender" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
            <asp:Button ID="btnGetSelected" runat="server" OnClick="btnGetSelected_Click" Text="get Row" />
            <asp:Button ID="btnUpdateGV" runat="server" OnClick="btnUpdateGV_Click" Text="Update Gv" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/MOCK_DATA.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
