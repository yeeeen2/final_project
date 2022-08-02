
$(document).ready(function(){

	$('.regi_cancel').click(function(){
		$('.pop_dimm, .regi_cancel_pop').fadeIn();
	});

	$('.regi_cancel_pop p.btn_pop_close a, .regi_cancel_pop_btns li.btn2 a').click(function(){
		$('.pop_dimm, .regi_cancel_pop').fadeOut();
	});

});