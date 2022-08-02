<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko"><head>
		








<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type" content="website">
<meta property="og:title" content="Starbucks">
<meta property="og:url" content="https://www.starbucks.co.kr/">
<meta property="og:image" content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">주문하기 | Starbucks Korea</title> <!-- 220117 수정 -->
<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="../common/css/reset.css" rel="stylesheet">
<link href="../common/css/style.css?v=210721" rel="stylesheet">
<link href="../common/css/jquery.bxslider.css" rel="stylesheet">
<link href="../common/css/idangerous.swiper.css" rel="stylesheet">
<link href="../common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
<link href="../common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="../common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="../common/css/jquery-ui.css" rel="stylesheet">
<link href="../common/css/ezmark.css" rel="stylesheet">
<link href="../common/css/style_dt.css?v=20191211" rel="stylesheet"> <!-- 20191211 수정 -->


<script src="https://connect.facebook.net/ko_KR/sdk.js?hash=4269c03206a0b07da8a0e4d0c69a6b6d" async="" crossorigin="anonymous"></script><script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66158138-1', 'auto');
  ga('send', 'pageview');
</script>


<!-- 0530다정 결제페이지 디자인 -->
<style type="text/css">
	.btn_pay{margin: 10px; padding: 40px; font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
	.btn_coupon{background:#f6f6f6; margin: 10px; padding-top: 30px;padding-bottom: 30px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
	.order_list_img{width: 80px; height: 80px; margin-right: 20px;}
	.menu_list_info{padding:auto; font-size: 14px; vertical-align: middle;}
	.submitResetBtn{margin: 10px; padding-top: 14px;padding-bottom: 14px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
</style>



<script type="text/javascript">
var eFrequencyYn = 'Y';
var eFrequencySeq = '172';
var eFrequencyPlannerYn = 'Y';
</script>

        <link href="../common/css/style_menu.css" rel="stylesheet">
        <link href="../common/css/ezmark.css" rel="stylesheet">
	<style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style></head>
	<body style=""><div class="loading_dimm" style="display:none; z-index:20000;"></div><div class="loading_img" style="display:none; z-index:20001;"></div>
		<div id="wrap">
			
<script>
//appId      : '1012019678818238',
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '179159949450639',
      xfbml      : true,
      version    : 'v2.4'
    });
  };

	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "//connect.facebook.net/ko_KR/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
  
</script>


<!-- 접근성_20171106 건너뛰기 링크  추가 -->
	<div id="skip-menu">
	  <a href="#gnb">메뉴바로가기</a>
	  <a href="#container">콘텐츠 바로가기</a>
	</div>
<!-- 접근성_20171106 건너뛰기 링크  추가 끝 -->
	

<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 -->

			

<!-- 로그인 팝업 위치 이슈로 인해 위치 변경 -->
<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 end -->




<!-- MSR 영역 -->




			
			<!-- MSR 영역 -->
			<div id="top_MSR" class="eFreqTop"><!-- 20170510 수정 : 클래스 eFreqTop 추가 -->
				<div class="top_msr_wrap" style="">
					<!-- 유저인포 -->
					<div class="user_greet">
						<div class="user_pic_area">
							<img alt="사용자 아이디" src="//image.istarbucks.co.kr/common/img/common/user_pic_sample.jpg">
							<p class="msr_user_mask msr_user_mask01"></p>
							<p class="msr_user_mask msr_user_mask02"></p>
							<p class="msr_user_mask msr_user_mask03"></p>
							<p class="msr_user_mask msr_user_mask04"></p>
						</div>
						<p class="user_greet_txt"><strong><!-- 홍길동 --></strong>님, 안녕하세요!</p>
						<p class="msr_btn_setting"><a href="my/myinfo_modify_login">개인정보 수정</a></p>
					</div>
					<!-- 유저인포 end -->
					<span class="msr_sep_line"></span>

					<!-- 유저레벨 -->

					<span class="msr_sep_line"></span>

					<!-- 카드인포 -->
										
					<!-- 카드인포 end -->

					<!-- 일반 회원 -->
					<!-- 일반 회원 end -->

				</div>

				<div class="top_msr_nologin" style="display: none;">
					<div class="top_msr_nologin_l">
						<i class="icon_before_login"></i>
						<p class="top_msr_mem_yet"><strong>스타벅스커피 코리아 회원이 아니세요?</strong><br>스타벅스커피 코리아 회원만의<br>특별한 혜택을 누릴 수 있습니다.</p>
						<div class="msr_nologin_btns">
							<ul>
								<li><a href="javascript:$.loginLib.showLayerLogin();">로그인</a></li>
								<li><a href="mem/join">회원가입</a></li>
							</ul>
						</div>
					</div>
					<span class="msr_sep_line"></span>
					<!-- 160628 수정 end -->
				</div>
			</div>
			
			
<!-- MSR 영역 end -->





