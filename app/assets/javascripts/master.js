var ready = function(){
  //mobile menu
  $('#menu-toggle').on('click', function (e) {
    $('#menu').slideDown(30, 'linear').css({ right: '0px'});
    e.stopPropagation();
    return false;
  });
  $('html').on('click touchstart', function (e) {
	if($('#menu').is(':visible') && $('#menu').has(e.target).length === 0){
		$('#menu').hide().css({ right: '-300px' });
	}
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
