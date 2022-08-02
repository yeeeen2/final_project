<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	








<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type"		content="website">
<meta property="og:title"		content="Starbucks">
<meta property="og:url"			content="https://www.starbucks.co.kr/">
<meta property="og:image"		content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">Starbucks Korea</title> <!-- 220117 수정 -->
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

	
	<link href="../common/css/style_util.css" rel="stylesheet">
	<link href="../common/css/style_landing.css" rel="stylesheet"> <!-- 음료 팝업 추가 150818 -->	
	<link href="../common/css/style_main.css" rel="stylesheet">
	<link href="../common/css/style_whatsnew.css" rel="stylesheet">
	<link href="../common/css/style_store.css" rel="stylesheet">
	<link href="../common/css/skdslider.css" rel="stylesheet">
	<link href="../common/css/ezmark.css" rel="stylesheet">
	<link href="../common/css/style_myStarbucks.css" rel="stylesheet"><!-- 20190211 추가 -->
</head>

<body>
	<!-- 팝업 딤 -->
	<div class="pop_up_dimm"></div>
	<!-- 팝업 딤 -->
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
							<img alt="사용자 아이디" src="//image.istarbucks.co.kr/common/img/common/user_pic_sample.jpg">
							<p class="msr_user_mask msr_user_mask01"></p>
							<p class="msr_user_mask msr_user_mask02"></p>
							<p class="msr_user_mask msr_user_mask03"></p>
							<p class="msr_user_mask msr_user_mask04"></p>
						</div>
						<p class="user_greet_txt"><strong><!-- 홍길동 --></strong>님, 안녕하세요!</p>
						<p class="msr_btn_setting"><a href="/my/myinfo_modify_login">개인정보 수정</a></p>
					</div>
					<!-- 유저인포 end -->
					<span class="msr_sep_line"></span>

					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
					<div class="user_level" style="display:none;">
						<a href="/my/reward">
							<p class="level_star_bg en">0</p>
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en userGrade">Gold Level</strong><br /><strong>무료음료</strong> 획득 별까지<br><strong class="necessaryStar">0개</strong> 남았습니다. --></p>
						</a>
					</div>
					<!-- MSR 회원 end -->
					
					<!-- 일반회원 -->
					<div class="msr_lead">
						<a href="/msr/msreward/level_benefit">
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
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index';" style="cursor:pointer;"><img alt="" /></p>
						<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="/my/mycard_index">다른 카드 보기</a></p>
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
						<div class="mycard_one">
							<!-- <div class="front"> -->
							<img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt="">
							<!-- </div> -->
							<!-- <div class="back"><img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt=""></div> -->
						</div>
						<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="/my/mycard_index">다른 카드 보기</a></p>
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
					
				</div>

				<div class="top_msr_nologin">
					<div class="top_msr_nologin_l">
						<i class="icon_before_login"></i>
						<p class="top_msr_mem_yet"><strong>스타벅스커피 코리아 회원이 아니세요?</strong><br>스타벅스커피 코리아 회원만의<br>특별한 혜택을 누릴 수 있습니다.</p>
						<div class="msr_nologin_btns">
							<ul>
								<li><a href="javascript:$.loginLib.showLayerLogin();">로그인</a></li>
								<li><a href="/mem/join">회원가입</a></li>
							</ul>
						</div>
					</div>
					<span class="msr_sep_line"></span>
					<div class="top_msr_nologin_r">
						<i class="icon_sbcard_lead"></i>
						<p class="sbcard_lead_txt"><strong>스타벅스 카드를 가지고 계신가요?</strong><br>스타벅스 카드를 등록하시면, 스타벅스 리워드 만의<br>특별한 혜택을 누릴 수 있습니다.</p> <!-- 스타벅스 리워드 수정 -->
						<p class="btn_sbcard_regi">
							<a href="/my/mycard_info_input">카드 등록</a>
						</p>
					</div>
					<!-- 160628 수정 -->
					<div class="top_msr_nologin_b">
						<p class="egift_lead_txt"><strong>스타벅스 카드가 없으신가요?</strong><br>스타벅스 매장에서 구매하시거나,<br>PC/모바일웹, 스타벅스 앱에서<br>e-Gift를 “나에게 선물하기”로 구매 후,<br>편리하게 등록하세요!<br>스타벅스 리워드의 특별한 혜택! 생일 쿠폰을 드립니다!</p>
						<p class="btn_egift_regi">
							<a href="/msr/sceGift/gift_step1">e-Gift 선물하기</a>
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
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2"></span></a></li><!-- 150709 클레스 수정 -->
						<li class="tablet_gnb02"><a href="/my/index" required="login"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb03"><a href="/store/store_map"><span class="a11y">매장찾기</span></a><!-- 접근성_20171106 span추가 --></li>
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
							<li><a href="/my/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">My 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/reward" required="login">리워드 및 혜택</a></li>
									<li><a href="/my/reward_star_history" required="login">별 히스토리</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/mycard_index" required="login">보유 카드</a></li>
									<li><a href="/my/mycard_info_input" required="login">카드 등록</a></li>
									<li><a href="/my/mycard_charge" required="login">카드 충전</a></li>
									<li><a href="/my/mycard_lost" required="login">분실신고/잔액이전</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="/my/egiftCard" required="login">선물 내역</a></li>
									<li><a href="/my/egiftCard_shopping_bag" required="login">장바구니 내역</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/ecoupon?t=REG" required="login">등록하기</a></li>
									<li><a href="/my/ecoupon?t=GIFT" required="login">선물하기</a></li>
									<li><a href="/my/ecoupon?t=USE" required="login">사용하기</a></li>
								</ul>
							</li>
							<li><a href="/my/calendar" required="login">My 캘린더</a></li>
							<!-- <li><a href="/my/drink_shop" required="login">My 음료/매장</a></li> -->
							<li><a href="/my/my_menu" required="login">My 메뉴</a></li>
							
							
							<li>
								<a role="button" href="javascript:void(0);">My e-프리퀀시<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/eFreq/guide?promoSeq=172">이용안내</a></li>
									<li><a href="/eFreq/status?promoSeq=172" required="login">이용현황</a></li>
								</ul>
							</li>
							
									<li><a href="/my/vocList" required="login">My 고객의 소리</a></li>
							<li><a href="/my/eReceiptList" required="login">전자영수증</a></li>
							<li class="msRnb_btn"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
							<li><a href="dtpass" required="login">My DT Pass</a></li>
							<li>
								<a role="button" href="javascript:void(0);">개인정보관리<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/myinfo_modify_login" required="login">개인정보확인 및 수정</a></li>
									<li><a href="/my/myinfo_out" required="login">회원 탈퇴</a></li>
									<li><a href="/my/myinfo_modify_pwd" required="login">비밀번호 변경</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">COFFEE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/coffee/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">커피<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/coffee/product_list">스타벅스 원두</a></li>
									<li><a href="/coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>
									<!-- <li><a href="/coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li> 20210915 삭제 -->
									<li><a href="/coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li><!-- 20210915 추가 -->
								</ul>
							</li>
							<li><a href="/coffee/productFinder">나와 어울리는 커피</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리저브™<span class="mob_gnb_arrow_down"></span></a>
								<ul>
									<li><a href="/coffee/reserve_info">ABOUT</a></li>
									<li><a href="/coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">에스프레소 음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="/coffee/doppio">도피오</a></li>
									<li><a href="/coffee/espresso_macchiato">에스프레소 마키아또</a></li>
									<li><a href="/coffee/americano">아메리카노</a></li>
									<li><a href="/coffee/caramel_macchato">마키아또</a></li>
									<li><a href="/coffee/cappuccino">카푸치노</a></li>
									<li><a href="/coffee/latte">라떼</a></li>
									<li><a href="/coffee/mocha">모카</a></li>
									<!-- <li><a href="javascript:void(0);">더블샷</a></li> -->
									<!-- <li><a href="/coffee/flat_white">리스트레또 비안코</a></li> 20210914 삭제 -->
									<!-- <li class="mgnb_gold"><a href="javascript:void(0);">·에스프레소 초이스</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·프로모션 상품</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·브런치 유어 웨이</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">최상의 커피를 즐기는 법<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="/coffee/higher_enjoy">커피 프레스</a></li>
									<li><a href="/coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>
									<li><a href="/coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>
									<li><a href="/coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>
									<li><a href="/coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">커피 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- 20210914 수정 -->
									<li><a href="/coffee/story">농장에서 우리의 손으로</a></li>
									<!-- <li><a href="/coffee/story?PACKAGE=01">에스프레소 초이스</a></li> -->
									<li><a href="/coffee/story?PACKAGE=02">최상의 아라비카 원두</a></li>
									<li><a href="/coffee/story?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>
									<!-- <li><a href="javascript:void(0);">추출방식 알아보기</a></li> -->
									<li><a href="/coffee/story?PACKAGE=04">스타벅스 디카페인</a></li>
									<li><a href="/coffee/story?PACKAGE=05">클로버® 커피 추출 시스템</a></li>
									<!-- //20210914 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">MENU<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/menu/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/drink_list">전체보기</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_cold_brew">콜드 브루</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_brood">브루드 커피</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_espresso">에스프레소</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_frappuccino">프라푸치노</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_blended">블렌디드</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_fizzo">스타벅스 피지오</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_tea">티(티바나)</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_etc">기타 제조 음료</a></li>
									<li><a href="/menu/drink_list?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/food_list">전체보기</a></li>
									<li><a href="/menu/food_list?CATE_CD=product_bakery">브레드</a></li>
									<li><a href="/menu/food_list?CATE_CD=product_cake">케이크</a></li>
									<li><a href="/menu/food_list?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>
									<li><a href="/menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a></li>
									<li><a href="/menu/food_list?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>
									<li><a href="/menu/food_list?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>
									<li><a href="/menu/food_list?CATE_CD=product_icecream">아이스크림</a></li>
                                    <!-- <li><a href="/menu/food_list?CATE_CD=product_etc">기타 푸드</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/product_list">전체보기</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_mug">머그</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_glass">글라스</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_plastic">플라스틱 텀블러</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_stainless">스테인리스 텀블러</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_vacuum">보온병</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_accessories">액세서리</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_present">선물세트</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_coffee">커피 용품</a></li>
									<li><a href="/menu/product_list?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>
									<!-- <li><a href="/menu/product_list?CATE_CD=product_planner">스타벅스 플래너</a></li> --> <!-- 20210602 삭제 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/card_list">전체보기</a></li>
									<li><a href="/menu/card_list?CATE_CD=product_offline">실물카드</a></li>
									<li><a href="/menu/card_list?CATE_CD=product_egift">e-Gift 카드</a></li>
								</ul>
							</li>
							<!-- <li>
								<a href="/wholecake/reserve_cake01">온라인 케익 예약 span class="mob_gnb_arrow_down"></span</a>
								<ul>
									<li><a href="javascript:void(0);">케익선택</a></li>
									<li><a href="javascript:void(0);">예약정보입력</a></li>
									<li><a href="javascript:void(0);">예약완료</a></li>
								</ul>
							</li> -->
							<li>
								<a role="button" href="javascript:void(0);">메뉴 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/store/store_nitro_coldbrew">나이트로 콜드브루</a></li>
									<li><a href="/store/store_coldbrew">콜드 브루</a></li>
									<li><a href="/menuStory/teavana">스타벅스 티바나</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/store/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/store/store_map?disp=quick">빠른 검색</a></li>
									<li><a href="/store/store_map?disp=locale">지역 검색</a></li>
								</ul>
							</li>
							<li><a href="/store/store_drive">드라이브 스루 매장</a></li>
							<li><a href="/store/store_reserve">스타벅스 리저브™ 매장</a></li>
							<li><a href="/store/store_community">커뮤니티 스토어 매장</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- <li><a href="/store/store_cheongdam">청담스타</a></li> 20210727 메뉴 비노출 -->
									<li><a href="/store/store_star_field">티바나 바 매장</a></li>
									<!-- <li><a href="/store/store_park">파미에파크</a></li> 20210727 메뉴 비노출 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">RESPONSIBILITY<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/responsibility/index">한눈에 보기</a></li>
							<li><a href="/responsibility/starbucks_shared_planet">사회공헌 캠페인 소개</a></li> <!-- 20210820 메뉴명 수정 -->
							<li>
								<a role="button" href="javascript:void(0);">지역 사회 참여 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/hope_delivery">희망배달 캠페인</a></li>
									<li><a href="/responsibility/talent_donation">재능기부 카페 소식</a></li>
									<li><a href="/responsibility/community_store">커뮤니티 스토어</a></li>
									<li><a href="/responsibility/youth_resource">청년 지원 프로그램</a></li><!-- 202107 메뉴명 수정 -->
									<li><a href="/responsibility/our_agriculture">우리 농산물 사랑 캠페인</a></li>
									<li><a href="/responsibility/our_culture_defend">우리 문화 지키기</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">환경보호 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/environment">친환경 활동</a></li><!-- 202107 메뉴명 수정 -->
									<li><a href="/responsibility/no_disposable_cup">일회용 컵 없는 매장</a></li>
									<li><a href="/responsibility/bean_recycling">커피 원두 재활용</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">윤리 구매<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/ethically_sourcing">윤리적 원두 구매</a></li>
									<li><a href="/responsibility/fair_trade">공정무역 인증</a></li>
									<li><a href="/responsibility/farmer_support">커피 농가 지원 활동</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">글로벌 사회 공헌<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/sp_ethical_management">윤리경영 보고서</a></li>
									<li><a href="/responsibility/starbucks_foundation">스타벅스 재단</a></li>
									<li><a href="/responsibility/sp_global_month">지구촌 봉사의 달</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">Starbucks Rewards<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>  <!-- 스타벅스 리워드 수정 -->
							<li><a href="/msr/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 스타벅스 리워드 수정 -->
								<ul>
									<li><a href="/msr/msreward/about">스타벅스 리워드 소개</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="/msr/msreward/level_benefit">등급 및 혜택</a></li>
									<li><a href="/msr/msreward/star">스타벅스 별</a></li>
									<li><a href="/community/faq?menu_cd=STB2703&cate=F17">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/msr/scard/about">스타벅스 카드 소개</a></li>
									<li><a href="/msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>
									<li><a href="/msr/scard/register_inquiry">등록 및 조회</a></li>
									<li><a href="/msr/scard/charge_information">충전 및 이용안내</a></li>
									<li><a href="/msr/scard/lost_report">분실신고/환불신청</a></li>
									<li><a href="/community/faq?menu_cd=STB2703&cate=F05">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>
									<li><a href="/msr/sceGift/msr_useguide">이용안내</a></li>
									<li><a href="/msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="/community/faq?menu_cd=STB2703&cate=F22">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">WHAT'S NEW<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/whats_new/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="/whats_new/campaign_list">전체</a></li>
									<li><a href="/whats_new/campaign_list?menu_cd=STB2812">스타벅스 카드</a></li>
									<li><a href="/whats_new/campaign_list?menu_cd=STB2813">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="/whats_new/campaign_list?menu_cd=STB2814">온라인</a></li>
									
									
										<li><a href="/whats_new/eFreq_gift">e-프리퀀시 증정품</a></li> <!-- 20210423 메뉴명, 경로 수정 -->
									
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">뉴스<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="/whats_new/news_list">전체</a></li>
									<li><a href="/whats_new/news_list?cate=N01">상품 출시</a></li>
									<li><a href="/whats_new/news_list?cate=N02">스타벅스와 문화</a></li>
									<li><a href="/whats_new/news_list?cate=N03">스타벅스 사회공헌</a></li>
									<li><a href="/whats_new/news_list?cate=N04">스타벅스 카드출시</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">매장별 이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/whats_new/store_event_list">일반 매장</a></li>
									<li><a href="/whats_new/store_event_list?search_date=1&tab=1">신규 매장</a></li>
								</ul>
							</li>
							<li><a href="/whats_new/notice_list">공지사항</a></li>
							<li><a href="/whats_new/wallpaper">월페이퍼</a></li>
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
				<h1 class="logo"><a href="/" title="스타벅스 메인페이지" >스타벅스 코리아</a><!-- 접근성_20171106 title 추가 --></h1>
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
				<div class="sub_gnb_nav_inner">
				</div>
			</nav>
		</div>
		<!-- 서브 gnb end -->
	</div>