<!-- GNB 영역 -->



			<!-- 960 gnb -->
			<div class="tablet_gnb_wrap">
				<h1 class="logo"><a href="/">스타벅스 코리아</a></h1>
				<nav class="tablet_gnb_sep">
					<ul>
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2" style="width: 90px; height: 90px; overflow: hidden;"><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/001.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/002.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/003.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/004.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/005.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/006.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/007.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/008.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/009.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/010.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/011.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/012.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/013.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/014.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/015.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/016.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/017.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/018.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/019.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/020.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/021.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/022.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/023.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/024.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/025.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/026.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/027.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/028.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/029.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/030.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/031.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/032.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/033.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/034.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/035.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/036.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/037.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/038.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/039.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/040.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/041.png&quot;);"></div><div class="jsMovieFrame" style="display: block; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/042.png&quot;);"></div><div id="jsMovie_event_overlay" style="width: 90px; height: 180px; margin-top: -180px;"></div><div id="jsMovie_image_preload_container"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/001.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/002.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/002.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/003.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/003.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/004.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/004.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/005.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/005.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/006.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/006.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/007.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/007.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/008.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/008.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/009.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/009.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/010.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/010.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/011.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/011.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/012.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/012.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/013.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/014.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/013.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/014.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/015.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/015.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/016.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/016.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/017.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/017.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/018.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/019.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/018.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/019.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/020.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/021.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/020.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/022.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/021.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/023.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/024.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/022.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/025.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/023.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/026.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/024.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/025.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/026.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/027.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/027.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/028.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/028.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/029.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/029.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/030.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/030.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/031.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/031.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/032.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/033.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/032.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/034.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/035.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/036.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/033.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/034.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/037.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/035.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/038.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/036.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/037.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/039.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/038.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/039.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/040.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/041.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/042.png" alt="" style="height: 1px; width: 1px;"></div></span></a></li><!-- 150709 클레스 수정 -->
						<li class="tablet_gnb02"><a href="javascript:void(0);" required="login" data-href="my/index"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb03"><a href="store/store_map"><span class="a11y">매장찾기</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb04"><a href="javascript:void(0);"><span class="a11y" role="button">메뉴열기</span></a><!-- 접근성_20171106 span추가 --></li>
					</ul>
				</nav>
			</div>
			<!-- 960 gnb end -->
			<!-- 640 gnb -->
			<div class="mob_gnb_dimm"></div>
			<div class="mob_gnb_wrap">
				<div class="mob_gnb_wrap_inner">
					<aside class="btn_gnb_close"><a href="javascript:void(0);" title="메뉴닫기" role="button">닫기</a><!-- 접근성_20171106 title 추가 --></aside>
					<div class="mob_gnb_search">
						<div class="mob_gnb_search_inner">
						<label for="search_text" class="a11y">검색어</label><!-- 접근성_20171106 검색어 추가 -->
							<input type="text" id="search_text" name="search_text">
							<a href="javascript:void(0);" class="mob_gnb_search_btn" titie="검색">Search</a><!-- 접근성_20171106 title 추가 -->
						</div>
					</div>
					<nav class="mob_gnb_menus">
						<ul>
							<li class="mob_gnb_ttl1" style="display: list-item;"><a role="button" class="en" href="javascript:void(0);">My Starbucks<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li style="display: none;"><a href="my/index">한눈에 보기</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">My 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/reward">리워드 및 혜택</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/reward_star_history">별 히스토리</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/mycard_index">보유 카드</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/mycard_info_input">카드 등록</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/mycard_charge">카드 충전</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/mycard_lost">분실신고/잔액이전</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="msr/sceGift/gift_step1">선물하기</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/egiftCard">선물 내역</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/egiftCard_shopping_bag">장바구니 내역</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/ecoupon?t=REG">등록하기</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/ecoupon?t=GIFT">선물하기</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/ecoupon?t=USE">사용하기</a></li>
								</ul>
							</li>
							<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/calendar">My 캘린더</a></li>
							<!-- <li><a href="my/drink_shop" required="login">My 음료/매장</a></li> -->
							<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/my_menu">My 메뉴</a></li>
							
							
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">My e-프리퀀시<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="eFreq/guide?promoSeq=172">이용안내</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="eFreq/status?promoSeq=172">이용현황</a></li>
								</ul>
							</li>
							
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/vocList">My 고객의 소리</a></li>
							<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/eReceiptList">전자영수증</a></li>
							<li class="msRnb_btn" style="display: none;"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
							<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="edt/expressDtList">My DT Pass</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">개인정보관리<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/myinfo_modify_login">개인정보확인 및 수정</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/myinfo_out">회원 탈퇴</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/myinfo_modify_pwd">비밀번호 변경</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en" href="javascript:void(0);">COFFEE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li style="display: none;"><a href="coffee/index">한눈에 보기</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">커피<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="coffee/product_list">스타벅스 원두</a></li>
									<li style="display: none;"><a href="coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>
									<!-- <li><a href="coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li> 20210915 삭제 -->
									<li style="display: none;"><a href="coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li><!-- 20210915 추가 -->
								</ul>
							</li>
							<li style="display: none;"><a href="coffee/productFinder">나와 어울리는 커피</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">스타벅스 리저브™<span class="mob_gnb_arrow_down"></span></a>
								<ul>
									<li style="display: none;"><a href="coffee/reserve_info">ABOUT</a></li>
									<li style="display: none;"><a href="coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">에스프레소 음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li style="display: none;"><a href="coffee/doppio">도피오</a></li>
									<li style="display: none;"><a href="coffee/espresso_macchiato">에스프레소 마키아또</a></li>
									<li style="display: none;"><a href="coffee/americano">아메리카노</a></li>
									<li style="display: none;"><a href="coffee/caramel_macchato">마키아또</a></li>
									<li style="display: none;"><a href="coffee/cappuccino">카푸치노</a></li>
									<li style="display: none;"><a href="coffee/latte">라떼</a></li>
									<li style="display: none;"><a href="coffee/mocha">모카</a></li>
									<!-- <li><a href="javascript:void(0);">더블샷</a></li> -->
									<!-- <li><a href="coffee/flat_white">리스트레또 비안코</a></li> 20210914 삭제 -->
									<!-- <li class="mgnb_gold"><a href="javascript:void(0);">·에스프레소 초이스</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·프로모션 상품</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·브런치 유어 웨이</a></li> -->
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">최상의 커피를 즐기는 법<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li style="display: none;"><a href="coffee/higher_enjoy">커피 프레스</a></li>
									<li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>
									<li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>
									<li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>
									<li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">커피 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- 20210914 수정 -->
									<li style="display: none;"><a href="coffee/story">농장에서 우리의 손으로</a></li>
									<!-- <li><a href="coffee/story?PACKAGE=01">에스프레소 초이스</a></li> -->
									<li style="display: none;"><a href="coffee/story?PACKAGE=02">최상의 아라비카 원두</a></li>
									<li style="display: none;"><a href="coffee/story?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>
									<!-- <li><a href="javascript:void(0);">추출방식 알아보기</a></li> -->
									<li style="display: none;"><a href="coffee/story?PACKAGE=04">스타벅스 디카페인</a></li>
									<li style="display: none;"><a href="coffee/story?PACKAGE=05">클로버® 커피 추출 시스템</a></li>
									<!-- //20210914 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en" href="javascript:void(0);">MENU<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li style="display: none;"><a href="menu/index">한눈에 보기</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="menu/drink_list">전체보기</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_cold_brew">콜드 브루</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_brood">브루드 커피</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_espresso">에스프레소</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_frappuccino">프라푸치노</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_blended">블렌디드</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_fizzo">스타벅스 피지오</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_tea">티(티바나)</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_etc">기타 제조 음료</a></li>
									<li style="display: none;"><a href="menu/drink_list?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="menu/food_list">전체보기</a></li>
									<li style="display: none;"><a href="menu/food_list?CATE_CD=product_bakery">브레드</a></li>
									<li style="display: none;"><a href="menu/food_list?CATE_CD=product_cake">케이크</a></li>
									<li style="display: none;"><a href="menu/food_list?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>
									<li style="display: none;"><a href="menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a></li>
									<li style="display: none;"><a href="menu/food_list?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>
									<li style="display: none;"><a href="menu/food_list?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>
									<li style="display: none;"><a href="menu/food_list?CATE_CD=product_icecream">아이스크림</a></li>
                                    <!-- <li><a href="menu/food_list?CATE_CD=product_etc">기타 푸드</a></li> -->
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="menu/product_list">전체보기</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_mug">머그</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_glass">글라스</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_plastic">플라스틱 텀블러</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_stainless">스테인리스 텀블러</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_vacuum">보온병</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_accessories">액세서리</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_present">선물세트</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_coffee">커피 용품</a></li>
									<li style="display: none;"><a href="menu/product_list?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>
									<!-- <li><a href="menu/product_list?CATE_CD=product_planner">스타벅스 플래너</a></li> --> <!-- 20210602 삭제 -->
								</ul>
							</li>
							
						</ul>
						<ul>
							<li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li style="display: none;"><a href="store/index">한눈에 보기</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="store/store_map?disp=quick">빠른 검색</a></li>
									<li style="display: none;"><a href="store/store_map?disp=locale">지역 검색</a></li>
								</ul>
							</li>
							<li style="display: none;"><a href="store/store_drive">드라이브 스루 매장</a></li>
							<li style="display: none;"><a href="store/store_reserve">스타벅스 리저브™ 매장</a></li>
							<li style="display: none;"><a href="store/store_community">커뮤니티 스토어 매장</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- <li><a href="store/store_cheongdam">청담스타</a></li> 20210727 메뉴 비노출 -->
									<li style="display: none;"><a href="store/store_star_field">티바나 바 매장</a></li>
									<!-- <li><a href="store/store_park">파미에파크</a></li> 20210727 메뉴 비노출 -->
								</ul>
							</li>
						</ul>
						
						<ul>
							<li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en" href="javascript:void(0);">Starbucks Rewards<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>  <!-- 스타벅스 리워드 수정 -->
							<li style="display: none;"><a href="msr/index">한눈에 보기</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">스타벅스 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 스타벅스 리워드 수정 -->
								<ul>
									<li style="display: none;"><a href="msr/msreward/about">스타벅스 리워드 소개</a></li> <!-- 스타벅스 리워드 수정 -->
									<li style="display: none;"><a href="msr/msreward/level_benefit">등급 및 혜택</a></li>
									<li style="display: none;"><a href="msr/msreward/star">스타벅스 별</a></li>
									<li style="display: none;"><a href="community/faq?menu_cd=STB2703&amp;cate=F17">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="msr/scard/about">스타벅스 카드 소개</a></li>
									<li style="display: none;"><a href="msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>
									<li style="display: none;"><a href="msr/scard/register_inquiry">등록 및 조회</a></li>
									<li style="display: none;"><a href="msr/scard/charge_information">충전 및 이용안내</a></li>
									<li style="display: none;"><a href="msr/scard/lost_report">분실신고/환불신청</a></li>
									<li style="display: none;"><a href="community/faq?menu_cd=STB2703&amp;cate=F05">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>
									<li style="display: none;"><a href="msr/sceGift/msr_useguide">이용안내</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="msr/sceGift/gift_step1">선물하기</a></li>
									<li style="display: none;"><a href="community/faq?menu_cd=STB2703&amp;cate=F22">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en" href="javascript:void(0);">WHAT'S NEW<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li style="display: none;"><a href="whats_new/index">한눈에 보기</a></li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li style="display: none;"><a href="whats_new/campaign_list">전체</a></li>
									<li style="display: none;"><a href="whats_new/campaign_list?menu_cd=STB2812">스타벅스 카드</a></li>
									<li style="display: none;"><a href="whats_new/campaign_list?menu_cd=STB2813">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
									<li style="display: none;"><a href="whats_new/campaign_list?menu_cd=STB2814">온라인</a></li>
									
									
										<li style="display: none;"><a href="whats_new/eFreq_gift">e-프리퀀시 증정품</a></li> <!-- 20210423 메뉴명, 경로 수정 -->
									
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">뉴스<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li style="display: none;"><a href="whats_new/news_list">전체</a></li>
									<li style="display: none;"><a href="whats_new/news_list?cate=N01">상품 출시</a></li>
									<li style="display: none;"><a href="whats_new/news_list?cate=N02">스타벅스와 문화</a></li>
									<li style="display: none;"><a href="whats_new/news_list?cate=N03">스타벅스 사회공헌</a></li>
									<li style="display: none;"><a href="whats_new/news_list?cate=N04">스타벅스 카드출시</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">매장별 이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="whats_new/store_event_list">일반 매장</a></li>
									<li style="display: none;"><a href="whats_new/store_event_list?search_date=1&amp;tab=1">신규 매장</a></li>
								</ul>
							</li>
							<li style="display: none;"><a href="whats_new/notice_list">공지사항</a></li>
							<li style="display: none;"><a href="whats_new/wallpaper">월페이퍼</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- 640 gnb end -->

