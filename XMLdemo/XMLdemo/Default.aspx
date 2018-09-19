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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            </asp:GridView>
        </div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/MOCK_DATA.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
