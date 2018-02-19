using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HotelPacific_MS.DAL.DAO
{
    public class DBconnection
    {
        public static SqlConnection OpenConnection()
        {
            string serverLink = ConfigurationManager.ConnectionStrings["HMS2ConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString= serverLink;
            connection.Open();
            return connection;
        }
    }
}