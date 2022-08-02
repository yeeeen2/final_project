﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type" content="website">
<meta property="og:title" content="Starbucks">
<meta property="og:url" content="https://www.starbucks.co.kr/">
<meta property="og:image" content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">Starbucks Korea</title> <!-- 220117 수정 -->
<script type="text/javascript" charset="utf-8">
	sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="../common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
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

<script>
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

		<link href="../common/css/style_main-2.css?r=1abii2" rel="stylesheet">
		<link href="../common/css/style_whatsnew.css?r=1abii2" rel="stylesheet">
		<link href="../common/css/style_find_road.css?v=210423" rel="stylesheet">
		<link href="../common/css/style_util.css?v=210316" rel="stylesheet">
		<link href="../common/css/skdslider.css?r=1abii2" rel="stylesheet">
		<link href="../common/css/ezmark-1.css?r=1abii2" rel="stylesheet">
	</head>
	
	<!-- 예은 수정 -->
	<body style>
		<div class="loading_dimm" style="z-index: 20000; display: none;"></div>
		<div class="loading_img" style="z-index: 20001; width: 70px; height: 76px; overflow: hidden; display: none;"><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading01.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading02.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading03.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading04.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading05.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading06.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading07.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading08.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading09.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading10.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading11.png&quot;);"></div><div class="jsMovieFrame" style="display: block; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading12.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading13.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading14.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading15.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading16.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading17.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading18.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading19.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading20.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading21.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading22.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading23.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading24.png&quot;);"></div><div class="jsMovieFrame" style="display: none; width: 70px; height: 76px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/loading/loading25.png&quot;);"></div><div id="jsMovie_event_overlay" style="width: 70px; height: 152px; margin-top: -152px;"></div><div id="jsMovie_image_preload_container"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading01.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading02.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading03.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading04.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading05.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading06.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading07.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading08.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading09.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading10.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading11.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading12.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading13.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading14.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading15.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading16.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading17.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading18.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading19.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading20.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading21.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading22.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading23.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading24.png" alt="" style="height: 1px; width: 1px;"><img src="//image.istarbucks.co.kr/common/img/common/loading/loading25.png" alt="" style="height: 1px; width: 1px;"></div></div>
		<div class="pop_up_dimm" style="display:none"></div>
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
				<div class="top_msr_wrap" style="display:none;">
					<!-- 유저인포 -->
					<div class="user_greet">
						<div class="user_pic_area">
							<img alt="사용자 아이디" src="../common/img/common/user_pic_sample.jpg">
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
							<img alt="카드이름" src="../common/img/common/mycard2.png">
							<p class="num"><!-- 1234-1234-1234-1234 --></p>
							<p class="barcord"><!-- <img src="//image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> --></p>
						</div>
						<div class="mycard_one">
							<!-- <div class="front"> -->
							<img src="../common/img/common/payment_icon1.png" alt="">
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
							<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input';"><img alt="카드등록 아이콘" src="../common/img/common/icon_add_card.png"></p>
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

				<div class="top_msr_nologin">
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
				<h1 class="logo"><a href="index.htm">스타벅스 코리아</a></h1>
				<nav class="tablet_gnb_sep">
					<ul>
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2"></span></a></li><!-- 150709 클레스 수정 -->
						<li class="tablet_gnb02"><a href="my/index" required="login"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb03"><a href="store_map"><span class="a11y">매장찾기</span></a><!-- 접근성_20171106 span추가 --></li>
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
							<li class="mob_gnb_ttl1"><a role="button" class="en" href="javascript:void(0);">My Starbucks<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="my/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">My 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/reward" required="login">리워드 및 혜택</a></li>
									<li><a href="my/reward_star_history" required="login">별 히스토리</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/mycard_index" required="login">보유 카드</a></li>
									<li><a href="my/mycard_info_input" required="login">카드 등록</a></li>
									<li><a href="my/mycard_charge" required="login">카드 충전</a></li>
									<li><a href="my/mycard_lost" required="login">분실신고/잔액이전</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="my/egiftCard" required="login">선물 내역</a></li>
									<li><a href="my/egiftCard_shopping_bag" required="login">장바구니 내역</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/ecoupon?t=REG" required="login">등록하기</a></li>
									<li><a href="my/ecoupon?t=GIFT" required="login">선물하기</a></li>
									<li><a href="my/ecoupon?t=USE" required="login">사용하기</a></li>
								</ul>
							</li>
							<li><a href="my/calendar" required="login">My 캘린더</a></li>
							<!-- <li><a href="my/drink_shop" required="login">My 음료/매장</a></li> -->
							<li><a href="my/my_menu" required="login">My 메뉴</a></li>
							
							
							<li>
								<a role="button" href="javascript:void(0);">My e-프리퀀시<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="eFreq/guide?promoSeq=172">이용안내</a></li>
									<li><a href="eFreq/status-1?promoSeq=172" required="login">이용현황</a></li>
								</ul>
							</li>
							
									<li><a href="my/vocList" required="login">My 고객의 소리</a></li>
							<li><a href="my/eReceiptList" required="login">전자영수증</a></li>
							<li class="msRnb_btn"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
							<li><a href="login/login" required="login">My DT Pass</a></li>
							<li>
								<a role="button" href="javascript:void(0);">개인정보관리<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/myinfo_modify_login" required="login">개인정보확인 및 수정</a></li>
									<li><a href="my/myinfo_out" required="login">회원 탈퇴</a></li>
									<li><a href="my/myinfo_modify_pwd" required="login">비밀번호 변경</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">COFFEE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="coffee/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">커피<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="coffee/product_list">스타벅스 원두</a></li>
									<li><a href="coffee/product_list-1?PACKAGE=01">스타벅스 비아</a></li>
									<!-- <li><a href="coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li> 20210915 삭제 -->
									<li><a href="coffee/product_list-2?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li><!-- 20210915 추가 -->
								</ul>
							</li>
							<li><a href="coffee/productFinder">나와 어울리는 커피</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리저브™<span class="mob_gnb_arrow_down"></span></a>
								<ul>
									<li><a href="coffee/reserve_info">ABOUT</a></li>
									<li><a href="coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">에스프레소 음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="coffee/doppio">도피오</a></li>
									<li><a href="coffee/espresso_macchiato">에스프레소 마키아또</a></li>
									<li><a href="coffee/americano">아메리카노</a></li>
									<li><a href="coffee/caramel_macchato">마키아또</a></li>
									<li><a href="coffee/cappuccino">카푸치노</a></li>
									<li><a href="coffee/latte">라떼</a></li>
									<li><a href="coffee/mocha">모카</a></li>
									<!-- <li><a href="javascript:void(0);">더블샷</a></li> -->
									<!-- <li><a href="coffee/flat_white">리스트레또 비안코</a></li> 20210914 삭제 -->
									<!-- <li class="mgnb_gold"><a href="javascript:void(0);">·에스프레소 초이스</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·프로모션 상품</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·브런치 유어 웨이</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">최상의 커피를 즐기는 법<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="coffee/higher_enjoy">커피 프레스</a></li>
									<li><a href="coffee/higher_enjoy-1?PACKAGE=01">푸어 오버</a></li>
									<li><a href="coffee/higher_enjoy-2?PACKAGE=02">아이스 푸어 오버</a></li>
									<li><a href="coffee/higher_enjoy-3?PACKAGE=03">커피 메이커</a></li>
									<li><a href="coffee/higher_enjoy-4?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">커피 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- 20210914 수정 -->
									<li><a href="coffee/story">농장에서 우리의 손으로</a></li>
									<!-- <li><a href="coffee/story?PACKAGE=01">에스프레소 초이스</a></li> -->
									<li><a href="coffee/story-1?PACKAGE=02">최상의 아라비카 원두</a></li>
									<li><a href="coffee/story-2?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>
									<!-- <li><a href="javascript:void(0);">추출방식 알아보기</a></li> -->
									<li><a href="coffee/story-3?PACKAGE=04">스타벅스 디카페인</a></li>
									<li><a href="coffee/story-4?PACKAGE=05">클로버® 커피 추출 시스템</a></li>
									<!-- //20210914 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">MENU<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="menu/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/drink_list">전체보기</a></li>
									<li><a href="menu/drink_list-1?CATE_CD=product_cold_brew">콜드 브루</a></li>
									<li><a href="menu/drink_list-2?CATE_CD=product_brood">브루드 커피</a></li>
									<li><a href="menu/drink_list-3?CATE_CD=product_espresso">에스프레소</a></li>
									<li><a href="menu/drink_list-4?CATE_CD=product_frappuccino">프라푸치노</a></li>
									<li><a href="menu/drink_list-5?CATE_CD=product_blended">블렌디드</a></li>
									<li><a href="menu/drink_list-6?CATE_CD=product_fizzo">스타벅스 피지오</a></li>
									<li><a href="menu/drink_list-7?CATE_CD=product_tea">티(티바나)</a></li>
									<li><a href="menu/drink_list-8?CATE_CD=product_etc">기타 제조 음료</a></li>
									<li><a href="menu/drink_list-9?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/food_list">전체보기</a></li>
									<li><a href="menu/food_list-1?CATE_CD=product_bakery">브레드</a></li>
									<li><a href="menu/food_list-2?CATE_CD=product_cake">케이크</a></li>
									<li><a href="menu/food_list-3?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>
									<li><a href="menu/food_list-4?CATE_CD=product_wram_food">따뜻한 푸드</a></li>
									<li><a href="menu/food_list-5?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>
									<li><a href="menu/food_list-6?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>
									<li><a href="menu/food_list-7?CATE_CD=product_icecream">아이스크림</a></li>
                                    <!-- <li><a href="menu/food_list?CATE_CD=product_etc">기타 푸드</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/product_list">전체보기</a></li>
									<li><a href="menu/product_list-1?CATE_CD=product_mug">머그</a></li>
									<li><a href="menu/product_list-2?CATE_CD=product_glass">글라스</a></li>
									<li><a href="menu/product_list-3?CATE_CD=product_plastic">플라스틱 텀블러</a></li>
									<li><a href="menu/product_list-4?CATE_CD=product_stainless">스테인리스 텀블러</a></li>
									<li><a href="menu/product_list-5?CATE_CD=product_vacuum">보온병</a></li>
									<li><a href="menu/product_list-6?CATE_CD=product_accessories">액세서리</a></li>
									<li><a href="menu/product_list-7?CATE_CD=product_present">선물세트</a></li>
									<li><a href="menu/product_list-8?CATE_CD=product_coffee">커피 용품</a></li>
									<li><a href="menu/product_list-9?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>
									<!-- <li><a href="menu/product_list?CATE_CD=product_planner">스타벅스 플래너</a></li> --> <!-- 20210602 삭제 -->
								</ul>
							</li>
							
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="store_map-1?disp=quick">빠른 검색</a></li>
									<li><a href="store_map-2?disp=locale">지역 검색</a></li>
								</ul>
							</li>
							<li><a href="store_drive">드라이브 스루 매장</a></li>
							<li><a href="store_reserve">스타벅스 리저브™ 매장</a></li>
							<li><a href="store_community">커뮤니티 스토어 매장</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- <li><a href="store/store_cheongdam">청담스타</a></li> 20210727 메뉴 비노출 -->
									<li><a href="store_star_field">티바나 바 매장</a></li>
									<!-- <li><a href="store/store_park">파미에파크</a></li> 20210727 메뉴 비노출 -->
								</ul>
							</li>
						</ul>
						
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">Starbucks Rewards<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>  <!-- 스타벅스 리워드 수정 -->
							<li><a href="msr/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 스타벅스 리워드 수정 -->
								<ul>
									<li><a href="msr/msreward/about">스타벅스 리워드 소개</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="msr/msreward/level_benefit">등급 및 혜택</a></li>
									<li><a href="msr/msreward/star">스타벅스 별</a></li>
									<li><a href="community/faq?menu_cd=STB2703&cate=F17">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/scard/about">스타벅스 카드 소개</a></li>
									<li><a href="msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>
									<li><a href="msr/scard/register_inquiry">등록 및 조회</a></li>
									<li><a href="msr/scard/charge_information">충전 및 이용안내</a></li>
									<li><a href="msr/scard/lost_report">분실신고/환불신청</a></li>
									<li><a href="community/faq-1?menu_cd=STB2703&cate=F05">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>
									<li><a href="msr/sceGift/msr_useguide">이용안내</a></li>
									<li><a href="msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="community/faq-2?menu_cd=STB2703&cate=F22">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">WHAT'S NEW<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="whats_new/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="whats_new/campaign_list">전체</a></li>
									<li><a href="whats_new/campaign_list-1?menu_cd=STB2812">스타벅스 카드</a></li>
									<li><a href="whats_new/campaign_list-2?menu_cd=STB2813">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="whats_new/campaign_list-3?menu_cd=STB2814">온라인</a></li>
									
									
										<li><a href="whats_new/eFreq_gift">e-프리퀀시 증정품</a></li> <!-- 20210423 메뉴명, 경로 수정 -->
									
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">뉴스<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="whats_new/news_list">전체</a></li>
									<li><a href="whats_new/news_list-1?cate=N01">상품 출시</a></li>
									<li><a href="whats_new/news_list-2?cate=N02">스타벅스와 문화</a></li>
									<li><a href="whats_new/news_list-3?cate=N03">스타벅스 사회공헌</a></li>
									<li><a href="whats_new/news_list-4?cate=N04">스타벅스 카드출시</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">매장별 이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="whats_new/store_event_list">일반 매장</a></li>
									<li><a href="whats_new/store_event_list-1?search_date=1&tab=1">신규 매장</a></li>
								</ul>
							</li>
							<li><a href="whats_new/notice_list">공지사항</a></li>
							<li><a href="whats_new/wallpaper">월페이퍼</a></li>
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
	<li class="util_nav03"><a href="/starbucks/menu/orderList">Order</a></li>
	<li class="util_nav04"><a href="/starbucks/store/store_map">Find a Store</a></li>
