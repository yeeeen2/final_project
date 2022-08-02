$(document).ready(function(){

	var myWin = $(window).width();

	var controller = $.superscrollorama({
		triggerAtCenter: true
	});

	var nitroMove = new TimelineLite();

	var visualMotion = function() {
		var visualTxt01 = function() {
			$(".nitro_v_txt01").addClass("move");
		}

		var visualTxt02 = function() {
			$(".nitro_v_txt02").addClass("move");
		}
		visualTxt01();
		visualTxt02();
	}

	if (myWin > 1100) {
		
		visualMotion();

		nitroMove.set($('.nitro_i_tit'), {css:{opacity:0, top:'-20px'}})
		nitroMove.set($('.nitro_i_line'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt01'), {css:{opacity:0, top:'254px'}})
		nitroMove.set($('.nitro_i_txt02'), {css:{opacity:0}})
		nitroMove.set($('.nitro_liquid01'), {css:{opacity:0, height:'0'}})
		nitroMove.set($('.nitro_liquid02'), {css:{opacity:0, height:'0'}})
		nitroMove.set($('.nitro_cup'), {css:{height:'329px'}})
		nitroMove.set($('.nitro_i_txt03'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt04'), {css:{opacity:0}})


		$(window).on('scroll', function(){
			var nitroScroll = $(this).scrollTop();
			function nitroInfoMotion() {
				nitroMove.to($('.nitro_i_tit'), 1, {css:{opacity:1, top:'30px'}, ease: Quad.easeOut})
				nitroMove.to($('.nitro_i_line'), 2, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_i_txt01'), 1, {css:{opacity:1, top:'204px'}, ease: Quad.easeOut}, "-=2")
				nitroMove.to($('.nitro_i_txt02'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid01'), 0.5, {css:{opacity:1, height:'26px'}, ease: Linear.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid02'), 0.5, {css:{opacity:1, height:'62px'}, ease: Linear.easeOut}, "-=0.5")
				nitroMove.to($('.nitro_cup'), 4, {css:{height:'0'}, ease: Circ.easeOut})
				nitroMove.to($('.nitro_i_txt03'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=2.5")
				nitroMove.to($('.nitro_i_txt04'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=0.5")
			}
			if (nitroScroll > 1300) {
				nitroInfoMotion();
			}
		});

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt01'), 1.5, {css:{left:'-300px', opacity:0}, ease: Quad.easeOut}), 1, 2100);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt01'), 1.5, {css:{left:'208px', opacity:1}, ease: Quad.easeOut}), 1, 2100);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt02'), 1.5, {css:{right:'-300px', opacity:0}, ease: Quad.easeOut}), 1, 2400);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt02'), 1.5, {css:{right:'195px', opacity:1}, ease: Quad.easeOut}), 1, 2400);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt03'), 1.5, {css:{left:'-300px', opacity:0}, ease: Quad.easeOut}), 1, 2700);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt03'), 1.5, {css:{left:'256px', opacity:1}, ease: Quad.easeOut}), 1, 2700);

	} else if ((myWin > 960) && (myWin <= 1100)) {

		visualMotion();

		nitroMove.set($('.nitro_i_tit'), {css:{opacity:0, top:'-20px'}})
		nitroMove.set($('.nitro_i_line'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt01'), {css:{opacity:0, top:'254px'}})
		nitroMove.set($('.nitro_i_txt02'), {css:{opacity:0}})
		nitroMove.set($('.nitro_liquid01'), {css:{opacity:0, height:'0'}})
		nitroMove.set($('.nitro_liquid02'), {css:{opacity:0, height:'0'}})
		nitroMove.set($('.nitro_cup'), {css:{height:'329px'}})
		nitroMove.set($('.nitro_i_txt03'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt04'), {css:{opacity:0}})


		$(window).on('scroll', function(){
			var nitroScroll = $(this).scrollTop();
			function nitroInfoMotion() {
				nitroMove.to($('.nitro_i_tit'), 1, {css:{opacity:1, top:'30px'}, ease: Quad.easeOut})
				nitroMove.to($('.nitro_i_line'), 2, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_i_txt01'), 1, {css:{opacity:1, top:'204px'}, ease: Quad.easeOut}, "-=2")
				nitroMove.to($('.nitro_i_txt02'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid01'), 0.5, {css:{opacity:1, height:'26px'}, ease: Linear.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid02'), 0.5, {css:{opacity:1, height:'62px'}, ease: Linear.easeOut}, "-=0.5")
				nitroMove.to($('.nitro_cup'), 4, {css:{height:'0'}, ease: Circ.easeOut})
				nitroMove.to($('.nitro_i_txt03'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=2.5")
				nitroMove.to($('.nitro_i_txt04'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=0.5")
			}
			if (nitroScroll > 900) {
				nitroInfoMotion();
			}
		});

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt01'), 1.5, {css:{marginLeft:'-600px', opacity:0}, ease: Quad.easeOut}), 1, 1650);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt01'), 1.5, {css:{marginLeft:'-300px', opacity:1}, ease: Quad.easeOut}), 1, 1650);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt02'), 1.5, {css:{marginLeft:'450px', opacity:0}, ease: Quad.easeOut}), 1, 1950);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt02'), 1.5, {css:{marginLeft:'150px', opacity:1}, ease: Quad.easeOut}), 1, 1950);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt03'), 1.5, {css:{marginLeft:'-555px', opacity:0}, ease: Quad.easeOut}), 1, 2250);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt03'), 1.5, {css:{marginLeft:'-255px', opacity:1}, ease: Quad.easeOut}), 1, 2250);

	} else if ((myWin > 640) && (myWin <= 960)) {

		visualMotion();

		nitroMove.set($('.nitro_i_tit'), {css:{opacity:0, top:'-20px'}})
		nitroMove.set($('.nitro_i_line'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt01'), {css:{opacity:0, top:'222px'}})
		nitroMove.set($('.nitro_i_txt02'), {css:{opacity:0}})
		nitroMove.set($('.nitro_liquid01'), {css:{opacity:0, height:'0'}})
		nitroMove.set($('.nitro_liquid02'), {css:{opacity:0, height:'0'}})
		nitroMove.set($('.nitro_cup'), {css:{height:'246px'}})
		nitroMove.set($('.nitro_i_txt03'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt04'), {css:{opacity:0}})

		$(window).on('scroll', function(){
			var nitroScroll = $(this).scrollTop();
			function nitroInfoMotion() {
				nitroMove.to($('.nitro_i_tit'), 1, {css:{opacity:1, top:'30px'}, ease: Quad.easeOut})
				nitroMove.to($('.nitro_i_line'), 2, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_i_txt01'), 1, {css:{opacity:1, top:'172px'}, ease: Quad.easeOut}, "-=2")
				nitroMove.to($('.nitro_i_txt02'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid01'), 0.5, {css:{opacity:1, height:'19px'}, ease: Linear.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid02'), 0.5, {css:{opacity:1, height:'45px'}, ease: Linear.easeOut}, "-=0.5")
				nitroMove.to($('.nitro_cup'), 4, {css:{height:'0'}, ease: Circ.easeOut})
				nitroMove.to($('.nitro_i_txt03'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=2.5")
				nitroMove.to($('.nitro_i_txt04'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=0.5")
			}
			if (nitroScroll > 850) {
				nitroInfoMotion();
			}
		});

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt01'), 1.5, {css:{marginLeft:'-530px', opacity:0}, ease: Quad.easeOut}), 1, 1650);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt01'), 1.5, {css:{marginLeft:'-230px', opacity:1}, ease: Quad.easeOut}), 1, 1650);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt02'), 1.5, {css:{marginLeft:'380px', opacity:0}, ease: Quad.easeOut}), 1, 1950);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt02'), 1.5, {css:{marginLeft:'80px', opacity:1}, ease: Quad.easeOut}), 1, 1950);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt03'), 1.5, {css:{marginLeft:'-496px', opacity:0}, ease: Quad.easeOut}), 1, 2250);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt03'), 1.5, {css:{marginLeft:'-196px', opacity:1}, ease: Quad.easeOut}), 1, 2250);

	} else {

		visualMotion();

		nitroMove.set($('.nitro_i_tit'), {css:{opacity:0, top:'1.57%'}})
		nitroMove.set($('.nitro_i_line'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt01'), {css:{opacity:0, top:'23.29%'}})
		nitroMove.set($('.nitro_i_txt02'), {css:{opacity:0}})
		nitroMove.set($('.nitro_liquid01'), {css:{opacity:0, paddingTop:'0'}})
		nitroMove.set($('.nitro_liquid02'), {css:{opacity:0, paddingTop:'0'}})
		nitroMove.set($('.nitro_cup'), {css:{paddingTop:'52.5%'}})
		nitroMove.set($('.nitro_i_txt03'), {css:{opacity:0}})
		nitroMove.set($('.nitro_i_txt04'), {css:{opacity:0}})

		$(window).on('scroll', function(){
			var nitroScroll = $(this).scrollTop();
			function nitroInfoMotion() {
				nitroMove.to($('.nitro_i_tit'), 1, {css:{opacity:1, top:'6.57%'}, ease: Quad.easeOut})
				nitroMove.to($('.nitro_i_line'), 2, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_i_txt01'), 1, {css:{opacity:1, top:'18.29%'}, ease: Quad.easeOut}, "-=2")
				nitroMove.to($('.nitro_i_txt02'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid01'), 0.5, {css:{opacity:1, paddingTop:'3.9063%'}, ease: Linear.easeOut}, "-=1")
				nitroMove.to($('.nitro_liquid02'), 0.5, {css:{opacity:1, paddingTop:'9.8438%'}, ease: Linear.easeOut}, "-=0.5")
				nitroMove.to($('.nitro_cup'), 4, {css:{paddingTop:'0'}, ease: Circ.easeOut})
				nitroMove.to($('.nitro_i_txt03'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=2.5")
				nitroMove.to($('.nitro_i_txt04'), 1, {css:{opacity:1}, ease: Quad.easeOut}, "-=0.5")
			}
			if (nitroScroll > 550) {
				nitroInfoMotion();
			}
		});

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt01'), 1.5, {css:{top:'9.17%', opacity:0}, ease: Quad.easeOut}), 1, 1050);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt01'), 1.5, {css:{top:'14.17%', opacity:1}, ease: Quad.easeOut}), 1, 1050);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt02'), 1.5, {css:{top:'9.17%', opacity:0}, ease: Quad.easeOut}), 1, 1450);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt02'), 1.5, {css:{top:'14.17%', opacity:1}, ease: Quad.easeOut}), 1, 1450);

		controller.addTween(10, TweenMax.from($('.nitro_bnr_txt03'), 1.5, {css:{top:'9.17%', opacity:0}, ease: Quad.easeOut}), 1, 1850);
		controller.addTween(10, TweenMax.to($('.nitro_bnr_txt03'), 1.5, {css:{top:'14.17%', opacity:1}, ease: Quad.easeOut}), 1, 1850);

	}
});

/*  20160519 Min add start*/
function videoHeight(){
   var w_Width =$(window).width();
   if (w_Width <= 623){
	   	$('#nitroVidoe_small ').children('.videoBox').css('height', w_Width );
   }else if (w_Width >  623){
        $('#nitroVidoe_small ').children('.videoBox').css('height','100%' );
   }
}
$(window).ready(videoHeight);
$(window).resize(videoHeight);
/*  20160519 Min add end*/
