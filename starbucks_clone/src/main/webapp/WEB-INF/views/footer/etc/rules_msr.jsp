<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

		<link href="common/css/style_util-2.css" rel="stylesheet">
		<link href="common/css/style_etc-1.css" rel="stylesheet">
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
							<img alt="카드이름" src="common/img/common/mycard2.png">
							<p class="num"><!-- 1234-1234-1234-1234 --></p>
							<p class="barcord"><!-- <img src="//image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> --></p>
						</div>
						<div class="mycard_one">
							<!-- <div class="front"> -->
							<img src="common/img/common/payment_icon1.png" alt="">
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
	<li class="util_nav01 sign_out" style="display:none;"><a href="javascript:void(0);">Sign out</a></li>
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
							<h4><img alt="스타벅스 카드 이용약관" src="common/img/footer/etc/tit4.png"></h4>
							<ul class="smap">
								<li><a href="index.htm"><img src="common/img/common/icon_home_w-1.png" alt="홈으로"></a></li>
								<li><img class="arrow" src="common/img/common/icon_arrow_w-1.png" alt="하위메뉴"></li>
								<li><a href="privacy"><span class="en">ETC</span></a></li>
								<li><img class="arrow" src="common/img/common/icon_arrow_w-1.png" alt="하위메뉴"></li>
								<li><a href="rules">이용약관</a></li>
							</ul>
						</div>
					</div>
				</header>
				<!-- 서브 타이틀 end -->
				<!-- 내용 -->
				<div class="ms_cont_wrap">
					<!-- ms_cont -->
					<div class="ms_cont">
						<!-- 151231 남인태 추가 -->
						<div class="privacy_select_wrap">
							<form action="form">
								<div class="select_box">
									<label class="value" for="use_term_select">이전 스타벅스 카드 이용약관 보기</label>
									<select title="스타벅스 카드 이용약관 보기" id="use_term_select" name="jump"><option value="">이전 스타벅스 카드 이용약관 보기</option><option value="435">2022년 01월 27일 시행</option><option value="417">2022년 01월 19일 시행</option><option value="414">2021년 08월 13일 시행</option><option value="410">2021년 07월 15일 시행</option><option value="236">2021년 02월 06일 시행</option><option value="391">2020년 10월 15일 시행</option><option value="228">2020년 09월 21일 시행</option><option value="393">2020년 09월 08일 시행</option><option value="392">2020년 07월 09일 시행</option><option value="394">2020년 05월 18일 시행</option><option value="395">2020년 04월 01일 시행</option><option value="396">2020년 01월 20일 시행</option><option value="397">2020년 01월 11일 시행</option><option value="398">2020년 01월 01일 시행</option><option value="399">2018년 10월 10일 시행</option><option value="400">2018년 05월 29일 시행</option><option value="401">2017년 09월 23일 시행</option><option value="402">2017년 08월 23일 시행</option><option value="403">2016년 01월 01일 시행</option><option value="404">2014년 07월 01일 시행</option></select>
								</div>
							</form>
						</div>
						
						<!-- 202101 수정 -->
						<div class="card_text" id="card_text">

