<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko"><head>
        








<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type" content="website">
<meta property="og:title" content="Starbucks">
<meta property="og:url" content="https://www.starbucks.co.kr/">
<meta property="og:image" content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">My Starbucks | Starbucks Korea</title> <!-- 220117 수정 -->
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

<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<link href="../common/css_ie/style.css" rel="stylesheet">
	<script>
		document.createElement('header');
		document.createElement('nav');
		document.createElement('section');
		document.createElement('figure');
		document.createElement('article');
		document.createElement('aside');
		document.createElement('footer');
	</script>
<![endif]-->



<script src="https://connect.facebook.net/ko_KR/sdk.js?hash=dacbf8f392fd5e735129cf987aa7fea5" async="" crossorigin="anonymous"></script>
<script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script><script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66158138-1', 'auto');
  ga('send', 'pageview');
</script>





<script type="text/javascript">
var eFrequencyYn = 'Y';
var eFrequencySeq = '172';
var eFrequencyPlannerYn = 'Y';
</script>

        
	<link href="../common/css/style_mem.css?v=161014" rel="stylesheet">
    <style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style></head>
    <body class="vsc-initialized" style=""><div class="loading_dimm" style="display:none; z-index:20000;"></div><div class="loading_img" style="display:none; z-index:20001;"></div>
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
					<!-- MSR 회원 -->
					<div class="user_level" style="display:none;">
						<a href="my/reward">
							<p class="level_star_bg en">0</p>
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en userGrade">Gold Level</strong><br /><strong>무료음료</strong> 획득 별까지<br><strong class="necessaryStar">0개</strong> 남았습니다. --></p>
						</a>
					</div>
					<!-- MSR 회원 end -->
					
					<!-- 일반회원 -->
					<div class="msr_lead">
						<a href="msr/msreward/level_benefit">
							<p class="icon_msr_cup"></p>
							<p class="msr_lead_txt"><strong>스타벅스 리워드</strong><br>혜택에 편리함까지 더한<br>스타벅스 리워드를<br>즐겨보세요.</p> <!-- 스타벅스 리워드 수정 -->
						</a>
					</div>
					<!-- 일반회원 end -->
					<!-- 유저레벨 end -->

					<span class="msr_sep_line"></span>

					<!-- 카드인포 -->
					<!-- MSR 회원 -->
					<!-- 150805 DOM 수정 -->
					<div class="msr_card_info w_card_pic">
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index';" style="cursor:pointer;"><img alt=""></p>
						<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="my/mycard_index">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<div class="msr_card_zone m_card_pic">
						<div class="mycard_area1">
							<img alt="카드이름">
						</div>
						<div class="mycard_area2">
							<img alt="카드이름" src="//image.istarbucks.co.kr/common/img/common/mycard2.png">
							<p class="num"><!-- 1234-1234-1234-1234 --></p>
							<p class="barcord"><!-- <img src="//image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> --></p>
						</div>
						<div class="mycard_one" style="transform: rotateY(279.198deg);">
							<!-- <div class="front"> -->
							<img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt="">
							<!-- </div> -->
							<!-- <div class="back"><img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt=""></div> -->
						</div>
						<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="my/mycard_index">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<!-- 150805 DOM 수정 -->
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
					<div class="sb_card_regi">
						<a href="javascript:void(0);">
							<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input';"><img alt="카드등록 아이콘" src="//image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
							<p class="sb_card_regi_txt"><strong>스타벅스 카드 등록</strong><br>카드를 등록하시고<br>다양한 리워드를<br>만나보세요.</p>
						</a>
					</div>
					<!-- 일반회원 end -->
					<!-- 카드인포 end -->

					<!-- 일반 회원 -->
					<!-- 일반 회원 end -->

					<span class="msr_sep_line"></span>
					<!-- 알림아이콘 -->
					<div class="notice_icons">
						<div class="notice_icon2">
							<a href="my/calendar">
								<p></p>
								<span>캘린더</span>
							</a>
						</div>
						<div class="notice_icon3">
							<a href="my/ecoupon">
								<p>
									<span class="validCoupontCnt">0</span>
								</p>
								<span>e-쿠폰</span>	
							</a>
						</div>
						
						<!-- 20170510 추가 : 아이콘추가 -->
						<div class="notice_icon4">
							<a href="eFreq/status?TYPE=BARCODE">
								<p></p>
								<span>e-프리퀀시<br>바코드</span>
							</a>
						</div>
						<!--// 20170510 추가 : 아이콘추가 -->
						
					</div>
					<!-- 알림아이콘 end -->
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
					<div class="top_msr_nologin_r">
						<i class="icon_sbcard_lead"></i>
						<p class="sbcard_lead_txt"><strong>스타벅스 카드를 가지고 계신가요?</strong><br>스타벅스 카드를 등록하시면, 스타벅스 리워드 만의<br>특별한 혜택을 누릴 수 있습니다.</p> <!-- 스타벅스 리워드 수정 -->
						<p class="btn_sbcard_regi">
							<a href="my/mycard_info_input">카드 등록</a>
						</p>
					</div>
					<!-- 160628 수정 -->
					<div class="top_msr_nologin_b">
						<p class="egift_lead_txt"><strong>스타벅스 카드가 없으신가요?</strong><br>스타벅스 매장에서 구매하시거나,<br>PC/모바일웹, 스타벅스 앱에서<br>e-Gift를 “나에게 선물하기”로 구매 후,<br>편리하게 등록하세요!<br>스타벅스 리워드의 특별한 혜택! 생일 쿠폰을 드립니다!</p>
						<p class="btn_egift_regi">
							<a href="msr/sceGift/gift_step1">e-Gift 선물하기</a>
						</p>
					</div>
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
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2" style="width: 90px; height: 90px; overflow: hidden;"><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/001.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/002.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/003.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/004.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/005.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/006.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/007.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/008.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/009.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/010.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/011.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/012.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/013.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/014.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/015.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/016.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/017.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/018.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/019.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/020.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/021.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/022.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/023.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/024.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/025.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/026.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/027.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/028.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/029.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/030.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/031.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/032.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/033.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/034.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/035.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/036.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/037.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/038.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/039.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/040.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/041.png&quot;);"></div><div class="jsMovieFrame" style="display: block; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/042.png&quot;);"></div><div id="jsMovie_event_overlay" style="width: 90px; height: 180px; margin-top: -180px;"></div><div id="jsMovie_image_preload_container"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/001.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/002.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/002.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/003.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/003.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/004.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/004.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/005.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/005.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/006.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/006.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/007.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/007.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/008.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/008.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/009.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/009.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/010.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/010.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/011.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/011.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/012.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/012.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/013.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/013.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/014.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/014.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/015.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/015.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/016.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/016.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/017.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/017.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/018.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/018.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/019.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/020.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/021.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/019.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/022.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/020.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/023.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/021.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/024.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/022.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/025.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/023.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/026.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/024.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/027.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/025.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/028.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/026.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/029.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/027.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/030.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/028.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/031.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/029.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/032.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/033.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/034.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/035.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/030.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/036.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/031.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/037.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/032.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/038.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/033.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/034.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/039.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/035.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/036.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/037.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/038.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/039.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/040.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/041.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/042.png" alt="" style="height: 1px; width: 1px;"></div></span></a></li><!-- 150709 클레스 수정 -->
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
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/mycard_none">보유 카드</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/mycard_info_input">카드 등록</a></li>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/mycard_none">카드 충전</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="msr/sceGift/gift_step1">선물하기</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/ecoupon" required="login">등록하기</a></li>
									<li><a href="my/couponList" required="login">보유 쿠폰 내역</a></li>
								</ul>
							</li>
							<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/my_menu">My 메뉴</a></li>
							<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/eReceiptList">전자영수증</a></li>
							<li class="msRnb_btn" style="display: none;"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
							<li style="display: none;"><a href="javascript:void(0);" required="login" data-href="my/dtpass">My DT Pass</a></li>
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
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="menu/card_list">전체보기</a></li>
									<li style="display: none;"><a href="menu/card_list?CATE_CD=product_offline">실물카드</a></li>
									<li style="display: none;"><a href="menu/card_list?CATE_CD=product_egift">e-Gift 카드</a></li>
								</ul>
							</li>
							<!-- <li>
								<a href="wholecake/reserve_cake01">온라인 케익 예약 span class="mob_gnb_arrow_down"></span</a>
								<ul>
									<li><a href="javascript:void(0);">케익선택</a></li>
									<li><a href="javascript:void(0);">예약정보입력</a></li>
									<li><a href="javascript:void(0);">예약완료</a></li>
								</ul>
							</li> -->
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">메뉴 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="store/store_nitro_coldbrew">나이트로 콜드브루</a></li>
									<li style="display: none;"><a href="store/store_coldbrew">콜드 브루</a></li>
									<li style="display: none;"><a href="menuStory/teavana">스타벅스 티바나</a></li>
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
							<li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en" href="javascript:void(0);">RESPONSIBILITY<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li style="display: none;"><a href="responsibility/index">한눈에 보기</a></li>
							<li style="display: none;"><a href="responsibility/starbucks_shared_planet">사회공헌 캠페인 소개</a></li> <!-- 20210820 메뉴명 수정 -->
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">지역 사회 참여 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="responsibility/hope_delivery">희망배달 캠페인</a></li>
									<li style="display: none;"><a href="responsibility/talent_donation">재능기부 카페 소식</a></li>
									<li style="display: none;"><a href="responsibility/community_store">커뮤니티 스토어</a></li>
									<li style="display: none;"><a href="responsibility/youth_resource">청년 지원 프로그램</a></li><!-- 202107 메뉴명 수정 -->
									<li style="display: none;"><a href="responsibility/our_agriculture">우리 농산물 사랑 캠페인</a></li>
									<li style="display: none;"><a href="responsibility/our_culture_defend">우리 문화 지키기</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">환경보호 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="responsibility/environment">친환경 활동</a></li><!-- 202107 메뉴명 수정 -->
									<li style="display: none;"><a href="responsibility/no_disposable_cup">일회용 컵 없는 매장</a></li>
									<li style="display: none;"><a href="responsibility/bean_recycling">커피 원두 재활용</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">윤리 구매<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="responsibility/ethically_sourcing">윤리적 원두 구매</a></li>
									<li style="display: none;"><a href="responsibility/fair_trade">공정무역 인증</a></li>
									<li style="display: none;"><a href="responsibility/farmer_support">커피 농가 지원 활동</a></li>
								</ul>
							</li>
							<li style="display: none;">
								<a role="button" href="javascript:void(0);">글로벌 사회 공헌<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li style="display: none;"><a href="responsibility/sp_ethical_management">윤리경영 보고서</a></li>
									<li style="display: none;"><a href="responsibility/starbucks_foundation">스타벅스 재단</a></li>
									<li style="display: none;"><a href="responsibility/sp_global_month">지구촌 봉사의 달</a></li>
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
									<li style="display: none;"><a href="my/reward">등록 및 조회</a></li>
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
	<li class="util_nav01 sign_out" style=""><a href="/starbucks/login/logout">Sign out</a></li>
	<li class="util_nav01 sign_in" style="display: none;"><a href="/starbucks/login/login">Sign In</a></li>
	<li class="util_nav02"><a href="/starbucks/my/index">My Starbucks</a></li>
	<li class="util_nav03"><a href="/starbucks/menu/orderList">Order</a></li>
	<li class="util_nav04"><a href="/starbucks/store/store_map">Find a Store</a></li>
