<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyNhanVien.aspx.cs" Inherits="Bai_Cuoi_Ky.QuanLyNhanVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Trang chủ</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyNhanVien.aspx">Quản lý nhân viên</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLySach.aspx">Quản lý sách</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Muon-Tra.aspx">Quản lý mượn-trả</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server">Trợ Giúp</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
    
        QUẢN LÝ NHÂN VIÊN<br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Mã nhân viên</td>
                <td>
                    <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Tên nhân viên</td>
                <td>
                    <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ngày sinh</td>
                <td>
                    <asp:TextBox ID="txtNS" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Giới tính</td>
                <td>
                    <asp:TextBox ID="txtGT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Địa chỉ</td>
                <td>
                    <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">SĐT</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="btn_Them" runat="server" Text="Thêm" OnClick="btn_Them_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Sua" runat="server" Text="Sửa" OnClick="btn_Sua_Click" />
        <br />
        <br />
        <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" ReadOnly="True" SortExpression="MaNV" />
                <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" SortExpression="TenNV" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" SortExpression="NgaySinh" />
                <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" SortExpression="GioiTinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />

                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyThuVienConnectionString %>" SelectCommand="SELECT * FROM [NHANVIEN]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