<div class="privacy_cont">
    <p class="tit">스타벅스 코리아는 고객님을 보호합니다.</p>
    <p class="t1">본 약관은 스타벅스 코리아의 스타벅스 카드 이용과 관련하여 필요한 사항을 규정합니다.</p>

    <p class="pri_tit">제 1 장 총칙</p>

    <p class="sub_tit">제 1 조 (목적)</p>
    <p class="pri_con2 mb15">본 약관은 스타벅스 코리아를 운영하는 주식회사 에스씨케이컴퍼니(이하 '회사'라 합니다)가 발행한 스타벅스 카드를 구입 또는 정당한 방법으로 소지한 고객이 회사가 제공하는 스타벅스 카드 서비스를 이용함에 있어 필요한 이용 조건, 절차 및 당사자간의 권리, 의무 등 기본적인 사항을 규정하는 것을 목적으로 합니다.</p>

    <p class="sub_tit">제 2 조 (용어의 정의)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>본 약관에서 사용하는 용어는 다음과 같이 정의합니다.</li>
        <li>1. '스타벅스 카드'란 회사가 정의한 기술사양에 따라 회사가 인증한 Chip 또는 Application을 내장하고 스타벅스 카드 브랜드를 부착한 카드로 선불 결제할 수 있는 수단임과 동시에 고객이 “별”을 적립하여 서비스를 정상적으로 이용할 수 있도록 회사가 승인한 카드로서 회사가 발급합니다.</li>
        <li>2. '고객'이란 본 약관에 동의하고 매장에서 스타벅스 카드를 구입, 충전하거나 기타 정당한 방법으로 소지한 자를 말합니다. </li>
        <li>3. “회원”이란 고객 중 회사의 홈페이지 등을 통해 이용 약관과 개인정보의 수집, 제공 및 활용에 관한 동의서에 동의하고, 소지한 스타벅스 카드를 등록한 자를 말합니다.</li>
        <li>4. '매장'이란 회사가 직영으로 운영하는 모든 매장을 말합니다.</li>
        <li>5. '최초 충전(Activation)'이란 스타벅스 카드를 처음 구입하여 충전 하는 행위를 말합니다.</li>
        <li>6. '결제(Redemption)'란 스타벅스 카드로 이용금액의 전체 또는 일부 금액을 결제하는 행위를 말합니다.</li>
        <li>7. '잔액 조회(Balance inquiry)'란 스타벅스 카드의 잔액에 대해 문의하는 행위를 말합니다.</li>
        <li>8. '재충전(Reload)'이란 소지한 스타벅스 카드에 금액을 재충전하는 행위를 말합니다.</li>
        <li>9. '환급' 또는 “환불”이란 스타벅스 카드에 기록된 잔액을 고객과 회사간에 약정된 방법과 절차에 따라 고객에게 돌려주는 것을 말합니다.</li>
        <li>10. '고장카드'란 정상적으로 사용이 불가능한 스타벅스 카드를 말하며, 불량카드와 파손카드로 구분합니다.
            <ol>
                <li>가. 고장카드 중 '불량카드'란 스타벅스 카드의 외형상 이상은 없으나, 기능상의 문제로 단말기 등에서 사용이 불가능한 상태의 스타벅스 카드를 말합니다.</li>
                <li>나. 고장카드 중 '파손카드'란 고객의 고의 혹은 과실로 구멍 뚫림, 구김, 휘어짐, 찍힘, 태움, 조각남, 깨짐, 갈라짐, 카드 번호 지워짐 등으로 인하여 훼손된 스타벅스 카드를 말합니다.</li>
            </ol>
        </li>
        <li>11. 'Free Extra 제공'이란 스타벅스 카드로 음료 구매 시 매장에서 제조한 음료에 Extra(샷, 시럽, 드리즐, 휘핑, 자바칩 등)를 제공하는 혜택을 말합니다.</li>
        <li>12. '별'이란 고객이 회사의 제품 및 상품을 구입할 경우 회사가 고지한 방침에 따라 부여되는 혜택을 말합니다.</li>
        <li>13. '별 부정 적립 및 사용'이란 고객이 제품 및 상품을 구매 또는 사용하지 않았음에도 불구하고 해당 고객에게 별이 적립 또는 사용된 경우를 말합니다.</li>
        <li>14. “스타벅스 리워드(Starbucks Rewards)”란 스타벅스 카드 회원에게 회사가 혜택을 제공하는 프로그램입니다.</li>
        <li>15. “잔액보호”란 스타벅스 카드를 홈페이지 또는 모바일 APP에 등록한 회원이 분실 신고를 할 경우, 분실신고 당시의 카드 잔액을 보호해 주는 것을 말합니다.</li>
        <li>16. “자동 재충전”이란 회원의 선택에 따라 특정 일자에 특정 금액이 자동으로 결제되어 스타벅스 카드에 충전되거나, 또는 회원의 카드 잔액이 일정금액 이하로 하락하는 경우 지정한대로 특정 금액이 결제되는 절차를 말합니다.</li>
        <li>17. “e-프리퀀시 카드”란 스타벅스 리워드 가입을 하면 회원의 계정에 자동으로 발급되는 온라인 적립 수단이며, 회사에서 프로모션을 진행하면 등록된 스타벅스 카드 결제를 통해 e-스티커를 적립하여 관련 혜택을 받을 수 있습니다.</li>
        <li>18. “무기명 카드”란 회원 계정에 등록되지 않은 모든 스타벅스 카드를 말합니다.</li>
        <li>19. “무기명 카드 for All Rewards”란 고객이 미등록 스타벅스 카드를 사용 시, 일정 금액 이상 결제할 때마다 BOGO 쿠폰을 발행하는 것을 말합니다.</li>
        <li>20. “제휴 신용카드”란 스타벅스와 제휴 신용카드사 간의 제휴계약 체결을 통해 출시된 신용카드로서, 동 카드의 사용 실적에 따른 혜택 및 제공 방법은 제휴 신용카드사의 규정을 따릅니다.</li>
        <li>21. '스타벅스 공카드'란 고객이 별을 적립하여 서비스를 정상적으로 이용할 수 있도록 회사가 승인한 카드로서 회사가 발급하며, 동 카드와 관련된 상세사항은 본 약관을 따릅니다. 스타벅스 공카드에는 충전금액이 들어있지 않으며 홈페이지 또는 모바일 APP에서 확인 가능한 e카드 형태로 발급됩니다. 또한, 스타벅스 공카드의 경우 타인에게 양도가 제한될 수 있습니다. </li>
    </ol>

    <p class="sub_tit">제 3 조 (약관의 효력 및 변경 등)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 본 약관은 그 내용을 회사가 홈페이지에 게시하고, 고객이 스타벅스 카드를 충전 후 소지 또는 기타 정당한 방법으로 소지하여 사용함으로써 그 효력이 발생됩니다.</li>
        <li>2. 회사는 본 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 홈페이지에 그 적용일의 7일 전부터 공시하거나 회원이 입력한 가장 최근의 e-mail로 전송하는 방법으로 회원에게 고지합니다. 다만, 회원에게 불리한 내용으로 약관을 개정하는 경우에는 적용일로부터 30일 전까지 홈페이지에 공시하고 회원이 입력한 가장 최근의 e-mail로 전송하는 방법으로 회원에게 고지합니다.</li>
        <li>3. 본 조의 규정에 의하여 개정된 약관은 원칙적으로 그 변경되는 약관의 효력 발생일로부터 장래를 향하여 유효합니다.</li>
        <li>4. 고객이 변경된 약관 사항에 동의하지 않을 경우, 약관의 효력 발생 전일까지 서비스 이용을 중단하거나 회원탈퇴 및 등록된 스타벅스 카드를 고객이 계정에서 등록 해지함으로써 이용 계약을 해지할 수 있으며, 약관의 개정과 관련하여 효력 발생일 전일까지 이의를 제기하지 않는 경우에는 개정된 약관에 동의한 것으로 간주합니다.</li>
    </ol>

    <p class="sub_tit">제 4 조 (약관의 해석 등)</p>
    <p class="pri_con2 mb40">본 약관에 명시되지 않은 사항 또는 본 약관 해석상 다툼이 있는 경우에는 고객과 회사의 합의에 의하여 결정합니다. 다만, 합의가 이루어지지 않은 경우에는 관계법령 및 거래관행에 따릅니다.</p>

    <p class="pri_tit">제 2 장 스타벅스 카드 서비스</p>

    <p class="sub_tit">제 5 조 (목적별 이용)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 선불 결제 수단
            <ol>
                <li>가. 고객은 국내 스타벅스 매장 어디에서나 스타벅스 카드로 서비스를 제공받거나 제품 및 상품을 구매할 수 있습니다. <br>단, 스타벅스 카드의 발행 목적, 매장의 임대차 계약상 임대인이 요구한 조건, 또는 기술적 사유(시스템 점검, 단말기 고장, 통신회선 불량, 신규 카드 또는 단말기의 안정화 작업 등)로 일부 스타벅스 카드는 매장 내 이용이나 충전, 환급 신청이 제한될 수 있으며, 이 경우 회사는 매장에
                    배포된 안내장 또는 홈페이지 등을 이용하여 고객에게 고지합니다.</li>
                <li>나. 스타벅스 카드로 매장에서 제조한 음료를 구입하는 경우 Free Extra 추가 등과 같은 사전 공지된 별도의 혜택을 받으실 수 있습니다. 다만, 이 혜택은 음료 1잔 구매 시 1회에 한하여 제공되며, 구체적인 혜택 사항은 회사의 마케팅 정책에 따라 변경될 수 있습니다.</li>
                <li>다. 스타벅스 카드는 기술적 결함이나 네트워크의 오류 및 장애 발생으로 일시적으로 서비스 이용에 제한이 발생할 수 있습니다.</li>
                <li>라. 스타벅스 카드 잔액에 대한 고객의 권리는 최종 충전일 또는 최종 사용일로부터 5년이 지나면 자동 소멸합니다.</li>
            </ol>
        </li>
        <li>2. 스타벅스 리워드(Starbucks Rewards)
            <ol>
                <li>가. 회원은 회사의 홈페이지 또는 모바일 APP에 스타벅스 카드를 등록함으로써, 스타벅스 카드의 스타벅스 리워드 혜택을 받을 수 있습니다.</li>
                <li>나. 별 적립: 회원은 회사에서 제품 및 상품 구입을 통하여 별을 적립 받을 수 있습니다. 구체적인 적립 방법과 적립 기준은 본 약관 제11조의 별 적립 기준에 따라 제공됩니다.</li>
                <li>다. 기타 서비스: 회사는 추가적인 서비스를 개발하여 회원에게 제공할 수 있습니다. 서비스 제공 기준은 각각의 서비스 제공 시점에 회사 홈페이지에 고시한 기준으로 적용됩니다.</li>
                <li>라. 회원이 본 약관 또는 회사 개인정보취급방침에 따라 등록해야 하는 고객에 대한 정보를 등록하지 않거나 허위로 등록하는 경우 본 조에 따른 혜택의 이용이 제한될 수 있습니다.</li>
            </ol>
        </li>
    </ol>

    <p class="sub_tit">제 5 조의 2 (발행 등)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>스타벅스 카드의 발행 관련 구체적인 내용은 다음과 같습니다.</li>
        <li>1. 발행자: 주식회사 에스씨케이컴퍼니</li>
        <li>2. 구매가격: 스타벅스 카드는 별도의 카드 구매가격이 없는 충전식 상품권입니다.</li>
        <li>3. 유효기간: 스타벅스 카드는 최종 충전일 또는 최종 사용일로부터 5년 경과 시 사용 불가합니다.</li>
        <li>4. 사용조건 (사용가능금액, 제공 가능 물품 등) <br>스타벅스 카드는 충전식 상품권으로, 고객이 사용할 수 있는 금액은 충전한 금액과 같으며, 현금과 동일하게 스타벅스 매장에서 제품 및 상품을 구매할 수 있습니다.</li>
        <li>5. 사용가능 가맹점: 스타벅스 카드는 국내 스타벅스 매장 어디에서나 사용이 가능합니다.</li>
        <li>6. 환불 조건 및 방법: 고객이 충전된 금액의 잔액 요청 시, 회사는 최종 충전 후 그 시점의 잔액을 기준으로 60% 이상을 사용한 후 40% 이하에 해당하는 잔액의 반환을 요구하는 경우 홈페이지 또는 매장을 통해 환급을 신청할 수 있습니다. 보다 자세한 방법은 본 약관 제10조를 참조바랍니다.</li>
        <li>7. 스타벅스 카드는 충전금액에 대하여 전자상거래(결제수단) 보증보험증권에 가입되어 있습니다. 분실 시 홈페이지를 통해 신고하시기 바랍니다.</li>
        <li>8. 스타벅스 카드의 이용과 관련하여 고객 피해 발생시, 회사의 고객지원부서 및 공정거래위원회 소비자상담센터에 연락을 하실 수 있으며, 전화번호는 아래와 같습니다.</li>
        <li>회사 고객지원센터: 1522 - 3232(유료)</li>
        <li>공정거래위원회 소비자상담센터: (국번없이) 1372</li>
    </ol>

    <p class="sub_tit">제 6 조 (스타벅스 리워드 회원가입)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 스타벅스 카드는 회사의 전국 매장(일부 매장 제외)에서 최초 충전 하실 경우 발급 받으실 수 있습니다.</li>
        <li>2. 스타벅스 리워드 회원이 되고자 하는 고객은 본 약관에 동의하고 회사가 발급한 스타벅스 카드를 최초 충전 하거나 스타벅스 e-Gift Card로 양도 받은 후 홈페이지에 등록함으로써 스타벅스 리워드 프로그램에 참여할 수 있습니다. 단, 14세 미만인 자는 회원 가입이 불가합니다.</li>
        <li>3. 스타벅스 리워드 회원이 되시면, e-프리퀀시 카드가 계정을 통해 자동으로 발급됩니다.</li>
        <li>4. 고객으로부터 회원 가입신청이 있는 경우 회사는 자체 기준에 따른 심사를 거친 뒤 동 기준을 만족시키는 고객에게 회원 자격 및 스타벅스 리워드 혜택 이용을 승인하여 드립니다.</li>
        <li>5. 회원은 회원 자격을 타인에게 양도하거나 대여하거나 담보의 목적물로 이용할 수 없습니다.</li>
    </ol>

    <p class="sub_tit">제 7 조 (회원 탈퇴 및 자격 상실)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회원은 언제든지 홈페이지를 통해 회원 탈퇴를 요청할 수 있으며, 당사는 회원의 요청에 따라 조속히 회원 탈퇴에 필요한 제반 절차를 수행합니다. <br>(단, 회원이 탈퇴를 요청할 때에는 회원의 계정에 등록된 스타벅스 카드에 잔액이 없거나 잔액이 있는 스타벅스 카드가 모두 등록 해지되어야 합니다.)</li>
        <li>2. 회원이 다음 각 호의 사유에 해당하는 경우, 당사는 당해 회원에 대한 통보로써 회원의 자격을 제한 또는 정지시킬 수 있고, 14일의 기간을 정하여 시정하거나 소명할 기회를 부여한 뒤, 회원의 소명이 없거나 그 소명이 정당하지 아니할 경우 회원의 자격을 상실시킬 수 있습니다. 단, '다'의 경우에는 별도의 통보 없이 당연히 자격이 상실됩니다.
            <ol>
                <li>가. 카드 등록 시에 허위의 내용을 등록한 경우</li>
                <li>나. 별 또는 e-쿠폰을 부정 적립 또는 부정 사용하는 등 서비스를 부정한 방법 또는 목적으로 이용한 경우</li>
                <li>다. 회원이 사망한 경우</li>
                <li>라. 다른 회원의 서비스 이용을 방해하거나 그 정보를 도용하는 경우</li>
                <li>마. 스타벅스 카드 이용과 관련하여 법령, 본 약관 또는 공서양속에 반하는 행위를 하는 경우</li>
                <!-- 20210106 수정 -->
                <li>바. 회사 또는 기타 제3자에 대해 명예 또는 신용 훼손, 폭언, 폭행, 성적 언행 등 부적절한 행위를 하거나 업무를 방해하는  행위</li>
                <li>사. 구매상품을 정당한 이유 없이 상습적으로 취소 또는 반품(환불)하는 등의 방법으로 회사의 업무를 현저히 방해하는 경우</li>
                <li>아. 재판매 목적으로 재화 등을 대량으로 중복 구매하여 공정한 거래질서를 현저히 방해하는 경우</li>
                <li>자. 상품 구매 및 서비스 이용 시 정상적인 거래 범위를 현저히 이탈하여 오남용하는 경우</li>
                <!-- 20210106 추가 -->
                <li>차. 기타 회원으로서의 자격을 지속시키는 것이 객관적으로 부적절하다고 판단되는 경우</li>
                <!-- 20210106 추가 -->
            </ol>
        </li>
    </ol>

    <p class="sub_tit">제 8 조 (카드의 이용 및 관리)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회원이 스타벅스 카드에 적립된 별에 따른 혜택을 이용하고자 할 경우에는 반드시 스타벅스 카드를 제시하는 것을 원칙으로 합니다. 단, 여기에서 '스타벅스 카드를 제시한다'함은 스타벅스 카드를 회사에 보여주는 행위, 단말기에 읽히는 행위 등 스타벅스 카드를 이용하고자 하는 고객이 회사로부터 적법하게 인정된 회원임을 증명하는 행위를 말합니다.</li>
        <li>2. 회원이 서비스를 이용하고자 스타벅스 카드를 제시할 경우 회사는 회원에게 본인 확인을 위한 신분증 제시를 요청할 수 있습니다. 이 경우 회원은 회사의 요청을 준수하여야 정상적인 서비스를 제공받을 수 있습니다.</li>
    </ol>

    <p class="sub_tit">제 9 조 (충전)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 스타벅스 카드의 충전은 다음 각 호의 방법으로 가능합니다.
            <ol>
                <li>가. 고객이 매장(일부 매장 제외)을 직접 방문하여 현금 또는 회사가 현금과 동일하게 인정하는 금전적 가치(신용카드 등)를 제공하는 방법으로 해당 가치를 전자적 장치(단말기 등)를 이용하여 스타벅스 카드에 직접 저장하는 방법</li>
                <li>나. 회원이 회사와 약정한 절차에 따라 사전에 일정금액을 회사에 지급하고 회사는 지급 받은 금액에 해당하는 가치를 스타벅스 카드에 관한 정보를 기준으로 회사의 시스템에 전자적 방법으로 저장한 후, 회원과 회사가 약정한 조건에 따라 별도의 절차 없이 회사가 지정한 전자적 장치 (단말기 등)를 통해 회사의 시스템에 저장된 가치를 스타벅스 카드로 이전하여 기록하는 방법 (이하 “인터넷 결제를 통한 충전”이라고
                    합니다.)
                </li>
                <li>다. 기타 회사가 사전에 고지하고 고객이 해당 방법을 이용함으로써 동의 의사가 표시된 방법</li>
            </ol>
        </li>
        <li>2. 스타벅스 카드에 충전할 수 있는 최소 최초 충전 금액은 5천원이며, 이는 회사의 마케팅 정책에 따라 변경될 수 있습니다. <br>1장의 스타벅스 카드에 저장되는 총 금액 한도 및 1회 충전 시 충전할 수 있는 금액에 대한 기준은 회사가 별도로 지정할 수 있으며, 회사의 홈페이지 등에 공지하여 정할 수 있습니다.</li>
        <li>3. 스타벅스 카드에 충전된 금액에 대하여는 이자가 발생되지 않습니다.</li>
        <li>4. 다음 각호에 해당되는 경우 회사는 고객의 충전을 제한할 수 있습니다.
            <ol>
                <li>가. 회사가 아닌, 다른 국가의 Starbucks 사업자가 발행한 Card 등을 소지한 경우</li>
                <li>나. 기타 충전이 불가능한 기술적, 제도적 사유가 발생한 경우</li>
            </ol>
        </li>
        <li>5. 스타벅스 카드에 저장된 금액을 다른 스타벅스 카드에 저장된 금액과 합산할 수 없습니다. 단, 고객이 고장카드에 대한 교체신청을 하거나, 회원이 분실신청을 하는 불가피한 사유가 발생한 경우에만 회사가 정한 절차에 따라 제한적으로 가능합니다. </li>
        <li>6. 회원은 제3자에게 스타벅스 카드를 충전하여 선물하기 기능 등을 통해서 양도할 수 있습니다. 단, 이 때 제3자에게 양도한 카드는 거래가 없는 경우 당일에 한해서만 양도행위에 대한 취소가 가능합니다. 이와 관련된 구체적인 지침이나 정책은 회사의 마케팅 정책에 따라 달라질 수 있습니다. </li>
    </ol>

    <p class="sub_tit">제 9 조의 2 (자동 재충전)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>스타벅스 리워드(Starbucks Rewards)로 회원등록이 되어 있는 스타벅스 카드의 경우, 아래와 같은 방법으로 자동 재충전을 설정할 수 있습니다.</li>
        <li>1. 기준 하한 자동 재충전: 회원이 지정한 카드의 최저 잔액 이하로 잔액이 하락하는 경우, 회원이 사전에 선택한 결제 수단으로 지정한 금액이 재충전 됩니다.</li>
        <li>2. 월 정액 자동 재충전: 회원이 지정한 특정 일자에 사전에 선택한 결제 수단으로 지정한 금액이 재충전 됩니다.</li>
    </ol>

    <p class="sub_tit">제 9 조의 3 (결제 확인 통지 • 안내 • 충전신청 변경 및 취소)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회사는 회원이 인터넷 결제를 통한 충전을 신청한 경우 결제와 동시에 팝업창 등을 통해 결제 확인을 통지하며, 회원의 선택에 따라 e-mail로 결제 관련 정보를 안내해 드립니다. 회사의 확인통지가 회원에게 도달한 시점에 계약이 성립된 것으로 보고, 그 통지에는 회원의 구매신청에 대한 확인 및 판매가능여부, 구매신청의 정정 취소절차 등에 관한 정보 등을 포함하도록 합니다.</li>
        <li>2. 회원은 의사표시의 불일치 등이 있는 경우에는 구매신청 변경 및 취소를 요청할 수 있고, 회사는 특별한 사정이 없는 한 그 요청에 따라 처리하여야 합니다. 다만 이미 대금이 지급된 경우에는 제10조의 2의 청약철회 등에 관한 규정에 따릅니다.</li>
    </ol>

    <p class="sub_tit">제 10 조 (환급)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 고객이 스타벅스 카드에 충전된 잔액의 환급을 요청하는 때에는 회사는 스타벅스 카드의 상태에 따라 다음 각호에 명시된 절차에 의거하여 환급 처리를 합니다.
            <ol>
                <li>가. 구매하거나 충전한 정상카드의 잔액은 현금으로 반환되지 않습니다. 단, 구매 또는 최종 충전 후 그 시점의 잔액을 기준으로 60% 이상을 사용한 후 40% 이하에 해당하는 잔액의 반환을 요구하는 경우 등록된 카드의 회원은 홈페이지 또는 매장(일부 매장 제외)을 통해서 환급을 신청할 수 있고, 등록되지 않은 카드의 소지인은 매장에 환급을 신청할 수 있습니다. 단, 40% 이하에 해당하는 잔액을 다른 카드로
                    이체하거나 카드를 교체한 경우에는 현금으로 반환되지 않습니다.
                    <ol>
                        <li>- 등록되지 않은 정상카드도 계정에 등록한 후 환불 접수가 가능합니다.</li>
                        <li>- 홈페이지를 통해 등록된 정상카드에 대한 잔액 환급을 신청하면, 회사에서 확인 후 고객이 지정한 계좌로 신청일로부터 영업일 기준 7일 이내에 잔액을 환급해 드립니다. 단, 고객 본인의 환급 신청 계좌정보를 오입력 또는 부정 사용 등으로 인해 확인 절차가 필요한 경우에는 환급이 지연될 수 있으나, 회사 귀책이 없는 사유로 환급이 지연되는 경우가 아닌 한 환급 신청 시부터 환급 시까지의 전체 기간은 30일을 초과하지 않습니다.</li>
                        <li>- 매장을 통해 환급을 신청하는 경우 등록되지 않은 무기명 카드는 환급을 신청한 카드소지인에게 현금으로 환급해 드리지만, 스타벅스 리워드 등록 회원은 반드시 본인이 직접 환급을 신청해야 하며 본인 확인 후 현금으로 환급해 드립니다. 이 경우 고객이 환불 금액을 수령할 때 한 서명은 향후 정상적으로 환불 금액을 수령하였다는 사실을 입증하는 자료로 사용됩니다.</li>
                        <li>- 매장 중 백화점 및 쇼핑몰에 입점되어 있어 정책상 카드의 충전이 불가능한 매장에서는 환급도 불가능할 수 있습니다. 이 경우 해당 매장 직원의 안내에 따라 인접 매장을 이용하거나 홈페이지를 통해 환급 받으실 수 있습니다.
                        </li>
                    </ol>
                </li>
                <li>나. 분실 신고된 스타벅스 카드는 매장에서 환급해 드리지 않으며, 홈페이지에서 본인이 직접 계정 로그인 후 환급을 신청하여야 합니다.
                    <ol>
                        <li>- 회원은 홈페이지에서 분실 신고를 한 후 해지를 할 수 없습니다.</li>
                        <li>- 분실 신고한 카드의 잔액은 홈페이지에 등록된 다른 카드로 이체할 수 있습니다.</li>
                    </ol>
                </li>
                <li>다. 정상카드에 대한 충전을 취소하고자 하는 경우에는 해당 거래의 영수증을 지참하여 충전일로부터 14일 내에 해당 매장에 충전 취소를 요청함으로써 충전방법에 따라 현금 또는 신용카드 취소 등의 형식으로 환급해 드립니다. 단, 충전일로부터 14일을 경과한 경우에는 가.호에 따라 잔액을 환급해 드립니다.</li>
                <li>라. 고장카드는 매장에 접수하시면 잔액 확인 등의 절차를 거쳐 고장카드의 잔액이 충전된 신규 스타벅스 카드를 발급하여 드리며, 신규로 발급 받으신 후에는 고장카드를 사용하실 수 없습니다. 단, 고객이 고장카드의 잔액을 금전으로 받기 원하는 경우, 가.호에 따라 잔액을 환급하여 드립니다.
                    <ol>
                        <li>- 등록된 카드의 교환 처리 후, 신규로 교환 받은 카드는 홈페이지 또는 모바일 APP에 다시 등록을 한 후 스타벅스 리워드 프로그램의 혜택을 받을 수 있습니다.</li>
                    </ol>
                </li>
                <li>마. 고장카드 중 카드 번호의 식별이 불가능한 카드와 분실 신고된 카드는 신규 스타벅스 카드로의 발급 또는 환불이 불가능합니다.</li>
            </ol>
        </li>
        <li>2. 스타벅스 카드의 발행 목적 또는 기술적 사유(시스템 점검, 단말기 고장, 통신회선 불량, 신규 카드 또는 단말기의 안정화 작업 등)로 일부 스타벅스 카드는 환급이 제한될 수 있으며, 이 경우 회사는 별도의 환급 절차 및 방법을 매장에서 배포하는 안내장 또는 홈페이지 등을 이용하여 고객에게 고지합니다.</li>
    </ol>

    <p class="sub_tit">제 10 조의 2 (청약철회 등)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 인터넷 결제를 통한 충전을 청약한 회원은 청약 후 결제가 완료된 날로부터 7일 이내에는 그 청약의 철회를 할 수 있습니다.</li>
        <li>2. 회사는 제1항의 청약철회를 수신한 날부터 3영업일 이내에 지급받은 대금을 환급합니다. 이 경우 그 환급을 지연하는 때에는 그 지연기간에 대하여 전자상거래 등에서의 소비자보호에 관한 법률 시행령이 정하는 지연이자율(연 100분의 15)을 곱하여 산정한 지연이자를 지급합니다.</li>
        <li>3. 회사는 위 대금을 반환함에 있어서 회원이 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.</li>
        <li>4. 회사의 시스템에 저장된 가치가 이미 스타벅스 카드로 이전하여 기록된 경우에는 제10조의 규정에 의하여 환급합니다.</li>
    </ol>

    <p class="sub_tit">제 11 조 (별 적립 및 등급별 혜택 • e-프리퀀시 혜택)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 별 적립 <br>스타벅스 카드로 상품을 구입한 회원에 대하여 회사는 내부 별 적립 정책에 따라 결제 시 유효한 구매 영수증 1개당 별을 부여하게 됩니다.</li>
        <li>2. 회원 등급별 혜택 및 쿠폰의 유효기간 <br>적립된 유효 별의 개수에 따라 회원의 등급이 부여되며, 등급별로 다양한 혜택이 제공됩니다. 각 상위 등급은 하위 등급의 혜택이 포함됩니다. 단, 각 등급별 혜택은 회사의 관련 정책에 따라 변경될 수 있으며, 자세한 내용은 홈페이지에서 확인이 가능합니다. 스타벅스 카드의 사용에 따라 발급된 쿠폰은 발급 시 안내드린 유효기간 내에서만 사용이 가능합니다.</li>
        <li>3. e-프리퀀시의 기능 및 혜택 <br>회사에서 e-프리퀀시 프로모션이 진행되는 기간 동안 회원이 계정에 등록된 스타벅스 카드로 결제 하는 경우, 회원 가입 시 자동으로 발급된 e-프리퀀시 카드계정에 회사에서 정한 적립 기준에 따라 “e-스티커”가 적립됩니다. 아울러 e-프리퀀시 카드의 구체적인 운영 방침이나 활용 방법 및 혜택은 회사의 마케팅 정책에 따라 변할 수 있으며, 이에 대해서는 별도의 방법으로 사전에 안내해
            드립니다.
        </li>
    </ol>

    <p class="sub_tit">제 12 조 (“별” 유효기간 및 소멸)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 별의 유효기간은 적립 일로부터 1년 (12개월) 이며, Gold Level의 무료 음료 증정을 위한 별 또한 Gold Level의 유효기간과 동일하게 1년입니다.</li>
        <li>2. 유효기간이 경과된 별은 적립 일 기준으로 12개월 후부터 일 단위 선입선출 방식에 의하여 자동으로 소멸되며, 유효기간 만료 이전에 1개월 단위로 e-mail, 홈페이지 등을 통해 통지하여 드리며, 홈페이지에서도 조회하실 수 있습니다.</li>
        <li>3. 스타벅스 카드로 결제 시 적립된 별은 해당 결제를 취소하실 경우 적립이 취소됩니다.</li>
    </ol>

    <p class="sub_tit">제 13 조 (무기명 카드 for All Rewards)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 무기명 카드 for All Rewards로서의 스타벅스 카드
            <ol>
                <li>가. 무기명 카드는 사용 리워드로 별이 아닌 “BOGO 쿠폰”을 제공합니다.</li>
                <li>나. “BOGO 쿠폰” 발행: 고객은 회사에서 제품 및 상품 구입을 통하여 쌓은 실적에 따라 “BOGO 쿠폰”을 발급받을 수 있습니다. BOGO 쿠폰은 누적 결제 금액 10만원마다 1장 발행됩니다. 단, 누적 결제 금액에 스타벅스 카드 충전 금액은 포함되지 않습니다.
                    <ol>
                        <li>①리워드 실적 집계 기간은 최초 사용 시점으로부터 다음 해 12월 31일까지, 그 이후에는 1년을 단위로 합니다. 집계 기간 내에 리워드로 전환되지 못한 실적은 소멸됩니다.</li>
                        <li>②쿠폰 발급 조건 도달 시, 익일 BOGO 쿠폰이 발행됩니다. 쿠폰 발급 이후에도 결제 취소 기간 14일 이내에 영수증 지참하여 결제 취소가 가능하며, 이 경우 발급된 BOGO 쿠폰은 자동 회수 처리됩니다. 만약, 발급된 BOGO 쿠폰을 사용했다면 결제 취소가 불가합니다.</li>
                    </ol>
                </li>
                <li>다. 복합 결제 시 리워드 발행 기준
                    <ol>
                        <li>① 계정 등록된 스타벅스 카드와 무기명 카드 복합 결제 시: 계정에 별 발행되며, 무기명 카드 실적은 적립되지 않습니다. e-프리퀀시 이벤트 기간에는 별이 발행된 회원 계정에 e-프리퀀시 스티커도 함께 적립됩니다.</li>
                        <li>②무기명 카드와 무기명 카드 복합 결제 시: 결제 금액만큼 해당 무기명 카드에 각각 실적 반영되며, e-프리퀀시 이벤트 기간에는 첫 번째 적용된 무기명 카드에 e-프리퀀시 스티커 자동 적립됩니다.</li>
                    </ol>
                </li>
                <li>라. e-프리퀀시 적립 <br>무기명 카드를 이용한 e-프리퀀시 스티커 적립이 가능합니다.</li>
                <li>마. 무기명 카드 이용자가 스타벅스 리워드 회원 전환 시 회원 계정으로의 실적 이관 기준
                    <ol>
                        <li>① 스타벅스 리워드 회원 계정 등록과 함께 무기명 카드의 결제 금액 실적은 소멸됩니다.</li>
                        <li>② 기 발급된 BOGO 쿠폰과 e-프리퀀시 스티커는 전환된 회원 계정으로 자동 이관 처리됩니다.</li>
                        <li>③ 회원 전환이 완료되면, 추후 회원 탈퇴 혹은 카드 계정 등록 해지 시에도 과거에 사용하던 무기명 카드의 금액 실적은 복원되지 않습니다.</li>
                    </ol>
                </li>
                <li>바. 무기명 카드 이용자의 실적 집계 기간, 누적 결제 금액, 보유한 쿠폰 개수, 보유한 e-프리퀀시 스티커 개수 등의 카드 관련 제 정보는 영수증에 표기됩니다. 당사는 무기명 카드 이용자의 개인정보를 수집하지 않으므로, 홈페이지 혹은 APP에서 이용자의 결제 실적을 확인할 수 없습니다. </li>
                <!-- 20201012  수정 -->
            </ol>
        </li>
        <li>2. 무기명 카드의 도난, 분실 등에 대하여 회사는 책임지지 않으며, 이 경우 해당 카드의 잔액과 적립된 리워드 및 e-프리퀀시 스티커 등은 보호되지 않습니다.</li>
    </ol>

    <p class="sub_tit">제 14 조 (스타벅스 제휴 신용카드)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 제휴 신용카드는 해당 제휴 신용카드사 또는 금융기관 등의 자격 기준 충족 시 발급됩니다.</li>
        <li>2. 제휴 신용카드 서비스 이용을 위한 조건
            <ol>
                <li>가. 제휴 신용카드 혜택은 제 5조 제2항의 “스타벅스 리워드(Starbucks Rewards)” 에 따라 스타벅스 카드를 등록한 회원에게 한하여 제공합니다.</li>
                <li>나. 제휴 신용카드 정책에 따라 해당 카드 발급이 완료되는 시점에 스타벅스 공카드가 자동 부여될 수 있으며 이 경우 스타벅스 리워드 회원의 자격이 부여됩니다. 발급이 완료된 스타벅스 공카드는 홈페이지 또는 모바일 APP에서 확인 가능합니다.</li>
                <li>다. 본 약관에 동의하여 제휴 신용카드를 신청한 회원이라 하여도 제휴 신용카드 발급 조건이 충족되지 않을 경우 스타벅스 공카드가 발급되지 않습니다. </li>
                <li>라. 제휴 신용카드 발급 완료 후 “회원” 조건 충족 시에는 본 약관에 명시되어 있는 스타벅스 리워드 혜택이 제공됩니다. 단, “회원” 조건 충족 후 해당 계정에 스타벅스 카드가 1개 이상 등록되어 있지 않을 경우 혜택 이용이 제한될 수 있습니다. </li>
            </ol>
        </li>
        <li>3. 제휴 신용카드 혜택 안내
            <ol>
                <li>가. 제휴 신용카드 발급을 통한 별 적립기준 및 카드상품 등은 제휴 신용카드사의 제휴 신용카드 약관에 따릅니다. 더불어 스타벅스 리워드 혜택을 제공받기 위해 제휴 신용카드를 이용할 경우 해당 제휴 신용카드사의 규정에 따라야 하며 이용과정에서 제휴 신용카드사의 책임으로 발생하는 회원의 불만이나 손해에 대하여 스타벅스는 책임이 없습니다. </li>
                <li>나. 제휴 신용카드를 통해 적립된 별은 별도 안내가 있는 경우를 제외하고 본 약관에 명시된 별 정책에 따라 운영됩니다. </li>
                <li>다. 적립된 별은 금전적으로 환산하거나 타인에게 양도ㆍ판매될 수 없습니다.</li>
                <li>라. 기존 스타벅스 리워드 회원이 제휴 신용카드 발급 후 스타벅스 공카드를 부여 받았을 경우 제휴 신용카드를 통해 적립된 별은 기존에 등록된 스타벅스 카드로 적립된 별과 합산 및 관리됩니다.</li>
                <li>마. 제휴 신용카드의 별 적립 시기는 각 제휴 신용카드사별로 상이합니다.</li>
            </ol>
        </li>
    </ol>

    <p class="sub_tit">제 15 조 (고객의 의무)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 고객은 본 약관에서 규정하는 사항과 이용안내 또는 공지사항 등을 통하여 회사가 제공하는 사항을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다.</li>
        <li>2. 회원은 회사가 제공한 별을 이용하여 영업 활동을 할 수 없습니다.</li>
        <li>3. 회원은 적립한 별을 다른 회원에게 재판매 할 수 없으며, 위반 시에는 제공받았던 혜택을 반환하여야 합니다.</li>
    </ol>

    <p class="sub_tit">제 16 조 (휴면계정 관리)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회사는 회원이 홈페이지 또는 모바일 APP에 12개월 이상 로그인 하지 않고, 계정에 등록된 스타벅스 카드로 12개월 이상 거래내역(최초 충전, 재충전, 결제 등 모든 거래 포함)이 없는 경우, 휴면계정으로 간주하고 회사가 제공하는 서비스 이용을 아래와 같이 제한/상실시킬 수 있습니다.</li>
        <li>2. 12개월 이상 서비스에 로그인하지 않고 등록된 스타벅스 카드의 거래내역이 없는 경우에는 휴면계정으로 별도 관리되어 홈페이지 이용이 중단되고, 이후 다시 이용하시려면 인증 절차 혹은 계정에 등록된 스타벅스 카드로 1회 이상 이용(최초 충전, 재충전, 결제 등 모든 거래 포함)해 주시기 바랍니다. <br>또한, 휴면계정으로 별도 관리되는 경우 스타벅스 리워드 별과 등급별 쿠폰이 제공되지 않으며, 등급별 유지 조건 미충족
            시 회원 등급 레벨이 하향 조정될 수 있습니다.</li>
        <li>3. 회원이 제14조에 명시된 제휴 신용카드 신청을 위해 스타벅스 본인 인증절차를 진행할 경우 더 이상 휴면계정으로 관리되지 않으며 다시 서비스 이용이 가능합니다. 또한 제휴 신용카드 이용회원은 제휴 신용카드 사용을 통해 별 적립이 될 경우 휴면계정으로 관리되지 않습니다.</li>
    </ol>

    <p class="sub_tit">제 17 조 (회원 탈퇴와 별의 소멸 처리)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 본 약관 제 7 조 제 1 항에 정해진 방법으로 회원 탈퇴 시 회원 탈퇴 요청일 현재까지 적립된 별은 자동으로 소멸되며, 재가입 시 소멸된 별은 복원되지 않습니다.</li>
        <li>2. 본 약관 제 7 조 제 2 항에 따라 회원 자격이 상실된 경우, 자격 상실일 현재까지 적립된 별은 자동으로 소멸됩니다.</li>
    </ol>

    <p class="sub_tit">제 18 조 (거래지시의 철회)</p>
    <p class="pri_con2 mb40">고객이 스타벅스 카드로 서비스를 제공받거나 제품 또는 상품을 구매하고 스타벅스 카드의 잔액이 차감되어 거래내역이 기록된 후에는 그 거래가 발생한 날의 14일 이내에 영수증 등 구매사실을 소명할 수 있는 자료를 첨부하여 거래 취소를 요구할 수 있습니다. 단, 지급된 쿠폰 또는 판촉물은 반드시 함께 반환하셔야만 거래지시의 철회가 가능합니다.</p>

    <p class="pri_tit">제 3 장 거래내역 정보</p>

    <p class="sub_tit">제 19 조 (거래내역의 수집)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회사는 고객이 스타벅스 카드를 통해 서비스 이용 및 제품 또는 상품 구매 시 필요한 최소한의 거래내역 정보(카드 번호, 거래 일시, 거래 금액, 단말기 및 매장 정보 등)를 수집합니다.</li>
        <li>2. 스타벅스 카드를 통해 수집된 거래내역 정보는 이용대금 정산의 목적 및 (개인정보의 경우 개인정보보호 관련 법령에 따른 비식별화 조치를 거쳐) 회사의 통계 작성 및 활용의 목적에 사용될 수 있습니다. </li>
    </ol>

    <p class="sub_tit">제 20 조 (거래내역의 제공)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회원은 홈페이지와 모바일 APP을 통해 거래 내역을 확인할 수 있습니다.</li>
        <li>2. 회사는 회원과 거래한 내역 및 그 증빙에 대하여, 전자적 형태인 전자 영수증으로 우선 발급하며, 회원은 이에 동의합니다. </li>
        <li>3. 회사는 관련법령에 의거하여 회원과의 거래내역을 거래가 발생한 날로부터 최대 5년 간 보관하며, 해당 기간 동안 회원은 회사가 제공하는 홈페이지 및 모바일 APP을 통하여 최근 1년 간의 거래 내역을 열람 및 확인할 수 있습니다. </li>
        <!-- 20201008 수정 -->
        <li>4. 1항에도 불구하고, 회원이 지류 형태의 영수증 발급을 희망하는 경우 회원은 해당 거래가 발생한 매장에 방문하여 지류 영수증의 발급을 요청할 수 있습니다. 단, 다음 각 호에 해당하는 거래인 경우 지류 영수증의 발급은 불가합니다.
            <ol>
                <li>가. 홈페이지 또는 모바일 APP을 통한 스타벅스 카드 충전과 e-Gift Card 구매 또는 충전 거래 내역의 증빙</li>
                <li>나. 모바일 APP을 통한 e-Gift Item의 구매 거래 내역의 증빙 <br>e-Gift Card의 거래이력은 e-Gift Card 선물내역에서 최대 1년 간의 거래내역 확인이 가능하며, e-Gift Item은 e-Gift Item 보낸 선물 메뉴에서 최대 5년 간의 거래내역 확인이 가능합니다. </li>
            </ol>
        </li>
        <!-- //20201008 수정 -->
        <li>5. 회사는 다음 각 호에 해당하는 경우, “전자영수증(e-Receipt &amp; History)” 서비스 전부 또는 일부를 제한하거나 중지할 수 있습니다.
            <ol>
                <li>가. 서비스를 위한 설비 보수, 점검, 교체 등의 사유로 일시적인 서비스 장애가 발생한 경우</li>
                <li>나. 제반 설비의 장애 또는 이용폭주로 정상적인 서비스 이용이 어려운 경우</li>
                <li>다. 천재지변 등 불가항력적 사유가 발생한 경우</li>
            </ol>
        </li>
        <li>6. 고객이 거래내역을 서면으로 받고자 하는 경우, 스타벅스 카드를 소지한 본인임을 확인하기 위해 필요한 자료 (스타벅스 카드 사본, 신분증 사본 등 회사가 요청하는 자료)를 거래내역 신청서와 함께 팩스 또는 우편으로 회사에 송부하여야 하며, 회사는 스타벅스 카드 소지자 본인임이 확인되는 경우에 한하여 요청을 받은 날로부터 2주 이내에 해당 정보를 고객이 요청한 수령지로 팩스 또는 우편을 이용하여 제공합니다.
            <ul>
                <li>우편주소: 서울특별시 중구 퇴계로 100 9F 주식회사 에스씨케이컴퍼니 고객센터</li>
                <li>문의전화: 1522-3232 (유료)</li>
                <li>팩스: 02-3015-1108</li>
                <li class="pri_info_img st04">
                    <!-- 20201014 수정 -->
                    <img src="http://image.istarbucks.co.kr/common/img/footer/etc/2004_txt_rules_msr.png" alt="전자우편주소:cs@starbucks.co.kr">
                </li>
                <li>고객이 본 조에 의거 거래내역을 제공받기 위하여 회사에 제공한 수령지 정보가 부정확하거나 오류인 관계로 발생된 고객의 해당정보 누출 또는 고객의 손해에 대하여 회사는 책임을 지지 않습니다.</li>
            </ul>
        </li>
    </ol>

    <p class="sub_tit">제 21 조 (거래내역의 정정)</p>
    <ol class="pri_con pri_con2 mb40">
        <!-- 20201014 수정 -->
        <li>1. 고객은 본인이 이용한 거래와 관련된 오류를 발견하는 경우 소명할 수 있는 자료를 갖추고 회사가 정한 절차를 거쳐, 해당 거래에 대한 정정을 요청할 수 있습니다.</li>
        <li>2. 회사는 본 조 제1항에 의해 고객의 정정 요청을 받은 날로부터 2주 이내에 해당 거래내역을 검토하여 고객에게 그 결과를 통보하여 드립니다.</li>
    </ol>

    <p class="pri_tit">제 4 장 개인정보 보호</p>

    <p class="sub_tit">제 22 조 (개인 정보 보호)</p>
    <ol class="pri_con pri_con2 mb40">
        <!-- 20201014 수정 -->
        <li>1. 회사는 고객의 정보 수집 시 정상적인 서비스를 위한 최소한의 정보를 수집하며, 고객의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 해당 고객의 동의를 받습니다.</li>
        <li>2. 회사는 양질의 서비스를 제공하기 위해 여러 비즈니스 파트너와 제휴를 맺거나 국가 기관의 요구 등을 위해 개인정보를 위탁관리 하거나 개인정보를 제공할 수 있습니다. 개인정보 위탁의 경우에는 홈페이지를 통해 관련 사항을 공개하고, 개인정보 제공의 경우에는 제공과 관련된 사항을 고객에게 알리고 동의를 받습니다. 단, 고객의 소득공제 목적으로 국세청에 개인정보 및 스타벅스 카드 사용내역을 제공하는 경우 등과 같이 고객의
            요청에 의하는 경우는 예외로 합니다.</li>
        <li>3. 고객이 제공한 개인정보는 고객의 동의 없이 제3자에게 누설하거나 제공하지 않습니다. 다만, 다음 각 호에 해당하는 경우에는 예외로 합니다.
            <ol>
                <li>가. 통계 작성, 과학적 연구 또는 공익적 기록보존 등을 위해 특정 개인을 식별할 수 없는 형태로 제공하는 경우</li>
                <li>나. 관계 법령에 의하여 수사상의 목적으로 관계 기관으로부터 요구 받은 경우</li>
                <li>다. 기타 관계 법령에 의한 경우</li>
            </ol>
        </li>
        <li>4. 고객은 자신의 개인정보처리와 관련하여 개인정보의 처리에 관한 정보를 제공받을 권리, 개인정보에 대하여 열람을 요구할 권리, 개인정보의 처리정지, 정정, 삭제 및 파기를 요구할 권리를 갖습니다.</li>
        <li>5. 회사 또는 회사로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기하여야 합니다.</li>
    </ol>

    <p class="pri_tit">제 5 장 기타</p>

    <p class="sub_tit">제 23 조 (책임 소재)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회사는 고객이 스타벅스 카드 서비스 이용 중 발생한 손해에 대하여 배상할 책임을 집니다. 단, 본 약관에 별도 명시된 경우 및 다음 각호의 어느 하나에 해당하는 경우는 제외합니다.
            <ol>
                <li>가. 스타벅스 카드를 회사가 스타벅스 카드 후면 또는 단말기를 통해 안내하거나 규정하는 방법 이외의 방법으로 거래 행위를 한 경우 (단, 여기에서 '거래 행위'라 함은 카드 번호를 입력하는 행위, 카드를 단말기에 접촉하는 행위 등 고객이 스타벅스 카드 서비스를 이용하기 위해 스타벅스 카드를 이용하는 행위를 말합니다)</li>
                <li>나. 스타벅스 카드를 회사가 지정하지 아니한 방법으로 불법 거래 또는 부정 사용한 경우</li>
                <li>다. 스타벅스 카드를 변형하거나 원형을 훼손하여 사용한 경우</li>
                <li>라. 스타벅스 카드를 도난 당하거나 분실한 경우</li>
                <li>마. 제3자가 권한 없이 고객의 스타벅스 카드를 이용할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 고객이 자신의 스타벅스 카드 정보 (카드 번호 및 PIN 번호 포함)를 누설 또는 노출하거나 방치한 경우</li>
            </ol>
        </li>
        <li>2. 고객이 본 조 제1항에서 규정한 행위를 하여 회사에 손해가 발생하는 경우, 그 고객은 회사의 손해에 대하여 배상할 책임을 집니다.</li>
        <li>3. 서비스를 이용하면서 불법행위나 본 약관을 위반하는 행위를 한 이용자로 말미암아 회사가 해당 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는다면 해당 회원 자신의 책임과 비용으로 회사를 면책시켜야 하며, 회사가 면책되지 못한 경우 당해 이용자는 그로 인하여 회사에 발생한 손해를 배상해야 합니다.</li>
        <li>4. 회사는 이용자가 불법 또는 부정한 방법으로 서비스를 이용하거나 과실에 해당하는 행위를 하여 이용자와 회원간 또는 이용자와 회원 및 제3자 상호간에 분쟁이 발생하였을 때 회사의 책임을 주장하는 자가 회사의 귀책사유를 객관적으로 입증하지 않는 한, 회사는 이에 개입할 의무가 없으며 분쟁으로 발생하는 손해를 배상할 책임이 없습니다.</li>
        <!-- 20210106 추가 -->
    </ol>

    <p class="sub_tit">제 23 조의 2 (지급 보증 등)</p>
    <p class="pri_con2 mb15">스타벅스 카드는 충전금액에 대하여 전자상거래(결제수단) 보증보험증권에 가입되어 있습니다.</p>
    <!-- 20201014 수정 -->

    <p class="sub_tit">제 24 조 (분쟁 해결)</p>
    <ol class="pri_con pri_con2 mb15">
        <li>1. 회사는 고객이 제기하는 정당한 의견이나 불만을 반영하기 위하여 고객의견수렴 제도를 운영하며, 고객은 홈페이지의 해당 서비스 페이지를 통해 의견을 제시할 수 있습니다.
            <ul>
                <li>홈페이지 주소: www.starbucks.co.kr</li>
                <li>문의전화: 1522-3232(유료)</li>
            </ul>
        </li>
        <li>2. 회사는 고객에게 손해가 발생하거나 회사와 고객간 분쟁이 발생하는 경우 손해 배상 등 분쟁처리를 위해 고객상담센터를 설치, 운영합니다.</li>
        <li>3. 회사는 고객으로부터 제출되는 불만사항 및 의견은 15일 이내에 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 고객에게 그 사유와 처리일정을 즉시 통보합니다.</li>
        <li>4. 회사와 고객간에 발생한 분쟁이 원만히 해결되지 않는 경우, 관련 법령에 따라 '소비자기본법'에 따른 한국소비자원의 소비자분쟁조정위원회를 통해 조정신청이 가능합니다.</li>
    </ol>

    <p class="sub_tit">제 25 조 (관할 법원)</p>
    <p class="pri_con2 mb40">스타벅스 카드 서비스 및 본 약관과 관련한 제반 분쟁 및 소송은 회사의 본점 소재지를 관할하는 법원 또는 민사소송법상의 관할 법원을 제1심 관할 법원으로 합니다.</p>

    <p class="mb10">(부칙)</p>
    <p>본 이용약관은 2022년 5월 22일부터 시행합니다.</p>
    <!-- 20210106 수정 -->
