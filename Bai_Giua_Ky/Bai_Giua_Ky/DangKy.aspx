<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="Bai_Giua_Ky.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        FORM ĐĂNG KÝ<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Tên đăng nhập:</td>
                <td>
                    <asp:TextBox ID="txt_Ten" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txt_Ten" ErrorMessage="Nhập tên đăng nhập"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Nhập lại mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtNhapLaiMatKhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNhapLaiMatKhau" runat="server" ControlToValidate="txtNhapLaiMatKhau" ErrorMessage="Nhập lại mật khẩu"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Họ tên:</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Nhập họ tên"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btn_DangKy" runat="server" OnClick="btn_DangKy_Click" Text="Đăng Ký" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lbTB" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