</div>			


		<div id="container">
			<!-- 서브 타이틀 -->
			<header class="ms_sub_tit_wrap">
				<div class="ms_sub_tit_bg">
					<div class="ms_sub_tit_inner">
						<h4><img alt="My 메뉴" src="//image.istarbucks.co.kr/common/img/util/reward/my_menu.png"></h4>
						<ul class="smap">
							<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
							<li><a href="/my/index">My Starbucks</a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
							<li><a href="/my/my_menu">My 메뉴</a></li>
						</ul>
					</div>
				</div>
			</header>
			<!-- 서브 타이틀 end -->
			
			<!-- 내용 -->
			<div class="ms_cont_wrap">
				<!-- ms_cont -->
				<div class="ms_cont">

					<!-- (My 음료/매장) info -->
					<div class="drinkShop_info">
						<dd class="panel on content_panel" id="dd_01" style="display: block;">
							<p class="tip02"><!-- span>최근 3개월 기준 자료입니다.</span --></p>
							
							<!-- (My 음료/매장) 목록 -->
							<article class="drinkShop_info_pick">
								<fieldset>
									<!-- <legend>My 음료 사용 전체선택, 선택삭제 선택 폼</legend> -->
									<table class="drinkShop_view_info_tbl" summary="No, 음료명, 퍼스널 옵션, 등록일에 대한 테이블">
										<caption>No, 음료명, 퍼스널 옵션, 등록일에 대한 테이블</caption>
										<colgroup>
											<col width="52">
											<col width="60">
											<col width="195">
											<col width="409">
											<col width="114">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">
													<div class="ez-checkbox">
														<input type="checkbox" id="drinkShop_view_ck_all" name="drinkShop_view_ck_all" title="전체 선택">
													</div>
												</th>
												<th class="en" scope="col">No</th>
												<th scope="col">음료명</th>
												<th scope="col">퍼스널 옵션</th>
												<th scope="col">등록일</th>
											</tr>
										</thead>
										<tbody><!-- 0628 지혜 -->
										<c:set var="datei" value="0"/>
										<c:set var="i" value="${no }"/>
										<c:forEach var="item" items="${custom }">
											<tr>
												<td><div class="ez-checkbox"><input type="checkbox" name="drinkShop_view_ck2" title="선택" value="${item.cus_no }" ></div></td>
												<td>${i }</td>
												<c:choose>
													<c:when test="${empty item.cus_nickname }">
														<td class="tl"> ${item.p_name }</td>
													</c:when>
													<c:otherwise>
														<td class="tl"> ${item.cus_nickname }</td>
													</c:otherwise>
												</c:choose>
												<td>${item.cus_op }</td>
												<td>${cusDateList[datei] }</td>
											</tr>
											<c:set var="datei" value="${datei+1 }"/>
											<c:set var="i" value="${i-1 }"/>
										</c:forEach>
										</tbody>
									</table>
									<!-- (My 음료/매장) 목록 end -->
									
									<!-- (My 음료/매장) 버튼 -->
									<div class="drinkShop_btnZone">
										<ul>
											<li><a href="javascript:deleteCus();" class="btn_selected_del">선택삭제</a></li>
										</ul>														
									</div>
									<!-- (My 음료/매장) 버튼 end -->
								</fieldset>
							</article>
							<!-- (My 음료/매장) 목록 end -->
						</dd>
						<dd class="panel on content_panel" id="dd_01"><!-- 여기임 -->
							<p class="tip02"><!-- span>최근 3개월 기준 자료입니다.</span --></p>
							
							<!-- (My 음료/매장) 페이징 -->
							<div class="drinkShop_tbl_pagination">
								<ul class="pager"><li>${page }</li></ul>
							</div>
						</dd>
						<!-- 2번 끝 -->
					</div>
					<!-- (My 음료/매장) info end -->
				</div>