</ul>
				</nav>
				
				<a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3"></span></a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
			</div>
			<nav class="sub_gnb_nav">
				<div class="sub_gnb_nav_inner"></div>
			</nav>
		</div>
		<!-- 서브 gnb end -->
	</div>
</div>			

			<!-- container -->
			<div id="container">
				
<!-- 스토어 맵 -->

<div class="store_height_wrap">
	<form method="post">
		<fieldset>
			<legend></legend>
			<div class="store_map_layer">
								<!-- 길찾기 수정 - 160422 -->
								<section class="find_store_wrap">
									<header class="find_store_header">
										<h2 class="btn_find_store">
										<a href="javascript:void(0);">매장찾기</a>
										</h2>
									</header>
									<article class="find_store_cont">
										<header class="find_store_cont_header">
											<span class="map_layer_toggle"><a href="javascript:void(0);"  class="on">열기</a></span>
										</header>
										<article class="store_map_layer_cont" style="display: block;">
											<header class="loca_search">
												<h3 class="on">
													<a href="javascript:void(0);">지역 검색</a></h3>
											</header>
											<article style="display: block;">
												<div class="loca_step1">
													<div class="loca_step1_ttl">STEP 1 : 시/도를 선택해 주세요.</div>
													<div class="loca_step1_cont">
														<ul class="sido_arae_box">
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="01"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="08"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="02"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="03"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="04"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="05"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="06"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="07"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="09"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="10"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="11"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="12"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="13"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="14"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="15"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="16"></a></li>
															<li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="17"></a></li>
														</ul>
													</div>
												</div>
												<div class="loca_step2" style="display: none;">
													<div class="loca_step2_ttl">STEP 2 : 구/군을 선택해 주세요.</div>
													<div class="result_num_wrap3">
														<a class="btn_prev" href="javascript:void(0);">앞으로</a>
														<strong class="sidoSelectName"></strong>
													</div>
													<div class="loca_step2_cont">
														<div class="loca_step2_frame scrollbar-inner mCustomScrollbar _mCS_2 mCS_no_scrollbar">
															<div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0">
																<div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
																	<ul class="gugun_arae_box"></ul>
															</div>
															<div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;">
																		<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
																	</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
												<div class="loca_step3" style="display : none;">
													<div class="result_num_wrap">
														<!-- 검색결과 없는 경우 -->
														<!--strong>검색 결과</strong>(<span class="en t_006633">0</span>개)-->
														<!-- 검색결과 있는 경우 -->
														<strong class="gugunSelectName"></strong> (검색 결과 <span class="en t_006633 sidoSetResult"></span>개)
													</div>
													<div class="result_list_wrap">
														<!-- 검색결과 없는 경우 -->
														<!--p class="no_result">검색 결과가 없습니다.</p-->
														<!-- 검색결과 있는 경우 -->
														<div class="result_list scrollbar-inner mCustomScrollbar _mCS_3 mCS_no_scrollbar">
															<div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0">
																<div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
															<ul class="quickSearchResultBoxSidoGugun">
															</ul>
														</div>
													<div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;">
														<div class="mCSB_draggerContainer">
															<div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;">
																<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
															</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</article>
											<!-- <header class="quick_search">
												<h3 class="on"><a href="javascript:void(0);">퀵 검색</a></h3>
											</header> -->
										</article>
									</article>
									<header class="find_road_header">
										<h2 class="btn_find_road">
										<a href="javascript:void(0);">길찾기</a>
										</h2>
									</header>
									<article class="find_road_cont">
										<header class="find_road_cont_header">
											<h3>현재 지원되지 않는 기능입니다.</h3>
											<span class="road_layer_toggle"><a href="javascript:void(0);" class="daumFindParentToggle">열기</a></span>
										</header>
									</article>
								</section>
								<!-- 길찾기 수정 - 160422 end -->			
			
			
			</div>
		</fieldset>
	</form>
