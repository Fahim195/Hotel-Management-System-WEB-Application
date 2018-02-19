using HotelPacific_MS.DAL.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HotelPacific_MS.DAL
{
    public class CheckInDAL
    {
        public bool save_CheckInInformationDAL(Customer aCustomer, Record aRecord,Cost aCost)
        {
            SqlConnection connection = DBconnection.OpenConnection();
            SqlCommand action = new SqlCommand("updateCheckIn_Info", connection);
            action.CommandType = CommandType.StoredProcedure;
            action.Parameters.AddWithValue("@CustomerID", aCustomer.Id);
            action.Parameters.AddWithValue("@name", aCustomer.Name);
            action.Parameters.AddWithValue("@age", aCustomer.Age);
            action.Parameters.AddWithValue("@sex", aCustomer.Sex);
            action.Parameters.AddWithValue("@dOb", aCustomer.DOB);
            action.Parameters.AddWithValue("@profession", aCustomer.Profession);
            action.Parameters.AddWithValue("@professionAddress", aCustomer.ProfessionAddress);
            action.Parameters.AddWithValue("@permanentAddress", aCustomer.PermanentAddress);
            action.Parameters.AddWithValue("@presentAddress", aCustomer.PresentAddress);
            action.Parameters.AddWithValue("@contactNo", aCustomer.ContactNo);
            action.Parameters.AddWithValue("@email", aCustomer.Email);
            action.Parameters.AddWithValue("@nid", aCustomer.NIDorPassportNo);
            action.Parameters.AddWithValue("@recordID", aCustomer.Id);
            action.Parameters.AddWithValue("@roomId", aRecord.RoomID);
            action.Parameters.AddWithValue("@roomNo", aRecord.RoomNO);
            action.Parameters.AddWithValue("@bookingDate", aRecord.BookingDate);
            action.Parameters.AddWithValue("@checkInDate", aRecord.CheckInDate);
            action.Parameters.AddWithValue("@checkOutDate", aRecord.CheckOutDate);
            action.Parameters.AddWithValue("@paymentStatus", aRecord.PaymentStatus);
            action.Parameters.AddWithValue("@CID", aCustomer.Id);
            action.Parameters.AddWithValue("@totalCost", aCost.TotalCost);
            action.Parameters.AddWithValue("@due", aCost.Due);
            action.Parameters.AddWithValue("@lastPayment", aCost.LastPayment);

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
        public bool cancel_CheckInDAL(Customer aCustomer)
        {
            SqlConnection connection = DBconnection.OpenConnection();
            SqlCommand action = new SqlCommand("cancelCheckIn", connection);
            action.CommandType = CommandType.StoredProcedure;
            action.Parameters.AddWithValue("@reservationID", aCustomer.Id);
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