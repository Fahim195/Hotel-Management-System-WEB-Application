$('#admminUserMasterPage_txtDoB_checkOut').datepicker();
$('#admminUserMasterPage_txtReservationDate_checkOut').datepicker();
$('#admminUserMasterPage_txtCheckInDate_checkOut').datepicker();
$('#admminUserMasterPage_txtCheckOutDate_checkOut').datepicker();
function paymentChange() {
    setInterval(DueCalulate, 500);
}
function DueCalulate() {
    var TotalCost = document.getElementById('admminUserMasterPage_txtTotalCost_checkOut').value;
    var Payment = document.getElementById('admminUserMasterPage_txtPayment_checkOut').value;
    var due = TotalCost - Payment;
    document.getElementById('admminUserMasterPage_txtDue_checkOut').value = due;
}
$('#btnClear_checkOut').click(function () {
    $("input[type=text]").val("");
});