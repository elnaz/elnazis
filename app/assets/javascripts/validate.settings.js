(function ($) {	
  $(function () { //On load
    $.extend($.validator.messages, {
      required: 'Required',
      email: 'Invalid email address'
    })
  });
})(jQuery);