</div>


<section class="store_map_wrap" id="storeMap" style="display: block; position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">

	<!-- 길찾기 추가 -->
	<div class="inmap_short_info_wrap" sid="-1" style="display:none" >
		<div class="iTrafficSubView1" style="display:none">
			<div class="inmap_short_info_l">
				<p class="public_trans_time"><strong class="iv_t_time">11</strong>(도보 <span class="iv_t_walk"></span>, <span class="iv_t_transfer"></span>)</p>
				<p class="desti_top_dist">요금: <span class="iv_t_price"></span>| 총 <span class="iv_t_km"></span></p>
			</div>
			<p class="btn_short_info"><a href="javascript:void(0);">상세</a></p>		
		</div>
		
		
		<div class="iTrafficSubView2">
			<div class="inmap_short_info_l">
				<p class="public_trans_time"><strong class="iv_end_position">스타벅스 소공동</strong></p>
				<p class="desti_top_dist"><span class="iv_end_min">9분</span> | <span class="iv_end_length">9km</span></p>
			</div>
			<p class="btn_short_info"><a href="javascript:void(0);">상세</a></p>		
		</div>		

	</div>
	<!-- 길찾기 추가 end -->
	<form method="post">
		<fieldset>
			<p class="btn_opt_chk btn_opt_chk1" style="display: none;"><a href="javascript:void(0);">검색 옵션</a></p>
			<!-- 옵션선택 -->
			
			<!-- 옵션선택 end -->
		</fieldset>
	</form>

	<!-- 150904 수정 -->
	<p class="btn_storemap_quick"><a href="javascript:void(0);"><img src="../common/img/store/btn_quick.png" alt="현재 위치 중심으로 지도이동"></a></p> <!-- 접근성_20171127 alt 추가 -->
	
	
	<!-- 150805 추가 구명준 -->
	<!-- p class="btn_opt_chk btn_opt_chk3"><a href="javascript:void(0);">옵션 선택</a></p -->
<div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;">
	<div style="position: absolute;">
	<div style="position: absolute; z-index: 0; left: 0px; top: 0px;"></div>
	<div style="position: absolute; z-index: 1; left: 0px; top: 0px;"></div>
	<div style="position: absolute; z-index: 1;"></div>
	<div style="position: absolute; z-index: 1; width: 1519px; height: 631px;"></div>
	<div style="position: absolute; z-index: 1;">
		<svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -3038px; top: -1262px; width: 7595px; height: 3155px;" viewBox="0 0 7595 3155">
			<defs></defs>
		</svg>
	</div>
		<div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
			<div style="position: absolute; margin: -55px 0px 0px -16px; z-index: 0; left: -2653px; top: 6289px;">
				<img draggable="false" src="../common/img/store/pin/pin_start.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 38px, 60px, 0px); top: 0px; left: 0px; width: 38px; height: 60px;"></div>
		</div>
	</div>
</div>
	<div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
		<div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
			<div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div>
		<div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div>
	</div>
		<div style="margin: 0px 4px; float: left;">
			<a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;">
				<img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;">
			</a>
			<div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
		</div>
	</div>
	<div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
</section>

	
<!-- 스토어 맵 end -->

<script type="text/javascript">
	var $geo = {};
	var $map = {};
	var $geo_backup = {};
	var $ps;
	
	var $pin = {};
		$pin.store 	 = "../common/img/store/pin/pin_reg_on.png";
		$pin.reserve = "../common/img/store/pin/pin_res_on.png";
		
	var $marker = new Array();
	var $bounds;
	var $infowindow = new Array();
	var $option = {};
	var $search = {};
		$search.in_biz_cds 		= 0;
		$search.in_scodes 		= 0;
		
	var $mode = null;
	var $drag = true;
	
	var $param = {};
		$param.disp					= "locale";
		$param.in_biz_cd 		  	= "";
		$param.appYN	 		  	= "";
	var $vo = {};
		$vo.disp					= "locale";
		$vo.in_biz_cd 		  		= "";
		$vo.appYN	 		  		= "";
		
		$vo.ip_lat					=  "";
		$vo.ip_long					=  "";
		$vo.espresso				=  "";
		$vo.new_store				=  "";
		$vo.premiere_food			=  "";
		$vo.cold_blew				=  "";
		
		
		
	var $search_position = "";
	var $search_target   = "";
	var $storeDataGrp = null;
	var $start_road_marker = null;
	var $end_road_marker = null;
	var $daumSearch = null;

	var $startPostion = {};
		$startPostion.displayName = null;
		$startPostion.gps_lat 	  = null;
		$startPostion.gps_lng 	  = null;
		


	var $endPostion   = {};
		$endPostion.displayName = null;
		$endPostion.gps_lat 	= null;
		$endPostion.gps_lng 	= null;
		$endPostion.favorites	= null;
		$endPostion.store_code	= null;
		
		
	var $daumRoadLine = null;	
	var $roadGeo = null;
	var $roadGps = {};
	var $roadInfoWindow = null;
	var $roadFindBool = false;
	var $trafficData=null;
	var $trafficPoint = new Array();
	var $trafficPolylineArr = null;
		
		
	var $page	 = "";
	var $mapSize = 3;
	
	var $parentMenuType="A";
	var afterSearch = true;
	var afterThis   = "";
		<!---->
