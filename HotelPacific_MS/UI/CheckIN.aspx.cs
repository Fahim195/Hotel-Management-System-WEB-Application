using HotelPacific_MS.BLL;
using HotelPacific_MS.DAL.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelPacific_MS.UI
{
    public partial class CheckIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPayment_checkIn.Attributes.Add("onclick", "paymentChange()");
        }

        protected void btnSave_CheckIn_Click(object sender, EventArgs e)
        {
            string gender = drpGenderSelection_checkIn.Value;
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_checkIn.Text, out aCustomer.Id);
            aCustomer.Name = txtName_CheckIn.Text;
            aCustomer.DOB = txtDoB_checkIn.Text;
            aCustomer.Age = 0;
            int.TryParse(txtAge_CheckIn.Text, out aCustomer.Age);
            aCustomer.Sex = gender;
            aCustomer.Profession = txtProfession_checkIn.Text;
            aCustomer.ProfessionAddress = txtProfessionAddress_checkIn.Text;
            aCustomer.PermanentAddress = txtPermanentAddress_checkIn.Text;
            aCustomer.PresentAddress = txtPresentAddress_checkIn.Text;
            aCustomer.ContactNo = contactNo_checkIn.Text;
            aCustomer.Email = txtEmail_checkIn.Text;
            aCustomer.NIDorPassportNo = txtNID_checkIn.Text;

            Record aRecord = new Record();
            aRecord.RoomID = 0;
            int.TryParse(txtRoomId_checkIn.Text, out aRecord.RoomID);
            aRecord.RoomNO = txtRoomNO_checkIn.Text;
            aRecord.BookingDate = txtReservationDate_checkIn.Text;
            aRecord.CheckInDate = txtCheckInDate_checkIn.Text;
            aRecord.CheckOutDate = txtCheckOutDate_checkIn.Text;
            aRecord.PaymentStatus = txtPayment_checkIn.Text;

            Cost aCost = new Cost();
            aCost.TotalCost = 0;
            float.TryParse(txtTotalCost_checkIn.Text, out aCost.TotalCost);
            aCost.Due = 0;
            float.TryParse(txtDue_checkIn.Text, out aCost.Due);
            aCost.LastPayment = 0;
            float.TryParse(txtPayment_checkIn.Text, out aCost.LastPayment);


            if (aCost.Due == 0)
            {
                aRecord.PaymentStatus = " Clear ";
            }
            else if (aCost.Due > 0)
            {
                aRecord.PaymentStatus = "Due " + aCost.Due + "";
            }
            else
            {
                aRecord.PaymentStatus = "";

            }

            CheckInBLL aCheckINBLL = new CheckInBLL();

            bool Result = aCheckINBLL.save_CheckInInformationBLL(aCustomer, aRecord, aCost);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Check-In Confirmed')</SCRIPT>");
                Server.Transfer("CheckIN.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error Check-In Please ,check information')</SCRIPT>");
            }
        }

        protected void btnUpdate_CheckIn_Click(object sender, EventArgs e)
        {
            string gender = drpGenderSelection_checkIn.Value;
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_checkIn.Text, out aCustomer.Id);
            aCustomer.Name = txtName_CheckIn.Text;
            aCustomer.DOB = txtDoB_checkIn.Text;
            aCustomer.Age = 0;
            int.TryParse(txtAge_CheckIn.Text, out aCustomer.Age);
            aCustomer.Sex = gender;
            aCustomer.Profession = txtProfession_checkIn.Text;
            aCustomer.ProfessionAddress = txtProfessionAddress_checkIn.Text;
            aCustomer.PermanentAddress = txtPermanentAddress_checkIn.Text;
            aCustomer.PresentAddress = txtPresentAddress_checkIn.Text;
            aCustomer.ContactNo = contactNo_checkIn.Text;
            aCustomer.Email = txtEmail_checkIn.Text;
            aCustomer.NIDorPassportNo = txtNID_checkIn.Text;

            Record aRecord = new Record();
            aRecord.RoomID = 0;
            int.TryParse(txtRoomId_checkIn.Text, out aRecord.RoomID);
            aRecord.RoomNO = txtRoomNO_checkIn.Text;
            aRecord.BookingDate = txtReservationDate_checkIn.Text;
            aRecord.CheckInDate = txtCheckInDate_checkIn.Text;
            aRecord.CheckOutDate = txtCheckOutDate_checkIn.Text;
            aRecord.PaymentStatus = txtPayment_checkIn.Text;

            Cost aCost = new Cost();
            aCost.TotalCost = 0;
            float.TryParse(txtTotalCost_checkIn.Text, out aCost.TotalCost);
            aCost.Due = 0;
            float.TryParse(txtDue_checkIn.Text, out aCost.Due);
            aCost.LastPayment = 0;
            float.TryParse(txtPayment_checkIn.Text, out aCost.LastPayment);


            if (aCost.Due == 0)
            {
                aRecord.PaymentStatus = " Clear ";
            }
            else if (aCost.Due > 0)
            {
                aRecord.PaymentStatus = "Due " + aCost.Due + "";
            }
            else
            {
                aRecord.PaymentStatus = "";

            }

            CheckInBLL aCheckINBLL = new CheckInBLL();
            bool Result = aCheckINBLL.save_CheckInInformationBLL(aCustomer, aRecord, aCost);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Check-In Confirmed')</SCRIPT>");
                Server.Transfer("CheckIN.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error Check-In Please ,check information')</SCRIPT>");
            }

        }

        protected void btnCancel_CheckIn_Click(object sender, EventArgs e)
        {
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_checkIn.Text, out aCustomer.Id);
            CheckInBLL aCheckINBLL = new CheckInBLL();
            bool Result = aCheckINBLL.cancel_CheckInDAL(aCustomer);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Check-In Cancelled')</SCRIPT>");
                Server.Transfer("CheckIN.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error Check-In Canvelation ,check information')</SCRIPT>");
            }
        }
    }
}