<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="javascript:void(0);">My 스타벅스 카드<span class="sbox_arrow_down"></span></a>
			<ul>
				<!-- 160609 텍스트 수정 -->
				<li><a href="cardList" required="login">· 보유 카드</a></li>
				<li><a href="mycard_info_input" required="login">· 카드 등록</a></li>
				<li><a href="mycard_charge_1" required="login">· 카드 충전</a></li>
				<!-- 160609 텍스트 수정 end -->
			</ul>
		</li>
		<li>
			<a href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="../msr/sceGift/gift_step2" required="login">· 선물하기</a></li>
			</ul>
		</li>
		<li class="msRnb_btn">
			<a href="javascript:void(0);" required="login">My 쿠폰<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="ecoupon">· 등록하기</a></li>
				<li><a href="couponList">· 보유 쿠폰 내역</a></li>
			</ul>
		</li>
		<li class="msRnb_btn"><a href="my_menu" required="login">My 메뉴</a></li>
		<li class="msRnb_btn"><a href="eReceiptList" required="login">전자영수증</a></li>
<<<<<<< HEAD
		<li class="msRnb_btn"><a href="javascript:void(0);"  onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
		<li class="msRnb_btn"><a href="dtpass" required="login">My DT Pass</a></li>
=======
		<li class="msRnb_btn"><a href="reward_tumbler" >개인컵 리워드 설정</a></li>
		<li class="msRnb_btn"><a href="../edt/expressDtList" required="login">My DT Pass</a></li>
