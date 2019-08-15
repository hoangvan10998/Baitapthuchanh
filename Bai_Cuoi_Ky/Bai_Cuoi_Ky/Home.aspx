<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bai_Cuoi_Ky.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Trang chủ</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyNhanVien.aspx">Quản lý nhân viên</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLySach.aspx">Quản lý sách</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Muon-Tra.aspx">Quản lý mượn-trả</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server">Trợ Giúp</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/DangNhap.aspx">Đăng nhập</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/DangKy.aspx">Đăng ký</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MaSach" HeaderText="Mã Sách" ReadOnly="True" SortExpression="MaSach" />
                <asp:BoundField DataField="TenSach" HeaderText="Tên Sách" SortExpression="TenSach" />
                <asp:BoundField DataField="MaTG" HeaderText="Mã Tác Giả" SortExpression="MaTG" />
                <asp:BoundField DataField="MaTL" HeaderText="Mã Thể Loại" SortExpression="MaTL" />
                <asp:BoundField DataField="NamPhatHanh" HeaderText="Năm Phát Hành" SortExpression="NamPhatHanh" />
                <asp:BoundField DataField="GioiThieu" HeaderText="Giới Thiệu" SortExpression="GioiThieu" />
                <asp:BoundField DataField="HinhAnh" HeaderText="Hình Ảnh" SortExpression="HinhAnh" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyThuVienConnectionString %>" SelectCommand="SELECT * FROM [SACH]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
