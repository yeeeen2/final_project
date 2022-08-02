<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

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
<link rel="shortcut icon" href="common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="common/css/reset.css" rel="stylesheet">
<link href="common/css/style.css?v=210721" rel="stylesheet">
<link href="common/css/jquery.bxslider.css" rel="stylesheet">
<link href="common/css/idangerous.swiper.css" rel="stylesheet">
<link href="common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
<link href="common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="common/css/jquery-ui.css" rel="stylesheet">
<link href="common/css/ezmark.css" rel="stylesheet">
<link href="common/css/style_dt.css?v=20191211" rel="stylesheet"> <!-- 20191211 수정 -->

<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<link href="common/css_ie/style.css" rel="stylesheet">
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

	<link rel="shortcut icon" href="common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
	<link href="common/css/style_main.css?v=210930" rel="stylesheet">
	<link href="common/css/style_main_newProm.css?v=210219" rel="stylesheet"> <!-- 20201023 수정 -->
	<!--[if lt IE 9]>
	<link href="common/css_ie/style_main.css?v=1611301" rel="stylesheet" />
	<![endif]-->

</head>

<body>
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

<c:if test="${!empty msg }">
	<script>alert('${msg}');</script>
</c:if>
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
							<img alt="사용자 아이디" src="common/img/common/user_pic_sample.jpg">
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
					<!-- MSR 회원 end -->


					<!-- 카드인포 -->
					<!-- MSR 회원 -->
					<!-- 150805 DOM 수정 -->
					<!-- 150805 DOM 수정 -->
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
					<div class="sb_card_regi">
						<a href="javascript:void(0);">
							<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input';"><img alt="카드등록 아이콘" src="common/img/common/icon_add_card.png"></p>
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
							<li>
								<a role="button" href="javascript:void(0);">카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/card_list">전체보기</a></li>
									<li><a href="menu/card_list-1?CATE_CD=product_offline">실물카드</a></li>
									<li><a href="menu/card_list-2?CATE_CD=product_egift">e-Gift 카드</a></li>
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
							<li>
								<a role="button" href="javascript:void(0);">메뉴 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="store/store_nitro_coldbrew">나이트로 콜드브루</a></li>
									<li><a href="store/store_coldbrew">콜드 브루</a></li>
									<li><a href="menuStory/teavana">스타벅스 티바나</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="store/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="store/store_map-1?disp=quick">빠른 검색</a></li>
									<li><a href="store/store_map-2?disp=locale">지역 검색</a></li>
								</ul>
							</li>
							<li><a href="store/store_drive">드라이브 스루 매장</a></li>
							<li><a href="store/store_reserve">스타벅스 리저브™ 매장</a></li>
							<li><a href="store/store_community">커뮤니티 스토어 매장</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- <li><a href="store/store_cheongdam">청담스타</a></li> 20210727 메뉴 비노출 -->
									<li><a href="store/store_star_field">티바나 바 매장</a></li>
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
	<li class="util_nav01 sign_out" style="display:none;"><a href="/starbucks/login/logout;">Sign out</a></li>
	<li class="util_nav01 sign_in"  style=""><a href="/starbucks/login/login">Sign In</a></li>
<c:choose>	
	<c:when test="${sessionScope.userInfo.id == 'admin'}">
	<li class="util_nav02"><a href="/starbucks/admin/memberListForm">My Starbucks</a></li>
	</c:when>
	<c:otherwise>
	<li class="util_nav02"><a href="/starbucks/my/index">My Starbucks</a></li>
	</c:otherwise>
</c:choose>
	<li class="util_nav03"><a href="/starbucks/menu/orderList">Order</a></li>
	<li class="util_nav04"><a href="store/store_map">Find a Store</a></li>
</ul>
				</nav>
				<a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3"></span></a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
			</div>
			<nav class="sub_gnb_nav">
				<div class="sub_gnb_nav_inner">
				</div>
			</nav>
		</div>
		<!-- 서브 gnb end -->
	</div>
</div>			

	<!-- main visual  /  -->
	<div id="container"><!-- 접근성_20171201 container 추가 -->
		<div id="topWrap">
			<!-- 플로팅 뱃지 안내 -->
			<div class="layer_floating">
				
					<div class="badge_cont1">
						<a href="#">
							<img src="upload/banner/floatingbnr/WIP8gI_20220412094131003.png" alt="Find Yout Taste, 좋아하는 걸 좋아해" class="pc-badge">
							<img src="upload/banner/floatingbnr/WIP8gI_20220412094134198.png" alt="Find Yout Taste, 좋아하는 걸 좋아해" class="mobile-badge">
						</a>
					</div>
				
					<div class="badge_cont2">
						<a href="#">
							<img src="upload/banner/floatingbnr/1R97kl_20220429161554431.png" alt="PLCC 스타벅스 현대카드 5월 1차 프로모션" class="pc-badge">
							<img src="upload/banner/floatingbnr/1R97kl_20220429161605625.png" alt="PLCC 스타벅스 현대카드 5월 1차 프로모션" class="mobile-badge">
						</a>
					</div>
				
			</div>
			<!-- //플로팅 뱃지 안내 -->

			
			
				
					<!-- s::메인 TOP 배너(20220406) -->