<!-- GNB 영역 end -->
			
			
			
			
<div id="mstopWrap">
	<div id="gnb">
		<!-- 서브 gnb -->
		<div class="sub_gnb_wrap">
			<div class="sub_gnb_wrap_inner">
				<h1 class="logo"><a href="/starbucks" title="스타벅스 메인페이지">스타벅스 코리아</a><!-- 접근성_20171106 title 추가 --></h1>
				<nav class="util_nav">
					
								
<ul>
	<li class="util_nav01 sign_out" style="display:none;"><a href="/starbucks/login/logout">Sign out</a></li>
	<li class="util_nav01 sign_in"><a href="/starbucks/login/login">Sign In</a></li>
	<li class="util_nav02"><a href="/starbucks/my/index">My Starbucks</a></li>
	<li class="util_nav03"><a href="/starbucks/menu/orderList" >Order</a></li>
	<li class="util_nav04"><a href="/starbucks/store/store_map">Find a Store</a></li>
</ul>
				</nav>
				<a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3" style="width: 53px; height: 45px; overflow: hidden;"><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/001.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/002.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/003.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/004.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/005.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/006.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/007.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/008.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/009.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/010.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/011.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/012.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/013.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/014.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/015.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/016.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/017.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/018.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/019.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/020.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/021.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/022.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/023.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/024.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/025.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/026.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/027.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/028.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/029.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/030.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/031.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/032.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/033.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/034.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/035.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/036.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/037.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/038.png&quot;);"></div><div class="jsMovieFrame" style="display: block; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/039.png&quot;);"></div><div id="jsMovie_event_overlay" style="width: 53px; height: 90px; margin-top: -90px;"></div><div id="jsMovie_image_preload_container"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/001.png" alt="" style="height: 1px; width: 1px;"></div></span></a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
			</div>
			<nav class="sub_gnb_nav">
				<div class="sub_gnb_nav_inner">		<ul>			<!-- COFFEE -->			<li class="gnb_nav01">				<h2><a href="coffee/index" class="">COFFEE</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="coffee/product_list">커피</a></li>								<li><a href="coffee/product_list">스타벅스 원두</a></li>								<li><a href="coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>								<li><a href="coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/productFinder">나와 어울리는 커피</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/reserve_info">스타벅스 리저브™</a></li>								<li><a href="coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/espresso">에스프레소 음료</a></li>								<li><a href="coffee/doppio">도피오</a></li>								<li><a href="coffee/espresso_macchiato">에스프레소 마키아또</a></li>								<li><a href="coffee/americano">아메리카노</a></li>								<li><a href="coffee/caramel_macchato">마키아또</a></li>								<li><a href="coffee/cappuccino">카푸치노</a></li>								<li><a href="coffee/latte">라떼</a></li>								<li><a href="coffee/mocha">모카</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/higher_enjoy">최상의 커피를 즐기는 법</a></li>								<li><a href="coffee/higher_enjoy">커피 프레스</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>							</ul>							<ul style="padding-top: 30px; clear: both;">								<li class="gnb_sub_ttl"><a href="coffee/story">커피 이야기</a></li>								<li><a href="coffee/story">농장에서 우리의 손으로</a></li>								<li><a href="coffee/story?PACKAGE=02">최상의 아라비카 원두</a></li>								<li><a href="coffee/story?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>								<li><a href="coffee/story?PACKAGE=05">스타벅스 디카페인</a></li>								<li><a href="coffee/story?PACKAGE=04">클로버® 커피 추출 시스템</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="coffee/productFinder">나와 어울리는 커피 찾기</a></h3>								<p class="gnb_sub_ex_txt">스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>								<h3><a href="coffee/higher_enjoy">최상의 커피를 즐기는 법</a></h3>								<p class="gnb_sub_ex_txt">여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<!-- COFFEE end -->			<!-- MENU -->			<li class="gnb_nav02">				<h2><a href="menu/index" class="">MENU</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="menu/drink_list">음료</a></li>								<li><a href="menu/drink_list?CATE_CD=product_cold_brew">콜드 브루</a></li>								<li><a href="menu/drink_list?CATE_CD=product_brood">브루드 커피</a></li>								<li><a href="menu/drink_list?CATE_CD=product_espresso">에스프레소</a></li>								<li><a href="menu/drink_list?CATE_CD=product_frappuccino">프라푸치노</a></li>								<li><a href="menu/drink_list?CATE_CD=product_blended">블렌디드</a></li>								<li><a href="menu/drink_list?CATE_CD=product_fizzo">스타벅스 피지오</a></li>								<li><a href="menu/drink_list?CATE_CD=product_tea">티(티바나)</a></li>								<li><a href="menu/drink_list?CATE_CD=product_etc">기타 제조 음료</a></li>								<li><a href="menu/drink_list?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="menu/food_list">푸드</a></li>								<li><a href="menu/food_list?CATE_CD=product_bakery">브레드</a></li>								<li><a href="menu/food_list?CATE_CD=product_cake">케이크</a></li>								<li><a href="menu/food_list?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>								<li><a href="menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a></li>								<li><a href="menu/food_list?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>								<li><a href="menu/food_list?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>								<li><a href="menu/food_list?CATE_CD=product_icecream">아이스크림</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="menu/product_list">상품</a></li>								<li><a href="menu/product_list?CATE_CD=product_mug">머그</a></li>								<li><a href="menu/product_list?CATE_CD=product_glass">글라스</a></li>								<li><a href="menu/product_list?CATE_CD=product_plastic">플라스틱 텀블러</a></li>								<li><a href="menu/product_list?CATE_CD=product_stainless">스테인리스 텀블러</a></li>								<li><a href="menu/product_list?CATE_CD=product_vacuum">보온병</a></li>								<li><a href="menu/product_list?CATE_CD=product_accessories">액세서리</a></li>								<li><a href="menu/product_list?CATE_CD=product_present">선물세트</a></li>								<li><a href="menu/product_list?CATE_CD=product_coffee">커피 용품</a></li>								<li><a href="menu/product_list?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="menu/card_list">카드</a></li>								<li><a href="menu/card_list?CATE_CD=product_offline">실물카드</a></li>								<li><a href="menu/card_list?CATE_CD=product_egift">e-Gift 카드</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a>메뉴 이야기</a></li>								<li><a href="store/store_nitro_coldbrew">나이트로 콜드브루</a></li>								<li><a href="store/store_coldbrew">콜드 브루</a></li>								<li><a href="menuStory/teavana">스타벅스 티바나</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="store/store_nitro_coldbrew">나이트로 콜드 브루 <img alt="" src="//image.istarbucks.co.kr/common/img/common/icon_gnb_new.png"></a></h3>								<p class="gnb_sub_ex_txt">나이트로 커피 정통의 물결치듯 흘러내리는 캐스케이딩과 부드러운 크림을 경험하세요. </p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<!-- MENU end -->			<li class="gnb_nav03">				<h2><a href="store/index" class="">STORE</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="store/store_map">매장 찾기</a></li>								<li><a href="store/store_map?disp=quick">퀵 검색</a></li>								<li><a href="store/store_map?disp=locale">지역 검색</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="store/store_drive">드라이브 스루 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="store/store_reserve">스타벅스 리저브™ 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="store/store_community">커뮤니티 스토어 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a>매장 이야기</a></li>								<li><a href="store/store_star_field">티바나 바 매장</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="store/store_map">매장찾기</a></h3>								<p class="gnb_sub_ex_txt">보다 빠르게 매장을 찾아보세요.</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<li class="gnb_nav04">				<h2><a href="responsibility/index" class="">RESPONSIBILITY</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/starbucks_shared_planet">사회공헌 캠페인 소개</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/hope_delivery">지역 사회 참여 활동</a></li>								<li><a href="responsibility/hope_delivery">희망배달 캠페인</a></li>								<li><a href="responsibility/talent_donation">재능기부 카페 소식</a></li>								<li><a href="responsibility/community_store">커뮤니티 스토어</a></li>								<li><a href="responsibility/youth_resource">청년 지원 프로그램</a></li>								<li><a href="responsibility/our_agriculture">우리 농산물 사랑 캠페인</a></li>								<li><a href="responsibility/our_culture_defend">우리 문화 지키기</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/environment">환경보호 활동</a></li>								<li><a href="responsibility/environment">친환경 활동</a></li>								<li><a href="responsibility/no_disposable_cup">일회용 컵 없는 매장</a></li>								<li><a href="responsibility/bean_recycling">커피 원두 재활용</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/ethically_sourcing">윤리 구매</a></li>								<li><a href="responsibility/ethically_sourcing">윤리적 원두 구매</a></li>								<li><a href="responsibility/fair_trade">공정무역 인증</a></li>								<li><a href="responsibility/farmer_support">커피 농가 지원 활동</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/sp_ethical_management">글로벌 사회 공헌</a></li>								<li><a href="responsibility/sp_ethical_management">윤리경영 보고서</a></li>								<li><a href="responsibility/starbucks_foundation">스타벅스 재단</a></li>								<li><a href="responsibility/sp_global_month">지구촌 봉사의 달</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<li class="gnb_nav05">				<h2><a href="msr/index" class="">STARBUCKS REWARDS</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="msr/msreward/about">스타벅스 리워드</a></li>								<li><a href="msr/msreward/about">스타벅스 리워드 소개</a></li>								<li><a href="msr/msreward/level_benefit">등급 및 혜택</a></li>								<li><a href="msr/msreward/star">스타벅스 별</a></li>								<li><a href="community/faq?menu_cd=STB2703&amp;cate=F17">자주 하는 질문</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="msr/scard/about">스타벅스 카드</a></li>								<li><a href="msr/scard/about">스타벅스 카드 소개</a></li>								<li><a href="msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>								<li><a href="msr/scard/register_inquiry">등록 및 조회</a></li>								<li><a href="msr/scard/charge_information">충전 및 이용안내</a></li>								<li><a href="msr/scard/lost_report">분실신고/환불신청</a></li>								<li><a href="community/faq?menu_cd=STB2703&amp;cate=F05">자주 하는 질문</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card</a></li>								<li><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>								<li><a href="msr/sceGift/msr_useguide">이용안내</a></li>								<li><a href="javascript:void(0);" required="login" data-href="msr/sceGift/gift_step1">선물하기</a></li>								<li><a href="community/faq?menu_cd=STB2703&amp;cate=F22">자주 하는 질문</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="msr/scard/register_inquiry">스타벅스 카드 등록하기</a></h3>								<p class="gnb_sub_ex_txt">카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<li class="gnb_nav06">				<h2><a href="whats_new/index" class="">WHAT'S NEW</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/campaign_list">이벤트</a></li>								<li><a href="whats_new/campaign_list">전체</a></li>								<li><a href="whats_new/campaign_list?menu_cd=STB2812">스타벅스 카드</a></li>								<li><a href="whats_new/campaign_list?menu_cd=STB2813">스타벅스 리워드</a></li>								<li><a href="whats_new/campaign_list?menu_cd=STB2814">온라인</a></li>								<li><a href="whats_new/eFreq_gift">e-프리퀀시 증정품</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/news_list">뉴스</a></li>								<li><a href="whats_new/news_list">전체</a></li>								<li><a href="whats_new/news_list?cate=N01">상품 출시</a></li>								<li><a href="whats_new/news_list?cate=N02">스타벅스와 문화</a></li>								<li><a href="whats_new/news_list?cate=N03">스타벅스 사회공헌</a></li>								<li><a href="whats_new/news_list?cate=N04">스타벅스 카드출시</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/store_event_list">매장별 이벤트</a></li>								<li><a href="whats_new/store_event_list">일반 매장</a></li>								<li><a href="whats_new/store_event_list?search_date=1&amp;tab=1">신규 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="eFreq/guide?promoSeq=172">e-프리퀀시</a></li>								<li><a href="eFreq/guide?promoSeq=172">이용안내</a></li>								<li><a href="javascript:void(0);" required="login" data-href="eFreq/status?promoSeq=172">이용현황</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/notice_list">공지사항</a></li>							</ul>							<ul style="padding-top: 30px; clear: both;">								<li class="gnb_sub_ttl"><a href="whats_new/wallpaper">월페이퍼</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="whats_new/store_event_list">매장별 이벤트</a></h3>								<p class="gnb_sub_ex_txt">스타벅스의 매장 이벤트 정보를 확인 하실 수 있습니다.</p>								<h3><a href="whats_new/wallpaper">월페이퍼</a></h3>								<p class="gnb_sub_ex_txt">매월 업데이트되는 월페이퍼(PC/Mobile)로 스타벅스를 더욱 가깝게 즐겨보세요!</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>		</ul></div>
			</nav>
		</div>
		<!-- 서브 gnb end -->
	</div>
