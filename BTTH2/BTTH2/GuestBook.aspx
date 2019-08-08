<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestBook.aspx.cs" Inherits="BTTH2.GuestBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 127px;
        }
        .auto-style3 {
            height: 23px;
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="GUESTBOOK"></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Tiêu đề"></asp:Label>
                </td>
                <td>
                    <input ID="txtTieuDe" type="text" runat="server"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Họ tên"></asp:Label>
                </td>
                <td class="auto-style1">
                    <input ID="txtHoTen" type="text" runat="server"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <input ID="txtEmail" runat="server"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Nội dung"></asp:Label>
                </td>
                <td>
                    <input ID="txtNoiDung" type="text" runat="server"/>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button id="btn_GoiND" runat="server"  Text="Gởi Nội Dung" OnClick="btn_GoiND_Click" />
        </p>
        <p>
            <asp:Button id="bt_cmt" runat="server"  Text="DANH SÁCH COMMENT" OnClick="btn_DS_Click" />
        </p>
        <span id="EntryComment" runat="server" />
       
    </form>
</body>
</html>