</script>


				
			</div>
			<!-- container end -->
            <form name="promotionListForm" method="post">
                <input type="hidden" name="pro_seq">
                <input type="hidden" id="menu_cd" name="menu_cd">
            </form>

			




		
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
							
							
							<li><a href="util/guest_eReceipt">비회원 전자영수증 조회</a></li>
							
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">COMPANY<span class="footer_arrow_down"></span></a></li>
							<li><a href="#">한눈에 보기</a></li>
							<li><a href="#">스타벅스 사명</a></li>
							<li><a href="#">스타벅스 소개</a></li>
							<li><a href="#">국내 뉴스룸</a></li>
							<li><a href="#">세계의 스타벅스</a></li>
							<!-- 160811 메뉴 추가 -->
							<li><a href="#">글로벌 뉴스룸</a></li>
							<!-- 160811 메뉴 추가 end -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="#">CORPORATE SALES<span class="footer_arrow_down"></span></a></li>
							<li><a href="#">단체 및 기업 구매 안내</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span class="footer_arrow_down"></span></a></li>
							<li><a href="#">신규 입점 제의</a></li>
							<li><a href="#">협력 고객사 등록신청</a></li>
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
							<li><a href="#">채용 소개</a></li>
							<li><a href="#">채용 지원하기</a></li><!-- 20210927 수정 -->
						</ul>
					</div>
				</div>
				<div class="footer_util_btn">
					<ul>
						<li><a href="index.htm">HOME</a></li>
						<li>
							<a href="javascript:$.loginLib.showLayerLogin();" class="sign_in">Sign In</a>
							<a href="javascript:$.loginLib.logout();" class="sign_out" style="display:none;">Sign Out</a>
						</li>
						<li class="last"><a href="mem/join1">Join Us</a></li>
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
				<div class="dtPop ecoPop" id="msrCheckPop" style="display:none">
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
				<div class="dtPop ecoPop" id="msrCheckPop_rewardTumbler" style="display:none">
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
				<a class="c_00b050" href="#">개인정보처리방침</a>
					<a href="#" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="#">홈페이지 이용약관</a>
					<a href="#" class="mbn">위치정보 이용약관</a>
					<a href="#" class="mbn">스타벅스 카드 이용약관</a>
					<a href="#" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="#">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="#" class="last">윤리경영 핫라인</a>
					<br>
					<a class="btned_link" href="#">찾아오시는 길</a>
					<a class="btned_link" href="#">신규입점제의</a>
					<a class="btned_link" href="#">사이트 맵</a><br>
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
		
			
			<script src="../common/js/jquery-1.10.2.min.js"></script>
			<script src="../common/js/%40common.js"></script>
			<script src="../common/js/jquery-ui.min.js?v=220207"></script>
			<script src="../common/js/idangerous.swiper-2.1.min.js"></script>
			<script src="../common/js/idangerous.swiper.scrollbar-2.1.js"></script>
			<script src="../common/js/jquery.bxslider.min.js"></script>
			<script src="../common/js/skdslider.min.js"></script>
			<script src="../common/js/jquery.drive.js"></script>
			<script src="../common/js/jquery.easing-1.3.min.js"></script>
			<script src="../common/js/jquery.elevatezoom.js"></script>
			<script src="../common/js/jquery.flip.js"></script>
			<script src="../common/js/jquery.jsmovie.1.4.4.min.js"></script>
			<script src="../common/js/jquery.mCustomScrollbar.concat.js"></script>
			<script src="../common/js/jquery.number.min.js"></script>
			<script src="../common/js/jquery.rotate.2.3.js"></script>
			<script src="../common/js/jquery.scrollbar.js"></script>
			<script src="../common/js/jquery.scrollTo-1.4.2-min.js"></script>
			<script src="../common/js/jquery.superscrollorama.js"></script>						
			<script src="../common/js/jquery.transform2d.js"></script>
			<script src="../common/js/jquery.transform3d.js"></script>			
			<script src="../common/js/greensock/TweenMax.min.js"></script>
			<script src="../common/js/masonry.pkgd.js"></script>
			<script src="../common/js/common.js"></script>
			<script src="../common/js/gnb.js?v=220502"></script>
			<script src="../common/js/header.js?v=200915"></script>
			<script src="../common/js/footer.js?v=210818"></script>

			<script src="../common/js/jquery.tmpl.js"></script>
			<script src="../common/js/jquery.tmplPlus.min.js"></script>
			<script src="../common/js/jquery.ezmark.min.js"></script>
			<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->
			
			<!--
			<script src="../common/js/swiper.jquery.min.js"></script>
			<script src="../common/js/swiper.min.js"></script>
			<script src="../common/js/util.js"></script>
			-->
			
		
			<script src="../common/js/openevent/openevent.js"></script>
			<script src="../common/js/open_event_control.js"></script>
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
                    			
                    		}else{
                    			//MSR 회원 여부 체크
                    			if (m_jsonRewardSummary == null) {
                    				 $.ajax({
                                     	type: 'post',
                                     	url : '/interface/getMsrRewardSummary',
                                     	data : {},
                                     	dataType : 'json',
                                     	jsonp : 'callback',
                                     	async : false,
                                     	success : function(_response){
                                     		if (_response.result_code == "SUCCESS") {
												m_jsonRewardSummary = jQuery.parseJSON(_response.data);
												fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
											}
                                     	}
                                   	});
								}else{
									
									fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
								}
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

			<script src="../common/js/jquery.transit.min.js"></script>
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
						
			<script src='../common/js/makePCookie.js'></script>
		
			<script>
				$(document).ready(function () {
					$('a[href*="card_list"] , a[href*="drink_list"] , a[href*="food_list"] , a[href*="product_list"]').on("click", function () {
						Cookies.deleteCookie("MENU_TAB");
						Cookies.deleteCookie("MENU_CATE");
						Cookies.deleteCookie("MENU_OPT");
					});
				});
			</script>
		
			<script src="../common/js/jquery.superscrollorama-1.js"></script>			
			<script src="../common/js/whatsnew.js"></script>
			<script src="../common/js/jquery.ezmark.min-1.js"></script>
			<script src="../common/js/common_jhp.js"></script>
			
			
			<script>
            $(document).ready(function(){               
                
                
                
                
                                           
            });
             
            
            
			var $store_pop = "window";
			</script>
			
<!-- 0601 예은 수정 -->
<script type="text/javascript" src="../common/js/v2/maps/sdk.js?appkey=247bf84c5755624615df524ae2cfc331" &libraries="LIBRARY"></script>
<script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.3/kakao.js"></script>
<script src="../common/js/jquery.async.min.js"></script>


<script src="../common/js/store/store_map.js?v=20190129"></script>
<script src="../common/js/store/store_core.js?v=210802"></script>
<script src="../common/js/store/store_map_page.js?v=210423"></script>
<script src="../common/js/store/store_map_road.js?v=210316"></script> 
			
			<script type="text/javascript">
				//20150816
				//20150816-2
				var startHeight;
				var store_map_layer_height = ""; 
				var myBufferHeight = 20;
				var roadMapShow = false;
				var findSW;

				var firstWh = 0;
				var roadSetHeight = 0;
				var $roadResult = false;

				
				
				$(document).ready(function(){
					var myWin 		= $(window).width();
					var startHeight = $(window).height();
					var store_map_layer_height;
					$(".before_login").show();
					
					
	
					/* 길찾기 */
					var btnTransInfo = false;
					$('.trans_info_down').click(function(){
						if (btnTransInfo == false) {
							$('.public_trans_ex').show();
							$('.public_trans_exr').each(function(){
								var publicTransExr = $(this).height();
								$(this).prev().css({
									'height':publicTransExr
								});
							});

							$('.trans_icon_wrap').each(function(){
								var thisHeight = $(this).height();
								var thisHeightNext = $(this).parent().next().children('.trans_icon_wrap').height();
								$(this).children('.trans_line').each(function(){
									$(this).css({
										'height' : (thisHeight / 2) + (thisHeightNext /2)
									});
								});
							});
							$(this).removeClass('trans_info_down').addClass('trans_info_up');
							btnTransInfo = true;
						} else {
							$('.public_trans_ex').hide();
							$(this).removeClass('trans_info_up').addClass('trans_info_down');
							btnTransInfo = false;
						}
					});


					$('.find_store_header h2.btn_find_store a').click(function(){
						
						$parentMenuType = "A";
		
						$(".btn_storemap_quick").show();
									
						$(this).css({
							'background':'url("../common/img/store/btn_find_store_on.png") center center no-repeat #006633'
						});
						$('.find_road_header h2.btn_find_road a').css({
							'background':'url("../common/img/store/btn_find_road_off.png") center center no-repeat #f4f4f2'
						});
						
						
						/**
						if (myWin > 1600) {
							$('.find_store_wrap').css({
								'height':'669px'
							});
						} else if ((myWin > 1099) && (myWin <= 1600)) {
							$('.find_store_wrap').css({
								'height':'626px'
							});
						} else if (myWin <= 1099) {
							$('.find_store_wrap').css({
								'height':'569px'
							});
						}
						**/
						
						var myWin = $(window).width();

						if (myWin <= 640) {
							$('.find_store_wrap').css({
								'height':'118px'
							});

							$('.map_layer_toggle a').removeClass('on');

							$('.find_store_cont').show();
							$('.find_road_cont').hide();
							$(".store_map_layer_cont").hide();
							$(".road_map_layer_cont").hide();
							$(".inmap_short_info_wrap").hide();

							
							findSW = true;
							
							if ( $start_road_marker != null )
							{
								$start_road_marker.setMap(null);
							}
							
							
							
							if ( $end_road_marker != null )
							{
								$end_road_marker.setMap(null);
							}
													
							
							if( $daumRoadLine != null )
							{
								$daumRoadLine.setMap(null);
							}			
						}
						else
						{
							$('.find_store_wrap').css({
								'height':'118px'
							});

							$('.map_layer_toggle a').removeClass('on');
							$('.map_layer_toggle a').addClass('on');
							
					
							
							$('.find_store_cont').show();
							$('.find_road_cont').hide();
							$(".store_map_layer_cont").show();
							$(".road_map_layer_cont").hide();

							findSW = false;

							if ( $start_road_marker != null )
							{
								$start_road_marker.setMap(null);
							}
							
							
							
							if ( $end_road_marker != null )
							{
								$end_road_marker.setMap(null);
							}
													
							
							if( $daumRoadLine != null )
							{
								$daumRoadLine.setMap(null);
							}	
						}
			
						setTimeout(function(){
							$(".btn_storemap_quick").find("a").trigger("click");
						},300);
					});
					
					
					$('.find_road_header h2.btn_find_road a').click(function(){				
						$parentMenuType = "B";
						$(".btn_storemap_quick").hide();
						$roadResult = false;
						$(this).css({
							'background':'url("../common/img/store/btn_find_road_on.png") center center no-repeat #006633',
							
						});
						$('.find_store_header h2.btn_find_store a').css({
							
							'background':'url("../common/img/store/btn_find_store_off.png") center center no-repeat #f4f4f2'
						}); 
						
					
				
						var myWin = $(window).width();
						if (myWin <= 640) 
						{
							$('.find_store_wrap').height(  $(".store_map_wrap").height() );
							$(".afterMobileSearchWrap").hide();
							$(".inmap_short_info_wrap").hide();
							$(".road_map_layer_inner").show();
							$('.find_road_cont').show();
							$('.find_store_cont').hide();
							$(".store_map_layer_cont").hide();
							$(".road_map_layer_cont").show();
							
							roadMapShow = false;
						}
						else
						{
							$('.find_store_wrap').height(  118  );
							$(".afterMobileSearchWrap").hide();
							$(".inmap_short_info_wrap").hide();
							$(".road_map_layer_inner").show();
							$('.find_road_cont').show();
							$('.find_store_cont').hide();
							$(".store_map_layer_cont").hide();
							$(".road_map_layer_cont").show();
							
							roadMapShow = false;
						}

					
						
						$startPostion.displayName = null;
						$startPostion.gps_lat 	  = null;
						$startPostion.gps_lng 	  = null;

						$endPostion.displayName = null;
						$endPostion.gps_lat 	= null;
						$endPostion.gps_lng 	= null;
						$endPostion.favorites	= null;
						$endPostion.store_code	= null;
						
						$("#start").val("");
						$("#destination").val("");
						$(".roadFindStartBtn").removeClass("on");
						
						$(".carFindRoad").hide();
						$(".carFindRoadErr").hide();
						$(".transfer_method_cont1").show();
						$(".transfer_method_cont2").hide();
						$(".transfer_method_cont3").hide();	
						//예은 수정
						$(".trafficSummery").html("");
						$(".road_found_list").html("");
						$("#initStartTxt").val("");
						$("#initEndTxt").val( "" );						
						
					});

					$('.transfer_method_wrap h3 a').click(function(){
						$('.transfer_method_wrap article').hide();
						$(this).parent().parent().next().show();
						$('.transfer_method_wrap h3 a').removeClass('on');
						$(this).addClass('on');
					});

					$('.transfer_method_tab2 h3 a').click(function(){
						var publicTransExr = $('.public_trans_exr').height();
						$('.public_trans_exl').css({
							'height':publicTransExr
						});

						$('.trans_icon_wrap').each(function(){
							var thisHeight = $(this).height();
							var thisHeightNext = $(this).parent().next().children('.trans_icon_wrap').height();
							$(this).children('.trans_line').each(function(){
								$(this).css({
									'height' : (thisHeight / 2) + (thisHeightNext /2)
								});
							});
						});
					});

					/* 길찾기 end */	
			
					
					$(window).load(function(){
					
						$('.scrollbar-inner , .transfer_method_cont1 , .transfer_method_cont3 , .transfer_method_cont2').mCustomScrollbar({
							// autoDraggerLength: 0,
							axis:"y",
							advanced:{autoExpandHorizontalScroll:true}
						});
						
						
						uiResizeControl();
						$.openevent.getStamp('E');
						
						
						var wh = $(window).height(),
						ww = $(window).width(),
						btnOpt = $('.btn_opt_chk');
						window.scrollTo(0, 0);

						
						/**
						btnOpt.css({
							'bottom':'20px',
							'left':'auto',
							'right':'20px',
							'top':'auto'
						});
						**/
							
							
						if (myWin < 641) 
						{
							

							var wh = $(window).height();
								ww = $(window).width();

							//$('.store_map_wrap').height( wh - 100 );

							// s::20210308 수정
							var bannerTop; 
							if($('.bnr_slider_wrap').find('.bx-wrapper').length > 0) {
								bannerTop = $(".bnr_slider_wrap").position().top;
							} else {
								bannerTop = $(".store_no_event").position().top;
							}
							// e::20210308 수정
							
							var addTop    = 60;
							var headerGnb = $(".tablet_gnb_wrap").height();

							var calaContentsHeight = (bannerTop - ( addTop + headerGnb )) - 58;

							roadSetHeight = calaContentsHeight;
							$('.store_map_layer_cont').height(  calaContentsHeight  );
							$('.road_map_layer_cont').height(  calaContentsHeight  );
							//$('.result_list').height( wh - 450		- $(".btn_find_store").height());
							//$(".road_map_layer_cont").height( wh - 150	- $(".btn_find_store").height() );
							
							
							/** 내부 스크롤 영역 계산식 **/
							
							setTimeout(function(){
								var addHeight =  $(window).height() - startHeight;
								var h_store_map_layer_cont 	 = $(".store_map_layer_cont").height();
								var h_quick_search		 	 = $(".quick_search").height();
								var h_quick_search_input	 = $(".quick_search_input").height();
								var h_myStoreInfo			 = $(".myStoreInfo").outerHeight();
								var h_loca_step1_ttl		 = $(".loca_step1_ttl").height();
								var h_result_num_wrap3		 = $(".result_num_wrap3").height();
								
								
								
								var step2Sido	= ((h_store_map_layer_cont -  ( h_quick_search + h_loca_step1_ttl ) ) + addHeight) - myBufferHeight;
								var reHeight 	= ((h_store_map_layer_cont -  ( h_quick_search + h_quick_search_input + h_myStoreInfo)) + addHeight) - myBufferHeight;
								var step2Gugun	= ((h_store_map_layer_cont -  ( h_quick_search + h_loca_step1_ttl + h_result_num_wrap3) ) + addHeight) - myBufferHeight;
								
								var roadResultList = h_store_map_layer_cont - 178;


								$(".transfer_method_cont1").height(roadResultList);
								$(".transfer_method_cont2").height(roadResultList);
								$(".transfer_method_cont3").height(roadResultList);


								$(".quickScrollWrap").height(reHeight);	//퀵검색
								$(".result_list_wrap").height(reHeight);	//퀵검색
								$(".loca_step1_cont").height(step2Sido); //지역검색 - 시도
								$(".loca_step2_frame").height(step2Gugun); //지역검색 - 구군	
								$(".sidoResultWrap").height(step2Sido); //지역검색 - 시도
								
								var h_my_visit_log_wrap = $(".my_visit_log_wrap").height();
								var h_my_tabBtn			= $(".my_store_tab1").find("h4").height();
								
								var myReHeight = ((h_store_map_layer_cont -  (h_quick_search +  h_my_visit_log_wrap + h_my_tabBtn + h_myStoreInfo)) + addHeight) - myBufferHeight;
								
								$(".myFavListWrap").height(myReHeight);
								
								store_map_layer_height = $(".store_map_layer").height();
								
								firstWh = $(window).height();

							},100);

					
						}
						
						var widthSize = $(window).width();
						if ( widthSize > 640 )
						{
							$('.store_map_layer').find('article.store_map_layer_cont').show();
							$('.map_layer_toggle a').removeClass('on');								
						}
						else
						{
							$('.store_map_layer').find('article.store_map_layer_cont').hide();
							$('.map_layer_toggle a').addClass('on');								
						}
						
						
						startHeight = $(window).height();
						store_map_layer_height = $(".store_map_layer").height();
					});

					
					$(window).on("resize", function(){
						uiResizeControl();
						var myWin 		= $(window).width();
						var wh = $(window).height(),
						ww = $(window).width(),
						btnOpt = $('.btn_opt_chk');
						
						/**
						btnOpt.css({
							'bottom':'20px',
							'left':'auto',
							'right':'20px',
							'top':'auto'
						});
						**/
						
						
						
						if (myWin < 641) 
						{
							setTimeout(function(){
								if ( (  $(window).height() - firstWh )  > 100  )
								{
									if ( $parentMenuType == "A" )
									{
										window.scrollTo(0, 0);

										var wh = $(window).height();
											ww = $(window).width();

										//$('.store_map_wrap').height( wh - 100 );

										// s::20210308 수정
										var bannerTop; 
										if($('.bnr_slider_wrap').find('.bx-wrapper').length > 0) {
											bannerTop = $(".bnr_slider_wrap").position().top;
										} else {
											bannerTop = $(".store_no_event").position().top;
										}
										// e::20210308 수정
										var addTop    = 60;
										var headerGnb = $(".tablet_gnb_wrap").height();
										var calaContentsHeight = (bannerTop - ( addTop + headerGnb )) - 58;
										roadSetHeight = calaContentsHeight;
										$('.store_map_layer_cont').height(  calaContentsHeight  );
										$('.road_map_layer_cont').height(  calaContentsHeight  );
										
										/** 내부 스크롤 영역 계산식 **/
										
										setTimeout(function(){
											var addHeight =  $(window).height() - startHeight;
											var h_store_map_layer_cont 	 = $(".store_map_layer_cont").height();
											var h_quick_search		 	 = $(".quick_search").height();
											var h_quick_search_input	 = $(".quick_search_input").height();
											var h_myStoreInfo			 = $(".myStoreInfo").outerHeight();
											var h_loca_step1_ttl		 = $(".loca_step1_ttl").height();
											var h_result_num_wrap3		 = $(".result_num_wrap3").height();
											
											
											
											var step2Sido	= ((h_store_map_layer_cont -  ( h_quick_search + h_loca_step1_ttl ) ) + addHeight) - myBufferHeight;
											var reHeight 	= ((h_store_map_layer_cont -  ( h_quick_search + h_quick_search_input + h_myStoreInfo)) + addHeight) - myBufferHeight;
											var step2Gugun	= ((h_store_map_layer_cont -  ( h_quick_search + h_loca_step1_ttl + h_result_num_wrap3) ) + addHeight) - myBufferHeight;
											
											
											var roadResultList = h_store_map_layer_cont - 178;


											$(".transfer_method_cont1").height(roadResultList);
											$(".transfer_method_cont2").height(roadResultList);
											$(".transfer_method_cont3").height(roadResultList);											
											$(".quickScrollWrap").height(reHeight);	//퀵검색
											$(".result_list_wrap").height(reHeight);	//퀵검색
											$(".loca_step1_cont").height(step2Sido); //지역검색 - 시도
											$(".loca_step2_frame").height(step2Gugun); //지역검색 - 구군	
											$(".sidoResultWrap").height(step2Sido); //지역검색 - 시도
											
											var h_my_visit_log_wrap = $(".my_visit_log_wrap").height();
											var h_my_tabBtn			= $(".my_store_tab1").find("h4").height();
											
											var myReHeight = ((h_store_map_layer_cont -  (h_quick_search +  h_my_visit_log_wrap + h_my_tabBtn + h_myStoreInfo)) + addHeight) - myBufferHeight;
											
											$(".myFavListWrap").height(myReHeight);
											
											store_map_layer_height = $(".store_map_layer").height();
										},100);						
									}
									else
									{
										setTimeout(function(){
											window.scrollTo(0, 0);

											var wh = $(window).height();
												ww = $(window).width();

											//$('.store_map_wrap').height( wh - 100 );

											// s::20210308 수정
											var bannerTop; 
											if($('.bnr_slider_wrap').find('.bx-wrapper').length > 0) {
												bannerTop = $(".bnr_slider_wrap").position().top;
											} else {
												bannerTop = $(".store_no_event").position().top;
											}
											// e::20210308 수정											
											var addTop    = 60;
											var headerGnb = $(".tablet_gnb_wrap").height();
											var calaContentsHeight = (bannerTop - ( addTop + headerGnb )) - 58;
											$('.store_map_layer_cont').height(  calaContentsHeight  );
											$('.road_map_layer_cont').height(  calaContentsHeight  );
										},100);

									}
								}
							},200);



						}	
						
						if (wh < startHeight )
						{
							//$(".btn_opt_chk3").hide();
						}
						else
						{
							//$(".btn_opt_chk3").show();
						}
						
					});

					
					
					$('.map_marker_pop_inner div.cont_wrap a').click(function(){
						$('.pop_up_dimm, .shopArea_pop01').fadeIn();
					});

					$('.shopArea_pop01 p.btn_pop_close a, .pop_up_dimm').click(function(){
						$('.pop_up_dimm, .shopArea_pop01').fadeOut();

						// 150604 성연욱 추가 - 팝업 초기화
						$('div.box_info dl.box_tabmenu dt').removeClass('on');
						$('div.box_info dl.box_tabmenu dd.panel').hide();
						// 150604 성연욱 추가 - 팝업 초기화 end
					});





					$('.result_list ul li:last, .result_list2 ul li:last, .result_list3 ul li:last').css({
						'border':'none'
					});

					$('.loca_step1_cont ul li:even, .loca_step2_cont ul li:even').css({
						'border-right':'1px solid #ddd'
					});

					$('.loca_step1_cont ul li a').click(function(){
						$('.loca_step1').hide();
						$('.loca_step2').show();
					});

					$('.result_num_wrap3 a.btn_prev').click(function(){
						$('.loca_step2').hide();
						$('.loca_step1').show();
					});

					$('.loca_step2_cont ul li a').click(function(){
						$('.loca_step2').hide();
						$('.loca_step3').show();
					});

// 					$('input[type=checkbox]').ezMark();접근성_20171127 수정

					$('.btn_opt_chk a').click(function(){
						$('.opt_select_pop').show();
					});

					$('.opt_select_ttl a').click(function(){
						$('.opt_select_pop').hide();
					});

					$('p.btn_opt_chk1').hide();
					
					findSW = false;
					if (myWin <= 640) {
						$('.find_store_wrap').css({
							'height':'118px'
						});
						findSW = true;
					}
					
					
					$('.map_layer_toggle a, .result_list ul li, .result_list2 ul li, .result_list3 ul li').bind('click', function(){
						
						if ( $parentMenuType == "A" )
						{
							
							var myWin = $(window).width();

							if (myWin <= 640) 
							{
								if (findSW == false) 
								{
									$('.find_store_wrap').css({
										'height':'118px'
									});
									findSW = true;

									$('.find_store_cont').show();
									$('.find_road_cont').hide();
									$(".store_map_layer_cont").hide();
									$(".road_map_layer_cont").hide();

									$('.map_layer_toggle a').removeClass('on');
								} 
								else 
								{
									$('.find_store_wrap').height(  $(".store_map_wrap").height() );

									$('.find_store_cont').show();
									$('.find_road_cont').hide();
									$(".store_map_layer_cont").show();
									$(".road_map_layer_cont").hide();

									$('.map_layer_toggle a').toggleClass('on');
									findSW = false;
								}
								
							}
							else
							{
								$('.find_store_wrap').css({
									'height':'118px'
								});

								if (findSW == false) 
								{
									findSW = true;

									$('.find_store_cont').show();
									$('.find_road_cont').hide();
									$(".store_map_layer_cont").hide();
									$(".road_map_layer_cont").hide();
									$('.map_layer_toggle a').removeClass('on');
								} 
								else 
								{
									findSW = false;
									$('.find_store_cont').show();
									$('.find_road_cont').hide();
									$(".store_map_layer_cont").show();
									$(".road_map_layer_cont").hide();
									$('.map_layer_toggle a').toggleClass('on');
								}
								
							}
								
						
						}
						else
						{

							
							
							if (findSW == false) {
								$('.find_store_wrap').css({
									'height':'118px'
								});
								findSW = true;
							} else {
								$('.find_store_wrap').css({
									'height':'626px'
								});
								findSW = false;
							}
							
							
						

							
							$('.store_map_layer').find('article.store_map_layer_cont').each(function(){
								if($(this).next('article')){
									$(this).toggle();
									$('.map_layer_toggle a').toggleClass('on');
									var display = $(this).css("display");
									var myWin 		= $(window).width();
									if (myWin < 641) 
									{
										if( display == "none")
										{
											//$(".store_map_layer").height( $(".store_map_layer_ttl").height() );
										}
										else
										{
											var myWinHeight 	= $(window).height();
											var gnbHeight   	= $(".tablet_gnb_wrap").height();
											var setMapHeight	= (myWinHeight - gnbHeight) - 20;
											//$(".store_map_layer").height( setMapHeight );

										}
									}								
									store_map_layer_height = $(".store_map_layer").height();
								}else{
									$(this).hide();
									$('p.btn_opt_chk').hide();
									$('.map_layer_toggle a').removeClass('on');
									store_map_layer_height = $(".store_map_layer").height();
								}
							});							
						}
					});
					
					//var roadMapShow = false;

					$('.road_layer_toggle a').bind('click', function(){


							var myWin = $(window).width();

							if (myWin <= 640) 
							{
								if (roadMapShow == false) 
								{
									$('.road_layer_toggle a').removeClass('on'); 
									$('.find_store_wrap').css({'height':'118px'});


									$('.road_map_layer_cont').hide();

									if ( $roadResult == false )
									{
									}
									else
									{
										$('.road_map_layer_cont').css({
											'height':'38px'
										});
										$(".road_map_layer_cont").show();

										$(".afterMobileSearchWrap").show();
										$(".inmap_short_info_wrap").show();
										$(".road_map_layer_inner").hide();									
									}
									roadMapShow = true;
								} 
								else 
								{
									$('.road_layer_toggle a').addClass('on');

									$('.find_store_wrap').height(  $(".store_map_wrap").height() );
									
									$('.road_map_layer_cont').show();
									$('.road_map_layer_cont').height(roadSetHeight);
									$(".afterMobileSearchWrap").hide();
									$(".inmap_short_info_wrap").hide();
									$(".road_map_layer_inner").show();

									roadMapShow = false;
								}
							}
							else
							{
								$('.find_store_wrap').css({
									'height':'118px'
								});

								if (roadMapShow == false) 
								{
									$('.road_layer_toggle a').removeClass('on'); 
									$('.road_map_layer_cont').hide();

									roadMapShow = true;
								} 
								else 
								{
									$('.road_layer_toggle a').addClass('on');

								
									$('.road_map_layer_cont').show();
									$(".afterMobileSearchWrap").hide();
									$(".inmap_short_info_wrap").hide();
									$(".road_map_layer_inner").show();

									roadMapShow = false;
								}
							}



					});
					
					/* 150803 - 모바일 사이즈 대응 */
					if(myWindow <= 640){
						$('.store_map_layer').find('article.store_map_layer_cont').hide();
						$('.map_layer_toggle a').addClass('on');
					}
					/* 150803 - 모바일 사이즈 대응 end */

					/* 150609 - 문진욱 */

					jQuery('#promotion_slide').skdslider({
						'delay':5000,
						'animationSpeed': 2000,
						'showNextPrev':true,
						'showPlayButton':true,
						'autoSlide':true,
						'animationType':'fading'
					});

					jQuery('#responsive').change(function(){
					  $('#responsive_wrapper').width(jQuery(this).val());
					});

					getIngList('all');

				});
				
				function uiResizeControl()
				{
					var widthSize = $(window).width();
					if ( widthSize > 640 )
					{
						$('.store_map_layer').find('article.store_map_layer_cont').show();
						$('.map_layer_toggle a').removeClass('on');								
					}
					else
					{
						//$('.store_map_layer').find('article.store_map_layer_cont').hide();
						//$('.map_layer_toggle a').addClass('on');								
					}					
				}
	            
	            function getIngList(menu_cd) {

	                if(menu_cd != "") {
	                    var seq;
	                    
	                    if(menu_cd == 'all') {
	                        seq = 0;
	                    } else if(menu_cd == 'STB2811') {
	                        seq = 1;
	                    } else if(menu_cd == 'STB2812') {
	                        seq = 2;
	                    } else if(menu_cd == 'STB2813') {
	                        seq = 3;
	                    } else if(menu_cd == 'STB2814') {
	                        seq = 4;
	                    }
	                    var option = {
	                            'MENU_CD' : menu_cd,
	                            'WEB_XPSR_YN': 'Y'
	                    };
	                    __ajaxCall('/whats_new/getIngList', option , true, "JSON", "POST", 
	                    function(data) {
	                        if(data.list.length > 0) {
	                            $('#tpl_listLi').tmpl(data.list).appendTo($('.bnr_slider_wrap > ul'));
	                            
	                            $('a.goPromotionView').unbind('click').bind('click', function() {
	                                pro_seq = $(this).attr('prod');
	                                f = document.promotionListForm;
	                                f.action = "whats_new/campaign_view";
	                                f.pro_seq.value = pro_seq;
	                                f.submit();
	                            });

	                        	// 150825 수정

                                if ((myWindow > 961) && (myWindow <= 1199)) {
                                    
                                    var gcSlider = $('.bnr_slider_wrap ul').bxSlider({
                                        minSlides:2,
                                        maxSlides:2,
                                        slideWidth:340,
                                        slideMargin:30,
                                        controls:true,
                                        auto:true,
                                        autoControls:true,
                                        autoControlsCombine:true,
                                        pager:true,
                                        pagerSelector:'.bnr_slider_pagers',
                                        autoControlsSelector:'.bnr_slider_controls',
                                        pause:3000
                                    });

                                } else if ((myWindow > 640) && (myWindow <= 960)) {

                                    var gcSlider = $('.bnr_slider_wrap ul').bxSlider({
                                        minSlides:2,
                                        maxSlides:2,
                                        slideWidth:280,
                                        slideMargin:20,
                                        controls:true,
                                        auto:true,
                                        autoControls:true,
                                        autoControlsCombine:true,
                                        pager:true,
                                        pagerSelector:'.bnr_slider_pagers',
                                        autoControlsSelector:'.bnr_slider_controls',
                                        pause:3000
                                    });
                                   
                                } else if (myWindow <= 640) {
                                    var gcSlider = $('.bnr_slider_wrap ul').bxSlider({
                                        minSlides:1,
                                        maxSlides:1,
                                        slideWidth:300,
                                        slideMargin:0,
                                        controls:true,
                                        auto:true,
                                        autoControls:true,
                                        autoControlsCombine:true,
                                        pager:true,
                                        pagerSelector:'.bnr_slider_pagers',
                                        autoControlsSelector:'.bnr_slider_controls',
                                        pause:3000
                                    });

                                } else {
                                    var gcSlider = $('.bnr_slider_wrap ul').bxSlider({
                                        minSlides:3,
                                        maxSlides:3,
                                        slideWidth:340,
                                        slideMargin:40,
                                        controls:true,
                                        auto:true,
                                        autoControls:true,
                                        autoControlsCombine:true,
                                        pager:true,
                                        pagerSelector:'.bnr_slider_pagers',
                                        autoControlsSelector:'.bnr_slider_controls',
                                        pause:3000
                                    });
                                }
                                
                             	// 150825 수정 end
	                        } else {
	                        	$('.bnr_slider_wrap').hide();
	                        	$('.store_no_event').show();
	                        }
	                    },
	                    function() {
	                    });
	                }

	            }
			</script>			

			<script type="text/x-jquery-tmpl" id="tpl_listLi">
				<li>
				    <a href="javascript:void(0);" class="goPromotionView" prod="${pro_SEQ}">
					<img src="${img_UPLOAD_PATH}/upload/promotion/${web_THUM}" alt="${title}">
					<p>${title}<br>
					{{if view_TYPE == 'C'}}
					<span>${view_DATE}</span>
					{{/if}}
					{{if view_TYPE == 'A' || view_TYPE == 'D'}}
					<span>${view_SDT1} ~ ${view_EDT1}</span>
					{{/if}}
					</p>
				    </a>
				</li>
			</script>
			

		<script src="../common/js/sdk/js/kakao.min.js"></script>
		<script>
		Kakao.init('fbd2116d4434a7441d5caa4bb4c5456e');
		</script>
		
		
		<script type="text/x-jquery-tepl" id="storeViewWrapBox">
			<!-- (My 음료/매장) 매장 상세 정보 팝업 -->
			<div class="shopArea_pop01 isStoreBizViewWrap" style="top:50px; display:none; z-index:20001;">
				<section class="shopArea_pop01_inner">
					<header class="titl">
						<h6>${s_name} {{html $item.getNewIcon()}}</h6>
						<div class="asm_stitle">
						<ul class="my_sns_list">
							<li class="btn_f"><a href="javascript:void(0);" class="storeFbBtn" data-caption="스타벅스코리아" data-image="${$item.getImage()}" data-link="${$item.link()}" data-title="스타벅스 ${s_name}" data-description="${notice}" ><img src="../common/img/util/reward/btn_f.gif" alt="패이스북"></a></li>
						
							<li class="btn_kakao mobileKaKaoTalk"><a href="javascript:void(0);" class="storeKakaoTalkBtn" data-image="${$item.getImage()}" data-description="${notice}" data-btn="스타벅스 매장찾기" data-link="${$item.link()}" ><img src="../common/img/util/reward/btn_kakao.png" alt="카카오톡"></a></li>
						</ul>
						<p>${notice}</p>
						</div>
					</header>
					<article class="shopArea_box">
						<div class="shopArea_left">
							<p class="big_img">{{html $item.getDefaultImage('M')}}</p>
							<ul class="s_img">
								{{html $item.getDefaultImage('S')}}
								{{html $item.getStoreImg()}}
							</ul>
						</div>
						<div class="scrollbar-inner">
							<div class="shopArea_right">
								<div class="box_info">
									<dl class="box_tabmenu">
										<!-- 1번 시작 -->
										<dt class="tab"><a href="javascript:void(0);" class="cafe_time_zone"  data-biz="${s_biz_code}" data-type="C">영업시간 보기</a></dt>
										<dd class="panel">
											<div class="date_time cafetimeWrap">

											</div>	
										</dd>
										<!-- 1번 끝 -->
										{{if $item.dtCheck()=='Y' }}
										<!-- 2번 시작 -->
										<dt class="tab"><a href="javascript:void(0);" class="dt_time_zone" data-biz="${s_biz_code}" data-type="D">Drive Thru 영업시간 보기</a></dt>	
										<dd class="panel">
											<div class="date_time dttimeWrap">

											</div>	
										</dd>
										<!-- 2번 끝 -->	
										{{/if}}
										{{if $item.reserveCheck()=='Y' }}
										<!-- 3번 시작 -->
										<dt class="tab"><a href="javascript:void(0);" class="reserve_time_zone"  data-biz="${s_biz_code}" data-type="R">리저브존 영업시간 보기</a></dt>
										<dd class="panel">
											<div class="date_time reservetimeWrap">

											</div>	
										</dd>
										<!-- 3번 끝 -->	
										{{/if}}
										{{if $item.wtCheck()=='Y' }}
										<!-- 4번 시작 -->
										<dt class="tab"><a href="javascript:void(0);" class="wt_time_zone"  data-biz="${s_biz_code}" data-type="W">Walk-Thru 영업시간 보기</a></dt>
										<dd class="panel">
											<div class="date_time wttimeWrap">

											</div>	
										</dd>
										<!-- 4번 끝 -->	
										{{/if}}
										{{if $item.deliversCheck()=='Y' }}
										<!-- 5번 시작 -->
										<dt class="tab"><a href="javascript:void(0);" class="delivers_time_zone"  data-biz="${s_biz_code}" data-type="O">Delivers 영업시간 보기</a></dt>
										<dd class="panel">
											<div class="date_time deliverstimeWrap">

											</div>	
										</dd>
										<!-- 5번 끝 -->	
										{{/if}}
									</dl>
								</div>
								<ul class="pop_btns_zon2">
									<li class="btn_f" style="display:"><a href="javascript:void(0);" class="storeFbBtn" data-caption="스타벅스코리아" data-image="${$item.getImage()}" data-link="${$item.link()}" data-title="스타벅스 ${s_name}" data-description="${notice}" ><img src="../common/img/util/reward/btn_f.gif" alt="패이스북"></a></li>
									
								</ul>
								<div class="shopArea_infoWrap">
									<dl class="shopArea_info">
										<dt>매장주소</dt>
										<dd>{{html $item.getAddress()}}</dd>
									</dl>
									<dl class="shopArea_info">
										<dt>전화번호</dt>
									{{if $item.getStoreNumber() }}
										<dd><a href="tel:${tel}"> ${tel} </a></dd>
									{{/if}}
									{{if !$item.getStoreNumber() }}
										<dd>${tel}</dd>
									{{/if}}
									</dl>
									{{if $item.getTheme('T')  != ''}}
									<dl class="shopArea_info">
										<dt>타입</dt>
										<dd>{{html $item.getTheme('T')}}</dd>
									</dl>
									{{/if}}
									{{if $item.getTheme('S')  != ''}}
									<dl class="shopArea_info">
										<dt>서비스</dt>
										<dd>{{html $item.getTheme('S')}}</dd>
									</dl>
									{{/if}}
									
									{{if $item.getTheme('P') != '' || $item.getTheme('WHCROAD') != ''}}
									<dl class="shopArea_info">
										<dt>위치 및 시설</dt>
										<dd>{{html $item.getTheme('P')}}{{html $item.getTheme('WHCROAD')}}</dd>
									</dl>
									{{/if}}
									{{if $item.getParkInfo()  != ''}}
									<dl class="shopArea_info">
										<dt>주차정보</dt>
										<dd>{{html $item.getParkInfo() }}</dd>
									</dl>
									{{/if}}
									{{if $item.getMapDesc()  != ''}}
									<dl class="shopArea_info">
										<dt>오시는 길</dt>
										<dd>{{html $item.getMapDesc() }}</dd>
									</dl>
									{{/if}}
									{{if $item.getHygieneRank()  != ''}}
									<dl class="shopArea_info">
										<dt style="width: auto;">식약처 인증 음식점 위생등급제 매우우수 매장 {{html $item.getHygieneRank() }}</dt>
									</dl>
									{{/if}}
								</div>
							</div>
						</div>

						<div class="stor_aip_wrap" {{if $item.getStoreViewRanding() != 'none'}} style="display:block" {{else}}  style="display:none"  {{/if}}  >
							<div class="stor_aip_inner">
								{{html $item.getStoreViewRandingView() }}
							</div>
						</div>
						
						{{html $item.getInstagram() }}


						<!-- 150925 구명준 추가 -->
						<div class="st_instagram_title storeInstagramBox" style="display:none">
							<p>고객님들이 인스타그램에 올려주신 <strong>#스타벅스${$item.getStoreNameInsta()}점</strong> 사진입니다.</p> <a class="btn_sti_more" href="javascript:void(0)" style="display:none">더보기</a>
						</div>

						<div class="st_instagram_wrap storeInstagramBox"  style="display:none">
							<div class="st_instagram_wrap_inner">
								<ul class="st_instagram_slider">

								</ul>
							</div>
								<p id="prevBtn" style="display:none">
									<a href="javascript:void(0)" class="instagram_prev_btn" data-prev="">
										<img alt="" class="arrow_off" src="//image.istarbucks.co.kr/common/img/store/mscard_arrow_l_off.png">
										<img alt="" class="arrow_on" src="//image.istarbucks.co.kr/common/img/store/mscard_arrow_l_on.png">
									</a>
								</p>
								<p id="nextBtn">
									<a href="javascript:void(0)" class="instagram_next_btn" data-next="">
										<img alt="" class="arrow_off" src="//image.istarbucks.co.kr/common/img/store/mscard_arrow_r_off.png">
										<img alt="" class="arrow_on" src="//image.istarbucks.co.kr/common/img/store/mscard_arrow_r_on.png">
									</a>
								</p>

								<p class="no_img storeInstagramNo" style="display:none">
									<img class="for_web" src="//image.istarbucks.co.kr/common/img/store/stor_no_img.jpg" alt="">
									<img class="for_mob" src="//image.istarbucks.co.kr/common/img/store/stor_no_img_m.jpg" alt="">
								</p>
						</div>
						<!-- 150925 구명준 추가 end -->
						<p class="st_insta_addtxt" style="display:none"></p>
					</article>






					<article class="shopArea_bar_wrap" {{if $item.getLsmEvt() != 'none'}} style="display:block" {{else}}  style="display:none"  {{/if}}>
						<!-- 이벤트 -->
						<div class="my_ms_shopArea_bar_wrap" style="display:block">
							<div class="my_ms_shopArea_bar">
								<ul>
									{{html $item.getLsmShow()}}
								</ul>
							</div>
						</div>
						<!-- 이벤트 -->
					</article>
				</section>
				<p class="btn_pop_close"><a href="javascript:void(0);" class="isStoreViewClosePop">닫기</a></p>
			</div> 
			<!-- (My 음료/매장) 매장 상세 정보 팝업 end -->
		</script>			
				
		<script type="text/x-jquery-tepl" id="cafeStoreTimeWrap">
				<dl class="date_time_left">

					<dt>${$item.getWeekDayStr(0)}일</dt>
					<dd>일요일 ${$item.getTime(0)}</dd>
					<dt>${$item.getWeekDayStr(1)}일</dt>
					<dd>월요일 ${$item.getTime(1)}</dd>
					<dt>${$item.getWeekDayStr(2)}일</dt>
					<dd>화요일 ${$item.getTime(2)}</dd>
					<dt>${$item.getWeekDayStr(3)}일</dt>
					<dd>수요일 ${$item.getTime(3)}</dd>
				</dl>
				<dl class="date_time_right">
					<dt>${$item.getWeekDayStr(4)}일</dt>
					<dd>목요일 ${$item.getTime(4)}</dd>
					<dt>${$item.getWeekDayStr(5)}일</dt>
					<dd>금요일 ${$item.getTime(5)}</dd>
					<dt>${$item.getWeekDayStr(6)}일</dt>
					<dd>토요일 ${$item.getTime(6)}</dd>
	
				</dl>			
		</script>
		<script src="../common/js/store/store_view.js?v=210423"></script>
</div>
	<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>

</body>
</html>
