(function ($) {		
	$(function () { //On load
        $('#menu-toggle').click(function (e) {		
			$('#menu').show().css({ right: '0px'});
			e.stopImmediatePropagation();
		});
		
		$('html').on('click touchstart', function (e) {
			if($('#menu').is(':visible') && !$('#menu').is(e.target)){
				$('#menu').hide().css({ right: '-300px' });						
			}						
		});
    });	
})(jQuery);