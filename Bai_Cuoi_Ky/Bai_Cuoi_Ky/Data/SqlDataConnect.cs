using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Bai_Cuoi_Ky.Data
{
    public class SqlDataConnect
    {
        public static String Connect = System.Configuration.ConfigurationManager.ConnectionStrings["QLTV"]
            .ConnectionString.ToString();

        public static SqlConnection sqlconnect;

        public SqlDataConnect()
        {
            if (sqlconnect==null)
            {
                sqlconnect = new SqlConnection(Connect);
            }
        }

        public SqlConnection getConnet()
        {
            if (sqlconnect.State == ConnectionState.Closed)
            {
                sqlconnect.Open();
                return sqlconnect;
            }
            else
                return sqlconnect;
        }
        public static void KetNoi()
        {
            sqlconnect = new SqlConnection();
            sqlconnect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QLTV"]
                .ConnectionString.ToString();
            sqlconnect.Open();
        }

    }
}