>>>>>>> branch 'main' of https://github.com/jeakim213/starbucks.git
		<li>
			<a href="javascript:void(0);">개인정보관리<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="my/myinfo_modify_login" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="my/myinfo_out" required="login">· 회원 탈퇴</a></li>
				<li><a href="my/myinfo_modify_pwd" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>
				<!-- //네비 -->
			</div>
			<!-- 내용 end -->
		</div>


		
			<!-- footer -->
			<footer id="footer"> 
				<div class="footer_wrap">
					<div class="footer_menus">
						<ul class="footer_first_menu">
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">CUSTOMER SERVICE &amp; IDEAS<span class="footer_arrow_down"></span></a></li>
							<li><a href="/util/faq">자주 하는 질문</a></li><!-- 20210809 수정 -->
							<li><a href="/customer/suggestionWrite">고객의 소리</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 이용 팁<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="/util/web_tip">홈페이지 이용 팁</a></li>
									<li><a href="/util/app_tip">애플리케이션 이용 팁</a></li>
									<li><a href="/util/partnership_card">제휴카드 안내</a></li>
								</ul>
							</li>
							<li><a href="/util/online_survey">고객 경험 설문조사</a></li> <!-- 20210811 수정  -->
							
							
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">COMPANY<span class="footer_arrow_down"></span></a></li>
							<li><a href="/footer/company/index">한눈에 보기</a></li>
							<li><a href="/footer/company/mission">스타벅스 사명</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 소개<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="/footer/company/starbucks_information">스타벅스 코리아</a></li> <!-- 220118 수정 -->
									<li><a href="/footer/company/starbucks_history">주요 연혁</a></li> <!-- 202107 수정 -->
									<li><a href="/footer/company/starbucks_story">스타벅스 이야기</a></li>
								</ul>
							</li>
							<li><a href="/footer/company/news_list">국내 뉴스룸</a></li>
							<li><a href="/footer/company/global_starbucks">세계의 스타벅스</a></li>
							<!-- 160811 메뉴 추가 -->
							<li><a href="https://news.starbucks.com" target="_blank">글로벌 뉴스룸</a></li>
							<!-- 160811 메뉴 추가 end -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" id="goPage" href="javascript:void(0);">CORPORATE SALES<span class="footer_arrow_down"></span></a></li>
							<li><a href="/footer/co_sales/index">단체 및 기업 구매 안내</a></li>
							<!-- <li><a href="/footer/co_sales/sbcard_egift">스타벅스 <span class="en">e-Gift Card</span></a></li> -->
							<!-- <li><a href="/footer/co_sales/sbcard">스타벅스 카드</a></li> -->
							<!-- <li><a href="/footer/co_sales/co-branded"><span class="en">Co-branded</span> 카드</a></li> -->
							<!-- <li><a href="/footer/co_sales/sb_product">스타벅스 상품</a></li> -->
							<!-- <li><a href="/footer/co_sales/sbgift_certificate">스타벅스 상품권</a></li> -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span class="footer_arrow_down"></span></a></li>
							<li><a href="/footer/partnership/new_partner">신규 입점 제의</a></li>
							<!-- <li><a href="/footer/partnership/portal_systems">협력사 포털 시스템</a></li> -->
							<li><a href="/srm/login">협력 고객사 등록신청</a></li>
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
							<li><a href="/footer/recruit/index">채용 소개</a></li>
							<li><a href="http://job.shinsegae.com/recruit_info/notice/notice02_view.jsp?notino=5924" target="_blank">채용 지원하기</a></li><!-- 20210927 수정 -->
						</ul>
					</div>
				</div>
				<div class="footer_util_btn">
					<ul>
						<li><a href="/">HOME</a></li>
						<li>
							<a href="javascript:$.loginLib.showLayerLogin();" class="sign_in">Sign In</a>
							<a href="javascript:$.loginLib.logout();" class="sign_out" style="display:none;">Sign Out</a>
						</li>
						<li class="last"><a href="/mem/join1">Join Us</a></li>
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
						<input type="hidden" id="dtsPwdchk2" />
						<input type="hidden" id="dtsPwdchk" />
					</div>
					<div class="dtPopBtn">
						<a id="dtPopPwdCheckBtnMsr" class="dtPopBtn1 confirm pwdCheckBtn" >확인</a>
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
						<a id="tumblerPopConfirmBtn" class="dtPopBtn1 confirm pwdCheckBtn" >확인</a>
						<a id="tumblerPopCancelBtn" class="dtPopBtn2 cancel">취소</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- 개인컵 리워드  MSR 회원 확인 Popup e-->
				<div class="dt_pop_up_dimm" style="display:none"></div>
				
				<!-- 150517 추가 - 문진욱 -->
				<aside class="copyright">
					<a class="c_00b050" href="/footer/etc/privacy">개인정보처리방침</a>
					<a href="/footer/etc/rules_vod" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="/footer/etc/rules">홈페이지 이용약관</a>
					<a href="/footer/etc/rules_loc" class="mbn">위치정보 이용약관</a>
					<a href="/footer/etc/rules_msr" class="mbn">스타벅스 카드 이용약관</a>
					<a href="/footer/etc/rules_non" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="/footer/etc/rules_mdp">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="/footer/etc/hotline" class="last">윤리경영 핫라인</a></span>
					<br>
					<a class="btned_link" href="/footer/etc/coming_route">찾아오시는 길</a>
					<a class="btned_link" href="/footer/partnership/new_partner">신규입점제의</a>
					<a class="btned_link" href="/footer/etc/sitemap">사이트 맵</a><br>
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

			<script src="//image.istarbucks.co.kr/common/js/jquery.transit.min.js"></script>
						
			<script src='//image.istarbucks.co.kr/common/js/makePCookie.js'></script>
		<script src="../common/js/common_jhp.js"></script>
		<script src="../common/js/my/my_menu.js?v=210731"></script>
		<script src="../common/js/jquery.ezmark.min.js"></script>
