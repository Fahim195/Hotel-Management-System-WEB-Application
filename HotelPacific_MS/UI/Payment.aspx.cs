using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelPacific_MS.UI
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPayment_payment.Attributes.Add("onclick", "calculateDue()");
        }

        protected void btnSave_Payment_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Payment_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Payment_Click(object sender, EventArgs e)
        {

        }
    }
}