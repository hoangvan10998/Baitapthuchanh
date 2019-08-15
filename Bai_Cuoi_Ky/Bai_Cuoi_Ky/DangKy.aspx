<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="Bai_Cuoi_Ky.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 135px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 135px;
        }
        .auto-style7 {
            height: 26px;
            width: 135px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="FORM ĐĂNG KÝ"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="THÔNG TIN ĐĂG NHẬP"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Tên đăng nhâp:"></asp:Label>
                </td>
                <td>
                    <input id="txt_TenDN" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Mật khẩu:"></asp:Label>
                </td>
                <td>
                    <input id="txt_MatKhau" type="password" /></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <input id="txt_NhapLaiMatKhau" type="password" /></td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="THÔNG TIN CÁ NHÂN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Họ tên:"></asp:Label>
                </td>
                <td>
                    <input id="txt_HoTen" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Ngày sinh:"></asp:Label>
                </td>
                <td>
                    <input id="txt_NgaySinh" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="Giới tính:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <input id="txt_GioiTinh" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label10" runat="server" Text="Địa chỉ:"></asp:Label>
                </td>
                <td>
                    <input id="txt_DiaChi" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <input id="txt_Email" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="btn_DangKy" runat="server" Text="Đăng Ký" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
