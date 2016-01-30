$('#send_email').submit(function(){
var email = $('.guest_email').val();
var url = "/invite_guest";
debugger;
$.get(url, email);
});
