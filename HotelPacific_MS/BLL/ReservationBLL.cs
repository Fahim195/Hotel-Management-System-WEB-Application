using HotelPacific_MS.DAL;
using HotelPacific_MS.DAL.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace HotelPacific_MS.BLL
{
    public class ReservationBLL
    {
        public DataTable RoomVacancyInformationBLL(Room aRoom)
        {
            ReservationDAL reservationDal = new ReservationDAL();
            DataTable dt = reservationDal.RoomVacancyInformationDAL(aRoom);
            return dt;
        }
        public DataTable getRoomRentBLL(Room aRoom)
        {
            ReservationDAL reservationDal = new ReservationDAL();
            DataTable dt = reservationDal.getRoomRentDAL(aRoom);
            return dt;
        }
        public bool saveReservationInfoBLL(Customer aCustomer, Record aRecord, Cost aCost)
        {
            if (aCustomer.Id == 0 || aCustomer.Name == "" || aCustomer.Age < 18 || aCustomer.Sex == "" || aCustomer.DOB == "" || aCustomer.Profession == "" || aCustomer.ProfessionAddress == "" || aCustomer.PresentAddress == "" || aCustomer.PermanentAddress == "" || aCustomer.ContactNo == "" || aCustomer.Email == "" || aCustomer.NIDorPassportNo == "" || aRecord.RoomID == 0 || aRecord.RoomNO == "" || aRecord.BookingDate == "" || aRecord.CheckInDate == "" || aRecord.CheckOutDate == "" || aRecord.PaymentStatus == "" || aCost.TotalCost == 0)
            {
                return false;
            }
            else
            {
                ReservationDAL aReservationDAL = new ReservationDAL();
                bool result = aReservationDAL.saveReservationInfoDAL(aCustomer, aRecord, aCost);
                return result;
                
            }
            
        }
        public int getMaxID_BLL()
        {
            ReservationDAL aReservationDAL = new ReservationDAL();
            int result = aReservationDAL.getMaxID_DAL();
            return result;
        }
        public bool updateReservationInfoBLL(Customer aCustomer, Record aRecord, Cost aCost)
        {
            if (aCustomer.Id == 0 || aCustomer.Name == "" || aCustomer.Age < 18 || aCustomer.Sex == "" || aCustomer.DOB == "" || aCustomer.Profession == "" || aCustomer.ProfessionAddress == "" || aCustomer.PresentAddress == "" || aCustomer.PermanentAddress == "" || aCustomer.ContactNo == "" || aCustomer.Email == "" || aCustomer.NIDorPassportNo == "" || aRecord.RoomID == 0 || aRecord.RoomNO == "" || aRecord.BookingDate == "" || aRecord.CheckInDate == "" || aRecord.CheckOutDate == "" || aRecord.PaymentStatus == "" || aCost.TotalCost == 0)
            {
                return false;
            }
            else
            {
                ReservationDAL aReservationDAL = new ReservationDAL();
                bool result = aReservationDAL.updateReservationInfoDAL(aCustomer, aRecord, aCost);
                return result;
                
            }
           
        }
        public bool cancelReservationInfBLL(Customer aCustomer, Record aRecord, Cost aCost)
        {
            if (aCustomer.Id == 0 || aCustomer.Name == "" || aCustomer.Age < 18 || aCustomer.Sex == "" || aCustomer.DOB == "" || aCustomer.Profession == "" || aCustomer.ProfessionAddress == "" || aCustomer.PresentAddress == "" || aCustomer.PermanentAddress == "" || aCustomer.ContactNo == "" || aCustomer.Email == "" || aCustomer.NIDorPassportNo == "" || aRecord.RoomID == 0 || aRecord.RoomNO == "" || aRecord.BookingDate == "" || aRecord.CheckInDate == "" || aRecord.CheckOutDate == "" || aRecord.PaymentStatus == "" || aCost.TotalCost == 0)
            {
                return false;
            }
            else
            {
                ReservationDAL aReservationDAL = new ReservationDAL();
                bool result = aReservationDAL.cancelReservationInfoDAL(aCustomer);
                return result;
               
            }
         
        }
    }
}