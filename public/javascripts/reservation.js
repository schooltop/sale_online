

$(document).ready(function () {
    $("#datepicker").datepicker({
        dateFormat: 'mm/dd/yy',
        minDate: new Date(),
        prevText: '',
        nextText: '',
        onSelect: function (selectedDate, instance) {
            var newDate = $.datepicker.parseDate(
						    instance.settings.dateFormat,
						    selectedDate, instance.settings);
            newDate.setDate(newDate.getDate() + 1);
            
            $("#datepicker2").datepicker("option", "minDate", newDate);
            $("#datepicker2").datepicker("setDate", newDate);
            
        }
    });

    var nextDefaultDate = new Date();
    nextDefaultDate.setDate(nextDefaultDate.getDate() + 1);

    $("#datepicker2").datepicker({
        dateFormat: 'mm/dd/yy', minDate: nextDefaultDate, prevText: '', nextText: ''
    });

    //    AlessandroG: Scommentare per mandare in produzione la reservation
    $('.reservationBtnImage').bind('click', function (event) {
        event.preventDefault();
        $('#prenotaContainer').show();
        $('#numberOfRooms').val(1);
        $('#numberOfGuests').val(2);
        $("#datepicker").datepicker("setDate", new Date());
        $("#datepicker2").datepicker("setDate", new Date());
    });

    $('#prenotaContainer #close').bind('click', function (event) {
        event.preventDefault();
        $('#prenotaContainer').hide();
    });

    $("img.ui-datepicker-trigger").headerFooterReplace();
});
function reservation() {
    var dateCheckIn = $("#datepicker").datepicker("getDate");
    var dateCheckOut = $("#datepicker2").datepicker("getDate");

   
    var checkDate = true;
    var difference = dateCheckOut.getTime() - dateCheckIn.getTime();
    if (difference < (1000 * 60 * 60 * 24)) {
        alert("CheckOut date must be greater than checkIn date");
        checkDate = false;
    }
    if (checkDate == true) {
        dateCheckIn = $.datepicker.formatDate('mm/dd/yy', dateCheckIn);
        dateCheckOut = $.datepicker.formatDate('mm/dd/yy', dateCheckOut);
        var numberOfRooms = $('#numberOfRooms').val();
        var numberOfGuests = $('#numberOfGuests').val();
        var urlSubmit = destinationURL + '?propertyCode=' + destination + '&fromDate=' + dateCheckIn + '&toDate=' + dateCheckOut + '&numberOfRooms=' + numberOfRooms + '&numberOfGuests=' + numberOfGuests + '&isSearch=False';
        location.href = urlSubmit;
    }
}