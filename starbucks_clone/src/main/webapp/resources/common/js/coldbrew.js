
$(document).ready(function(){

	var myWin = $(window).width();

	/*function a(){
		$('.visual_txt1').transition({
			opacity: 1,
			y : '-10px'
		}, 500, 'ease');
	}
	function b(){
		$('.visual_txt2').transition({
			opacity: 1,
			y : '-10px'
		}, 500, 'ease');
	}
	function c(){
		$('.visual_txt3').transition({
			opacity: 1,
			y : '-10px'
		}, 500, 'ease');
	}
	setTimeout(a, 100), setTimeout(b, 200), setTimeout(c, 400)*/

	function a() {
		$(".visual_txt1").addClass("move")
	}

	function b() {
		$(".visual_txt2").addClass("move")
	}

	function c() {
		$(".visual_txt3").addClass("move")
	}

	function d() {
		$(".visual_logo").addClass("move")
	}
	setTimeout(a, 100), setTimeout(b, 300), setTimeout(c, 500), setTimeout(d, 500)

	var coldType_slide = new Swiper('.coldType_slider', {
        slidesPerView: 'auto',
		spaceBetween: 53,
		breakpoints: {
			320: {
			  spaceBetween: 10
			},
			480: {
			  spaceBetween: 20
			},
			640: {
			  spaceBetween: 30
			}
		  }
    });

	if (myWin > 960) {
		$('.btn_bnr01').click(function(){
			$('html, body').animate({
				scrollTop:$('#coldTypeWrap').offset().top - 123
			}, 600);
		});
	} else {
		$('.btn_bnr01').click(function(){
			$('html, body').animate({
				scrollTop:$('#coldTypeWrap').offset().top - 69
			}, 600);
		});
	}
	
	$('.btn_bnr02').click(function(){
		$(this).parent().fadeOut();
	});

	var controller = $.superscrollorama({
		triggerAtCenter: true
	});

	if (myWin > 1280) {

		controller.addTween(10, TweenMax.from($('.bean1_txt1'), 1.5, {css:{right:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.to($('.bean1_txt1'), 1.5, {css:{right:'-23px', opacity:1}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.from($('.bean1_txt2'), 2.0, {css:{right:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.to($('.bean1_txt2'), 2.0, {css:{right:'64px', opacity:1}, ease: Quad.easeOut}), 1, 1200);

		controller.addTween(10, TweenMax.from($('.bean2_txt1'), 1.5, {css:{left:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1300);
		controller.addTween(10, TweenMax.to($('.bean2_txt1'), 1.5, {css:{left:'-22px', opacity:1}, ease: Quad.easeOut}), 1, 1300);
		controller.addTween(10, TweenMax.from($('.bean2_txt2'), 2.0, {css:{left:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1300);
		controller.addTween(10, TweenMax.to($('.bean2_txt2'), 2.0, {css:{left:'140px', opacity:1}, ease: Quad.easeOut}), 1, 1300);

		controller.addTween(10, TweenMax.from($('.bean3_txt1'), 1.5, {css:{right:'-300px', opacity:0}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.to($('.bean3_txt1'), 1.5, {css:{right:'323px', opacity:1}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.from($('.bean3_txt2'), 2.0, {css:{right:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.to($('.bean3_txt2'), 2.0, {css:{right:'-60px', opacity:1}, ease: Quad.easeOut}), 1, 1400);

		controller.addTween(10, TweenMax.from($('.bean4_txt1'), 1.5, {css:{top:'42px', opacity:0}, ease: Quad.easeOut}), 1, 2200);
		controller.addTween(10, TweenMax.to($('.bean4_txt1'), 1.5, {css:{top:'142px', opacity:1}, ease: Quad.easeOut}), 1, 2200);
		controller.addTween(10, TweenMax.from($('.bean4_txt2'), 2.0, {css:{top:'438px', opacity:0}, ease: Quad.easeOut}), 1, 2200);
		controller.addTween(10, TweenMax.to($('.bean4_txt2'), 2.0, {css:{top:'338px', opacity:1}, ease: Quad.easeOut}), 1, 2200);

		controller.addTween(10, TweenMax.from($('.coldInfo'), 1.5, {css:{top:'58px', opacity:0}, ease: Quad.easeOut}), 1, 3000);
		controller.addTween(10, TweenMax.to($('.coldInfo'), 1.5, {css:{top:'58px', opacity:1}, ease: Quad.easeOut}), 1, 3000);

	} else if ((myWin > 960) && (myWin <= 1280)) {
		
		controller.addTween(10, TweenMax.from($('.bean1_txt1'), 1.5, {css:{right:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.to($('.bean1_txt1'), 1.5, {css:{right:'0px', opacity:1}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.from($('.bean1_txt2'), 2.0, {css:{right:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.to($('.bean1_txt2'), 2.0, {css:{right:'84px', opacity:1}, ease: Quad.easeOut}), 1, 1200);

		controller.addTween(10, TweenMax.from($('.bean2_txt1'), 1.5, {css:{left:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1300);
		controller.addTween(10, TweenMax.to($('.bean2_txt1'), 1.5, {css:{left:'0', opacity:1}, ease: Quad.easeOut}), 1, 1300);
		controller.addTween(10, TweenMax.from($('.bean2_txt2'), 2.0, {css:{left:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1300);
		controller.addTween(10, TweenMax.to($('.bean2_txt2'), 2.0, {css:{left:'162px', opacity:1}, ease: Quad.easeOut}), 1, 1300);

		controller.addTween(10, TweenMax.from($('.bean3_txt1'), 1.5, {css:{right:'-300px', opacity:0}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.to($('.bean3_txt1'), 1.5, {css:{right:'383px', opacity:1}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.from($('.bean3_txt2'), 2.0, {css:{right:'-700px', opacity:0}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.to($('.bean3_txt2'), 2.0, {css:{right:'0px', opacity:1}, ease: Quad.easeOut}), 1, 1400);

		controller.addTween(10, TweenMax.from($('.bean4_txt1'), 1.5, {css:{top:'42px', opacity:0}, ease: Quad.easeOut}), 1, 2200);
		controller.addTween(10, TweenMax.to($('.bean4_txt1'), 1.5, {css:{top:'142px', opacity:1}, ease: Quad.easeOut}), 1, 2200);
		controller.addTween(10, TweenMax.from($('.bean4_txt2'), 2.0, {css:{top:'438px', opacity:0}, ease: Quad.easeOut}), 1, 2200);
		controller.addTween(10, TweenMax.to($('.bean4_txt2'), 2.0, {css:{top:'338px', opacity:1}, ease: Quad.easeOut}), 1, 2200);

		controller.addTween(10, TweenMax.from($('.coldInfo'), 1.5, {css:{top:'58px', opacity:0}, ease: Quad.easeOut}), 1, 2600);
		controller.addTween(10, TweenMax.to($('.coldInfo'), 1.5, {css:{top:'58px', opacity:1}, ease: Quad.easeOut}), 1, 2600);

	} else if ((myWin > 640) && (myWin <= 960)) {

		controller.addTween(10, TweenMax.from($('.bean1_txt1'), 1.5, {css:{top:'169px', opacity:0}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.to($('.bean1_txt1'), 1.5, {css:{top:'119px', opacity:1}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.from($('.bean1_txt2'), 2.0, {css:{top:'321px', opacity:0}, ease: Quad.easeOut}), 1, 1200);
		controller.addTween(10, TweenMax.to($('.bean1_txt2'), 2.0, {css:{top:'221px', opacity:1}, ease: Quad.easeOut}), 1, 1200);

		controller.addTween(10, TweenMax.from($('.bean2_txt1'), 1.5, {css:{top:'169px', opacity:0}, ease: Quad.easeOut}), 1, 1600);
		controller.addTween(10, TweenMax.to($('.bean2_txt1'), 1.5, {css:{top:'119px', opacity:1}, ease: Quad.easeOut}), 1, 1600);
		controller.addTween(10, TweenMax.from($('.bean2_txt2'), 2.0, {css:{top:'321px', opacity:0}, ease: Quad.easeOut}), 1, 1600);
		controller.addTween(10, TweenMax.to($('.bean2_txt2'), 2.0, {css:{top:'221px', opacity:1}, ease: Quad.easeOut}), 1, 1600);

		controller.addTween(10, TweenMax.from($('.bean3_txt1'), 1.5, {css:{top:'169px', opacity:0}, ease: Quad.easeOut}), 1, 2000);
		controller.addTween(10, TweenMax.to($('.bean3_txt1'), 1.5, {css:{top:'119px', opacity:1}, ease: Quad.easeOut}), 1, 2000);
		controller.addTween(10, TweenMax.from($('.bean3_txt2'), 2.0, {css:{top:'280px', opacity:0}, ease: Quad.easeOut}), 1, 2000);
		controller.addTween(10, TweenMax.to($('.bean3_txt2'), 2.0, {css:{top:'180px', opacity:1}, ease: Quad.easeOut}), 1, 2000);

		controller.addTween(10, TweenMax.from($('.bean4_txt1'), 1.5, {css:{top:'-19px', opacity:0}, ease: Quad.easeOut}), 1, 2400);
		controller.addTween(10, TweenMax.to($('.bean4_txt1'), 1.5, {css:{top:'89px', opacity:1}, ease: Quad.easeOut}), 1, 2400);
		controller.addTween(10, TweenMax.from($('.bean4_txt2'), 2.0, {css:{top:'355px', opacity:0}, ease: Quad.easeOut}), 1, 2400);
		controller.addTween(10, TweenMax.to($('.bean4_txt2'), 2.0, {css:{top:'255px', opacity:1}, ease: Quad.easeOut}), 1, 2400);

		controller.addTween(10, TweenMax.from($('.coldInfo'), 1.5, {css:{top:'40px', opacity:0}, ease: Quad.easeOut}), 1, 2800);
		controller.addTween(10, TweenMax.to($('.coldInfo'), 1.5, {css:{top:'40px', opacity:1}, ease: Quad.easeOut}), 1, 2800);

	} else if ((myWin > 480) && (myWin <= 640)) {

		controller.addTween(10, TweenMax.from($('.bean1_txt1'), 1.5, {css:{top:'219px', opacity:0}, ease: Quad.easeOut}), 1, 1000);
		controller.addTween(10, TweenMax.to($('.bean1_txt1'), 1.5, {css:{top:'119px', opacity:1}, ease: Quad.easeOut}), 1, 1000);
		controller.addTween(10, TweenMax.from($('.bean1_txt2'), 2.0, {css:{top:'271px', opacity:0}, ease: Quad.easeOut}), 1, 1000);
		controller.addTween(10, TweenMax.to($('.bean1_txt2'), 2.0, {css:{top:'221px', opacity:1}, ease: Quad.easeOut}), 1, 1000);

		controller.addTween(10, TweenMax.from($('.bean2_txt1'), 1.5, {css:{top:'219px', opacity:0}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.to($('.bean2_txt1'), 1.5, {css:{top:'119px', opacity:1}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.from($('.bean2_txt2'), 2.0, {css:{top:'271px', opacity:0}, ease: Quad.easeOut}), 1, 1400);
		controller.addTween(10, TweenMax.to($('.bean2_txt2'), 2.0, {css:{top:'221px', opacity:1}, ease: Quad.easeOut}), 1, 1400);

		controller.addTween(10, TweenMax.from($('.bean3_txt1'), 1.5, {css:{top:'219px', opacity:0}, ease: Quad.easeOut}), 1, 2100);
		controller.addTween(10, TweenMax.to($('.bean3_txt1'), 1.5, {css:{top:'119px', opacity:1}, ease: Quad.easeOut}), 1, 2100);
		controller.addTween(10, TweenMax.from($('.bean3_txt2'), 2.0, {css:{top:'230px', opacity:0}, ease: Quad.easeOut}), 1, 2100);
		controller.addTween(10, TweenMax.to($('.bean3_txt2'), 2.0, {css:{top:'180px', opacity:1}, ease: Quad.easeOut}), 1, 2100);

		controller.addTween(10, TweenMax.from($('.bean4_txt1'), 1.5, {css:{top:'159px', opacity:0}, ease: Quad.easeOut}), 1, 2500);
		controller.addTween(10, TweenMax.to($('.bean4_txt1'), 1.5, {css:{top:'259px', opacity:1}, ease: Quad.easeOut}), 1, 2500);
		controller.addTween(10, TweenMax.from($('.bean4_txt2'), 2.0, {css:{top:'555px', opacity:0}, ease: Quad.easeOut}), 1, 2500);
		controller.addTween(10, TweenMax.to($('.bean4_txt2'), 2.0, {css:{top:'455px', opacity:1}, ease: Quad.easeOut}), 1, 2500);

		controller.addTween(10, TweenMax.from($('.coldInfo'), 1.5, {css:{top:'40px', opacity:0}, ease: Quad.easeOut}), 1, 3000);
		controller.addTween(10, TweenMax.to($('.coldInfo'), 1.5, {css:{top:'40px', opacity:1}, ease: Quad.easeOut}), 1, 3000);

	} else if ((myWin > 375) && (myWin <= 480)) {

		controller.addTween(10, TweenMax.from($('.bean1_txt1'), 1.5, {css:{top:'149px', opacity:0}, ease: Quad.easeOut}), 1, 400);
		controller.addTween(10, TweenMax.to($('.bean1_txt1'), 1.5, {css:{top:'49px', opacity:1}, ease: Quad.easeOut}), 1, 400);
		controller.addTween(10, TweenMax.from($('.bean1_txt2'), 2.0, {css:{top:'181px', opacity:0}, ease: Quad.easeOut}), 1, 400);
		controller.addTween(10, TweenMax.to($('.bean1_txt2'), 2.0, {css:{top:'131px', opacity:1}, ease: Quad.easeOut}), 1, 400);

		controller.addTween(10, TweenMax.from($('.bean2_txt1'), 1.5, {css:{top:'149px', opacity:0}, ease: Quad.easeOut}), 1, 1100);
		controller.addTween(10, TweenMax.to($('.bean2_txt1'), 1.5, {css:{top:'49px', opacity:1}, ease: Quad.easeOut}), 1, 1100);
		controller.addTween(10, TweenMax.from($('.bean2_txt2'), 2.0, {css:{top:'181px', opacity:0}, ease: Quad.easeOut}), 1, 1100);
		controller.addTween(10, TweenMax.to($('.bean2_txt2'), 2.0, {css:{top:'131px', opacity:1}, ease: Quad.easeOut}), 1, 1100);

		controller.addTween(10, TweenMax.from($('.bean3_txt1'), 1.5, {css:{top:'149px', opacity:0}, ease: Quad.easeOut}), 1, 1500);
		controller.addTween(10, TweenMax.to($('.bean3_txt1'), 1.5, {css:{top:'49px', opacity:1}, ease: Quad.easeOut}), 1, 1500);
		controller.addTween(10, TweenMax.from($('.bean3_txt2'), 2.0, {css:{top:'157px', opacity:0}, ease: Quad.easeOut}), 1, 1500);
		controller.addTween(10, TweenMax.to($('.bean3_txt2'), 2.0, {css:{top:'107px', opacity:1}, ease: Quad.easeOut}), 1, 1500);

		controller.addTween(10, TweenMax.from($('.bean4_txt1'), 1.5, {css:{top:'59px', opacity:0}, ease: Quad.easeOut}), 1, 1900);
		controller.addTween(10, TweenMax.to($('.bean4_txt1'), 1.5, {css:{top:'159px', opacity:1}, ease: Quad.easeOut}), 1, 1900);
		controller.addTween(10, TweenMax.from($('.bean4_txt2'), 2.0, {css:{top:'435px', opacity:0}, ease: Quad.easeOut}), 1, 1900);
		controller.addTween(10, TweenMax.to($('.bean4_txt2'), 2.0, {css:{top:'335px', opacity:1}, ease: Quad.easeOut}), 1, 1900);

		controller.addTween(10, TweenMax.from($('.coldInfo'), 1.5, {css:{top:'40px', opacity:0}, ease: Quad.easeOut}), 1, 2300);
		controller.addTween(10, TweenMax.to($('.coldInfo'), 1.5, {css:{top:'40px', opacity:1}, ease: Quad.easeOut}), 1, 2300);

	} else {

		controller.addTween(10, TweenMax.from($('.bean1_txt1'), 1.5, {css:{top:'149px', opacity:0}, ease: Quad.easeOut}), 1, 300);
		controller.addTween(10, TweenMax.to($('.bean1_txt1'), 1.5, {css:{top:'49px', opacity:1}, ease: Quad.easeOut}), 1, 300);
		controller.addTween(10, TweenMax.from($('.bean1_txt2'), 2.0, {css:{top:'271px', opacity:0}, ease: Quad.easeOut}), 1, 300);
		controller.addTween(10, TweenMax.to($('.bean1_txt2'), 2.0, {css:{top:'121px', opacity:1}, ease: Quad.easeOut}), 1, 300);

		controller.addTween(10, TweenMax.from($('.bean2_txt1'), 1.5, {css:{top:'149px', opacity:0}, ease: Quad.easeOut}), 1, 700);
		controller.addTween(10, TweenMax.to($('.bean2_txt1'), 1.5, {css:{top:'49px', opacity:1}, ease: Quad.easeOut}), 1, 700);
		controller.addTween(10, TweenMax.from($('.bean2_txt2'), 2.0, {css:{top:'271px', opacity:0}, ease: Quad.easeOut}), 1, 700);
		controller.addTween(10, TweenMax.to($('.bean2_txt2'), 2.0, {css:{top:'121px', opacity:1}, ease: Quad.easeOut}), 1, 700);

		controller.addTween(10, TweenMax.from($('.bean3_txt1'), 1.5, {css:{top:'149px', opacity:0}, ease: Quad.easeOut}), 1, 1100);
		controller.addTween(10, TweenMax.to($('.bean3_txt1'), 1.5, {css:{top:'49px', opacity:1}, ease: Quad.easeOut}), 1, 1100);
		controller.addTween(10, TweenMax.from($('.bean3_txt2'), 2.0, {css:{top:'197px', opacity:0}, ease: Quad.easeOut}), 1, 1100);
		controller.addTween(10, TweenMax.to($('.bean3_txt2'), 2.0, {css:{top:'97px', opacity:1}, ease: Quad.easeOut}), 1, 1100);

		controller.addTween(10, TweenMax.from($('.bean4_txt1'), 1.5, {css:{top:'19px', opacity:0}, ease: Quad.easeOut}), 1, 1500);
		controller.addTween(10, TweenMax.to($('.bean4_txt1'), 1.5, {css:{top:'119px', opacity:1}, ease: Quad.easeOut}), 1, 1500);
		controller.addTween(10, TweenMax.from($('.bean4_txt2'), 2.0, {css:{top:'355px', opacity:0}, ease: Quad.easeOut}), 1, 1500);
		controller.addTween(10, TweenMax.to($('.bean4_txt2'), 2.0, {css:{top:'255px', opacity:1}, ease: Quad.easeOut}), 1, 1500);

		controller.addTween(10, TweenMax.from($('.coldInfo'), 1.5, {css:{top:'40px', opacity:0}, ease: Quad.easeOut}), 1, 2000);
		controller.addTween(10, TweenMax.to($('.coldInfo'), 1.5, {css:{top:'40px', opacity:1}, ease: Quad.easeOut}), 1, 2000);

	}
});