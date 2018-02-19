using HotelPacific_MS.DAL.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HotelPacific_MS.DAL
{
    public class PaymentDAL
    {
        public bool save_PaymentInformationDAL(Customer aCustomer, Record aRecord, Cost aCost)
        {
            SqlConnection connection = DBconnection.OpenConnection();
            SqlCommand action = new SqlCommand("updateCheckOut_Info", connection);
            action.CommandType = CommandType.StoredProcedure;
            action.Parameters.AddWithValue("@costId", aCustomer.Id);
            action.Parameters.AddWithValue("@due", aCost.Due);
            action.Parameters.AddWithValue("@LastPayment", aCost.LastPayment);
            action.Parameters.AddWithValue("@discount", aCost.Discount);
            int result = action.ExecuteNonQuery();
            connection.Close();
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}