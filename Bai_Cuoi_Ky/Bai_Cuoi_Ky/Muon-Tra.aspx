<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muon-Tra.aspx.cs" Inherits="Bai_Cuoi_Ky.Muon_Tra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 147px;
        }
        .auto-style2 {
            width: 147px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Trang chủ</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyNhanVien.aspx">Quản lý nhân viên</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLySach.aspx">Quản lý sách</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Muon-Tra.aspx">Quản lý mượn-trả</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server">Trợ Giúp</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;</p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Mã mượn trả:</td>
                    <td>
                        <asp:TextBox ID="txtMaMuonTra" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mã sách:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtMaSach" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ghi chú:</td>
                    <td>
                        <asp:TextBox ID="txtGhiChu" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Đã trả</td>
                    <td>
                        <asp:CheckBox ID="ChkDaTra" runat="server" Text="Đã Trả" />
                        <asp:CheckBox ID="ChkChuaTra" runat="server" Text="Chưa trả" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ngày trả:</td>
                    <td>
                        <asp:TextBox ID="txtNgayTra" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </p>
        <p>
            <asp:Button ID="btn_Them" runat="server" Text="Thêm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Sua" runat="server" Text="Sửa" />
        </p>
        <p>
            <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
        </p>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MaMuonTra" HeaderText="MaMuonTra" SortExpression="MaMuonTra" />
                <asp:BoundField DataField="MaSach" HeaderText="MaSach" SortExpression="MaSach" />
                <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
                <asp:CheckBoxField DataField="DaTra" HeaderText="DaTra" SortExpression="DaTra" />
                <asp:BoundField DataField="NgayTra" HeaderText="NgayTra" SortExpression="NgayTra" />


                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyThuVienConnectionString %>" SelectCommand="SELECT * FROM [CHITIETMUONTRA]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
