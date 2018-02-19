using HotelPacific_MS.DAL;
using HotelPacific_MS.DAL.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelPacific_MS.BLL
{
    public class CheckOutBLL
    {
        public bool save_CheckOutInformationBLL(Customer aCustomer, Record aRecord, Cost aCost)
        {
            if (aCustomer.Id == 0 || aCustomer.Name == "" || aCustomer.Age < 18 || aCustomer.Sex == "" || aCustomer.DOB == "" || aCustomer.Profession == "" || aCustomer.ProfessionAddress == "" || aCustomer.PresentAddress == "" || aCustomer.PermanentAddress == "" || aCustomer.ContactNo == "" || aCustomer.Email == "" || aCustomer.NIDorPassportNo == "" || aRecord.RoomID == 0 || aRecord.RoomNO == "" || aRecord.BookingDate == "" || aRecord.CheckInDate == "" || aRecord.CheckOutDate == "" || aRecord.PaymentStatus == "" || aCost.TotalCost == 0)
            {
                return false;
            }
            else
            {
                CheckOutDAL aCheckOutDAL = new CheckOutDAL();
                bool result = aCheckOutDAL.save_CheckOutInformationDAL(aCustomer, aRecord, aCost);
                return result;
            }
        }
        public bool cancel_CheckOutDAL(Customer aCustomer)
        {
            if (aCustomer.Id == 0)
            {
                return false;
            }
            else
            {
                CheckOutDAL aCheckOutDAL = new CheckOutDAL();
                bool result = aCheckOutDAL.cancel_CheckOutDAL(aCustomer);
                return result;
            }
        }
    }
}