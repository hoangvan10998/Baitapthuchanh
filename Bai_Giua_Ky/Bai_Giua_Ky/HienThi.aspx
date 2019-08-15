<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HienThi.aspx.cs" Inherits="Bai_Giua_Ky.HienThi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        THÔNG TIN ĐĂNG KÝ<br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TenDN" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="TenDN" HeaderText="Tên đăng nhập" ReadOnly="True" SortExpression="TenDN" />
                <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" SortExpression="MatKhau" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ tên" SortExpression="HoTen" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GIUAKIConnectionString %>" SelectCommand="SELECT * FROM [NGUOIDUNG]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
