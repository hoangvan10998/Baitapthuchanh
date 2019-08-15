using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Bai_Giua_Ky.Data.NguoiDung;

namespace Bai_Giua_Ky
{
    public partial class DangKy : System.Web.UI.Page
    {



        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        public NguoiDungInfo layDuLieuForm()
        {
            string TenDN = txt_Ten.Text;
            string MatKhau = txtMatKhau.Text;
            string HoTen = txtHoTen.Text;
            string Email = txtEmail.Text;
            NguoiDungInfo info = new NguoiDungInfo
            {
                TenDN = TenDN.ToString(),
                MatKhau = MatKhau.ToString(),
                HoTen = HoTen.ToString(),
                Email = Email.ToString()
            };
            return info;
        }

        protected void btn_DangKy_Click(object sender, EventArgs e)
        {
            NguoiDungInfo nd = layDuLieuForm();
            NguoiDungController taikhoan = new NguoiDungController();
            bool kt = taikhoan.NguoiDung_Insert(nd);
            if (kt)
            {
                lbTB.Text = "Đăng ký thành công";
                Response.Redirect("~/HienThi.aspx");
            }
            else
                lbTB.Text = "Đăng ký thất bại";  
        }

       
        

 
     
}
    
}