<script> //0628 지혜
	$(document).ready(function () {
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
		
		
		//리스트만들기..
		
		
		//전체선택 - 지혜 0628
		$("#drinkShop_view_ck_all").click(function() {
			if($("#drinkShop_view_ck_all").is(":checked")) $("input[name=drinkShop_view_ck2]").prop("checked", true);
			else $("input[name=drinkShop_view_ck2]").prop("checked", false);
		});
		
		
	});
	
	
	
	function deleteCus(){//커스텀메뉴 삭제 - 지혜 0628
		var tableArr = new Array();
		
		//체크값 배열에 담기
		$("input[name='drinkShop_view_ck2']:checked").each(function() { 
	      var tmpVal = $(this).val(); 
	      tableArr.push(tmpVal);
	    });
		
		console.log(tableArr); //['1', '2']
		
		var obj = { "Arr" : tableArr };
		req = new XMLHttpRequest();
		req.onreadystatechange = resultAjax;
		req.open('post', 'deleteCusAjax')
		data = JSON.stringify(obj);
		req.setRequestHeader('Content-Type', 'application/json; charset=UTF-8')
		req.send(data);
	}
	
	function resultAjax(){
		if(req.readyState == 4 && req.status == 200){
			var _response = req.responseText;
			if (_response == "SUCCESS") {
				alert('커스텀 메뉴 삭제 완료');
			} else {
				alert('처리중 오류가 발생하였습니다.');
			}
			location.href = 'my_menu';
		}
	}
	
</script>
	</div>
	
	
	
</body>
</html>