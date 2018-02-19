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
    public partial class CheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPayment_checkOut.Attributes.Add("onclick", "paymentChange()");
        }

        protected void btnSave_CheckIn_Click(object sender, EventArgs e)
        {
            string gender = drpGenderSelection_checkOut.Value;
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_checkOut.Text, out aCustomer.Id);
            aCustomer.Name = txtName_checkOut.Text;
            aCustomer.DOB = txtDoB_checkOut.Text;
            aCustomer.Age = 0;
            int.TryParse(txtAge_checkOut.Text, out aCustomer.Age);
            aCustomer.Sex = gender;
            aCustomer.Profession = txtProfession_checkOut.Text;
            aCustomer.ProfessionAddress = txtProfessionAddress_checkOut.Text;
            aCustomer.PermanentAddress = txtPermanentAddress_checkOut.Text;
            aCustomer.PresentAddress = txtPresentAddress_checkOut.Text;
            aCustomer.ContactNo = contactNo_checkOut.Text;
            aCustomer.Email = txtEmail_checkOut.Text;
            aCustomer.NIDorPassportNo = txtNID_checkOut.Text;

            Record aRecord = new Record();
            aRecord.RoomID = 0;
            int.TryParse(txtRoomId_checkOut.Text, out aRecord.RoomID);
            aRecord.RoomNO = txtRoomNO_checkOut.Text;
            aRecord.BookingDate = txtReservationDate_checkOut.Text;
            aRecord.CheckInDate = txtCheckInDate_checkOut.Text;
            aRecord.CheckOutDate = txtCheckOutDate_checkOut.Text;
            aRecord.PaymentStatus = txtPayment_checkOut.Text;

            Cost aCost = new Cost();
            aCost.TotalCost = 0;
            float.TryParse(txtTotalCost_checkOut.Text, out aCost.TotalCost);
            aCost.Due = 0;
            float.TryParse(txtDue_checkOut.Text, out aCost.Due);
            aCost.LastPayment = 0;
            float.TryParse(txtPayment_checkOut.Text, out aCost.LastPayment);


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

            CheckOutBLL aCheckOutBLL = new CheckOutBLL();

            bool Result = aCheckOutBLL.save_CheckOutInformationBLL(aCustomer, aRecord, aCost);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Check-Out Confirmed')</SCRIPT>");
                Server.Transfer("CheckOut.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error Check-Out Please, check information')</SCRIPT>");
            }
        }

        protected void btnUpdate_CheckIn_Click(object sender, EventArgs e)
        {
            string gender = drpGenderSelection_checkOut.Value;
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_checkOut.Text, out aCustomer.Id);
            aCustomer.Name = txtName_checkOut.Text;
            aCustomer.DOB = txtDoB_checkOut.Text;
            aCustomer.Age = 0;
            int.TryParse(txtAge_checkOut.Text, out aCustomer.Age);
            aCustomer.Sex = gender;
            aCustomer.Profession = txtProfession_checkOut.Text;
            aCustomer.ProfessionAddress = txtProfessionAddress_checkOut.Text;
            aCustomer.PermanentAddress = txtPermanentAddress_checkOut.Text;
            aCustomer.PresentAddress = txtPresentAddress_checkOut.Text;
            aCustomer.ContactNo = contactNo_checkOut.Text;
            aCustomer.Email = txtEmail_checkOut.Text;
            aCustomer.NIDorPassportNo = txtNID_checkOut.Text;

            Record aRecord = new Record();
            aRecord.RoomID = 0;
            int.TryParse(txtRoomId_checkOut.Text, out aRecord.RoomID);
            aRecord.RoomNO = txtRoomNO_checkOut.Text;
            aRecord.BookingDate = txtReservationDate_checkOut.Text;
            aRecord.CheckInDate = txtCheckInDate_checkOut.Text;
            aRecord.CheckOutDate = txtCheckOutDate_checkOut.Text;
            aRecord.PaymentStatus = txtPayment_checkOut.Text;

            Cost aCost = new Cost();
            aCost.TotalCost = 0;
            float.TryParse(txtTotalCost_checkOut.Text, out aCost.TotalCost);
            aCost.Due = 0;
            float.TryParse(txtDue_checkOut.Text, out aCost.Due);
            aCost.LastPayment = 0;
            float.TryParse(txtPayment_checkOut.Text, out aCost.LastPayment);


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

            CheckOutBLL aCheckOutBLL = new CheckOutBLL();

            bool Result = aCheckOutBLL.save_CheckOutInformationBLL(aCustomer, aRecord, aCost);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Check-Out Information Updated')</SCRIPT>");
                Server.Transfer("CheckOut.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error Updating Check-Out Please, check information')</SCRIPT>");
            }
        }

        protected void btnCancel_CheckIn_Click(object sender, EventArgs e)
        {
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_checkOut.Text, out aCustomer.Id);
            CheckOutBLL aCheckOutBLL = new CheckOutBLL();
            bool Result = aCheckOutBLL.cancel_CheckOutDAL(aCustomer);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Check-Out Cancelled')</SCRIPT>");
                Server.Transfer("CheckOut.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error Check-Out cancellation ,check information')</SCRIPT>");
            }
        }
    }
}