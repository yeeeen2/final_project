$(document).ready(function(){

	var myWin = $(window).width();

	function txt1() {
		$(".teavana_visual_txt1").addClass("move")
	}

	function txt2() {
		$(".teavana_visual_txt2").addClass("move")
	}
	
	function img() {
		$(".teavana_visual_nimg").addClass("move")
	}

/*	$('.tv_skip_menu_inner ul li a').mouseenter(function(){
		$(this).stop().animate({
			'top':'40%'
		});
		$(this).siblings().stop().animate({
			'opacity':'1',
			'top':'65%'
		});
	});
	$('.tv_skip_menu_inner ul li a').mouseout(function(){
		$(this).stop().animate({
			'top':'50%'
		});
		$(this).siblings().stop().animate({
			'opacity':'0',
			'top':'50%'
		});
	});
*/
	$('.tea_lineup_tabs_nav ul li a').click(function(){
		$('.tea_lineup_tabs_nav ul li a').siblings().stop().animate({
			'opacity':'0',
			'top':'10px'
		});
		$(this).siblings().stop().animate({
			'opacity':'1',
			'top':'-1px'
		});
	});


	$('.tea_lineup_tabs_nav ul li a').click(function(){
		$('.tea_lineup_tabs_nav ul li a').removeClass();
		$(this).addClass('on');
	});

	setTimeout(txt1, 100), setTimeout(txt2, 300), setTimeout(img, 500)

	var t1 = $('.brand_story_txt01').offset().top * 0.6;

	var controller = $.superscrollorama({
		triggerAtCenter: true
	});

	controller.addTween(10, TweenMax.from($('.brand_story_txt01'), 1.0, {css:{opacity:0}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.to($('.brand_story_txt01'), 2.0, {css:{opacity:1}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.from($('.brand_story_img01'), 2.0, {css:{opacity:0}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.to($('.brand_story_img01'), 6.0, {css:{opacity:1}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.from($('.brand_story_txt02'), 2.0, {css:{opacity:0}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.to($('.brand_story_txt02'), 1.5, {css:{opacity:1}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.from($('.brand_story_img02'), 2.0, {css:{opacity:0}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.to($('.brand_story_img02'), 4.0, {css:{opacity:1}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.from($('.brand_story_txt03'), 2.0, {css:{opacity:0}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.to($('.brand_story_txt03'), 1.5, {css:{opacity:1}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.from($('.brand_story_img03'), 2.0, {css:{opacity:0}, ease: Quad.easeOut}), 1, t1);
	controller.addTween(10, TweenMax.to($('.brand_story_img03'), 5.0, {css:{opacity:1}, ease: Quad.easeOut}), 1, t1);

	$('.zoom_tea_type01 a').click(function(){
		$('.tea_type_card01_dimm, .tea_type_card01_layer, .tea_type_card01 .btn_leaf_close').fadeIn();
		$('.tea_type_card02_dimm, .tea_type_card02_layer, .tea_type_card02 .btn_leaf_close').fadeOut();
		$('.tea_type_card03_dimm, .tea_type_card03_layer, .tea_type_card03 .btn_leaf_close').fadeOut();
		$('.tea_type_card04_dimm, .tea_type_card04_layer, .tea_type_card04 .btn_leaf_close').fadeOut();
	});
	$('.tea_type_card01 .btn_leaf_close a').click(function(){
		$('.tea_type_card01_dimm, .tea_type_card01_layer, .tea_type_card01 .btn_leaf_close').fadeOut();
	});

	$('.zoom_tea_type02 a').click(function(){
		$('.tea_type_card02_dimm, .tea_type_card02_layer, .tea_type_card02 .btn_leaf_close').fadeIn();
		$('.tea_type_card01_dimm, .tea_type_card01_layer, .tea_type_card01 .btn_leaf_close').fadeOut();
		$('.tea_type_card03_dimm, .tea_type_card03_layer, .tea_type_card03 .btn_leaf_close').fadeOut();
		$('.tea_type_card04_dimm, .tea_type_card04_layer, .tea_type_card04 .btn_leaf_close').fadeOut();
	});
	$('.tea_type_card02 .btn_leaf_close a').click(function(){
		$('.tea_type_card02_dimm, .tea_type_card02_layer, .tea_type_card02 .btn_leaf_close').fadeOut();
	});

	$('.zoom_tea_type03 a').click(function(){
		$('.tea_type_card03_dimm, .tea_type_card03_layer, .tea_type_card03 .btn_leaf_close').fadeIn();
		$('.tea_type_card01_dimm, .tea_type_card01_layer, .tea_type_card01 .btn_leaf_close').fadeOut();
		$('.tea_type_card02_dimm, .tea_type_card02_layer, .tea_type_card02 .btn_leaf_close').fadeOut();
		$('.tea_type_card04_dimm, .tea_type_card04_layer, .tea_type_card04 .btn_leaf_close').fadeOut();
		tea_type_card03_layer();
	});
	$('.tea_type_card03 .btn_leaf_close a').click(function(){
		$('.tea_type_card03_dimm, .tea_type_card03_layer, .tea_type_card03 .btn_leaf_close').fadeOut();
	});

	$('.zoom_tea_type04 a').click(function(){
		$('.tea_type_card04_dimm, .tea_type_card04_layer, .tea_type_card04 .btn_leaf_close').fadeIn();
		$('.tea_type_card01_dimm, .tea_type_card01_layer, .tea_type_card01 .btn_leaf_close').fadeOut();
		$('.tea_type_card02_dimm, .tea_type_card02_layer, .tea_type_card02 .btn_leaf_close').fadeOut();
		$('.tea_type_card03_dimm, .tea_type_card03_layer, .tea_type_card03 .btn_leaf_close').fadeOut();
		tea_type_card04_layer();
	});
	$('.tea_type_card04 .btn_leaf_close a').click(function(){
		$('.tea_type_card04_dimm, .tea_type_card04_layer, .tea_type_card04 .btn_leaf_close').fadeOut();
	});

	function tea_type_card03_layer() {
		new Swiper('.tea_type_card03_layer .tea_type_layer_inner', {
			pagination:'.tea_type_card03_layer .swiper-pagination',
			nextButton:'.swiper-button-next',
			prevButton:'.swiper-button-prev'
		});
	}

  function tea_type_card04_layer() {
    new Swiper('.tea_type_card04_layer .tea_type_layer_inner', {
      pagination: '.tea_type_card04_layer .swiper-pagination',
      nextButton: '.swiper-button-next',
      prevButton: '.swiper-button-prev'
    });
  }

  /* 170213 황기흠 수정 */
  $('.tea_lineup_tabs_nav ul li.tea_lineup_tab01 a').click(function () {
    $('.tea_slider02, .tea_slider03, .tea_slider04, .tea_slider05').hide();
    $('.teaTxt').hide();
    $('.tea_slider01').show();
    tea_slider01();
  });

  $('.tea_lineup_tabs_nav ul li.tea_lineup_tab02 a').click(function () {
    $('.tea_slider01, .tea_slider03, .tea_slider04, .tea_slider05').hide();
    $('.teaTxt').hide();
    $('.tea_slider02').show();
    tea_slider02();
  });
  $('.tea_lineup_tabs_nav ul li.tea_lineup_tab03 a').click(function () {
    $('.tea_slider01, .tea_slider02, .tea_slider04, .tea_slider05').hide();
    $('.teaTxt').hide();
    $('.tea_slider03').show();
    tea_slider03();
  });
  $('.tea_lineup_tabs_nav ul li.tea_lineup_tab04 a').click(function () {
    $('.tea_slider01, .tea_slider02, .tea_slider03, .tea_slider05').hide();
    $('.teaTxt').hide();
    $('.tea_slider04').show();
    tea_slider04();
  });
  $('.tea_lineup_tabs_nav ul li.tea_lineup_tab05 a').click(function () {
    $('.tea_slider01, .tea_slider02, .tea_slider03, .tea_slider04').hide();
    $('.teaTxt').show();
    $('.tea_slider05').show();
    tea_slider05();
  });

  tea_slider05();

  function tea_slider01() {
    new Swiper('.tea_slider01', {
      slidesPerView: 'auto',
      //loop:true,
      //centeredSlides:true,
      freeModeSticky: true,
      loopAdditionalSlides: 10,
      spaceBetween: 20,
      scrollbar: '.tea_slider01 .swiper-scrollbar',
      scrollbarSnapOnRelease: true,
      scrollbarHide: false,
      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 0 // 20180116 breakpoint 320 삭제, 640 spaceBetween: 0
        }
      }
    });
  }
  /* 170213 황기흠 수정 end */

  function tea_slider02() {
    new Swiper('.tea_slider02', {
      slidesPerView: 'auto',
      //loop:true,
      //centeredSlides:true,
      freeModeSticky: true,
      loopAdditionalSlides: 10,
      spaceBetween: 20,
      scrollbar: '.tea_slider02 .swiper-scrollbar',
      scrollbarSnapOnRelease: true,
      scrollbarHide: false,
      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 0 // 20180116 spaceBetween 0 으로 변경
        }
      }
    });
  }

  function tea_slider03() {
    new Swiper('.tea_slider03', {
      slidesPerView: 'auto',
      //loop:true,
      //centeredSlides:true,
      freeModeSticky: true,
      loopAdditionalSlides: 10,
      spaceBetween: 20,
      scrollbar: '.tea_slider03 .swiper-scrollbar',
      scrollbarSnapOnRelease: true,
      scrollbarHide: false,
      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 0 // 20180116 spaceBetween 0 으로 변경
        }
      }
    });
  }

  function tea_slider04() {
    new Swiper('.tea_slider04', {
      slidesPerView: 'auto',
      //loop:true,
      //centeredSlides:true,
      freeModeSticky: true,
      loopAdditionalSlides: 10,
      spaceBetween: 20,
      scrollbar: '.tea_slider04 .swiper-scrollbar',
      scrollbarSnapOnRelease: true,
      scrollbarHide: false,
      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 0 // 20180116 spaceBetween 0 으로 변경
        }
      }
    });
  }

  function tea_slider05() {
    new Swiper('.tea_slider05', {
      slidesPerView: 'auto',
      //loop:true,
      //centeredSlides:true,
      freeModeSticky: true,
      loopAdditionalSlides: 10,
      spaceBetween: 20,
      scrollbar: '.tea_slider05 .swiper-scrollbar',
      scrollbarSnapOnRelease: true,
      scrollbarHide: false,
      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 0 // 20180116 spaceBetween 0 으로 변경
        }
      }
    });
  }

});