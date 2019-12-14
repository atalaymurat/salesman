// Add the following code if you want the name of the file appear on select
$(document).on('ready turbolinks:load', function() {
  $('.custom-file-input').on('change', function() {
    var fileName = $(this)
      .val()
      .split('\\')
      .pop();       
    $(this)
      .siblings('.custom-file-label')
      .addClass('selected')
      .html(fileName);
  });
});
