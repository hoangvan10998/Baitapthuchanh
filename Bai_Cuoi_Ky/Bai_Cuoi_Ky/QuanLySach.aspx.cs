using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Bai_Cuoi_Ky.Data.Sach;

namespace Bai_Cuoi_Ky
{
    public partial class Sach : System.Web.UI.Page
    {
        public SachController sachctl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getAllSach();
            }
        }

        public void getAllSach()
        {
            SachController sachCtl = new SachController();
            DataTable dt = new DataTable();
            dt = sachCtl.GetAllSach();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public bool UpAnh(String tenAnh)
        {
            String thuMuc="~/img";
            String luuAnh=thuMuc+"/"+tenAnh;
            if (upAnh.HasFile)
            {
                upAnh.SaveAs(Server.MapPath(luuAnh));
                return true;
            }
            return false;
        }
        public SachInfo layDuLieuForm()
        {
            string ma = maSach.Text;
            string ten = tenSach.Text;
            string matg = maTG.Text;
            string matl = maTL.Text;
            string namph = namPH.Text;
            string gt = GT.Text;
            string hinhanh = upAnh.FileName;
            SachInfo info = new SachInfo
            {
                MaSach=ma.ToString(),
                TenSach=ten.ToString(),
                MaTG=matg.ToString(),
                MaTL=matl.ToString(),
                NamPhatHanh=namph.ToString(),
                GioiThieu=gt.ToString(),
                HinhAnh=hinhanh.ToString()
            };
            return info;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {

            SachController sachCtl = new SachController();

            SachInfo info=layDuLieuForm();
            bool kt = sachCtl.InsertSach(info);

            if (kt == true)
            {
                string tenAnh = info.HinhAnh;
                bool ktUpAnh = UpAnh(tenAnh);
                if (ktUpAnh == true)
                {
                    lbTB.Text = "Thêm thành công";                  
                    getAllSach();

                    maSach.Text = "";
                    tenSach.Text = "";
                    maTG.Text = "";
                    maTL.Text = "";
                    namPH.Text = "";
                    GT.Text = "";
                    maSach.Focus();
                }
                else
                {
                    lbTB.Text = "Thêm thất bại";
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string maSach = GridView1.SelectedRow.Cells[0].Text;
            SachController sachCtl = new SachController();

            SachInfo info = sachCtl.SelectSach_ByMaSach(maSach);
            if (info != null)
            {
                doDuLieu(info);
            }

        }
        public void doDuLieu(SachInfo info)
        {
            maSach.Text = info.MaSach;
            tenSach.Text = info.TenSach;
            maTG.Text = info.MaTG;
            maTL.Text = info.MaTL;
            namPH.Text = info.NamPhatHanh;
            GT.Text = info.GioiThieu;
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            string id=maSach.ToString();
            SachController sachctl=new SachController();
            // ảnh có đc chọn mới hay k?
            if (upAnh.HasFile)
            {
                //tên ảnh mới
                string imgMoi = upAnh.FileName.ToString();
                //up ảnh mới 
                bool upAnhMoi = sachctl.UpAnhMoi(id, imgMoi);
                // cập nhật các trường khác nếu ng dùng thay đổi
                SachInfo info=layDuLieuForm();
                bool updateSach = sachctl.UpdateSach(info);
                if (upAnhMoi == true && updateSach == true)
                {
                    lbTB.Text = "Cập nhật thành công!";
                }
                else
                    lbTB.Text="Cập nhật thất bại!";
            }
            else
            {
                SachInfo info = layDuLieuForm();
                bool updateSach = sachctl.UpdateSach(info);
                if (updateSach)
                {

                    lbTB.Text = "Cập nhật thành công!";
                }
                else
                    lbTB.Text = "Cập nhật thất bại!";
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string masach = GridView1.Rows[e.RowIndex].Cells[0].Text;
            SachController sachctl = new SachController();
            bool kt = sachctl.DeleteSach(masach);
            if (kt)
            {
                lbTB.Text = "Xóa Thành Công ";
                getAllSach();
            }
            else
                lbTB.Text = "Xóa Thất Bại";
        }
    }
}