using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Bai_Cuoi_Ky.Data.NguoiDung;

namespace Bai_Cuoi_Ky
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_DangNhap_Click(object sender, EventArgs e)
        {
            NguoiDungController kt = new NguoiDungController();
            string ten = txtTen.Text;
            NguoiDungInfo info = kt.Check_Login(txtTen.Text, txtMatKhau.Text);
            if (info != null)
            {
                Session["TenDN"] = info.TenDN;                              
                Session["HoTen"] = info.HoTen;
                Session["NgaySinh"] = info.NgaySinh;
                Session["GioiTinh"] = info.GioiTinh;
                Session["DiaChi"] = info.DiaChi;
                Session["Email"] = info.Email;
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                lbTB.Text = "Sai Tên Hoặc Mật Khẩu!";
            }
        }

       
    }
}