// Display "loading" icon when the form is submitted
$(document).ready(function() {
  $('#contact_message_submit').click(function() {
    $("#result").html("<img src='images/loading.gif' />");
  });
});