$(document).on('turbolinks:load', function() {

  $('form').on('click', '.remove_record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').hide();
    return event.preventDefault();
  });
  
  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    element = $(this).data('element') // This will return ".fields-element" string which you can concatenate on the next line
    $('.' + element).append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });
});