</div>			

			
			<!-- container -->
			<div id="container">
				<!-- 서브 타이틀 -->
				<div class="sub_tit_wrap">
					<div class="sub_tit_inner">
					<!-- 0530다정 이미지링크불러오기 -->
						<h2><img src="../common/img/menu/order.png" alt="주문하기" style="width:100px"></h2>
						<ul class="smap">
							<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home.png" alt="홈으로"></a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li class="en"><a href="menu/index">MENU</a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<!-- 0527다정 --><li><a href="menu/myOrder" class="this">주문하기</a></li>
						</ul>
					</div>
				</div>
				<!-- 서브 타이틀 end -->
				
				
				
				
				<!-- 0527다정 결제페이지 제작 -->
				<!-- 내용 부분 -->
				<div class="content">
					<div class="order_wrap">
						<c:set var="productprice" value="0" />
						<div class="order_orderConfirm" style="margin-bottom: 50px;">
							<h3>주문내역 확인</h3><br><!-- 지혜0617 -->
							<div class="order_orderConfirm_inner" style="padding:15px;">
							<table>
								<tbody id="ordertbody">
									<c:forEach var="cate" items="${sessionScope.list }">
										<c:set var="keyVal" value="${cate.key }" />
										<c:choose>
											<c:when test="${keyVal == 'Drink'}">
												<c:forEach var="product" items="${sessionScope.list.Drink }">
													<c:if test="${sessionScope.saleCount[product.p_name] != null }"> <!-- 체크된것만 가져오기 -->
													<tr>
													<td><img src="${product.p_img }" class="order_list_img"></td>
													<td class="menu_list_info" style="width:520px; padding-left: 30px;" ><b>${product.p_name }</b>
													<br><span>${product.p_op }</span>
													</td>
													<td class="menu_list_price" style="width:150px; vertical-align: middle;">${product.p_price }원</td>
													<fmt:parseNumber value="${product.p_price}" type="number" var="numberType" />
													<c:set var="productprice" value="${productprice + numberType }" />
													</tr>
													</c:if>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:forEach var="product" items="${sessionScope.list.Food }">
													<c:set var="thisKey" value="${product.key }" />
													<c:if test="${sessionScope.saleCount[sessionScope.list[keyVal][thisKey].p_name] != null }">
													<tr>
													<td><img src="${sessionScope.list[keyVal][thisKey].p_img }" class="order_list_img"></td>
													<td class="menu_list_info" style="width:450px; padding-left: 30px;" ><b>${sessionScope.list[keyVal][thisKey].p_name }</b></td>
													<td class="menu_list_price" style="width:100px; vertical-align: middle;">${sessionScope.list[keyVal][thisKey].p_price }원</td>
													<fmt:parseNumber value="${sessionScope.list[keyVal][thisKey].p_price}" type="number" var="numberType" />
													<c:set var="productprice" value="${productprice + numberType }" />
													<c:set var="pname" value="${sessionScope.list[keyVal][thisKey].p_name }" />
													<td style="width:100px; vertical-align: middle;">${sessionScope.saleCount[pname] }개</td>
													</tr>
													</c:if>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</tbody>
							</table>
							</div>
							<div class="order_coupon&disc" style="margin-bottom: 50px;">
							<h3>쿠폰사용</h3><br>
							<c:set var="discount" value="0"/>
							<div class="order_coupon&disc_inner" style="text-align: center;">
								<table class="coupon" style="border:solid; border-color: #dfdfdf; font-size: 14px; margin:auto;">
								<thead>
									<tr>
										<th style="padding:25px; width: 230px;">사용 할 쿠폰명</th>
										<th style="padding:25px; width: 140px;">사용기한</th>
										<th style="padding:25px; width: 120px;">쿠폰금액</th>
									</tr>
									
								</thead>
								<tbody>
									<tr>
										<td style="padding:25px; width: 230px;" id="pon_name"></td>
										<td style="padding:25px; width: 140px;" id="pon_date"></td>
										<td style="padding:25px; width: 120px;" >
										<input type="text" id="pon_cost" style="border: none; width: 35px;" readonly="readonly" onclick="setCost();"/></td>
									</tr>
								</tbody>	
								</table>
								<c:if test="${sessionScope.userInfo.cupreward == 'D' && sessionScope.cupReward != null}">
									<p style="color: red;">* 리워드 할인이 적용되었습니다.</p>
									<c:set var="discount" value="${discount + (sessionScope.cupReward * 400) }"/>
								</c:if>
								<br>
								<input type="button" class="btn_coupon" value="쿠폰 검색" onclick="window.open('couponUse','COUPON 적용하기','width=700 ,height=315 ,location=no,status=no, scrollbars=yes')"><br>
							</div>
						</div>
							<div class="order_pay" style="margin-bottom: 50px;">
							<h3>결제수단</h3><br>
							<div class="order_pay_inner" style="text-align: center;">
								<input type="radio" name="payway" value="sbcard" checked="checked" style="margin-top: 50px; width:20px;height:20px;border:1px;">
								<input type="button" value="스타벅스 카드" class="btn_pay" style="background: #006633; color: white">
								<input type="radio" name="payway" value="kakao" style="margin-top: 50px; margin-left: 50px; width:20px;height:20px;border:1px;">
								<input type="button" value="Kakao Pay" class="btn_pay" style="background: #fae100;" ><br>
							</div>
						</div>
						</div>
						<div class="order_finalConfirm" style="margin-bottom: 50px;">
							<h3>최종 결제 금액</h3>
							<div class="order_finalConfirm_inner" style="text-align: right; table-layout: auto;">
								<table align="right" style="border:none; font-style: normal;" >
									<tr>
										<td><label>제품 금액&nbsp;&nbsp;</label></td>
										<td><label class="productMoney" style="font-size: 17px;">${productprice } 원</label>
										</td>
									</tr>
									<tr>
										<td><label style="color:red;">할인 금액&nbsp;&nbsp;</label></td>
										<td><label class="discountMoney" style="font-size: 17px; color:red;">${discount } 원</label></td>
									</tr>
								</table>
								<br><br><br>
								<p>
									<label>최종 결제 금액&nbsp;&nbsp;</label>
									<label class="payMoney" style="font-size: 27px;">${productprice - discount} 원</label>
								</p>
							</div>
						</div>
						<!-- <div class="order_orderbtn" style="margin-bottom: 50px;">
							<h3>결제화면</h3>
						</div> -->
						<input type="hidden" id="ponNo" value="">
						<input type="hidden" id="cardNum" value="" onclick="cardPayment();">
						<input type="hidden" id="cardMoney" value="">
						<div class="order_submit" style="margin: auto; text-align: center;">
							<input type="button" value="결제" class="submitResetBtn" onclick="payment();" style="background: #006633; color: white;">
							<input type="button" value="취소" class="submitResetBtn" onclick="resetOrder();" style="background: #f6f6f6; ">
						</div>
						
					</div>
				</div>
			<!-- container end -->
			
			




		
			<!-- footer -->
			<footer id="footer"> 
				<div class="footer_wrap">
					<div class="footer_menus">
						<ul class="footer_first_menu">
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">CUSTOMER SERVICE &amp; IDEAS<span class="footer_arrow_down"></span></a></li>
							<li><a href="util/faq">자주 하는 질문</a></li><!-- 20210809 수정 -->
							<li><a href="customer/suggestionWrite">고객의 소리</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 이용 팁<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="util/web_tip">홈페이지 이용 팁</a></li>
									<li><a href="util/app_tip">애플리케이션 이용 팁</a></li>
									<li><a href="util/partnership_card">제휴카드 안내</a></li>
								</ul>
							</li>
							<li><a href="util/online_survey">고객 경험 설문조사</a></li> <!-- 20210811 수정  -->
							
							
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">COMPANY<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/company/index">한눈에 보기</a></li>
							<li><a href="footer/company/mission">스타벅스 사명</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 소개<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="footer/company/starbucks_information">스타벅스 코리아</a></li> <!-- 220118 수정 -->
									<li><a href="footer/company/starbucks_history">주요 연혁</a></li> <!-- 202107 수정 -->
									<li><a href="footer/company/starbucks_story">스타벅스 이야기</a></li>
								</ul>
							</li>
							<li><a href="footer/company/news_list">국내 뉴스룸</a></li>
							<li><a href="footer/company/global_starbucks">세계의 스타벅스</a></li>
							<!-- 160811 메뉴 추가 -->
							<li><a href="https://news.starbucks.com" target="_blank">글로벌 뉴스룸</a></li>
							<!-- 160811 메뉴 추가 end -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" id="goPage" href="javascript:void(0);">CORPORATE SALES<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/co_sales/index">단체 및 기업 구매 안내</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/partnership/new_partner">신규 입점 제의</a></li>
							<!-- <li><a href="footer/partnership/portal_systems">협력사 포털 시스템</a></li> -->
							<li><a href="srm/login">협력 고객사 등록신청</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">ONLINE COMMUNITY<span class="footer_arrow_down"></span></a></li>
							<li><a href="https://www.facebook.com/starbuckskorea" target="_blank">페이스북</a></li>
							<li><a href="https://twitter.com/StarbucksKorea" target="_blank">트위터</a></li>
							<li><a href="https://www.youtube.com/user/starbuckskorea" target="_blank">유튜브</a></li>
							<li><a href="https://instagram.com/starbuckskorea/" target="_blank">인스타그램</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">RECRUIT<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/recruit/index">채용 소개</a></li>
							<li><a href="http://job.shinsegae.com/recruit_info/notice/notice02_view.jsp?notino=5924" target="_blank">채용 지원하기</a></li><!-- 20210927 수정 -->
						</ul>
					</div>
				</div>
				<div class="footer_util_btn">
					<ul>
						<li><a href="/">HOME</a></li>
						<li>
							<a href="javascript:$.loginLib.showLayerLogin();" class="sign_in" style="display: none;">Sign In</a>
							<a href="javascript:$.loginLib.logout();" class="sign_out" style="">Sign Out</a>
						</li>
						<li class="last" style="display: none;"><a href="mem/join1">Join Us</a></li>
					</ul>
				</div>
				<!-- 수상내역 -->
				<div class="footer_awards_wrap">
					<div class="footer_awards_wrap_inner">		<ul class="footer_awards_slider">			<li><a taget="_blank" href="javascript:void(0);"><img alt="여섯가족부 2020 대한민국 일자리대상 여성가족부장관상" src="//image.istarbucks.co.kr/common/img/footer/footer_award23.jpg"></a></li>			<li><a taget="_blank" href="javascript:void(0);"><img alt="행정안전부 2020 소방의 날 행정안전부장관 표창" src="//image.istarbucks.co.kr/common/img/footer/footer_award24.jpg"></a></li>			<li><a taget="_blank" href="javascript:void(0);"><img alt="농림축산식품부 2020 대한민국 커피산업대상 농림축산식품부 장관상" src="//image.istarbucks.co.kr/common/img/footer/footer_award25.jpg"></a></li>			<li><a taget="_blank" href="javascript:void(0);"><img alt="산업통상자원부 2020 대한민국 중소중견기업혁신 대상 국회산업통상자원중소벤처위원회장상" src="//image.istarbucks.co.kr/common/img/footer/footer_award26.jpg"></a></li>			<li><a taget="_blank" href="javascript:void(0);"><img alt="일자리위원회 2020 대한민국 일자리 유공 표창 대통령직속 일자리위원회 부위원장상" src="//image.istarbucks.co.kr/common/img/footer/footer_award27.jpg"></a></li>			<li><a taget="_blank" href="javascript:void(0);"><img alt="동반성장위원회 2020 사랑나눔 사회공헌대상 동반성장위원회 위원장상" src="//image.istarbucks.co.kr/common/img/footer/footer_award28.jpg"></a></li>		</ul>
						<div class="footer_slider_controller">
							<div class="footer_slider_controls"></div>
							<div class="footer_slider_pagers"></div>
						</div>
					</div>
				</div>
				<!-- 수상내역 end -->
                
                <!-- Express DT MSR 회원 확인 Popup -->
				<div class="dtPop ecoPop" id="msrCheckPop" style="display: none; margin-top: -51px;">
					<div class="head">
						<p class="tt"></p>
						<p id="dtPopCommonCloseBtn" class="close dtPopClose"><a href="javascript:void(0)"></a></p> <!-- 팝업 닫힘 클래스 : dtPopClose -->
					</div>  
					<div id="Msr" class="dtPopInner left" style="display:none">
						<p>[My DT Pass]는 스타벅스 카드를<br>
						등록한 회원만 이용 가능한 서비스입니다.<br>
						카드를 등록하시겠어요?
						</p>
						<br>
						<input type="hidden" id="dtsPwdchk2">
						<input type="hidden" id="dtsPwdchk">
					</div>
					<div class="dtPopBtn">
						<a id="dtPopPwdCheckBtnMsr" class="dtPopBtn1 confirm pwdCheckBtn">확인</a>
						<a id="dtPopCancelBtnMsr" class="dtPopBtn2 cancel">취소</a>
						<a id="dtPopCommonBtnMsr" class="dtPopBtn2 commonBtnMsr" style="display:none">확인</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- 개인컵 리워드  MSR 회원 확인 Popup s-->
				<div class="dtPop ecoPop" id="msrCheckPop_rewardTumbler" style="display: none; margin-top: -51px;">
					<div class="head">
						<p class="tt">스타벅스 리워드 등록 안내</p>  <!-- 스타벅스 리워드 수정  -->
						<p id="tumblerPopCommonCloseBtn" class="close ecoPopClose"><a href="javascript:void(0)"></a></p> <!-- 팝업 닫힘 클래스 : dtPopClose -->
					</div>  
					<div id="msrCheckPop_rewardTumblerContents" class="dtPopInner ecoPopDs left" style="display:none">
						<p>[개인컵 리워드 설정]은 스타벅스 카드를<br>
						등록한 회원만 이용 가능한 서비스입니다.<br>
						카드를 등록하시겠어요?</p>
						<br>
					</div>
					<div class="dtPopBtn">
						<a id="tumblerPopConfirmBtn" class="dtPopBtn1 confirm pwdCheckBtn">확인</a>
						<a id="tumblerPopCancelBtn" class="dtPopBtn2 cancel">취소</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- 개인컵 리워드  MSR 회원 확인 Popup e-->
				<div class="dt_pop_up_dimm" style="display:none"></div>
				<br><br>
				<!-- 150517 추가 - 문진욱 -->
				<aside class="copyright">
					<a class="c_00b050" href="footer/etc/privacy">개인정보처리방침</a>
					<a href="footer/etc/rules_vod" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="footer/etc/rules">홈페이지 이용약관</a>
					<a href="footer/etc/rules_loc" class="mbn">위치정보 이용약관</a>
					<a href="footer/etc/rules_msr" class="mbn">스타벅스 카드 이용약관</a>
					<a href="footer/etc/rules_non" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="footer/etc/rules_mdp">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="footer/etc/hotline" class="last">윤리경영 핫라인</a>
					<br>
					<a class="btned_link" href="footer/etc/coming_route">찾아오시는 길</a>
					<a class="btned_link" href="footer/partnership/new_partner">신규입점제의</a>
					<a class="btned_link" href="footer/etc/sitemap">사이트 맵</a><br>
					<ul class="copy_menu">
						<li>사업자등록번호 : 201-81-21515</li>
						<li>주식회사 에스씨케이컴퍼니 대표이사 : 송 데이비드 호섭</li> <!-- 220105 수정 -->
						<li>TEL : 1522-3232</li>
						<li>개인정보 책임자 : 하익성</li><!-- 20210125 수정 -->
					</ul>
					<span class="en">ⓒ 2022 Starbucks Coffee Company. All Rights Reserved.</span>
				</aside>
				<!-- 150517 추가 - 문진욱 end -->
			</footer>
			<!-- footer end -->
		
			
			<script src="//image.istarbucks.co.kr/common/js/jquery-1.10.2.min.js"></script>
			<script src="https://image.istarbucks.co.kr/common/js/@common.js"></script>
			<script src="https://image.istarbucks.co.kr/common/js/jquery-ui.min.js?v=220207"></script>
			<script src="//image.istarbucks.co.kr/common/js/idangerous.swiper-2.1.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/idangerous.swiper.scrollbar-2.1.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.bxslider.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/skdslider.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.drive.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.easing-1.3.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.elevatezoom.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.flip.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.jsmovie.1.4.4.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.mCustomScrollbar.concat.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.number.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.rotate.2.3.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.scrollbar.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.scrollTo-1.4.2-min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.superscrollorama.js"></script>						
			<script src="//image.istarbucks.co.kr/common/js/jquery.transform2d.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.transform3d.js"></script>			
			<script src="//image.istarbucks.co.kr/common/js/greensock/TweenMax.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/masonry.pkgd.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/common.js"></script>
			<script src="../common/js/gnb.js?v=220502"></script>
			<script src="../common/js/header.js?v=200915"></script>
			<script src="//image.istarbucks.co.kr/common/js/footer.js?v=210818"></script>

			<script src="//image.istarbucks.co.kr/common/js/jquery.ezmark.min.js"></script>
			
		
			<script src="//image.istarbucks.co.kr/common/js/openevent/openevent.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/open_event_control.js"></script>
			

			<script src="//image.istarbucks.co.kr/common/js/jquery.transit.min.js"></script>
						
			<script src="//image.istarbucks.co.kr/common/js/makePCookie.js"></script>
		
			
		</div>
		
		<script src="../common/js/jquery.ezmark.min.js"></script>
        <script src="../common/js/menu.js"></script>
        <script src="../common/js/jquery.async.min.js"></script>
        <script src="../common/js/menu/patch4sm.js"></script>
        <script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		<!-- 아임포트 -->
		<script src ="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
		        
