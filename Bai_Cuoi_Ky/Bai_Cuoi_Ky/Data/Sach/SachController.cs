using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Bai_Cuoi_Ky.Data.Sach
{
    public class SachController:SqlDataConnect
    {

        public bool InsertSach(SachInfo sach)
        {

            string sql = @"Insert into SACH (MaSach, TenSach, MaTG, MaTL, NamPhatHanh, GioiThieu, HinhAnh) 
                           values(@MaSach, @TenSach, @MaTG, @MaTL, @NamPH,@GT, @HinhAnh)";

            using(SqlCommand cmd= new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@MaSach", sach.MaSach));
                cmd.Parameters.Add(new SqlParameter("@TenSach", sach.TenSach));
                cmd.Parameters.Add(new SqlParameter("@MaTG", sach.MaTG));
                cmd.Parameters.Add(new SqlParameter("@MaTL", sach.MaTL));
                cmd.Parameters.Add(new SqlParameter("@NamPH", sach.NamPhatHanh));
                cmd.Parameters.Add(new SqlParameter("@GT", sach.GioiThieu));
                cmd.Parameters.Add(new SqlParameter("@HinhAnh", sach.HinhAnh));

                int t =(int) cmd.ExecuteNonQuery();
                cmd.Clone();
                return(t>=1);
            }
        }
        public bool UpdateSach(SachInfo info)
        {
            //bỏ ảnh ra,
            string sql = @"Update SACH set TenSach=@TenSach, MaTG=@MaTG, MaTL=@MaTL, NamPhatHanh=@NamPH, GioiThieu=@GT where MaSach= @MaSach";

            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@MaSach", info.MaSach));
                cmd.Parameters.Add(new SqlParameter("@TenSach", info.TenSach));
                cmd.Parameters.Add(new SqlParameter("@MaTG", info.MaTG));
                cmd.Parameters.Add(new SqlParameter("@MaTL", info.MaTL));
                cmd.Parameters.Add(new SqlParameter("@NamPH", info.NamPhatHanh));
                cmd.Parameters.Add(new SqlParameter("@GT", info.GioiThieu));

                int t = (int)cmd.ExecuteNonQuery();
                cmd.Clone();
                return (t >= 1);
            }
            
        }

        public bool DeleteSach(String MaSach)
        {

            string sql = @"Delete SACH where MaSach= "+MaSach;

            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                int t = (int)cmd.ExecuteNonQuery();
                cmd.Clone();
                return (t >= 1);
            }
        }

        public DataTable GetAllSach()
        {

            string sql = @"SELECT * from SACH";

            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
               
                da.Fill(dt);
                cmd.Clone();
                return dt;
            }
        }

        public SachInfo SelectSach_ByMaSach(String maSach)
        {
            string sql = @"Select * from SACH where MaSach="+maSach;
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            
            {
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    SachInfo info = new SachInfo
                    {
                        MaSach=(string)dr["MaSach"],
                        TenSach = (string)dr["TenSach"],
                        MaTG = (string)dr["MaTG"],
                        MaTL = (string)dr["MaTL"],
                        NamPhatHanh = (string)dr["NamPhatHanh"],
                        GioiThieu = (string)dr["GioiThieu"]
                    };
                    dr.Close();
                    return info;
                }
                
                return null;
                
            }
            
        }

        public bool UpAnhMoi(string tenAnhMoi, string maSach)
        {
            string sql = @"update SACH set HinhAnh="+tenAnhMoi+"where MaSach="+maSach;
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                int t = (int)cmd.ExecuteNonQuery();

                cmd.Clone();
                return (t >= 1);
            }
        }

    }
}