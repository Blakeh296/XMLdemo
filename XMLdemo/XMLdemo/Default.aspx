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
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/MOCK_DATA.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
