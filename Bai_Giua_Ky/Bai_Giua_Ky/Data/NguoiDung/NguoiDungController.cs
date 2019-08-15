using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Bai_Giua_Ky.Data.NguoiDung
{
    public class NguoiDungController:SqlConnect
    {
        public bool NguoiDung_Insert(NguoiDungInfo data)
        {
            string sql = @"INSERT INTO NGUOIDUNG(TenDN, MatKhau, HoTen, Email ) VALUES  (@TenDN,@MatKhau,@HoTen, @Email)";
            using (SqlCommand cmd = new SqlCommand(sql, getConnet()))
            {
                cmd.Parameters.Add(new SqlParameter("@TenDN", data.TenDN));
                cmd.Parameters.Add(new SqlParameter("@MatKhau", data.MatKhau));
                cmd.Parameters.Add(new SqlParameter("@HoTen", data.HoTen));
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

       

       
    }
}