</ul>
				</nav>
				<a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3" style="width: 53px; height: 45px; overflow: hidden;"><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/001.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/002.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/003.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/004.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/005.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/006.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/007.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/008.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/009.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/010.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/011.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/012.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/013.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/014.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/015.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/016.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/017.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/018.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/019.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/020.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/021.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/022.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/023.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/024.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/025.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/026.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/027.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/028.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/029.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/030.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/031.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/032.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/033.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/034.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/035.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/036.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/037.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/038.png&quot;);"></div><div class="jsMovieFrame" style="display: block; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/039.png&quot;);"></div><div id="jsMovie_event_overlay" style="width: 53px; height: 90px; margin-top: -90px;"></div><div id="jsMovie_image_preload_container"><img src="//image.istarbucks.co.kr/common/img/common/rcup/login/001.png" alt="" style="height: 1px; width: 1px;"></div></span></a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
			</div>
			<nav class="sub_gnb_nav">
				<div class="sub_gnb_nav_inner">		<ul>			<!-- COFFEE -->			<li class="gnb_nav01">				<h2><a href="coffee/index" class="">COFFEE</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="coffee/product_list">커피</a></li>								<li><a href="coffee/product_list">스타벅스 원두</a></li>								<li><a href="coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>								<li><a href="coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/productFinder">나와 어울리는 커피</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/reserve_info">스타벅스 리저브™</a></li>								<li><a href="coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/espresso">에스프레소 음료</a></li>								<li><a href="coffee/doppio">도피오</a></li>								<li><a href="coffee/espresso_macchiato">에스프레소 마키아또</a></li>								<li><a href="coffee/americano">아메리카노</a></li>								<li><a href="coffee/caramel_macchato">마키아또</a></li>								<li><a href="coffee/cappuccino">카푸치노</a></li>								<li><a href="coffee/latte">라떼</a></li>								<li><a href="coffee/mocha">모카</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="coffee/higher_enjoy">최상의 커피를 즐기는 법</a></li>								<li><a href="coffee/higher_enjoy">커피 프레스</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>								<li><a href="coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>							</ul>							<ul style="padding-top: 30px; clear: both;">								<li class="gnb_sub_ttl"><a href="coffee/story">커피 이야기</a></li>								<li><a href="coffee/story">농장에서 우리의 손으로</a></li>								<li><a href="coffee/story?PACKAGE=02">최상의 아라비카 원두</a></li>								<li><a href="coffee/story?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>								<li><a href="coffee/story?PACKAGE=05">스타벅스 디카페인</a></li>								<li><a href="coffee/story?PACKAGE=04">클로버® 커피 추출 시스템</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="coffee/productFinder">나와 어울리는 커피 찾기</a></h3>								<p class="gnb_sub_ex_txt">스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>								<h3><a href="coffee/higher_enjoy">최상의 커피를 즐기는 법</a></h3>								<p class="gnb_sub_ex_txt">여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<!-- COFFEE end -->			<!-- MENU -->			<li class="gnb_nav02">				<h2><a href="menu/index" class="">MENU</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="menu/drink_list">음료</a></li>								<li><a href="menu/drink_list?CATE_CD=product_cold_brew">콜드 브루</a></li>								<li><a href="menu/drink_list?CATE_CD=product_brood">브루드 커피</a></li>								<li><a href="menu/drink_list?CATE_CD=product_espresso">에스프레소</a></li>								<li><a href="menu/drink_list?CATE_CD=product_frappuccino">프라푸치노</a></li>								<li><a href="menu/drink_list?CATE_CD=product_blended">블렌디드</a></li>								<li><a href="menu/drink_list?CATE_CD=product_fizzo">스타벅스 피지오</a></li>								<li><a href="menu/drink_list?CATE_CD=product_tea">티(티바나)</a></li>								<li><a href="menu/drink_list?CATE_CD=product_etc">기타 제조 음료</a></li>								<li><a href="menu/drink_list?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="menu/food_list">푸드</a></li>								<li><a href="menu/food_list?CATE_CD=product_bakery">브레드</a></li>								<li><a href="menu/food_list?CATE_CD=product_cake">케이크</a></li>								<li><a href="menu/food_list?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>								<li><a href="menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a></li>								<li><a href="menu/food_list?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>								<li><a href="menu/food_list?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>								<li><a href="menu/food_list?CATE_CD=product_icecream">아이스크림</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="menu/product_list">상품</a></li>								<li><a href="menu/product_list?CATE_CD=product_mug">머그</a></li>								<li><a href="menu/product_list?CATE_CD=product_glass">글라스</a></li>								<li><a href="menu/product_list?CATE_CD=product_plastic">플라스틱 텀블러</a></li>								<li><a href="menu/product_list?CATE_CD=product_stainless">스테인리스 텀블러</a></li>								<li><a href="menu/product_list?CATE_CD=product_vacuum">보온병</a></li>								<li><a href="menu/product_list?CATE_CD=product_accessories">액세서리</a></li>								<li><a href="menu/product_list?CATE_CD=product_present">선물세트</a></li>								<li><a href="menu/product_list?CATE_CD=product_coffee">커피 용품</a></li>								<li><a href="menu/product_list?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="menu/card_list">카드</a></li>								<li><a href="menu/card_list?CATE_CD=product_offline">실물카드</a></li>								<li><a href="menu/card_list?CATE_CD=product_egift">e-Gift 카드</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a>메뉴 이야기</a></li>								<li><a href="store/store_nitro_coldbrew">나이트로 콜드브루</a></li>								<li><a href="store/store_coldbrew">콜드 브루</a></li>								<li><a href="menuStory/teavana">스타벅스 티바나</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="store/store_nitro_coldbrew">나이트로 콜드 브루 <img alt="" src="//image.istarbucks.co.kr/common/img/common/icon_gnb_new.png"></a></h3>								<p class="gnb_sub_ex_txt">나이트로 커피 정통의 물결치듯 흘러내리는 캐스케이딩과 부드러운 크림을 경험하세요. </p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<!-- MENU end -->			<li class="gnb_nav03">				<h2><a href="store/index" class="">STORE</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="store/store_map">매장 찾기</a></li>								<li><a href="store/store_map?disp=quick">퀵 검색</a></li>								<li><a href="store/store_map?disp=locale">지역 검색</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="store/store_drive">드라이브 스루 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="store/store_reserve">스타벅스 리저브™ 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="store/store_community">커뮤니티 스토어 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a>매장 이야기</a></li>								<li><a href="store/store_star_field">티바나 바 매장</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="store/store_map">매장찾기</a></h3>								<p class="gnb_sub_ex_txt">보다 빠르게 매장을 찾아보세요.</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<li class="gnb_nav04">				<h2><a href="responsibility/index" class="">RESPONSIBILITY</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/starbucks_shared_planet">사회공헌 캠페인 소개</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/hope_delivery">지역 사회 참여 활동</a></li>								<li><a href="responsibility/hope_delivery">희망배달 캠페인</a></li>								<li><a href="responsibility/talent_donation">재능기부 카페 소식</a></li>								<li><a href="responsibility/community_store">커뮤니티 스토어</a></li>								<li><a href="responsibility/youth_resource">청년 지원 프로그램</a></li>								<li><a href="responsibility/our_agriculture">우리 농산물 사랑 캠페인</a></li>								<li><a href="responsibility/our_culture_defend">우리 문화 지키기</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/environment">환경보호 활동</a></li>								<li><a href="responsibility/environment">친환경 활동</a></li>								<li><a href="responsibility/no_disposable_cup">일회용 컵 없는 매장</a></li>								<li><a href="responsibility/bean_recycling">커피 원두 재활용</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/ethically_sourcing">윤리 구매</a></li>								<li><a href="responsibility/ethically_sourcing">윤리적 원두 구매</a></li>								<li><a href="responsibility/fair_trade">공정무역 인증</a></li>								<li><a href="responsibility/farmer_support">커피 농가 지원 활동</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="responsibility/sp_ethical_management">글로벌 사회 공헌</a></li>								<li><a href="responsibility/sp_ethical_management">윤리경영 보고서</a></li>								<li><a href="responsibility/starbucks_foundation">스타벅스 재단</a></li>								<li><a href="responsibility/sp_global_month">지구촌 봉사의 달</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<li class="gnb_nav05">				<h2><a href="msr/index" class="">STARBUCKS REWARDS</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="msr/msreward/about">스타벅스 리워드</a></li>								<li><a href="msr/msreward/about">스타벅스 리워드 소개</a></li>								<li><a href="msr/msreward/level_benefit">등급 및 혜택</a></li>								<li><a href="msr/msreward/star">스타벅스 별</a></li>								<li><a href="community/faq?menu_cd=STB2703&amp;cate=F17">자주 하는 질문</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="msr/scard/about">스타벅스 카드</a></li>								<li><a href="msr/scard/about">스타벅스 카드 소개</a></li>								<li><a href="msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>								<li><a href="my/reward">등록 및 조회</a></li>								<li><a href="msr/scard/charge_information">충전 및 이용안내</a></li>								<li><a href="msr/scard/lost_report">분실신고/환불신청</a></li>								<li><a href="community/faq?menu_cd=STB2703&amp;cate=F05">자주 하는 질문</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card</a></li>								<li><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>								<li><a href="msr/sceGift/msr_useguide">이용안내</a></li>								<li><a href="javascript:void(0);" required="login" data-href="msr/sceGift/gift_step1">선물하기</a></li>								<li><a href="community/faq?menu_cd=STB2703&amp;cate=F22">자주 하는 질문</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="my/reward">스타벅스 카드 등록하기</a></h3>								<p class="gnb_sub_ex_txt">카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>			<li class="gnb_nav06">				<h2><a href="whats_new/index" class="">WHAT'S NEW</a></h2>				<div class="gnb_sub_wrap" style="display: none;">					<div class="gnb_sub">						<div class="gnb_sub_inner">							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/campaign_list">이벤트</a></li>								<li><a href="whats_new/campaign_list">전체</a></li>								<li><a href="whats_new/campaign_list?menu_cd=STB2812">스타벅스 카드</a></li>								<li><a href="whats_new/campaign_list?menu_cd=STB2813">스타벅스 리워드</a></li>								<li><a href="whats_new/campaign_list?menu_cd=STB2814">온라인</a></li>								<li><a href="whats_new/eFreq_gift">e-프리퀀시 증정품</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/news_list">뉴스</a></li>								<li><a href="whats_new/news_list">전체</a></li>								<li><a href="whats_new/news_list?cate=N01">상품 출시</a></li>								<li><a href="whats_new/news_list?cate=N02">스타벅스와 문화</a></li>								<li><a href="whats_new/news_list?cate=N03">스타벅스 사회공헌</a></li>								<li><a href="whats_new/news_list?cate=N04">스타벅스 카드출시</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/store_event_list">매장별 이벤트</a></li>								<li><a href="whats_new/store_event_list">일반 매장</a></li>								<li><a href="whats_new/store_event_list?search_date=1&amp;tab=1">신규 매장</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="eFreq/guide?promoSeq=172">e-프리퀀시</a></li>								<li><a href="eFreq/guide?promoSeq=172">이용안내</a></li>								<li><a href="javascript:void(0);" required="login" data-href="eFreq/status?promoSeq=172">이용현황</a></li>							</ul>							<ul>								<li class="gnb_sub_ttl"><a href="whats_new/notice_list">공지사항</a></li>							</ul>							<ul style="padding-top: 30px; clear: both;">								<li class="gnb_sub_ttl"><a href="whats_new/wallpaper">월페이퍼</a></li>							</ul>						</div>					</div>					<!-- 텍스쳐 bg -->					<div class="gnb_sub_txbg">						<div class="gnb_sub_tx_inner">							<div class="gnb_sub_tx_left">								<h3><a href="whats_new/store_event_list">매장별 이벤트</a></h3>								<p class="gnb_sub_ex_txt">스타벅스의 매장 이벤트 정보를 확인 하실 수 있습니다.</p>								<h3><a href="whats_new/wallpaper">월페이퍼</a></h3>								<p class="gnb_sub_ex_txt">매월 업데이트되는 월페이퍼(PC/Mobile)로 스타벅스를 더욱 가깝게 즐겨보세요!</p>							</div>							<div class="gnb_sub_tx_right">							</div>						</div>					</div>					<!-- 텍스쳐 bg end -->				</div>			</li>		</ul></div>
			</nav>
		</div>
		<!-- 서브 gnb end -->
	</div>
