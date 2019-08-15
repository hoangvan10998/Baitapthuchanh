<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLySach.aspx.cs" Inherits="Bai_Cuoi_Ky.Sach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <p>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Trang chủ</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyNhanVien.aspx">Quản lý nhân viên</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLySach.aspx">Quản lý sách</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Muon-Tra.aspx">Quản lý mượn-trả</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server">Trợ Giúp</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;</p>
    <div>
    
        QUẢN LÝ SÁCH<br />
        <br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td>Mã Sách</td>
                <td>
                    <asp:TextBox ID="maSach" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Tên Sách</td>
                <td>
                    <asp:TextBox ID="tenSach" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Mã TG</td>
                <td>
                    <asp:TextBox ID="maTG" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Mã TL</td>
                <td>
                    <asp:TextBox ID="maTL" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Năm PH</td>
                <td>
                    <asp:TextBox ID="namPH" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Giới thiệu</td>
                <td>
                    <asp:TextBox ID="GT" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Hình Ảnh</td>
                <td>
                    <asp:FileUpload ID="upAnh" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnThem" runat="server" Text="Thêm Sách" OnClick="btnThem_Click" />
                   </td>
                  <td>
                    <asp:Button ID="btn_Sua" runat="server" Text="Sửa Sách" OnClick="btnSua_Click" />
                   </td>
            </tr>

            
        </table>
        <br />
        <asp:Label ID="lbTB" runat="server" Text=" "></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="MaSach" HeaderText="Mã sách" />
                <asp:BoundField DataField="TenSach" HeaderText="Tên sách" />
                <asp:BoundField DataField="MaTG" HeaderText="Mã tác giả" />
                <asp:BoundField DataField="MaTL" HeaderText="Mã thể loại" />
                <asp:BoundField DataField="NamPhatHanh" HeaderText="Năm phát hành" />
                <asp:BoundField DataField="GioiThieu" HeaderText="Giới thiệu" />
                <asp:BoundField DataField="HinhAnh" HeaderText="Hình Ảnh" />
                


                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" Height="128px" Width="100px" runat="server" ImageUrl='<%# Eval("HinhAnh", "~/img/{0}") %>'/>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />


            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
