;(function (global, $) {
	$('.pantone_close').on('click', function () {
		$('.pop_pantone').hide();
		$('.pop_dimm').hide();
	});
	
	$('.pantone_open').on('click', function () {
		$('.pop_pantone').show();
		$('.pop_dimm').show();
	});
	
	var $gift_quick = $('.gift_quick_menu a');
	$gift_quick.on('click', function (e) {
		var scrData = $(e.target).attr('data-scr');
		var $this = $(this);
		var gnb_height = $('.sub_gnb_wrap:visible').height() || $('.tablet_gnb_wrap:visible').height();
		
		$this.addClass('active');
		$('html, body').stop().animate({
			scrollTop: $('.' + scrData).eq(0).offset().top - gnb_height
		}, 500, function () {
			$this.removeClass('active');
		});
	});
})(window, window.jQuery);