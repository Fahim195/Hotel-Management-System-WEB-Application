$(window).on("load", GetAllProperties);

function GetAllProperties() {
    $.ajax({
        url: 'Reservation.aspx/predictReservationID',
        method: 'POST',
        contentType: 'application/json',
        dataType: 'json',
        success: function (data) {
            document.getElementById('admminUserMasterPage_TxtID_Reservation').value = data.d;
        },
        error: function (data) {

        }
    });
}
function noOfDays() {

    var a = document.getElementById('admminUserMasterPage_TextBox16');
    var b = document.getElementById('admminUserMasterPage_TextBox15');
    if (roomRent != null) {
        var roomCost = roomRent;
    }

    if (a == null || b == null) {
        alert('its showing null ID ??');
    }
    else {
        var c = a.value;
        var d = b.value;
        var startDate = new Date(c);
        var endDate = new Date(d);
        var NoOfDays = Math.round((startDate - endDate) / 86400000);
        if (NoOfDays >= 0) {
            document.getElementById('admminUserMasterPage_TextBox17').value = NoOfDays;
            document.getElementById('admminUserMasterPage_TextBox16').style.borderBottomColor = 'silver';
            document.getElementById('admminUserMasterPage_TextBox15').style.borderBottomColor = 'silver';
            totalCostCalculate();
            DueCalulate();

        }
        else {
            document.getElementById('admminUserMasterPage_TextBox17').value = "";
            document.getElementById('admminUserMasterPage_TextBox16').style.borderBottomColor = 'red';
            document.getElementById('admminUserMasterPage_TextBox15').style.borderBottomColor = 'red';

        }

    }

}
function paymentChange() {
    setInterval(DueCalulate, 1000);
}
function DueCalulate() {
    var TotalCost = document.getElementById('admminUserMasterPage_TextBox18').value;
    var Payment = document.getElementById('admminUserMasterPage_TextBox19').value;
    var due = TotalCost - Payment;
    document.getElementById('admminUserMasterPage_TextBox20').value = due;
}
function ageCalculate() {
    var dOB = document.getElementById('admminUserMasterPage_TextBox3').value;
    if (dOB != "") {
        var dOB = document.getElementById('admminUserMasterPage_TextBox3').value;
        var today = new Date();
        var doB_Date = new Date(dOB);
        var Age = Math.round(((today - doB_Date) / 86400000) / 365);
        document.getElementById('admminUserMasterPage_TextBox4').value = Age;
    }
    else {
        document.getElementById('admminUserMasterPage_TextBox4').value = "";
    }
}
$('.DoB').datepicker();
$('.ReservationDate').datepicker();
$('.CheckInDate').datepicker();
$('.CheckOutDate').datepicker();
$("#admminUserMasterPage_GridView1 tr").click(function () {
    var i;
    var j = [];
    var arr = 0;
    $(this).find('td').each(function (e) {
        i = $(this).text();
        if (i != null) {
            j[arr] = i;
        }
        arr = arr + 1;
    });
    document.getElementById('admminUserMasterPage_TextBox12').value = j[0];
    document.getElementById('admminUserMasterPage_TextBox13').value = j[1];
    var eid = j[0];
    getRoomRent(eid);
    $.ajax({
        url: 'Reservation.aspx/RoomVacancyInformation',
        method: 'POST',
        contentType: 'application/json',
        data: '{Room_id:' + eid + '}',
        dataType: 'json',
        success: function (data) {
            $("#admminUserMasterPage_GridView2").empty();
            $("#admminUserMasterPage_GridView2").append("<tr><th>Check In</th> <th>Check Out</th></tr>");
            if (data.d.length > 0) { 
                for (var i = 0; i < data.d.length; i++) {
                    $("#admminUserMasterPage_GridView2").append("<tr><td>" + data.d[i].CheckIn + "</td> <td>" + data.d[i].CheckOut + "</td> <tr>");
                }
            }
        },
        error: function (data) {
            alert('err');
        }
    });
    totalCostCalculate();
    DueCalulate();

});

$('#btnReservation_Clear').click(function () {
    $("input[type=text]").val("");
    $.ajax({
        url: 'Reservation.aspx/predictReservationID',
        method: 'POST',
        contentType: 'application/json', 
        dataType: 'json',
        success: function (data) {
            document.getElementById('admminUserMasterPage_TxtID_Reservation').value = data.d;
        },
        error: function (data) {
            
        }
    });
    $('#admminUserMasterPage_TextBox13').click(function () {
        $(this).focus();
    })

});
function roomIdTextBoxChange() {
    alert('worked');

}
var roomRent = "";
function getRoomRent(Room_ID) {
    $.ajax({
        url: 'Reservation.aspx/getRoomRent',
        async: false,
        method: 'POST',
        contentType: 'application/json',
        data: '{Room_id:' + Room_ID + '}',
        dataType: 'json',
        success: function (data) {
            roomRent = data.d;
        },
        error: function (data) {
            alert('error In getRoomRent');
        }
    });
}
function totalCostCalculate() {
    var noOfDays = document.getElementById('admminUserMasterPage_TextBox17').value;
    var payment = document.getElementById('admminUserMasterPage_TextBox19').value;
    if (payment == null) {
        payment = 0;
    }
    var totalCost = (noOfDays * roomRent) - payment;
    document.getElementById('admminUserMasterPage_TextBox18').value = totalCost;
}