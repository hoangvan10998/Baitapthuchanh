<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadTapTin.aspx.cs" Inherits="BTTH3.UploadTapTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        
    <form id="form1" runat="server">
        <asp:LinkButton ID="Linkbtn_upload" runat="server">Upload tập tin</asp:LinkButton>
        <asp:LinkButton ID="linkbtn_XemTapTin" runat="server">Xem các tập tin được upload</asp:LinkButton>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <input id="File1" type="file" />
                <br />
                <asp:Button ID="btn_Upload" runat="server" type="submit" Text="Upload" OnClick="btn_Upload_Click" />
                <br />
            </asp:View>
        </asp:MultiView>
        <asp:MultiView ID="MultiView2" runat="server">
            <asp:View ID="View2" runat="server">
            </asp:View>
        </asp:MultiView>
    </form>
        
</body>
</html>
