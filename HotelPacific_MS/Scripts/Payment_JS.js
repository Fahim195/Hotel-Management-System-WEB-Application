$('#admminUserMasterPage_txtDoB_payment').datepicker();
$('#admminUserMasterPage_txtReservationDate_payment').datepicker();
$('#admminUserMasterPage_txtCheckInDate_payment').datepicker();
$('#admminUserMasterPage_txtCheckOutDate_payment').datepicker();
function paymentChange() {
    setInterval(DueCalulate, 500);
}
function DueCalulate() {
    var TotalCost = document.getElementById('admminUserMasterPage_txtTotalCost_payment').value;
    var Payment = document.getElementById('admminUserMasterPage_txtPayment_payment').value;
    var due = TotalCost - Payment;
    document.getElementById('admminUserMasterPage_txtDue_payment').value = due;
}
$('#btnClear_payment').click(function () {
    $("input[type=text]").val("");
});

function calculateDue()
{
    setInterval(dueCalculate, 500);
}
function dueCalculate() {
    var TotalCost = document.getElementById('admminUserMasterPage_txtTotalCost_payment').value;
    var Payment = document.getElementById('admminUserMasterPage_txtPayment_payment').value;
    var Discount = document.getElementById('admminUserMasterPage_txtDiscount_payment').value;
    if (Payment == "") {
        Payment = 0;
    }
    if (Discount == "") {
        Discount = 0;
    }
    var due = TotalCost -Payment-Discount;
    document.getElementById('admminUserMasterPage_txtDue_payment').value = due;
}

$('#admminUserMasterPage_txtDiscount_payment').click(function () {
    setInterval(dueCalculate, 500);
});
