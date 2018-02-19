$('#admminUserMasterPage_txtDoB_checkIn').datepicker();
$('#admminUserMasterPage_txtReservationDate_checkIn').datepicker();
$('#admminUserMasterPage_txtCheckInDate_checkIn').datepicker();
$('#admminUserMasterPage_txtCheckOutDate_checkIn').datepicker();
function paymentChange() {
    setInterval(DueCalulate, 500);
}
function DueCalulate() {
    var TotalCost = document.getElementById('admminUserMasterPage_txtTotalCost_checkIn').value;
    var Payment = document.getElementById('admminUserMasterPage_txtPayment_checkIn').value;
    var due = TotalCost - Payment;
    document.getElementById('admminUserMasterPage_txtDue_checkIn').value = due;
}
$('#btnClear_CheckIn').click(function () {
    $("input[type=text]").val("");
});