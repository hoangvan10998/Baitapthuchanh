using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Bai_Cuoi_Ky.Data.NguoiDung
{
    public class NguoiDungController:SqlDataConnect
    {

        public bool NguoiDung_Insert(NguoiDungInfo data)
        {
            string sql = @"INSERT INTO dbo.NGUOIDUNG(TenDN, MatKhau, HoTen , NgaySinh, GioiTinh, DiaChi, ,Email ) VALUES  (@TenDangNhap,@MatKhau, @Email, @HoTen, @SDT, @DiaChi)";
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@TenDN", data.TenDN));
                cmd.Parameters.Add(new SqlParameter("@MatKhau", data.MatKhau));
                cmd.Parameters.Add(new SqlParameter("@HoTen", data.HoTen));
                cmd.Parameters.Add(new SqlParameter("@NgaySinh", data.NgaySinh));
                cmd.Parameters.Add(new SqlParameter("@GioiTinh", data.GioiTinh));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", data.DiaChi));
                cmd.Parameters.Add(new SqlParameter("@Email", data.Email));
                int t = (int)cmd.ExecuteNonQuery();
                return (t >= 1);
            }
        }
        public DataTable NguoiDung_GetByAll()
        {
            string sql = @"SELECT * FROM NGUOIDUNG";
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        public DataTable NguoiDung_GetByID(string TenDN)
        {
            string sql = @"SELECT * FROM NGUOIDUNG where TenDN=@ten";
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@ten", TenDN));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        public DataTable NguoiDung_GetByTop(string Top, string Where, string Order)
        {
            string sql = @"";
            sqlconnect.Open();
            using (SqlCommand cmd = new SqlCommand(sql, sqlconnect))
            {
                cmd.Parameters.Add(new SqlParameter("@Top", Top));
                cmd.Parameters.Add(new SqlParameter("@Where", Where));
                cmd.Parameters.Add(new SqlParameter("@Top", Order));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            
        }
        public NguoiDungInfo Check_Login(string TenDN, string MatKhau)
        {
            string sql = @"SELECT * FROM NGUOIDUNG WHERE TenDN=@TenDN AND MatKhau=@MatKhau";
            SqlDataReader dr = null;
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.AddWithValue("@TenDN", TenDN);
                cmd.Parameters.AddWithValue("@MatKhau", MatKhau);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    NguoiDungInfo dt = new NguoiDungInfo
                    {
                        TenDN = (string)dr["TenDN"],                        
                        HoTen = (string)dr["HoTen"],
                        NgaySinh = (string)dr["NgaySinh"],
                        GioiTinh = (string)dr["GioiTinh"],
                        DiaChi = (string)dr["DiaChi"],
                        Email = (string)dr["Email"]
                    };
                    dr.Close();
                    return dt;
                }
                else 
                { 
                    dr.Close(); 
                }
            }
            return null;
        }
       
        public NguoiDungInfo Get_TenDT(string TenDN)
        {
            string sql = @"SELECT * FROM NGUOIDUNG where TenDN=@TenDN";
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@TenDN", TenDN));
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    NguoiDungInfo nd = new NguoiDungInfo
                    {
                        TenDN = (string)dr["TenDN"],
                        MatKhau = (string)dr["MatKhau"],                        
                        HoTen = (string)dr["HoTen"],
                        NgaySinh = (string)dr["NgaySinh"],
                        GioiTinh = (string)dr["GioiTinh"],
                        DiaChi = (string)dr["DiaChi"],
                        Email = (string)dr["Email"]
                    };
                    dr.Close();
                    return nd;
                }
            }
            return null;
        }
    }
}