<style type="text/css">
    .main-visual_wrap {height:646px; background-image:url('upload/common/img/main/2022/2022_Summer1_main_bg.jpg');}
    .main-visual_wrap .main-visual_inner {max-width:1130px;}
    .main-visual_slogan, .btn_slogan {position:absolute; width:355px;}
    .main-visual_slogan {top:7.1%; left:44px;}
    .btn_slogan {z-index:10; top:39%; left:6px; text-align:center;}
    .btn_slogan a {width:129px; margin:0 auto; color:#d73a7a; border:2px solid #d73a7a; transition:background-color .5s; -webkit-transition:background-color .5s;}
    .btn_slogan a:hover {background-color:#d73a7a; color: white;}
    
    .main-visual_set {height:100%;}
    .set_01 {z-index:8; top: 11.8%; left: 35.7%; width: 48.7%; max-width:548px;}
    .set_02 {z-index:9; top: 33.5%; left: 19.6%; width: 41.5%; max-width:468px;}
    .set_03 {z-index:10; top: 15.6%; right: -8%; width: 26.9%; max-width:302px;}

    .set_common:after {display:none;}

    .reserve_magazine_wrap .reserve_detail-btn_wrap {width:100% !important;} /* (필수)리저브 매거진 */
    /* media queries pc */
    @media screen and (max-width:1400px) {
        .main-visual_wrap {background-position:63% bottom;}
        .main-visual_slogan {left:-1%; width:27%;}
        .set_01 {left:27.7%;}
        .set_02 {left:11.6%;}
        .set_03 {right:0%;}
        .btn_slogan {top:38.5%; left:-53px;}
    }
    @media screen and (max-width:1220px) { /* 기존 1130px */
        .main-visual_wrap {height:58vw;}
        .main-visual_wrap .main-visual_inner {max-width:100%;}
        .main-visual_slogan, .btn_slogan {top:12%; left:3.5%; width:20%;}
        .btn_slogan {top:37.7%;}
        .set_01 {top:17.8%; left:27.7%; width:43.7%;}
        .set_02 {top:41.5%; left:11.6%; width:37.5%;}
        .set_03 {top:24.6%; right:8%; width:23.9%;}
    }
    @media screen and (max-width:800px) {
        .main-visual_wrap {height:60vw;}
        .main-visual_slogan, .btn_slogan {width:20%;}
        .btn_slogan a {width:108px; height:34px; line-height:32px;}
    }
    @media screen and (max-width:740px) {
        .layer_floating {top:85px; width:14%;} /* 시즌 음료 가림 */
    }
    /* media queries mobile */
    @media screen and (max-width:640px) {
        .layer_floating {top:108px; width:25.7%; right:1.8%;} /* 시즌 음료 가림 */

        .main-visual_wrap {width:auto; height:263.1vw; padding-top:9px; background-image:url('upload/common/img/main/2022/m_2022_Summer1_main_bg.jpg'); background-position:center top; box-sizing:border-box;}
        .main-visual_slogan {width:49%; max-width:312px; top:4.1%; left:10.4%;}
        
        .pc-drink {display:none;}
        .m-drink {display:block;}
        
        .set_common {bottom:auto; margin: 0;}
        .set_01 {z-index:8; top:20.6%; right:0; left:11.2%; width:80.1%; max-width:512px;}
        .set_02 {z-index:9; top:39.4%; left:7.5%; width:92.8%; max-width:592px;}
        .set_03 {z-index:8; top:auto; right:9.5%; bottom:12.5%; width:78.4%; max-width:499px;}

        .btn_slogan {z-index:10; top:auto; bottom:6.5%; width:auto; margin-left:-54px; padding-top:0;}
        .btn_slogan a {width:108px; color:#d73a7a; border-color:#d73a7a;}
    }
    @media screen and (max-width:320px) {
        .main-visual_wrap {height:291vw;}
    }
</style>
<div class="main-visual_wrap">
    <div class="main-visual_inner">
        <div class="main-visual_slogan">
            <img src="upload/common/img/main/2022/2022_Summer1_main_slogun.png" alt="FIND YOUR TASTE" class="pc-slogan">
            <img src="upload/common/img/main/2022/m_2022_Summer1_main_slogun.png" alt="FIND YOUR TASTE" class="m-slogan">
        </div>

        <div class="main-visual_set">
            <div class="set_common set_01">
                <img src="upload/common/img/main/2022/2022_Summer1_main_rollinmint.png" alt="롤린 민트 초코 콜드 브루" class="pc-drink">
                <img src="upload/common/img/main/2022/m_2022_Summer1_main_punchgraffiti2.png" alt="펀치 그래피티 블렌디드" class="m-drink">
            </div>
            <div class="set_common set_02">
                <img src="upload/common/img/main/2022/2022_Summer1_main_punchgraffiti3.png" alt="펀치 그래피티 블렌디드" class="pc-drink">
                <img src="upload/common/img/main/2022/m_2022_Summer1_main_rollinmint.png" alt="롤린 민트 초코 콜드 브루" class="m-drink">                                
                
            </div>
            <div class="set_common set_03">
                <img src="upload/common/img/main/2022/2022_Summer1_main_pomeloflow.png" alt="포멜로 플로우 그린 티" class="pc-drink">
                <img src="upload/common/img/main/2022/m_2022_Summer1_main_pomeloflow.png" alt="포멜로 플로우 그린 티" class="m-drink">
            </div>
        </div>
        <!-- 예은 수정 -->
     <!--    <div class="btn_slogan">
            <a href="whats_new/campaign_view?pro_seq=1992">자세히 보기</a>
        </div> -->
    </div>
</div>
<!-- //e::메인 TOP 배너(20220406) -->
				
				
			
		</div>
		

			
			<section class="line_notice">
				<div class="line_notice_left"></div>
				<div class="line_notice_right"></div>
				<div class="line_notice_bg">
					<div class="line_notice_bgl">
						<div class="line_notice_inner">
							<dl class="line_notice_inner_l">
								<dt class="notice_ttl">
									<img src="common/img/common/notice_ttl.png" alt="공지사항">
								</dt>
								<dd>
									<ul class="news_result">
									</ul>
								</dd>
							</dl>
							<p class="line_notice_inner_r">
								<span><a href="#" title="공지사항 더보기">더보기</a><!-- 접근성_20171201 title 추가 --></span>
							</p>
						</div>
					</div>
					<div class="line_notice_bgr">
						<a href="#">
							<p class="prom_ttl">스타벅스 프로모션</p>
							<span class="btn_prom"><img src="common/img/common/btn_prom_down.png" alt="스타벅스 프로모션 펼쳐보기" role="button"><!-- 접근성_20171201 alt, role 추가 --></span><!-- 150818 성연욱 수정 -->
						</a>
					</div>
				</div>
			</section>
			<!-- notice end -->
			<!-- 프로모션 배너 -->
			<section class="main_prom_bnr">
				<div class="main_prom_bnr_swiper slider">
					<ul class="main_prom_bxslider">
					</ul>
					<div class="main_slider_controller">
						<div class="main_slider_controls"></div>
						<div class="main_slider_pagers"></div>
					</div>
					<p class="main_prevBtn"><a href="javascript:void(0)"><span class="a11y">이전 프로모션</span></a></p>
					<p class="main_nextBtn"><a href="javascript:void(0)"><span class="a11y">다음 프로모션</span></a></p>
				</div>
			</section>
			<!-- 프로모션 배너 end -->
			
			<!-- 메인 스타벅스 리워드 리뉴얼 -->
			<!-- <section class="new-rewards_wrap" style="display:none;">
				<div class="new-rewards_inner">
					<div class="new-rewards_logo">
						<img src="common/img/main/rewards-logo.png" alt="Starbucks Rewards"> 20200821 수정
					</div>
					
					<div class="new-rewards_conts">
						<div class="info-cont">
							<div class="info-cont_txt">
								<h2>
									스타벅스만의 특별한 혜택, <br class="mobile-br"> <br class="pc-br"><strong>스타벅스 리워드</strong>
								</h2>
								<p>
									<strong>스타벅스 회원이세요?</strong> <br class="mobile-br"> 로그인을 통해 <br class="pc-br">나만의 리워드를 확인해보세요.
									<br>
									<strong>스타벅스 회원이 아니세요?</strong> <br class="mobile-br"> <br class="pc-br">가입을 통해 리워드 혜택을 즐기세요.
								</p>
							</div>
							<div class="btn-signin_group">
								<a href="mem/join" class="btn-signin_join">회원가입</a>
								<a href="javascript:$.loginLib.showLayerLogin();" class="btn-signin_login">로그인</a>
							</div>
						</div>
						
						<div class="gift-cont">
							<div class="gift-cont_txt">
								<p>
									회원 가입 후, 스타벅스 e-Gift Card를 <br class="pc-br"><br class="mobile-br"><strong>"나에게 선물하기"로 구매하시고, <br class="mobile-br">편리하게 등록하세요!</strong>
									<br>
									카드를 등록하여 스타벅스 리워드 회원이 되신 후, <br class="pc-br"><br class="mobile-br">첫 구매를 하시면 무료 음료쿠폰을 드립니다!
								</p>
							</div>
							<div class="btn_egift">
								<a href="msr/sceGift/gift_step1">e-Gift Card 선물하기</a>
							</div>
						</div>
					</div>
				</div>
			</section> -->
			<!-- //메인 스타벅스 리워드 리뉴얼 -->
					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- MSR 회원 end -->
					<!-- 일반회원 -->
					<div class="msr_lead" style="display:none;">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<a href="msr/msreward/level_benefit" title="회원 등급별 혜택">
						<p class="icon_msr_cup"></p>
						<div class="msr_info_area">
							<p class="msr_lead_txt">
								<span class="user_greet_txt"><strong>스벅매니아</strong>님, 안녕하세요!</span>
								<span class="userNextStarTxt"><em>혜택에 편리함까지 더한</em> 스타벅스 리워드를 즐겨보세요.</span>
							</p>
						</div>
						</a>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- 일반회원 end -->
					<!-- 유저레벨 end -->

					<span class="msr_sep_line" aria-hidden="true"></span><!-- 접근성_20171106 aria 추가 -->

					<!-- 카드인포 -->
					<!-- MSR 회원 -->
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						</p><!-- 접근성_20171106 tabindex 추가 -->
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
						<!-- 등록된 카드가 없는 경우 end -->
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- 일반회원 end -->
					<!-- 카드인포 end -->
				</div>
			</div>
			

		
		
			
				<!-- s::시즌 프로모션 배너(20220406) -->            
<style type="text/css">
    #main-bean_wrap {position:relative; height:572px; background:#f9e8ee url('upload/common/img/main/2022/2022_Summer1_bean_bg2.jpg') center center no-repeat; background-size:cover;}
    #main-bean_wrap:before, #main-bean_wrap:after {position:absolute; bottom:0; display:block; background-position:center top; background-repeat:no-repeat; content:'';}
    #main-bean_wrap:before {top: -17.5%; left:0; width:425px; height:392px; background-image:url('upload/common/img/main/2022/2022_Summer1_bean_bg_left.png');}
    #main-bean_wrap:after {bottom: -15.5%; right:0; width:482px; height:360px; background-image:url('upload/common/img/main/2022/2022_Summer1_bean_bg_right.png');}
    
    .main-bean_inner {max-width:1124px;}
    
    .bean_img_box {z-index:9; top:13.6%; left:14.9%; max-width:310px; width:27.7%;}
    .bean_txt_box {z-index:9; top:31.9%; right:15.8%; max-width:321px; width:28.7%;}
    
    .btn_bean_detail {margin-top:39px;}
    .btn_bean_detail a {color:#1e245c; border:2px solid #1e245c; transition:background-color .7s, color .7s; -webkit-transition:background-color .7s, color .7s;}
    .btn_bean_detail a:hover {background-color:#1e245c;color:#fff;}
    
    @media all and (max-width:1500px) {
        #main-bean_wrap {background-position:70% center;}
    }
    @media all and (max-width:1200px) {
        #main-bean_wrap {height:53vw;}
        #main-bean_wrap:before,  #main-bean_wrap:after {background-size:contain;}
        #main-bean_wrap:before {width:30%; height: 50%; top: -10%; background-position:left bottom;}
        #main-bean_wrap:after {width:30%; height: 50%; bottom: -8%; background-position:right bottom;}

        .bean_img_box {left:20%; transform: translateX(30%);}
        .bean_txt_box {right:11%;}
    }
    @media all and (max-width:1100px) {
        .bean_txt_box{transform:translateY(5%);}
        .bean_img_box {transform: translateX(30%) translateY(5%);}
    }
    @media all and (max-width:640px) {
        #main-bean_wrap {height:172.81vw; background-image:url('upload/common/img/main/2022/m_2022_Summer1_bean_bg.jpg'); background-position:center;}	
        #main-bean_wrap:before, #main-bean_wrap:after {display:none;}
        
        .bean_img_box {z-index:10; top:10.6%; left:50%; width:55%; max-width:350px; transform:translate(36% , 7.8%);}
        .bean_txt_box {z-index:10; top:auto; right:50%; bottom:10.5%; max-width:402px; width:63%; transform:translate(-1.7%, -31%);}
        
        .bean_img_box img,
        .bean_txt_box img {width:100%;}
        
        .btn_bean_detail {margin:14% auto 0; transform: translateY(20px);}
    }
    @media all and (max-width:500px) {
        .bean_txt_box {transform:translate(-1.7%, -20%)}
    }
</style>
<section id="main-bean_wrap">
    <div class="main-bean_inner">
        <div class="bean_img_box" style="opacity: 1; left: 14.5997%;">
            <img src="upload/common/img/main/2022/2022_Summer1_bean_bean.png" alt="술라웨시 토라자 250g" class="pc-bean">
            <img src="upload/common/img/main/2022/m_2022_Summer1_bean_bean.png" alt="술라웨시 토라자 250g" class="m-bean">
        </div>
        
        <div class="bean_txt_box" style="opacity: 1; right: 17.4988%;">
            <img src="upload/common/img/main/2022/2022_Summer1_bean_text.png" alt="블랙 세서미의 고소한 풍미와 마쉬멜로의 끝맛이 조화로운 시즌 한정 원두를 만나보세요." class="pc-bean-txt">
            <img src="upload/common/img/main/2022/m_2022_Summer1_bean_text.png" alt="블랙 세서미의 고소한 풍미와 마쉬멜로의 끝맛이 조화로운 시즌 한정 원두를 만나보세요." class="m-bean-txt">
            <div class="btn_bean_detail">
                <a href="#">자세히 보기</a>
            </div> 		
        </div>
    </div>
</section>
<!-- // e::시즌 프로모션 배너(20220406) -->
			
			
		
		

		
		
			
				<!-- s::메인 리저브 배너(20220331) -->
<style type="text/css">

    .reserve_wrap {position:relative; height:400px; background:url("common/img/event/2022/reserve_2022_indonesia_visual_bg.jpg") no-repeat center top; background-size:cover; overflow:hidden}

    
    .reserve_inner {position:relative; width:100%; height:100%; margin:0 auto;}
    
    .reserve_title img,
    .reserve_visual img {width:auto;}
    
    .reserve_title {position:relative; z-index:10; padding-top:115px; max-width:1080px; width:100%; margin-left:auto; margin-right:auto; box-sizing:border-box;}
    .reserve_title img {transform:translateX(-11px);}
    
    .reserve_visual {display:block; position:absolute; right:0%; bottom:0; opacity:0;}
    .reserve_visual .reserve_visual-pc {max-width:none;}

    .reserve_visual::before {content: url("https://image.istarbucks.co.kr/upload/common/img/main/2022/reserve_2022_indonesia_leaf1.png"); position: absolute; left: 0; bottom: -1%;}
    .reserve_visual::after {content: url("https://image.istarbucks.co.kr/upload/common/img/main/2022/reserve_2022_indonesia_leaf2.png"); position: absolute; right: 0; bottom: -1%;}
    
    .reserve_detail-btn_wrap {position:relative; z-index:10; max-width:1080px; margin-top:39px; margin-right:auto; margin-left:auto; padding-left:254px; box-sizing:border-box;} 
    .reserve_detail-btn a {display:block; width:100%; height:100%; color:#b9813e; font-size:15px; line-height:34px; text-align:center; border:2px solid #b9813e; border-radius:5px; box-sizing:border-box; transition:background-color .7s, color .7s, border-color .7s; -webkit-transition:background-color .7s, color .7s, border-color .7s}
    .reserve_detail-btn a:hover {color:#fff; background-color:#b9813e;}

    .reserve_magazine_wrap .reserve_visual:before, .reserve_magazine_wrap .reserve_visual:after {display:none;}
    .reserve_magazine_wrap .reserve_detail-btn_wrap {width:auto;padding-left:0;}
    @media screen and (min-width:2000px){
        .reserve_visual {right:0; left:0; text-align:center;}
    }
    @media screen and (max-width:1900px){
        .reserve_inner:before {top:12px; width:180px; height:109px; background-size:cover;}
        .reserve_visual {right:-4%;}
    }
    @media screen and (max-width:1800px){
        .reserve_visual {right:-10%;}
    }
    @media screen and (max-width:1700px){
        .reserve_visual {right:-16%;}
    }
    @media screen and (max-width:1600px){
        .reserve_visual {right:-22%;}
    }
    @media screen and (max-width:1500px){
        .reserve_visual {right:-28%;}
    }
    @media screen and (max-width:1400px){
        .reserve_visual {right:-34%;}
    }
    @media screen and (max-width:1300px){
        .reserve_visual {right:-40%;}
    }
    @media screen and (max-width:1200px){
        .reserve_visual {right:-46%;}
    }
    @media screen and (max-width:1120px){
        .reserve_wrap {height:357px;}

        .reserve_inner:before {display:none;}

        .reserve_title {max-width:none; width:42%; margin-right:0; margin-left:25px; padding-top:75px; padding-left:25px;}
        .reserve_visual {right:-49%; bottom:-6%;}
        .reserve_title img {transform:none;}

        .reserve_detail-btn_wrap {max-width:none; width:40%; margin-left:0; padding-left:25.5%;}
    }
    @media screen and (max-width:1050px){
        .reserve_visual {right:-55%;}
    }
    @media screen and (max-width:980px){
        .reserve_visual {right:-62%;}
    }
    @media screen and (max-width:930px){
        .reserve_wrap {height:100%;}
        .reserve_wrap:after {display:none;}
        
        .reserve_title {display:none}
        
        .reserve_visual {bottom:0; right:auto; width:100%;}          
        .reserve_visual img {max-width:none; width:100%;}

        .reserve_visual::before {display: none;}
        .reserve_visual::after {display: none;}
        
        .reserve_detail-btn_wrap {position:static; width:auto; margin-top:0; padding-left:0;}
        .reserve_detail-btn {position:absolute; z-index:10; bottom:10%; left:50%; margin-left:-55.4px;}
        .reserve_detail-btn a {color:#fff; background-color:rgba(0, 0, 0, 0.2); border-color:#fff;}
        .reserve_detail-btn a:hover {border-color:#fff;background-color:#fff;color:#000;}

        .reserve_magazine_wrap .reserve_detail-btn {position:static;}
        .reserve_magazine_wrap .reserve_detail-btn a {background-color:#fff;}
        .reserve_magazine_wrap .reserve_detail-btn a:hover {color:#fff;border-color:#000;}
    }
    @media screen and (max-width:640px){
        .reserve_detail-btn {width:115px; height:34px; line-height:32px; margin-top:0; }
        .reserve_detail-btn a {font-size:13px; line-height:30px;} 
    }
</style>
<section class="reserve_wrap">
    <div class="reserve_inner">
        <div class="reserve_title">

            <img src="common/img/event/2022/reserve_2022_indonesia_title.png" alt="INDONESIA WEST JAVA" class="reserve_visual-pc">

        </div>
        
        <div class="reserve_visual" style="opacity:1;">
            <img src="upload/common/img/main/2022/reserve_2022_indonesia_visual3.png" alt="" class="reserve_visual-pc">
            <img src="common/img/event/2022/m_reserve_2022_indonesia_visual.jpg" alt="" class="reserve_visual-m">

        </div>
        
        <div class="reserve_detail-btn_wrap">					
            <div class="reserve_detail-btn">
                <a href="http://www.starbucks.co.kr/whats_new/newsView-1?seq=4496">자세히 보기</a>
            </div>
        </div>
    </div>
</section>
<!-- //e::메인 리저브 배너(20220331) -->
			
			
		
		


		
		
			
				<!-- s::Pick Your Favorite(20220406) -->
<style type="text/css">
    .fav_img {top:100px;right:-10px;width:672px;height:458px;background-image:url('upload/common/img/main/2022/2022_Summer1_pick_img.png');}
    
    @media screen and (max-width:1280px) {
        .fav_img {top:80px;right:100px;width:612px;height:411px;}
    }
    @media screen and (max-width:960px) {
        .fav_img {position:static;top:auto;right:auto;margin:130px auto 0;}
    }
    @media screen and (max-width:640px) {
        #favWrap {background-position:center -6px;background-size:cover;}
        
        .fav_img {width:460px;height:314px;}
        
        .btn_fav_prod {width:115px;height:34px;line-height:32px;margin-top:0;}
        .btn_fav_prod a {font-size:13px;line-height:30px;} 
    }
    @media screen and (max-width:480px) {
        .fav_img {width:320px;height:264px;margin:90px auto 0;}
    }
</style>
<section id="favWrap" class="winter_fav_bg">
    <div class="wrap_inner">
        <div class="fav_prod_txt01">PICK YOUR FAVORITE</div>
        <div class="fav_prod_txt02">다양한 메뉴를 스타벅스에서 즐겨보세요. 스타벅스만의 특별함을 경험할 수 있는 최상의 선택 음료, 스타벅스 커피와 완벽한 어울림을 자랑하는 푸드, 다양한 시도와 디자인으로 가치를 더하는 상품, 소중한 사람에게 마음을 전하는 가장 좋은 방법 스타벅스 카드</div>
        <div class="fav_img"></div>
        <div class="btn_fav_prod"><a href="menu/index">자세히 보기</a></div>
    </div>
</section>
<!-- //e::Pick Your Favorite(20220406) -->
			
			
		

		


			<!-- 메뉴 -->
			<section id="menuWrap">
				<div class="wrap_inner">
					<div class="menu_txt01"></div>
					<div class="menu_txt02"></div>
					<div class="menu_btn"><a href="menu/index">자세히 보기</a></div>
					<div class="menu_img01"></div>
				</div>
			</section>
			<!-- 메뉴 end -->
			
			<!-- 20200619 수정 -->
			<!-- <section class="reserve3Wrap">
				<div class="reserve3_pc">
					<div class="reserve_left">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_pc.png" alt="" />
					</div>
					<div class="reserve_right">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_pc.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="reserve3_mobile">
					<div class="reserve_top">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_mobile.png" alt="" />
					</div>
					<div class="reserve_bottom">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_mobile.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="look-detail_btn">
					<a href="coffee/reserve_magazine_list">EXPLORE OUR STORY</a>
				</div>
			</section> 20210928 삭제 -->
			<!-- //20200619 수정 -->
			<!-- 20210928 추가 -->
			<section class="reserve_magazine_wrap">
                <div class="reserve_inner">
                    <div class="reserve_title">
                        <img src="common/img/event/2022/reserve_text_pc_220120.png" alt="리저브 매거진에서 일상 속 특별함을 만나보세요." class="reserve_visual-pc"> <!-- 220120 수정 -->

                    </div>
                   
                    <div class="reserve_visual">
                        <img src="common/img/event/2022/reserve_visual_pc_220119.png" alt="" class="reserve_visual-pc"> <!-- 220120 수정 -->
                        <img src="common/img/event/2022/reserve_visual_m_220119.jpg" alt="" class="reserve_visual-m"> <!-- 220120 수정 -->

                    </div>
                    
                    <div class="reserve_detail-btn_wrap">					
                        <div class="reserve_detail-btn">
                            <a href="#">자세히 보기</a>
                        </div>
                    </div>
                </div>
            </section>
			<!-- 20210928 추가 -->
			<!-- 리저브매장 end -->

			<!-- 매장 -->
			<section id="storeWrap">
				<div class="wrap_inner">
					<div class="store_exp_img01"></div>
					<div class="store_exp_img02"></div>
					<div class="store_exp_img03"></div>
					<div class="store_exp_img04"></div>
					<div class="store_txt01">스타벅스를 가까이에서 경험해보세요. 고객님과 가장 가까이 있는 매장을 찾아보세요!</div>
					<div class="store_txt02">차별화된 커피 경험을 누릴 수 있는 리저브 매장, 다양한 방법으로 편리하게 즐길 수 있는 드라이브 스루 매장, 함께해서 더 따뜻할수 있는 지역사회 소통 공간 커뮤니티 매장</div>
					<div class="store_btn"><a href="store/store_map">매장 찾기</a></div>
				</div>
			</section>
			<!-- 매장 end -->
			</div><!-- // 접근성_20171201 container 추가 -->
			<!-- footer -->
			




		
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
		
			
			<script src="common/js/jquery-1.10.2.min.js"></script>
			<script src="common/js/%40common.js"></script>
			<script src="common/js/jquery-ui.min.js?v=220207"></script>
			<script src="common/js/idangerous.swiper-2.1.min.js"></script>
			<script src="common/js/idangerous.swiper.scrollbar-2.1.js"></script>
			<script src="common/js/jquery.bxslider.min.js"></script>
			<script src="common/js/skdslider.min.js"></script>
			<script src="common/js/jquery.drive.js"></script>
			<script src="common/js/jquery.easing-1.3.min.js"></script>
			<script src="common/js/jquery.elevatezoom.js"></script>
			<script src="common/js/jquery.flip.js"></script>
			<script src="common/js/jquery.jsmovie.1.4.4.min.js"></script>
			<script src="common/js/jquery.mCustomScrollbar.concat.js"></script>
			<script src="common/js/jquery.number.min.js"></script>
			<script src="common/js/jquery.rotate.2.3.js"></script>
			<script src="common/js/jquery.scrollbar.js"></script>
			<script src="common/js/jquery.scrollTo-1.4.2-min.js"></script>
			<script src="common/js/jquery.superscrollorama.js"></script>						
			<script src="common/js/jquery.transform2d.js"></script>
			<script src="common/js/jquery.transform3d.js"></script>			
			<script src="common/js/greensock/TweenMax.min.js"></script>
			<script src="common/js/masonry.pkgd.js"></script>
			<script src="common/js/common.js"></script>
			<script src="common/js/gnb.js?v=220502"></script>
			<script src="common/js/header.js?v=200915"></script>
			<script src="common/js/footer.js?v=210818"></script>

			<script src="common/js/jquery.tmpl.js"></script>
			<script src="common/js/jquery.tmplPlus.min.js"></script>
			<script src="common/js/jquery.ezmark.min.js"></script>
			<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->
			
			<!--
			<script src="common/js/swiper.jquery.min.js"></script>
			<script src="common/js/swiper.min.js"></script>
			<script src="common/js/util.js"></script>
			-->
			
		
			<script src="common/js/openevent/openevent.js"></script>
			<script src="common/js/open_event_control.js"></script>
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

			<script src="common/js/jquery.transit.min.js"></script>
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
						
			<script src='common/js/makePCookie.js'></script>
		
			<script>
				$(document).ready(function () {
					$('a[href*="card_list"] , a[href*="drink_list"] , a[href*="food_list"] , a[href*="product_list"]').on("click", function () {
						Cookies.deleteCookie("MENU_TAB");
						Cookies.deleteCookie("MENU_CATE");
						Cookies.deleteCookie("MENU_OPT");
					});
				});
			</script>
		
			<script src="common/js/main_ani.js?v=200616"></script>
			<script src="common/js/main_prom.js?v=210929"></script>
			<!--script src="common/js/main_prom3.js"></script--> <!-- 20170831 삭제 -->
			<script src="common/js/main_teavana.js?v=20210208"></script>
			<script src="common/js/jquery.animateSprite.min.js"></script>
			<script src="common/js/jquery.cycle.all.js"></script>
			<!-- footer end -->
		</div>

		<script>
			// 160902 박종현 추가 - 랜덤 노출 영역 선택
			if ((new Date()).getTime() % 2 == 0) {
				$("#autumn1_img1, .autumn1_bean1_wrap").show();
				$("#autumn1_img2, .autumn1_bean2_wrap").hide();
			} else {
				$("#autumn1_img1, .autumn1_bean1_wrap").hide();
				$("#autumn1_img2, .autumn1_bean2_wrap").show();
			}

			var $roll_max = 5;
			var $roll_type = "STB2701";
			
			$(document).ready(function(){
				
				__ajaxCall("${pageContext.request.contextPath}/interface/checkLogin", {}, true, "json", "post"
						,function (_response) {
							if (_response.result_code == "SUCCESS") {
								$(".top_msr_wrap").show();
								$(".top_msr_nologin").hide();
								$(".sign_out").show();
								$(".sign_in").hide();
								$(".footer_util_btn .last").hide();	//[150826 추가] 모바일 Join Us 버튼 숨김
								
								// MSR 영역 셋팅
								$.loginLib.getMsrRewardSummary();
							} else {
								$(".top_msr_wrap").hide();
								$(".top_msr_nologin").show();
							}
						}
						,function (_error) {
						}
					);
				
				/**
	 	 		$('.line_notice_inner_l dd ul').inewsticker({
					speed       : 2500,
					effect      : 'slide',
					dir         : 'ltr',
					font_size   : 13,
					color       : '#fff',
					// font_family : 'arial',
					delay_after : 1000
				}); 
				**/

                var option = {
                        'MENU_CD' : "STB3120"
                };
                __ajaxCall('/banner/getBannerList', option , true, "JSON", "POST", 
                function(data) {
                    if(data.list.length > 0) {
                    	
                    	$.each( data.list, function(x, y) {
                            tmpStr = "";
                            tmpTarget = "";

                            if(y.banner_GBN == "I") {
	                            tmpStr += '<li>';
	                            tmpStr += '    <img alt="'+y.alt_MSG+'" src="https://image.istarbucks.co.kr/upload/banner/'+y.img_NM+'">';
	                            if(y.links != "") {
	                                if(y.banner_TARGET == "Y") {
	                                    tmpTarget = "target='_blank'";
	                                }
	                                tmpStr += '    <a href="'+y.links+'" '+tmpTarget+'>자세히 보기</a>';
	                            }
	                            tmpStr += '</li>';
                            }
                            
                            $('.main_prom_bxslider').append(tmpStr);
                    	});
                        
                        /* 150709 수정 -구명준 */
                        var mpSlider = $('.main_prom_bxslider').bxSlider({
                            onSlideAfter:function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
                                $('.active_slide').removeClass('active_slide');
                                $('.main_prom_bxslider > li').eq(currentSlideHtmlObject + 1).addClass('active_slide')
                            },
                            onSliderLoad: function () {
                                $('.main_prom_bxslider > li').eq(1).addClass('active_slide')
                            },
                            infiniteLoop:true,
                            controls:true,
                            auto:true,
                            autoControls:true,
                            autoControlsCombine:true,
                            pause:2000,
                            autoHover:true,
                            pagerSelector: '.main_slider_pagers',
                            autoControlsSelector: '.main_slider_controls'
                        });

                        $(".main_prevBtn a").on("click",function(e){
                            mpSlider.goToPrevSlide();
                            e.preventDefault();
                        });

                        $(".main_nextBtn a").on("click",function(e){
                            mpSlider.goToNextSlide();
                            e.preventDefault();
                        });

                        $('.main_prom_bnr_swiper div.bx-viewport').append('<p class="bnr_swiper_left_mask"></p><p class="bnr_swiper_right_mask"></p>');
                            
                        /* 150709 수정 -구명준  end */


                        $('.line_notice_bgr').click(function(){
                            mpSlider.reloadSlider();
                        });
                    }
                },
                function() {
                });

				$('#reserve_medal').flip({
					axis: 'y',
					reverse: true,
					trigger: 'hover'
				});
				
				   // 접근성_20171201 이벤트 트리거 변경 및 이벤트 바인딩
			      $('#reserve2_medal').flip({
			        axis: 'y',
			        reverse: true,
			        trigger: 'manual'
			      }).bind('mouseenter focusin',function(){
			        $(this).flip(true);
			      }).bind('mouseleave focusout', function () {
			        $(this).flip(false);
			      });
			       // 접근성_20171201 이벤트 트리거 변경 및 이벤트 바인딩 end
				
				/*
				$('.reserve_medal02').bind('click', function() {
					location.href = "store/store_drive";
				});
				*/
				
				
				
				
				
			});


			/*
			var player;

			function onYouTubePlayerAPIReady() {
				player = new YT.Player('teaseYt', {
					events: {
						'onReady': onPlayerReady
					}
				});
			}

			function onPlayerReady(event){
				$(".bnr_teaching a").click(function() {
					event.target.playVideo();
				});
			}

			var tag = document.createElement('script');
			tag.src = '//www.youtube.com/player_api';
			var firstScriptTag = document.getElementsByTagName('script')[0];
			firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
			*/

			$(document).ready(function () {
				
				//20171227 삭제
				//20171123 추가 : 모바일 메인 퀵메뉴 높이값 제어
				/*$(window).scroll(function(){  
					if($(window).scrollTop() > 150){ //20171207 수정
						$(".layer_nitro2").removeClass('layer_nitro2Position');
					}else{
						$(".layer_nitro2").addClass('layer_nitro2Position');
					}
				});*/
			
				/* 레드컵 유튜브 */
				$('.btn_redcup_teasing a, .m_btn_red_movie a').click(function(){
					$('.redcup_dimm, .redcup_yt_layer').fadeIn();
				});
				$('.redcup_yt_close a').click(function(){
					$('.redcup_dimm, .redcup_yt_layer').fadeOut();
					var yt = $('#ddayYt').attr('src');
					$('#ddayYt').attr('src', '');
					$('#ddayYt').attr('src', yt);
				});
				/* 레드컵 유튜브 end */

				/*김민호 수정*/
				$('#drive_medal').flip({
					axis: 'y',
					reverse: true,
					trigger: 'hover'
				});
				/*김민호 수정*/

				/* valentine ani */
				$('.valentine_layer_close a').bind('click', function(){
					$('.valentine_layer').fadeOut();
				});
				function rotate() {
					$('.ico_bird1').animate({
						'rotate':'-15deg'
					}, 2000).animate({
						'rotate':'0'
					}, 2000, rotate);
				}
				rotate();
				function rotate2() {
					$('.ico_bird2').animate({
						'rotate':'15deg'
					}, 2000).animate({
						'rotate':'0'
					}, 2000, rotate2);
				}
				rotate2();

				setTimeout(function(){
					heart();
				}, 6000);
				
				function heart() {
					if ((myWindow > 960)) {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					} else if ((myWindow > 640) && (myWindow <= 960)) {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					} else if ((myWindow > 480) && (myWindow <= 640)) {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					} else {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					}
				}
				/* valentine ani end */
				
				
				$("#NoMore").on("click", function () {
					Cookies.setCookie("notTodayColdBrew", "Y", 1);
					$(".layer_coldbrew").fadeOut();
				});
				if (Cookies.getCookie("notTodayColdBrew") != "Y") {
					$(".layer_coldbrew").fadeIn();
				}
				
				/* $(".NoMoreToday_20161021").on("click", function () {
					Cookies.setCookie("notToday20161021", "Y", 1);
					$(".hologram_dimm, .hologram_layer_wrap").fadeOut();
				});
				if (Cookies.getCookie("notToday20161021") != "Y") {
					$(".hologram_dimm, .hologram_layer_wrap").fadeIn();
				}
				$(".hologram_close").on("click", function () {
					$(".hologram_dimm, .hologram_layer_wrap").fadeOut();
				}); */
				
				/* 161020 스크립트 추가 */
				$('input[type=checkbox]').ezMark();
				function lightning(){
					$('.lightning').animate({
						'opacity':'1'
					}, 2000).animate({
						'opacity':'0'
					}, 2000, lightning);
				}
				lightning();

				$('.hologram_close a').click(function(){
					$('.hologram_layer_wrap, .hologram_dimm').fadeOut();
				});
				
				// popup 오늘 하루 보지 않기
				function getCookie(name) {
					var nameOfCookie = name + "=";
					var x = 0;
					while ( x <= document.cookie.length ) {
						var y = (x+nameOfCookie.length);
						if ( document.cookie.substring( x, y ) == nameOfCookie ) {
							if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) endOfCookie = document.cookie.length;
							return unescape( document.cookie.substring( y, endOfCookie ) );
						}
						x = document.cookie.indexOf( " ", x ) + 1;
						if ( x == 0 ) break;
					}
					return "";
				}
				function setCookie(name, value, expiredays) {
					var todayDate = new Date();
					todayDate.setDate( todayDate.getDate() + expiredays );
					document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
				}

				var ckNameNoPop1Day = "NO_POP_AUTUMN_1_DAY";

				$("#ddayNo").on("click", function () {
					$('.hologram_layer_wrap, .hologram_dimm').fadeOut();
				});
				
				if (getCookie(ckNameNoPop1Day) != "Y") {
					$('.hologram_layer_wrap, .hologram_dimm').fadeIn();
				}
				/* 161020 스크립트 추가 end */
				
				
				
			});
		</script>
		<script src="common/js/inewsticker.js"></script>
		
    	<script src="common/js/bbs/main_rolling.js"></script>
    	<script src="common/js/main/index.js?v=200907"></script>
    	
    	
		
	</body>
</html>