</div></div>
		
					</div>
					<!-- //ms_cont -->

					<!-- 네비 -->
					

<nav class="ms_nav" id="msRnb">
    <ul>
        <li>
            <a href="javascript:void(0);">개인정보 처리방침<span class="sbox_arrow_down"></span></a> <!-- 20211213 수정 -->
            <ul>
				<li><a href="/footer/etc/privacy.do">· 개인정보 처리방침</a></li>
				<li><a href="/footer/etc/privacy_board_list.do">· 개인정보처리의 업무위탁관련</a></li>
			</ul>
        </li>
        <li>
            <a href="/footer/etc/rules_vod.do">영상정보처리기기<br>운영관리 방침</a>
        </li>
        <li>
            <a href="javascript:void(0);">이용약관<span class="sbox_arrow_down"></span></a>
            <ul>
                <li><a href="/footer/etc/rules.do">· 홈페이지 이용약관</a></li>
                <li><a href="/footer/etc/rules_loc.do">· 위치정보 이용약관</a></li>
                <li><a href="/footer/etc/rules_msr.do">· 스타벅스 카드 이용약관</a></li>
                <li><a href="/footer/etc/rules_non.do">· 비회원 이용약관</a></li>
                <li><a href="/footer/etc/rules_mdp.do">· My DT Pass 서비스 이용약관</a></li> 
            </ul>
        </li>
        <li>
            <a href="/footer/etc/hotline.do">윤리경영 핫라인</a>
        </li>
        <li>
            <a href="/footer/etc/coming_route.do">찾아오시는 길</a>
        </li>
        <li>
            <a href="/footer/etc/sitemap.do">사이트 맵</a>
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
							<li><a href="company/index">한눈에 보기</a></li>
							<li><a href="company/mission">스타벅스 사명</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 소개<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="company/starbucks_information">스타벅스 코리아</a></li> <!-- 220118 수정 -->
									<li><a href="company/starbucks_history">주요 연혁</a></li> <!-- 202107 수정 -->
									<li><a href="company/starbucks_story">스타벅스 이야기</a></li>
								</ul>
							</li>
							<li><a href="company/news_list">국내 뉴스룸</a></li>
							<li><a href="footer/company/global_starbucks">세계의 스타벅스</a></li>
							<!-- 160811 메뉴 추가 -->
							<li><a href="https://news.starbucks.com" target="_blank">글로벌 뉴스룸</a></li>
							<!-- 160811 메뉴 추가 end -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" id="goPage" href="javascript:void(0);">CORPORATE SALES<span class="footer_arrow_down"></span></a></li>
							<li><a href="co_sales/index">단체 및 기업 구매 안내</a></li>
							<!-- <li><a href="footer/co_sales/sbcard_egift">스타벅스 <span class="en">e-Gift Card</span></a></li> -->
							<!-- <li><a href="footer/co_sales/sbcard">스타벅스 카드</a></li> -->
							<!-- <li><a href="footer/co_sales/co-branded"><span class="en">Co-branded</span> 카드</a></li> -->
							<!-- <li><a href="footer/co_sales/sb_product">스타벅스 상품</a></li> -->
							<!-- <li><a href="footer/co_sales/sbgift_certificate">스타벅스 상품권</a></li> -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span class="footer_arrow_down"></span></a></li>
							<li><a href="partnership/new_partner">신규 입점 제의</a></li>
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
							<li><a href="recruit/index">채용 소개</a></li>
							<li><a href="http://job.shinsegae.com/recruit_info/notice/notice02_view.jsp?notino=5924" target="_blank">채용 지원하기</a></li><!-- 20210927 수정 -->
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
					<a class="c_00b050" href="privacy">개인정보처리방침</a>
					<a href="rules_vod" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="rules">홈페이지 이용약관</a>
					<a href="rules_loc" class="mbn">위치정보 이용약관</a>
					<a href="rules_msr" class="mbn">스타벅스 카드 이용약관</a>
					<a href="rules_non" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="rules_mdp">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="hotline" class="last">윤리경영 핫라인</a>
					<br>
					<a class="btned_link" href="coming_route">찾아오시는 길</a>
					<a class="btned_link" href="partnership/new_partner">신규입점제의</a>
					<a class="btned_link" href="sitemap">사이트 맵</a><br>
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
		
		