<script type="text/javascript">//결제페이지-지혜0620
	var req;
	var reward = "<c:out value='${sessionScope.userInfo.cupreward}'/>";
	var IMP = window.IMP;
	var code = "imp86654742"; //가맹점 식별코드
	IMP.init(code);
	
	$(document).ready(function(){
		
		__ajaxCall("starbucks/interface/checkLogin", {}, true, "json", "post"
   			,function (_response) {
   				if (_response.result_code == "FAIL") {
   					alert("로그인이 필요한 기능 입니다.");
   					location.href = "../login/login";
   				}
   			}
   			,function (_error) {
   			}
   		);
	});
	
	function payment(){
		price = $(".payMoney").text().slice(0, -2);
		payway = $("input[name='payway']:checked").val();
		couponNum = $("#ponNo").val();
		
		var msg;
		if(payway == 'kakao'){//카카오페이결제시
			//결제요청
			IMP.request_pay({
				//name과 amout만있어도 결제 진행가능
				pg : 'kakao', //pg사 선택 (kakao, kakaopay 둘다 가능)
				pay_method: 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '스타벅스 음료 및 푸드', // 상품명
				amount : price,
				buyer_name : '<c:out value="${sessionScope.userinfo.id }"/>',
				buyer_tel : '010-1234-1234',  //필수항목
			}, function(rsp){
				if(rsp.success){//결제 성공시 판매날짜랑 판매수단, 가격
					msg = '결제가 완료되었습니다';
					
					var objParam = {
					"pay_date" : new Date(),
					"amount" : rsp.paid_amount,
					"method" : 'kakao',
					"couponNum" : couponNum
					}
					
					req = new XMLHttpRequest();
					req.onreadystatechange = resultAjax;
					req.open('post', 'payment')
					data = JSON.stringify(objParam);//json의 자료형으로 변경해주기
					//data의 타입 지정하기. 서버에서 확인하여 JSON의 타입으로 처리할 수 있다.
					req.setRequestHeader('Content-Type', 'application/json; charset=UTF-8')
					req.send(data);
				}
				else{//결제 실패시
					msg = '결제에 실패했습니다';
					msg += '에러 : ' + rsp.error_msg
					alert(msg);
				}
			});//pay
			
		}else{//스벅카드결제시
			//카드목록창 open
			window.open('cardChoice','카드 선택하기','width=700 ,height=700 ,location=no,status=no, scrollbars=yes');
			//값 선택시 히든input에 카드잔액&카드num받아오기.
			//강제 액션넣어 function동작
		}
	}
	
	function resetOrder(){
		$.ajax({
            type : "POST",
            url : "resetOrderAjax",
            dataType : "text",
            error : function(){
                alert('통신실패!!');
            },
            success : function(_response){
            	location.href = 'orderList';
            }
        });
	}
	
	function resultAjax(){
		if(req.readyState == 4 && req.status == 200){
			var _response = req.responseText;
			if (_response == 1) {
				msg = "주문을 완료하였습니다.\n주문내역은 마이페이지 > 전자영수증에서 확인 가능합니다.";
			} else {
				msg = ("통신실패");
			}
			alert(msg);
			location.href = '${pageContext.request.contextPath}/index';
		}
	}
	
	function cardPayment(){
		var card_num = $("#cardNum").val();
		var card_money = parseInt($("#cardMoney").val());
		var ponno = $("#ponNo").val();
		console.log(ponno);
		
		if(card_num == ''){
			alert("결제실패: 선택된 카드가 없습니다.");
		}else{
			if(card_money >= price){
				var objParam = {
					"pay_date" : new Date(),
					"amount" : price,
					"method" : 'sbcard',
					"couponNum" : ponno,
					"card_num" : card_num
				}
					
				req = new XMLHttpRequest();
				req.onreadystatechange = resultAjax;
				req.open('post', 'payment')
				data = JSON.stringify(objParam);//json의 자료형으로 변경해주기
				//data의 타입 지정하기. 서버에서 확인하여 JSON의 타입으로 처리할 수 있다.
				req.setRequestHeader('Content-Type', 'application/json; charset=UTF-8')
				req.send(data);
			}else{
				alert("결제실패: 카드 잔액이 부족합니다. 충전해주세요.");
				location.href = '${pageContext.request.contextPath}/my/mycard_charge_1';
			}
		}
	}
	
	function setCost(){
		var pondis = parseInt($('#pon_cost').val());
		var discount = parseInt($('.discountMoney').text().slice(0, -2));
		var discost = pondis + discount;
		var paycost = parseInt($('.payMoney').text().slice(0, -2));
		var finalcost = paycost - discost;
		$('.discountMoney').text(discost + ' 원');
		$('.payMoney').text(finalcost + ' 원');
	}
</script>
<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div></body></html>