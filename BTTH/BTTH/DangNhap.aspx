<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTTH.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <body>
        

        <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="LOGN IN"></asp:Label>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                <input type="text" ID="txtEmail" runat="server"/>
            </p>
            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
            <input ID="txtPassword" type="password" runat="server"/>
            <p>
                <asp:Button ID="btn_DangNhap" type="submit" runat="server" onserverclick="btn_DangNhap_Click" Text="Sign In Now" OnClick="btn_DangNhap_Click1" />
            </p>
            <div id="divInfo" runat="server"></div>
        </form>
        

    </body>
</html>
