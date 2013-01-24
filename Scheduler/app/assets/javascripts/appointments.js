  $(document).ready(function() {
  timepicker_settings = {'minTime':'7 am', maxTime:'9 pm'}
    $(".field input#endTime").timepicker(timepicker_settings);

    $('.field input#startTime').timepicker(timepicker_settings);
  })