<script src="common/js/clause.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	// 약관 불러오기
	var clauseType = "CARD";
	$("#use_term_select")("<option value=''>이전 스타벅스 카드 이용약관 보기</option>");
	setClause("use_term_select", "card_text", clauseType);

	/* 150517 추가 - 문진욱 */
	if (myWindow > 960) {

		var faSlider = $('.footer_awards_slider').bxSlider({
			minSlides:4,
			maxSlides:6,
			slideWidth:189,
			slideMargin:0,
			controls:false,
			auto:true,
			autoControls:true,
			autoControlsCombine:true,
			pause:2000
		});

	} else if ((myWindow > 640) && (myWindow <= 960)) {
		var faSlider = $('.footer_awards_slider').bxSlider({
			minSlides:3,
			maxSlides:3,
			slideWidth:210,
			slideMargin:0,
			controls:false,
			auto:true,
			autoControls:true,
			autoControlsCombine:true,
			pause:2000
		});
	} else if (myWindow <= 640) {
		var faSlider = $('.footer_awards_slider').bxSlider({
			minSlides:1,
			maxSlides:1,
			slideWidth:300,
			slideMargin:0,
			controls:false,
			auto:true,
			autoControls:true,
			autoControlsCombine:true,
			pause:2000
		});
	}

	/* 150613 성연욱 개인정보취급방침 */
	$('.pri_subject li a').bind('click', function(){
		var k = $(this).index('.pri_subject li a');
		$('html, body').animate({scrollTop: $('p.pri_tit').eq(k).offset().top - 150 }, 500);
	});
	/* 150613 성연욱 개인정보취급방침 end */	
	
	
});
function jumpMenu(frm){
	   if( frm.jump.options[frm.jump.selectedIndex].target  == "_blank" ){ //_blank이면 새창을 띄움
		  window.open(frm.jump.options[frm.jump.selectedIndex].value,"new","");
	   } else {
		  location.href=frm.jump.options[frm.jump.selectedIndex].value;
	   }
}


</script>

		</div>
	</body>
</html>