$(document).ready(function() {
  $('#show-locations').on('click', function(){
    $('#location-list').slideDown();
    $(this).hide();
    $('#hide-locations').show();
  });
  $('#hide-locations').on('click', function(){
    $('#location-list').slideUp();
    $(this).hide();
    $('#show-locations').show();
  });
});
