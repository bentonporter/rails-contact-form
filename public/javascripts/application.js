// Display the "loading" icon when you press the "Send" button on the Contact form
$(document).ready(function() {
  $('#contact_message_submit').click(function() {
    $("#result").html("<img src='images/loading.gif' />");
  });
});