</div>			

<div id="container">
			<!-- 내용 -->
			<div class="find_mem_wrap">
				<form action="updatePwdProc" id="updatePwd" method="post">
				<div class="find_mem_inner">
					<strong class="find_mem_ttl">비밀번호 변경</strong>
					<div class="find_mem_form">
						<figure class="find_mem_sally">
								<img src="//image.istarbucks.co.kr/common/img/util/mem/icon_find_sally.png" alt="">
						</figure>
						
						<div class="find_mem_result">
							<p class="mem_result_txt">
								<span class="result_txt_sub">새로운 비밀번호로 변경 하실 수 있습니다.</span>
							</p>
						</div>
						
						<div class="renew_input_box">
							<strong>아이디</strong>
							<p class="nofix_name">${sessionScope.userInfo.id }</p>
							<input type="hidden" name="IS_DORMANCY" id="IS_DORMANCY" value="">
							<input type="hidden" name="user_id" id="user_id" value="">
						</div>
						<div class="renew_input_box">
							<strong>현재 비밀번호</strong>
							<input type="password" name="user_pwd" id="user_pwd" placeholder="비밀번호를 입력해 주세요." autocomplete="off">
							<p class="user_pwd_txt input_warn_text" id="warn_user_pwd"></p>
						</div>
						<div class="renew_input_box bd_none">
							<strong>새 비밀번호 </strong> <input type="password" name="user_pw1" id="user_pwd_new"
								maxlength="20" placeholder="영문, 숫자 혼합하여 10 ~ 20자리 이내로 입력하세요."
								data-warn_id="warn_user_pwd_new" autocomplete="off">
							<p class="limit_txt user_pwd_new_txt input_warn_text" id="warn_user_pwd_new"></p>
							<input type="password" name="user_pw2" id="user_pwd_new_chk" maxlength="20" placeholder="비밀번호를 다시 한번 입력해 주세요." data-warn_id="warn_user_pwd_new_chk" class="mt10" autocomplete="off">
							<p class="limit_txt user_pwd_new_chk_txt input_warn_text" id="warn_user_pwd_new_chk"></p>
						</div>
					</div>
					<p class="btn_mem_login">
						<input type="submit" value='확인' style="color:#fff;font-size:24px; display:block; line-height:65px; background: #006633; margin: auto; border-style: none; width: 530px; cursor:pointer;"/>
					</p>
				</div>
				</form>
			</div>
			<!-- 내용 end -->
		</div>



		
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
							<!-- <li><a href="footer/co_sales/sbcard_egift">스타벅스 <span class="en">e-Gift Card</span></a></li> -->
							<!-- <li><a href="footer/co_sales/sbcard">스타벅스 카드</a></li> -->
							<!-- <li><a href="footer/co_sales/co-branded"><span class="en">Co-branded</span> 카드</a></li> -->
							<!-- <li><a href="footer/co_sales/sb_product">스타벅스 상품</a></li> -->
							<!-- <li><a href="footer/co_sales/sbgift_certificate">스타벅스 상품권</a></li> -->
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
               <div class="footer_awards_wrap_inner">
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

			<script src="//image.istarbucks.co.kr/common/js/jquery.tmpl.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.tmplPlus.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.ezmark.min.js"></script>
			<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->
			
			<!--
			<script src="../common/js/swiper.jquery.min.js"></script>
			<script src="../common/js/swiper.min.js"></script>
			<script src="../common/js/util.js"></script>
			-->
			
		
			<script src="//image.istarbucks.co.kr/common/js/openevent/openevent.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/open_event_control.js"></script>
			<script type="text/javascript">
				
				var mrSlider;
				
				$(document).ready(function(){
										
					/* 20171204 kbs 페이지별 head 내 title 변경 */
					if( $('.smap li').last().text() == "" )
					{
						$('#titleJoin').text("Starbucks Korea"); //220117 수정
					}
					else
					{
						$('#titleJoin').text( $('.smap li').last().text() + " | Starbucks Korea" ); //220117 수정	
					}
					
					$('#pickDate1, #pickDate2').datepicker({
						 "dateFormat"      : "yy-mm-dd"
						/* ,"dayNamesMin"     : ['일', '월', '화', '수', '목', '금', '토'] */
						,"maxDate"         : "+0m +0w"
						/* ,"monthNamesShort" : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] */
					});
			
// 					var sbox = $('.my_ms_select select');
// 					sbox.change(function(){
// 						접근성_20171123 삭제
// 						var sbox_name = $(this).children('option:selected').text();
// 						$(this).siblings('label').text(sbox_name);
// 					});접근성_20171201 삭제

					/* s::20210714 수정 */
					/* 170201 수정 - 황기흠 */
					if ((myWindow > 640) && (myWindow <= 1200)) {
						var faSlider = $('.footer_awards_slider').bxSlider({
							minSlides:3,
							maxSlides:3,
							slideWidth:210,
							slideMargin:0,
							controls:false,
							auto:true,
							autoControls:true,
							autoControlsCombine:true,
							pause:3000,
							infiniteLoop: true,
							pagerSelector:'.footer_slider_pagers',
							autoControlsSelector:'.footer_slider_controls'
						});
					} else if (myWindow <= 640) {
						var faSlider = $('.footer_awards_slider').bxSlider({
							minSlides:1,
							maxSlides:1,
							slideWidth:320,
							slideMargin:0,
							controls:false,
							auto:true,
							autoControls:true,
							autoControlsCombine:true,
							pause:3000,
							infiniteLoop: true,
							pagerSelector:'.footer_slider_pagers',
							autoControlsSelector:'.footer_slider_controls'
						});
					}
					/* 170201 수정 - 황기흠 end */
					/* e::20210714 수정 */
					
					/* 구명준 추가 시작 탭 */			
					/* 20171127 중복 스크립트 삭제 coffee.js 내 존재 */
// 					$(".content_tabmenu > .tab").bind("click focusin", function(){
// 						if(!$(this).hasClass("on")) {
// 							$(this).parent().children(".on").removeClass("on");
// 							var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
// 							$(this).parent().children(".panel").hide().eq(index).show();
// 						}
// 						return false;
// 					});
// 					$(".content_tabmenu > .tab").bind("click focusout", function(){
// 						if(!$(this).hasClass("on")) {
// 							$(this).parent().children(".on").removeClass("on");
// 							var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
// 							$(this).parent().children(".panel").hide().eq(index).show();
// 						}
// 						return false;
// 					});
					/* 구명준 끝 */

					/* 150714 추가 - 박종현 */
					var itvChangeLink = setInterval(function() {
						if (m_jsonRewardSummary != null) {
							// 등록된 카드가 없으면 링크 변경
							if (m_jsonRewardSummary.cardInfo.cardNumber == "") {
								if (location.href.indexOf("my/") > -1) {
									var url = "my/mycard_none";
									
									$('a[data-href="my/mycard_index"]').attr("data-href", url);
									$('a[data-href="my/mycard"]').attr("data-href", url);
									$('a[data-href="my/mycard_charge"]').attr("data-href", url);
									$('a[data-href="my/mycard_lost"]').attr("data-href", url);
								}
							}
							
							// 로그인 상태에 따라 등록 및 조회 페이지 링크 변경
							if (m_jsonRewardSummary.msrMemberYn == "Y") {
								$('a[href="msr/scard/register_inquiry"]').attr("href", "my/mycard_info_input");
							} else {
								$('a[href="msr/scard/register_inquiry"]').attr("href", "my/reward");
							}
							
							clearInterval(itvChangeLink);
						}
					}, 150);
					/* 150714 추가 - 박종현 end */
					$('#goPage').bind('click', function(){
						if (myWindow > 640) {
							location.href="footer/co_sales/index";
						}
					});
					
                    /*kbs Express DT 접근 시 MSR 회원 체크, 비밀번호 체크*/
                    var dtPopHt = $('.dtPop').height() * -0.5;
                    $('.dtPop').css('margin-top',dtPopHt);
                    
                    $('#dtPopCancelBtn, #dtPopCommonCloseBtn, #dtPopCancelBtnMsr, #dtPopCommonCloseBtnMsr, .commonBtn, .commonBtnMsr').click(function(){
                        $('#msrCheckPop').fadeOut();
                        $('#commonPop').fadeOut();
                        $('.dt_pop_up_dimm').fadeOut();
                    });
                    
                    $('#dtClauseCloseBtn').click(function(){
                        $('#privatePop').fadeOut();
                    });
                    
					$('#dtClauseCloseXBtn').click(function(){
						$('#privatePop').fadeOut();
					});
                });
                
                /* 개인컵 리워드 s */
                function fn_rewardTumblerMsrCheck(){
                	fn_hideGnbMenu();
					var url = document.location.pathname;
					fn_showrewardTumblerMsrCheckLayer(url);
                }
                function fn_showrewardTumblerMsrCheckLayer(url){
                	/* 로그인 체크  */
                	$.ajax({
                    	type: 'post',
                    	url : '/edt/edtCheckLogin',
                    	data : {},
                    	dataType : 'json',
                    	jsonp : 'callback',
                    	success : function(_response){
                    		
                    		if(_response.result_code != "SUCCESS"){
                    			
                            	if(url.length == 0){
                            		url = location.href;
                            	}  
                            	location.href = "login/login?redirect_url=" + encodeURIComponent(url);
                    			
                     	//}else{
                    			//MSR 회원 여부 체크
                    			//if (m_jsonRewardSummary == null) {
                    				// $.ajax({
                                     //	type: 'post',
                                     	//url : '/interface/getMsrRewardSummary',
                                     	//data : {},
                                     	//dataType : 'json',
                                     	//jsonp : 'callback',
                                     	//async : false,
                                     	//success : function(_response){
                                     		//if (_response.result_code == "SUCCESS") {
												//m_jsonRewardSummary = jQuery.parseJSON(_response.data);
												//fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
											//}
                                     	//}
                                   	//}); 
								}else{
									
									fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
								}
                    	}
                    });
                }
                
                function fn_showrewardTumblerMsrCheckPopup(obj){
                	if( obj.msrMemberYn == "Y"){ /*msr 회원일 경우 페이지 이동*/
                		location.href = "my/reward_tumbler";
                    }else{/* msr 비회원일 경우 팝업창 노출 */
                        $('#msrCheckPop_rewardTumbler').fadeIn();
                        $('.dt_pop_up_dimm').fadeIn();
                        $('#msrCheckPop_rewardTumblerContents').show();
                        $('#tumblerPopConfirmBtn, #tumblerPopCancelBtn').show();
                        $('#tumblerPopConfirmBtn').on('click', function(){
                        	// msr 비회원일 경우 카드 등록 페이지로 이동
                        	location.href = "my/mycard_info_input";
                        });
                    }
                }
                $('#tumblerPopCommonCloseBtn, #tumblerPopCancelBtn').click(function(){
                    $('#msrCheckPop_rewardTumbler').fadeOut();
                    $('.dt_pop_up_dimm').fadeOut();
                    $('#msrCheckPop_rewardTumblerContents').hide();
                    $('#tumblerPopConfirmBtn, #tumblerPopCancelBtn').hide();
                });
                /* 개인컵 리워드 e */
			</script>

			<script src="//image.istarbucks.co.kr/common/js/jquery.transit.min.js"></script>
			<script>
				// 150805 DOM 수정
				$('div.msr_card_zone').bind('click', function(){
					if($('div.mycard_area2').css("display")=="none"){
						$('div.mycard_area1').hide();
						$('div.mycard_area2').fadeIn();
						$('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon2.png').attr('alt','결제하기'); // 접근성_20171106 alt 추가
					}else{
						$('div.mycard_area1').fadeIn();
						$('div.mycard_area2').hide();
						$('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon1.png').attr('alt', '결제완료');// 접근성_20171106 alt 추가
					}
				});
				// 150805 DOM 수정 end
			
				(function($) {
					$.fn.seqfx = function() {
						var elements = this,
							l = elements.length,
							i = 0;
		
						function execute() {
							var current = $(elements[i]);
							i = (i + 1) % l;
		
							current
								.animate({ rotateY: '360deg' }, 2000)
								.animate({ rotateY: '-360deg' }, 2000, execute);
						}
						execute();
						return this;
					};
				}(jQuery));
				$('.mycard_one').seqfx();
			</script>
						
			<script src="//image.istarbucks.co.kr/common/js/makePCookie.js"></script>
		
			<script>
				$(document).ready(function () {
					$('a[href*="card_list"] , a[href*="drink_list"] , a[href*="food_list"] , a[href*="product_list"]').on("click", function () {
						Cookies.deleteCookie("MENU_TAB");
						Cookies.deleteCookie("MENU_CATE");
						Cookies.deleteCookie("MENU_OPT");
					});
				});
			</script>
			
	<script type="text/javascript">
		//2019.05.10 [비밀번호 규칙 추가] 비밀번호 규칙 체크
		var check_pwd_rules = false;
		
		$(document).ready(function () {
			
			$("#user_pwd, #user_pwd_new, #user_pwd_new_chk").on("keydown", function (_e) {
				var thisId = $(this).attr("id");
				$(this).removeClass('input_warn').addClass('green');		
				$("."+thisId+"_txt").text("");
				$(this).nextAll('.limit_txt').text("").hide();
			}).on("blur", function () {
				$(this).removeClass("green");
			});
			
			// 비밀번호 입력 체크
			$("#user_pwd").on("blur", function() {
				var strPwdNew = $(this).val();
				
				if(strPwdNew.length == 0) {
					$("#user_pwd").addClass("input_warn");
					$(".user_pwd_txt").addClass("input_warn_text").text("비밀번호를 입력해주세요.").show();
				}else{
					$("#user_pwd").removeClass("input_warn");
					$(".user_pwd_txt").text("");
				}
			});
			
			// 새 비밀번호 입력 체크
			$("#user_pwd_new").on("blur", function() {
				var strPwdNew = $(this).val();
				var isValid = m_regex_pwd1.test(strPwdNew);
				
				if(strPwdNew.length == 0) {
					$("#user_pwd_new_chk").removeClass("input_warn");
					$(".user_pwd_new_chk_txt").text("");
				}
				
				if (strPwdNew.length > 9) {
					isValid = m_regex_pwd2.test(strPwdNew);
				}
				
				if (isValid) {
					if($("#user_pwd").val() == $("#user_pwd_new").val()){
						$("#user_pwd_new").addClass("input_warn");
						$(".user_pwd_new_txt").addClass("input_warn_text").text("현재 비밀번호와 동일한 비밀번호 입니다. 다른 비밀번호를 입력하세요.").show();
					} else {
						// 2019.05.10 [비밀번호 규칙 추가] 비밀번호 규칙 체크
						var objParam = {
								user_id : $.trim($("#user_id").val())
								,user_pwd : $.trim($("#user_pwd_new").val())
							};
						
						___ajaxCall("getUserPwdCheck", objParam, false, "json", "post"
							,function (_response) {
								if (_response.result_code == "SUCCESS") {
									$("#user_pwd_new").removeClass("input_warn");
									$(".user_pwd_new_txt").removeClass("input_warn_text").text("사용가능한 비밀번호 입니다.").show();
									check_pwd_rules = true;
									
									if(strPwdNew != $("#user_pwd_new_chk").val() && $("#user_pwd_new_chk").val().length > 0) {
										$("#user_pwd_new_chk").addClass("input_warn");
										$(".user_pwd_new_chk_txt").addClass("input_warn_text").text("일치하지 않습니다.").show();
									}
								} else {
									$("#user_pwd_new").addClass("input_warn");
									$(".user_pwd_new_txt").addClass("input_warn_text").text(_response.alert_msg).show();
									check_pwd_rules = false;
								}
							}
						);
					}
				} else {
					$("#user_pwd_new").addClass("input_warn");
					$(".user_pwd_new_txt").addClass("input_warn_text").text("영문, 숫자 혼합하여 10~20자리 이내로 입력하세요.").show();
				}
			});
			
			// 새 비밀번호 확인 체크
			$("#user_pwd_new_chk").on("blur", function() {
				var strPwdNew    = $("#user_pwd_new").val();
				var strPwdNewChk = $(this).val();
				
				if(!$("#user_pwd_new").hasClass("input_warn")){
					if (strPwdNew == strPwdNewChk) {
						
						$("#user_pwd_new_chk").removeClass("input_warn");
						$(".user_pwd_new_chk_txt").removeClass("input_warn_text").text("일치합니다.").show();
					} else {
						$("#user_pwd_new_chk").addClass("input_warn");
						$(".user_pwd_new_chk_txt").addClass("input_warn_text").text("일치하지 않습니다.").show();
					}
				}
			});
			
			// 확인
			$(".btn_ok").on("click", function () {
				if($("#user_pwd").val().length == 0) {
					$("#user_pwd").addClass("input_warn").focus();
					$("#warn_user_pwd").text("비밀번호를 입력해주세요").show();
					return;
				}
				
				//2019.05.10 [비밀번호 규칙 추가] 비밀번호 규칙 체크
				if(!check_pwd_rules){
					$("#user_pwd_new").focus();
					return;
				}
				
				var msg = checkValid2("#user_pwd_new", "PASSWORD");	// 새 비밀번호 체크
				if (msg) {
					$("#user_pwd_new").addClass("input_warn").focus();
					$("#warn_user_pwd_new").text(msg).show();
					return;
				}
				
				if($("#user_pwd").val() == $("#user_pwd_new").val()){
					$("#user_pwd_new").addClass("input_warn");
					$(".user_pwd_new_txt").addClass("input_warn_text").text("현재 비밀번호와 동일한 비밀번호 입니다. 다른 비밀번호를 입력하세요.").show();
					return;
				}
				
				msg = checkValid2("#user_pwd_new_chk", "PASSWORD");	// 새 비밀번호 확인 체크
				if (msg) {
					$("#user_pwd_new_chk").addClass("input_warn").focus();
					$("#warn_user_pwd_new_chk").text(msg).show();
					return;
				}
				
				if ($("#user_pwd_new").val() != $("#user_pwd_new_chk").val()) {
					$("#user_pwd_new_chk").addClass("input_warn").focus();
					$("#warn_user_pwd_new_chk").text("비밀번호가 일치하지 않습니다.").show();
					return;
				}		
				
				var param = {
					user_id : $.trim($("#user_id").val())
					,user_pwd : $("#user_pwd").val()
					,IS_DORMANCY : $.trim($("#IS_DORMANCY").val())
				};
				
				
				___ajaxCall("/starbucks/interface/checkUserPwd", param, false, "json", "post"
					,function (_response) {
					
						if (_response.result_code == "SUCCESS") {
							var objParam = {
									 user_pwd_new     : $.trim($("#user_pwd_new").val())
									,user_pwd_new_chk : $.trim($("#user_pwd_new_chk").val())
									,reg_channel	  : "P"
								};
							
							___ajaxCall("/interface/changeUserPwd", objParam, false, "json", "post"
									,function (_response) {
										if (_response.result_code == "SUCCESS") {
											alert("비밀번호가 변경 되었습니다.");
											location.replace("/starbucks/my/index");
										} else {
											var msg = (_response.alert_msg == "") ? _response.error_msg : _response.alert_msg;
											var arr = msg.split("|");
											if (arr.length == 2) {
												alert(arr[1]);	
											} else {
												alert(arr[0]);
											}
										}
									}
								);
						} else {
							
							alert(_response.alert_msg);
						}
					}
				
				);

			});
		});
	</script>
		
            <script>
                var $edwSlider1 = null;
                var $edwSlider2 = null;
                var $edwSlider3 = null;

                var $userBirth  = "1996-12-13";
                var $userGender = "F";
                
                if (new Date() < new Date(2016, 1 - 1, 1, 0, 0, 0)) {
                	$(".my_ms_evbnr").prepend('<a href="eFreq/index" required="login"><img alt="" src="//image.istarbucks.co.kr/common/img/util/ms_efreq_bn.jpg"></a><br /><br />');
                }                
            </script>
            <script src="../common/js/common_jhp.js"></script>
            <script src="../common/js/my/index.js?v=210420"></script>
            <script src="../common/js/my/index_level_web.js"></script>
           
        </div>


    
<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div></body></html>