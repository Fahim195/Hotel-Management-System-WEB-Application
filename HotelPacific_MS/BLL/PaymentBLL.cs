using HotelPacific_MS.DAL;
using HotelPacific_MS.DAL.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelPacific_MS.BLL
{
    public class PaymentBLL
    {
        public bool save_PaymentInformationBLL(Customer aCustomer, Record aRecord, Cost aCost)
        {
            if (aCustomer.Id == 0 || aRecord.PaymentStatus == "" || aCost.TotalCost == 0 ||(aCost.LastPayment==0 && aCost.Discount==0))
            {
                return false;
            }
            else
            {
                PaymentDAL aPaymentDAL = new PaymentDAL();
                bool result = aPaymentDAL.save_PaymentInformationDAL(aCustomer, aRecord, aCost);
                return result;
            }
        }
}