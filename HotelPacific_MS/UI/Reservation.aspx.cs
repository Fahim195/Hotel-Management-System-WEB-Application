using HotelPacific_MS.BLL;
using HotelPacific_MS.DAL;
using HotelPacific_MS.DAL.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelPacific_MS.UI
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox15.Attributes.Add("onchange", "noOfDays()");
                TextBox16.Attributes.Add("onchange", "noOfDays()");
                TextBox19.Attributes.Add("onclick", "paymentChange()");
                TextBox3.Attributes.Add("onchange", "ageCalculate()");
                TextBox13.Attributes.Add("onchange", "roomIdTextBoxChange()");
                BindDummyData();
                predictReservationID();

            }
            
        }
        [System.Web.Services.WebMethod]
        public static int predictReservationID()
        {
            ReservationBLL aReservationBLL = new ReservationBLL();
            int predictedID = aReservationBLL.getMaxID_BLL();
            if (predictedID != 0)
            {
                predictedID = predictedID + 1;
            }
            else
            {
                predictedID = 1;
            }

            return predictedID;
        }
        public void BindDummyData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Check In");
            dt.Columns.Add(" Check Out");
            dt.Rows.Add();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        public class ProductDetails
        {
            public string CheckIn { get; set; }
            public string CheckOut { get; set; }
        }
        [System.Web.Services.WebMethod]
        public static ProductDetails[] RoomVacancyInformation(int Room_id)
        {
            List<ProductDetails> MyData = new List<ProductDetails>();
            Room aRoom = new Room();
            aRoom.Id = Room_id;
            ReservationBLL aReservationBLL = new ReservationBLL();
            DataTable dt = aReservationBLL.RoomVacancyInformationBLL(aRoom);
            foreach (DataRow DR in dt.Rows)
            {
                ProductDetails objProduct = new ProductDetails();
                objProduct.CheckIn = DR["CheckInDate"].ToString();
                objProduct.CheckOut = DR["CheckOutDate"].ToString();
                MyData.Add(objProduct);
            }
            return MyData.ToArray();
        }
        [System.Web.Services.WebMethod]
        public static string getRoomRent(int Room_id)
        {
            string roomRent = "";
            Room aRoom = new Room();
            aRoom.Id = Room_id;
            ReservationBLL aReservationBLL = new ReservationBLL();
            DataTable dt = aReservationBLL.getRoomRentBLL(aRoom);
            roomRent = dt.Rows[0][0].ToString();
            return roomRent;
        }
        protected void BtnSave_Click()
        {
            string gender = drpGenderSelection.Value;
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_Reservation.Text, out aCustomer.Id);
            aCustomer.Name = TextBox2.Text;
            aCustomer.DOB = TextBox3.Text;
            aCustomer.Age = 0;
            int.TryParse(TextBox4.Text, out aCustomer.Age);
            aCustomer.Sex = gender;
            aCustomer.Profession = TextBox5.Text;
            aCustomer.ProfessionAddress = TextBox6.Text;
            aCustomer.PermanentAddress = TextBox7.Text;
            aCustomer.PresentAddress = TextPresentAdd.Text;
            aCustomer.ContactNo = TextBox8.Text;
            aCustomer.Email = TextBox9.Text;
            aCustomer.NIDorPassportNo = TextBox11.Text;

            Record aRecord = new Record();
            aRecord.RoomID = 0;
            int.TryParse(TextBox12.Text, out aRecord.RoomID);
            aRecord.RoomNO = TextBox13.Text;
            aRecord.BookingDate = TextBox14.Text;
            aRecord.CheckInDate = TextBox15.Text;
            aRecord.CheckOutDate = TextBox16.Text;
            aRecord.PaymentStatus = TextBox19.Text;

            Cost aCost = new Cost();
            aCost.TotalCost = 0;
            float.TryParse(TextBox18.Text, out aCost.TotalCost);
            aCost.Due = 0;
            float.TryParse(TextBox20.Text, out aCost.Due);
            aCost.LastPayment = 0;
            float.TryParse(TextBox19.Text, out aCost.LastPayment);

            
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

            ReservationBLL aReservationBLL = new ReservationBLL();
            bool Result = aReservationBLL.saveReservationInfoBLL(aCustomer, aRecord, aCost);
            if (Result)
               
            {
                 System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Reservation Confirmed')</SCRIPT>");
                Server.Transfer("Reservation.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error when saving Reservation')</SCRIPT>");
            }

        }

        protected void btnSave_reservation_Click(object sender, EventArgs e)
        {
             BtnSave_Click();
            
        }

        protected void btnUpdate_Rservation_Click(object sender, EventArgs e)
        {
            string gender = drpGenderSelection.Value;
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_Reservation.Text, out aCustomer.Id);
            aCustomer.Name = TextBox2.Text;
            aCustomer.DOB = TextBox3.Text;
            aCustomer.Age = 0;
            int.TryParse(TextBox4.Text, out aCustomer.Age);
            aCustomer.Sex = gender;
            aCustomer.Profession = TextBox5.Text;
            aCustomer.ProfessionAddress = TextBox6.Text;
            aCustomer.PermanentAddress = TextBox7.Text;
            aCustomer.PresentAddress = TextPresentAdd.Text;
            aCustomer.ContactNo = TextBox8.Text;
            aCustomer.Email = TextBox9.Text;
            aCustomer.NIDorPassportNo = TextBox11.Text;

            Record aRecord = new Record();
            aRecord.RoomID = 0;
            int.TryParse(TextBox12.Text, out aRecord.RoomID);
            aRecord.RoomNO = TextBox13.Text;
            aRecord.BookingDate = TextBox14.Text;
            aRecord.CheckInDate = TextBox15.Text;
            aRecord.CheckOutDate = TextBox16.Text;
            aRecord.PaymentStatus = TextBox19.Text;

            Cost aCost = new Cost();
            aCost.TotalCost = 0;
            float.TryParse(TextBox18.Text, out aCost.TotalCost);
            aCost.Due = 0;
            float.TryParse(TextBox20.Text, out aCost.Due);
            aCost.LastPayment = 0;
            float.TryParse(TextBox19.Text, out aCost.LastPayment);


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

            ReservationBLL aReservationBLL = new ReservationBLL();
            bool Result = aReservationBLL.updateReservationInfoBLL(aCustomer, aRecord, aCost);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Reservation Updated Successfully')</SCRIPT>");
                Server.Transfer("Reservation.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error when updateing Reservation')</SCRIPT>");
            }

        }

        protected void btnCancel_Reservation_Click(object sender, EventArgs e)
        {
            string gender = drpGenderSelection.Value;
            Customer aCustomer = new Customer();
            aCustomer.Id = 0;
            int.TryParse(TxtID_Reservation.Text, out aCustomer.Id);
            aCustomer.Name = TextBox2.Text;
            aCustomer.DOB = TextBox3.Text;
            aCustomer.Age = 0;
            int.TryParse(TextBox4.Text, out aCustomer.Age);
            aCustomer.Sex = gender;
            aCustomer.Profession = TextBox5.Text;
            aCustomer.ProfessionAddress = TextBox6.Text;
            aCustomer.PermanentAddress = TextBox7.Text;
            aCustomer.PresentAddress = TextPresentAdd.Text;
            aCustomer.ContactNo = TextBox8.Text;
            aCustomer.Email = TextBox9.Text;
            aCustomer.NIDorPassportNo = TextBox11.Text;

            Record aRecord = new Record();
            aRecord.RoomID = 0;
            int.TryParse(TextBox12.Text, out aRecord.RoomID);
            aRecord.RoomNO = TextBox13.Text;
            aRecord.BookingDate = TextBox14.Text;
            aRecord.CheckInDate = TextBox15.Text;
            aRecord.CheckOutDate = TextBox16.Text;
            aRecord.PaymentStatus = TextBox19.Text;

            Cost aCost = new Cost();
            aCost.TotalCost = 0;
            float.TryParse(TextBox18.Text, out aCost.TotalCost);
            aCost.Due = 0;
            float.TryParse(TextBox20.Text, out aCost.Due);
            aCost.LastPayment = 0;
            float.TryParse(TextBox19.Text, out aCost.LastPayment);


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
            ReservationBLL aReservationBLL = new ReservationBLL();
            bool Result = aReservationBLL.cancelReservationInfBLL(aCustomer, aRecord, aCost);
            if (Result)

            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Reservation Cancelled Successfully')</SCRIPT>");
                Server.Transfer("Reservation.aspx", false);
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Error when updateing Reservation')</SCRIPT>");
            }
        }
    }
}