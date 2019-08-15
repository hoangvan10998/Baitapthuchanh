<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="Bai_Cuoi_Ky.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 126px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="2">ĐĂNG NHẬP</td>
                </tr>
                <tr>
                    <td class="auto-style3">Tên đăng nhập:</td>
                    <td>
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu:</td>
                    <td>
                        <asp:TextBox ID="txtMatKhau"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="btn_DangNhap" runat="server" Text="Đăng Nhập" OnClick="btn_DangNhap_Click" />
                        <br />
                        <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
