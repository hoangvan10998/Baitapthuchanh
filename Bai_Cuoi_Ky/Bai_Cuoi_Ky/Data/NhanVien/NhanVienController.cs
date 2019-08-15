using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Bai_Cuoi_Ky.Data.NhanVien
{
    public class NhanVienController:SqlDataConnect
    {
        public bool InsertNhanVien(NhanVienInfo sach)
        {

            string sql = @"Insert into NHANVIEN (MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SDT) 
                           values(@MaNV, @TenNV, @NgaySinh, @GioiTinh, @DiaChi, @SDT)";

            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@MaNv", sach.MaNV));
                cmd.Parameters.Add(new SqlParameter("@TenNV", sach.TenNV));
                cmd.Parameters.Add(new SqlParameter("@NgaySinh", sach.NgaySinh));
                cmd.Parameters.Add(new SqlParameter("@GioiTinh", sach.GioiTinh));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", sach.DiaChi));
                cmd.Parameters.Add(new SqlParameter("@SDT", sach.SDT));

                int t = (int)cmd.ExecuteNonQuery();
                cmd.Clone();
                return (t >= 1);
            }
        }

        public bool UpdateNhanVien(NhanVienInfo info)
        {
           
            string sql = @"Update NHANVIEN set TenNV=@TenNv, NgaySinh=@NgaySinh, GioiTinh=@GioiTinh, DiaChi=@DiaChi, SDT=@SDT
                            where MaNV= @MaNV";

            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@MaNV", info.MaNV));
                cmd.Parameters.Add(new SqlParameter("@TenNV", info.TenNV));
                cmd.Parameters.Add(new SqlParameter("@NgaySinh", info.NgaySinh));
                cmd.Parameters.Add(new SqlParameter("@GioiTinh", info.GioiTinh));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", info.DiaChi));
                cmd.Parameters.Add(new SqlParameter("@SDT", info.SDT));

                int t = (int)cmd.ExecuteNonQuery();
                cmd.Clone();
                return (t >= 1);
            }

        }

        public bool DeleteNhanVien(String MaNhanVien)
        {

            string sql = @"Delete NHANVIEN where MaNV= " + MaNhanVien;

            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                int t = (int)cmd.ExecuteNonQuery();
                cmd.Clone();
                return (t >= 1);
            }
        }

        public DataTable GetAllNhanVien()
        {

            string sql = @"SELECT * from NHANVIEN";

            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);
                cmd.Clone();
                return dt;
            }
        }

        public NhanVienInfo SelectNhanVien_ByMaNV(String MaNhanVien)
        {
            string sql = @"Select * from NHANVIEN where MaNV=" + MaNhanVien;
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    NhanVienInfo info = new NhanVienInfo
                    {
                        MaNV = (string)dr["MaNV"],
                        TenNV = (string)dr["TenNV" ],
                        NgaySinh = (string)dr["NgaySinh"],
                        GioiTinh = (string)dr["GioiTinh"],
                        DiaChi = (string)dr["DiaChi"],
                        SDT= (string)dr["SDT"]
                    };
                    dr.Close();
                    return info;
                }

                return null;

            }

        }

    }
}
