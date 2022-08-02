<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

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
	<link href="../common/css/style_mem.css" rel="stylesheet">
</head>
<body>
	<div class="myDimm"></div>
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
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index';" style="cursor:pointer;"><img alt="" /></p>
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
						<div class="mycard_one">
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
								<span>e-프리퀀시<br/>바코드</span>
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
				<h1 class="logo"><a href="/">스타벅스 코리아</a></h1>
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
									<li><a href="eFreq/status?promoSeq=172" required="login">이용현황</a></li>
								</ul>
							</li>
							
									<li><a href="my/vocList" required="login">My 고객의 소리</a></li>
							<li><a href="my/eReceiptList" required="login">전자영수증</a></li>
							<li class="msRnb_btn"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
							<li><a href="edt/expressDtList" required="login">My DT Pass</a></li>
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
									<li><a href="coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>
									<!-- <li><a href="coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li> 20210915 삭제 -->
									<li><a href="coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li><!-- 20210915 추가 -->
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
									<li><a href="coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>
									<li><a href="coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>
									<li><a href="coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>
									<li><a href="coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">커피 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- 20210914 수정 -->
									<li><a href="coffee/story">농장에서 우리의 손으로</a></li>
									<!-- <li><a href="coffee/story?PACKAGE=01">에스프레소 초이스</a></li> -->
									<li><a href="coffee/story?PACKAGE=02">최상의 아라비카 원두</a></li>
									<li><a href="coffee/story?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>
									<!-- <li><a href="javascript:void(0);">추출방식 알아보기</a></li> -->
									<li><a href="coffee/story?PACKAGE=04">스타벅스 디카페인</a></li>
									<li><a href="coffee/story?PACKAGE=05">클로버® 커피 추출 시스템</a></li>
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
									<li><a href="menu/drink_list?CATE_CD=product_cold_brew">콜드 브루</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_brood">브루드 커피</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_espresso">에스프레소</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_frappuccino">프라푸치노</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_blended">블렌디드</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_fizzo">스타벅스 피지오</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_tea">티(티바나)</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_etc">기타 제조 음료</a></li>
									<li><a href="menu/drink_list?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/food_list">전체보기</a></li>
									<li><a href="menu/food_list?CATE_CD=product_bakery">브레드</a></li>
									<li><a href="menu/food_list?CATE_CD=product_cake">케이크</a></li>
									<li><a href="menu/food_list?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>
									<li><a href="menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a></li>
									<li><a href="menu/food_list?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>
									<li><a href="menu/food_list?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>
									<li><a href="menu/food_list?CATE_CD=product_icecream">아이스크림</a></li>
                                    <!-- <li><a href="menu/food_list?CATE_CD=product_etc">기타 푸드</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/product_list">전체보기</a></li>
									<li><a href="menu/product_list?CATE_CD=product_mug">머그</a></li>
									<li><a href="menu/product_list?CATE_CD=product_glass">글라스</a></li>
									<li><a href="menu/product_list?CATE_CD=product_plastic">플라스틱 텀블러</a></li>
									<li><a href="menu/product_list?CATE_CD=product_stainless">스테인리스 텀블러</a></li>
									<li><a href="menu/product_list?CATE_CD=product_vacuum">보온병</a></li>
									<li><a href="menu/product_list?CATE_CD=product_accessories">액세서리</a></li>
									<li><a href="menu/product_list?CATE_CD=product_present">선물세트</a></li>
									<li><a href="menu/product_list?CATE_CD=product_coffee">커피 용품</a></li>
									<li><a href="menu/product_list?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>
									<!-- <li><a href="menu/product_list?CATE_CD=product_planner">스타벅스 플래너</a></li> --> <!-- 20210602 삭제 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/card_list">전체보기</a></li>
									<li><a href="menu/card_list?CATE_CD=product_offline">실물카드</a></li>
									<li><a href="menu/card_list?CATE_CD=product_egift">e-Gift 카드</a></li>
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
									<li><a href="store/store_map?disp=quick">빠른 검색</a></li>
									<li><a href="store/store_map?disp=locale">지역 검색</a></li>
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
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">RESPONSIBILITY<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="responsibility/index">한눈에 보기</a></li>
							<li><a href="responsibility/starbucks_shared_planet">사회공헌 캠페인 소개</a></li> <!-- 20210820 메뉴명 수정 -->
							<li>
								<a role="button" href="javascript:void(0);">지역 사회 참여 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="responsibility/hope_delivery">희망배달 캠페인</a></li>
									<li><a href="responsibility/talent_donation">재능기부 카페 소식</a></li>
									<li><a href="responsibility/community_store">커뮤니티 스토어</a></li>
									<li><a href="responsibility/youth_resource">청년 지원 프로그램</a></li><!-- 202107 메뉴명 수정 -->
									<li><a href="responsibility/our_agriculture">우리 농산물 사랑 캠페인</a></li>
									<li><a href="responsibility/our_culture_defend">우리 문화 지키기</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">환경보호 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="responsibility/environment">친환경 활동</a></li><!-- 202107 메뉴명 수정 -->
									<li><a href="responsibility/no_disposable_cup">일회용 컵 없는 매장</a></li>
									<li><a href="responsibility/bean_recycling">커피 원두 재활용</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">윤리 구매<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="responsibility/ethically_sourcing">윤리적 원두 구매</a></li>
									<li><a href="responsibility/fair_trade">공정무역 인증</a></li>
									<li><a href="responsibility/farmer_support">커피 농가 지원 활동</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">글로벌 사회 공헌<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="responsibility/sp_ethical_management">윤리경영 보고서</a></li>
									<li><a href="responsibility/starbucks_foundation">스타벅스 재단</a></li>
									<li><a href="responsibility/sp_global_month">지구촌 봉사의 달</a></li>
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
									<li><a href="community/faq?menu_cd=STB2703&cate=F05">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>
									<li><a href="msr/sceGift/msr_useguide">이용안내</a></li>
									<li><a href="msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="community/faq?menu_cd=STB2703&cate=F22">자주 하는 질문</a></li> <!-- 20210809 수정 -->
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
									<li><a href="whats_new/campaign_list?menu_cd=STB2812">스타벅스 카드</a></li>
									<li><a href="whats_new/campaign_list?menu_cd=STB2813">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="whats_new/campaign_list?menu_cd=STB2814">온라인</a></li>
									
									
										<li><a href="whats_new/eFreq_gift">e-프리퀀시 증정품</a></li> <!-- 20210423 메뉴명, 경로 수정 -->
									
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">뉴스<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="whats_new/news_list">전체</a></li>
									<li><a href="whats_new/news_list?cate=N01">상품 출시</a></li>
									<li><a href="whats_new/news_list?cate=N02">스타벅스와 문화</a></li>
									<li><a href="whats_new/news_list?cate=N03">스타벅스 사회공헌</a></li>
									<li><a href="whats_new/news_list?cate=N04">스타벅스 카드출시</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">매장별 이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="whats_new/store_event_list">일반 매장</a></li>
									<li><a href="whats_new/store_event_list?search_date=1&tab=1">신규 매장</a></li>
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
				<h1 class="logo"><a href="/starbucks" title="스타벅스 메인페이지" >스타벅스 코리아</a><!-- 접근성_20171106 title 추가 --></h1>
				<nav class="util_nav">
					
								
<ul>
	<li class="util_nav01 sign_out" style="display:none;"><a href="/starbucks/login/logout">Sign out</a></li>
	<li class="util_nav01 sign_in"><a href="/starbucks/login/login">Sign In</a></li>
	<li class="util_nav02"><a href="/starbucks/my/index">My Starbucks</a></li>
	<li class="util_nav03"><a href="/starbucks/menu/orderList">Order</a></li>
	<li class="util_nav04"><a href="/starbucks/store/store_map">Find a Store</a></li>
</ul>
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
			<!-- 내용 -->
			<div class="find_mem_wrap mem_wrap2"><!-- jsp 수정 : 클래스명 추가 -->
					<!-- 20160804 수정 -->
					<div class="find_mem_inner">
						
						<form action="memberProc" id="frmJoin" method="post">
						<!-- <form id="frmJoin" action="#" class="memjoin_input_frm" method="post"> -->
							<!-- <input type="hidden" name="native_yn" id="native_yn" value="Y" />
							<input type="hidden" name="join_flag" id="join_flag" value="3" />
							<input type="hidden" name="ipin_jumin" id="ipin_jumin" value="" />
							<input type="hidden" name="ipin_dup_key" id="ipin_dup_key" value="" />
							<input type="hidden" name="IS_APP" id="IS_APP" value="" /> -->
							<fieldset>
								<legend class="hid">회원가입 이용약관 동의, 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간 및 파기절차, 파기 방법에 관한 폼</legend>
								
									<strong class="find_mem_ttl">회원가입</strong>
								
								<section class="renew_joinform_v2">
									<!-- 접근성_20171120 수정 -->
					                <div class="find_mem_sally">
					                  <!-- <img src="https://image.istarbucks.co.kr/common/img/util/mem/icon_find_sally.png" alt=""> -->
					                </div>
					                <!-- 접근성_20171120 수정 end -->
									 <p class="find_form_txt">회원정보를 입력해 주세요.</p>
									<div class="renew_input_box id_chk">
										<label for="user_id" class="hid">아이디</label><input type="text" name="id" id="user_id" placeholder="아이디" maxlength="13" required="required"/> <!-- 접근성_20171120 수정: label  추가 -->
										<!-- <a class="id_chk" href="javascript:void(0);">중복확인</a> -->
										<p class="limit_txt id_chk_txt" id="id_chk_txt">영문(대소문자 구분 없음), 숫자로 4~13자리만 입력 가능합니다.</p><!-- 접근성_20171120 id 값 추가 -->
									</div>
									<div class="renew_input_box pw_chk">
										<label for="user_pwd" class="hid">비밀번호</label> <input id="user_pwd" name="pw" type="password" maxlength="20" placeholder="비밀번호" autocomplete="off" required="required" /> <!-- 접근성_20171120 수정: label  추가 -->
										<p class="limit_txt user_pwd_txt" id="user_pwd_txt"><!-- 영문, 숫자 혼합하여 10~20자리 이내로 입력하세요. --></p><!-- 접근성_20171120 id 값 추가 -->
									</div>
									<div class="renew_input_box pw_chk bd_none">
										<label for="user_pwd_chk" class="hid">비밀번호확인</label> <input type="password" id="user_pwd_chk" name="confirmPw" placeholder="비밀번호 확인" maxlength="20" autocomplete="off" required="required"/><!-- 접근성_20171120 수정: label  추가 -->
										<p class="limit_txt user_pwd_chk_txt" id="user_pwd_chk_txt">입력하신 패스워드를 다시 한 번 입력해주세요.</p><!-- 접근성_20171120 id 값 추가 -->
									</div>
								</section>
								<!-- 예은 수정 -->
								<section class="renew_joinform_v2">
									<div class="renew_input_box name_chk">
										<strong>이름<span class="type_green">(필수)</span></strong>  <!-- 20200826 수정 -->
										<label for="user_name" class="hid">이름</label><input type="text" name="name" id="user_nm" placeholder="이름" maxlength="6" required="required"/> <!-- 접근성_20171120 수정: label  추가 -->
										<p class="limit_txt name_chk_txt" id="name_chk_txt">
											<input type="hidden" id="nm_use" name="nm_use" required="required"/>
											<div class="user_gender">
													<input type="radio" name="gender" value="M" checked>&nbsp;남&nbsp;&nbsp;
													<input type="radio" name="gender" value="F" >&nbsp;여
													<input type="hidden" id="gender" name="gender"  />
											</div>
											<p class="limit_txt input_warn_text user_nm_txt" id="user_nm_txt"></p><!-- 접근성_20171120 id 값 추가 -->
											
									</div>
								
									
							<!-- 		<div class="renew_input_box gender_chk">
										<strong>이름<span class="type_green">(필수)</span></strong>  20200826 수정
										<p class="limit_txt name_chk_txt" id="name_chk_txt">
											<input type="text" name="user_nm txt" id="user_nm txt" placeholder="이름" maxlength="6" />
											<input type="hidden" id="user_nm" name="user_nm" required="required" />접근성_20171120 required 추가
												<div class="user_gender">
													<input type="radio" name="gender chk" id="male">&nbsp;남&nbsp;&nbsp;
													<input type="radio" name="gender chk" id="female">&nbsp;여
													<input type="hidden" id="gender" name="gender"  />
												</div>
										</p>
										
									</div> -->
									<div class="renew_input_box birth_chk">
										<strong>생년월일<span class="type_green">(필수)</span></strong>  <!-- 20200826 수정 -->
										<div class="select_birth_box">
											<div class="birth_select year">
												<label for="birth_year" class="a11y">년도</label>
						                      	<select id="birth_year" name="birth_year" required="required"><!-- 접근성_20171120 required 추가 -->
						                      	</select>
											</div>
											<div class="birth_select month">
												<label for="birth_month" class="a11y">월</label>
							                    <select id="birth_month" name="birth_month" required="required"><!-- 접근성_20171120 required 추가 -->
							                    </select>
											</div>
											<div class="birth_select day">
												<label for="birth_day" class="a11y">일</label>
						                      	<select id="birth_day" name="birth_day" required="required"><!-- 접근성_20171120 required 추가 -->
						                      	</select>
											</div>
<!-- 											<div class="birth_select yny">
												<label for="birth_flag" class="a11y">음력/양력</label>
							                    <select id="birth_flag" name="birth_flag">
							                    	<option selected="selected" value="1">양</option>
							                        <option value="2">음</option>
							                    </select>
											</div> -->
										</div>
										<p class="limit_txt input_warn_text birth_txt" id="birth_txt"></p><!-- 접근성_20171120 id 값 추가 -->
										<p class="select_birth_txt">
											회원 가입 완료 후 스타벅스 카드를 등록하시면 생일 무료음료 쿠폰이 발행됩니다.
										</p>
									</div>
									<div class="renew_input_box phone_chk">
										<strong>휴대폰<span class="type_green">(필수)</span> <!-- 20200826 수정 -->
										<a href="#;" class="icon_mark_point" role="button" ><span class="a11y">안내문 보기</span></a> <!--  접근성_20171120 수정 i  태그를  a 태그로 변경 -->
										</strong>
										<!-- 툴팁 -->
										<div class="info_btn_inner">
											<div class="info_btn_box" role="dialog" aria-labelledby="info_box_phone" aria-describedby="info_box_phone_desc"><!-- 접근성_20171120 role, aria 추가 -->
												<p class="btn_close"><a href="javascript:void(0);" role="button"><img src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기" ></a></p><!-- 접근성_20171120 role 추가 -->
												<dl>
													<dt id="info_box_phone">휴대폰 번호 입력 안내</dt><!-- 접근성_20171120 id 추가 -->
													<dd id="info_box_phone_desc">이벤트 및 주문정보가 담긴 <span class="en">SMS/MMS</span>를 수신하세요.</dd><!-- 접근성_20171120 id 추가 -->
													<!-- 150706 DOM 수정 - 텍스트 수정 -->
													<dd>주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계없이 발송됩니다.</dd>
													<!-- 150706 DOM 수정 - 텍스트 수정 end -->
													<!-- <dd> 비밀번호 분실 시 <span class="en">E-mail</span>과 휴대폰을 통해 임시 비밀번호가 발송되니 정확히 입력해주세요.</dd> -->
												</dl>
												<p class="btn_close02"><a href="javascript:void(0);" role="button">닫기</a></p><!-- 접근성_20171120 role 추가 -->
											</div>
										</div>
										<!-- // 툴팁 -->
										<!-- <div class="choice_cont_phone"> -->
										<p class="nofix_num">${pnum }</p>
										<label class="a11y" for="phone">휴대폰번호<span class="type_green">(필수)</span></label> <!-- 20200826 수정 -->
										<input type="hidden" name="phone" id="phone" maxlength="13" value="${pnum }"/>
										<p class="limit_txt phone_txt" id="phone_txt"></p><!-- 접근성_20171120 id 값 추가 -->
										<!-- </div>  -->
										<!-- 20180726 영역삭제 -->
										<div class="choice_agreement border "> <!-- 20170626  class add : border -->
											<div class="choice_agreement_txt"><!--  20170626  p 태그 에서 div 태그 로 변경-->
												<span class="agree-check2"><!-- 접근성_20171120 수정 -->
													<input type="checkbox" name="event_sms" id="agreement1" value="Y" class="mem2" onclick="eventCheck('sms')"/>
													<label for="agreement1">SMS를 통한 이벤트 및 신규 매장 정보 수신에 동의합니다.[선택]</label>
													<!-- <input type="hidden" name="event_sms" id="agreement2" />  -->
												</span>
											</div>
										</div>
										<!-- //20180726 영역삭제 -->
									</div>
									<div class="renew_input_box mail_chk">
										<strong>메일<span class="type_green">(필수)</span><a href="#;" class="icon_mark_point" role="button"><span class="a11y">이메일 입력안내 레이어 열기</span></a><!--  접근성_20171120 수정 i  태그를  a 태그로 변경 --></strong>  <!-- 20200826 수정 --> 
										<!-- 툴팁 -->
										<div class="info_btn_inner">
											<div class="info_btn_box" role="dialog" aria-labelledby="info_box_email" aria-describedby="info_box_email_desc"><!-- 접근성_20171120 role, aria 추가 -->	
												<p class="btn_close"><a href="javascript:void(0);" role="button"><img src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기" ></a></p><!-- 접근성_20171120 role 추가 -->
												<dl>
													<dt id="info_box_email"><span class="en">E-Mail</span> 입력 안내</dt><!-- 접근성_20171120 id 추가 -->
													<dd id="info_box_email_desc">스타벅스 코리아의 새로운 서비스, 신상품이나 이벤트 정보 등 최신 정보를 <span class="en">E-mail</span>로 미리 받아 보실 수 있습니다.</dd><!-- 220112 수정 -->
													<dd>스타벅스 리워드 회원은 쿠폰과 혜택에 대한 내용이 <span class="en">E-mail</span>을 통해 받아 보실 수 있습니다.</dd> <!-- 스타벅스 리워드 수정 -->
													<dd>주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계없이 발송됩니다.</dd>
													<!-- <dd> 비밀번호 분실 시 <span class="en">E-mail</span>과 휴대폰을 통해 임시 비밀번호가 발송되니 정확히 입력해주세요.</dd> -->
												</dl>
												<p class="btn_close02"><a href="javascript:void(0);" role="button">닫기</a></p><!-- 접근성_20171120 role 추가 -->															
											</div>
										</div>
										<!-- // 툴팁 -->
										<div class="choice_cont_mail">
											<label for="email" class="hid">e-mail</label> <!-- 접근성_20171120 수정 -->
											<input type="text" name="email" id="email" placeholder="E-mail을 입력하세요." required="required" /><!-- 접근성_20171120 required 추가 -->
											<p class="limit_txt mail_txt" id="mail_txt"></p><!-- 접근성_20171120 id 값 추가 -->
										</div>
										<!-- 20180726 영역삭제 -->
										<div class="choice_agreement border"> <!-- 20170626  class add : border -->
											<div class="choice_agreement_txt"> <!--  20170626  p 태그 에서 div 태그 로 변경-->
												<!-- 접근성_20171120 추가 -->
												<span class="agree-check2">
													<input type="checkbox"  name="event_e" id="agreement3" value="Y" class="mem2" onclick="eventCheck('email')" />
													<label for="agreement3">이메일을 통한 이벤트 및 신규 매장 정보 수신에 동의합니다.[선택]</label>
													<!-- <input type="hidden" name="event_e" id="agreement4" /> -->
												</span>
												<!-- 접근성_20171120 추가 끝 -->
											</div>
										</div>
										<!-- //20180726 영역삭제 -->
									</div>
									
							<!-- 20180726 영역삭제 -->
							<!-- <div class="renew_input_box bd_none">
								<strong>주소(선택) <a href="#;" class="icon_mark_point" role="button"><span class="a11y">주소입력 안내 레이어 열기</span></a></strong>
								<div class="info_btn_inner">
									<div class="info_btn_box" role="dialog" aria-labelledby="info_box_address" aria-describedby="info_box_address_desc">
										<p class="btn_close"><a href="javascript:void(0);" role="button"><img src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기" ></a></p>
										<dl>
											<dt id="info_box_address">주소 입력 안내</dt>
											<dd id="info_box_address_desc">등록하신 주소 근처 스타벅스 매장에서 진행하는 이벤트 소식과 신규 오픈 매장 소식을 알려드립니다.</dd>
											<dd>2014년부터 도로명 새주소가 전면 시행되어 주소등록 및 변경 시 도로명 주소를 사용하게 됩니다.</dd>
										</dl>
										<p class="btn_close02"><a href="javascript:void(0);" title="주소선택 설명 레이어 닫기" role="button">닫기</a></p>	
									</div>
								</div>
								
								<div class="mem_address_wrap">
									<div class="choice_agreement adress mb10">
										<div class="agreement1">
											<span class="radioBtn">
												<input type="radio" id="addr1" name="addr" value="1" checked="checked" class="img" /><label for="addr1">집</label>
											</span>
										</div>
										<div class="agreement2">
											<span  class="radioBtn">
												<input type="radio" id="addr2" name="addr" value="2" class="img" />
												<label for="addr2">직장</label>
											</span>
										</div>
									</div>
									<div class="mem_address">
										<a class="btn_find_zip1" href="javascript:void(0);" title="팝업열기">주소입력</a>
									</div>
									
								</div>
								<div class="address_hidden addressInput"> 
									<input type="hidden" name="address1" id="address1" />
									<input type="hidden" name="zipcode_1" id="zipcode_1" />	
									<input type="hidden" name="zipcode_2" id="zipcode_2" />
									<label for="zipcode" class="a11y">주소</label>	
									<input class="mt10" type="text" id="zipcode" readonly="readonly" />	
									<label for="address2" class="a11y">상세주소</label>
									<input class="mt10" type="text" name="address2" id="address2" placeholder="상세 주소를 입력해 주세요." />
								</div>
								<p class="modify_txt">주소를 입력하시고 E-mail 수신 동의하신 분들에 한하여 신규 스타벅스 매장 소식을 이메일로 보내드립니다.</p>
							</div> -->
							<!-- //20180726 영역삭제 -->
								</section>
								
								<section class="renew_joinform_v2 bdt_no">
									<figure class="icon_mem_sally">
								<img src="https://image.istarbucks.co.kr/common/img/util/mem/icon_nick_sally.jpg" alt="닉네임 별부자 고객님, 주문하신 바닐라 라떼 나왔습니다!" /> <!-- 접근성_20171120   alt  문구 추가 -->
									</figure><!-- 20180726 이미지경로 확인용 수정, 개발적용x -->
									<p class="mem_nick_txt">
										주문하신 제품을 찾으실 때, <br />
										파트너가 등록하신 닉네임을 불러드립니다.
									</p>
									<div class="renew_input_box user_nick_nm_chk bd_none">
										<strong>닉네임(선택) <a href="#;" class="icon_mark_point" role="button"><span class="a11y">닉네임 관련 설명 레이어 열기</span></a></strong><!--  접근성_20171120 수정 i  태그를  a 태그로 변경 -->
										<!-- 툴팁 -->
										<div class="info_btn_inner">
											<div class="info_btn_box" role="dialog" aria-labelledby="info_box_nick" aria-describedby="info_box_nick_desc"><!-- 접근성_20171120 role, aria 추가 -->
												<p class="btn_close"><a href="javascript:void(0);" role="button"><img src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기" ></a></p><!-- 접근성_20171120 role 추가 -->
												<dl>
													<dt id="info_box_nick">닉네임이란?</dt><!-- 접근성_20171120 id 추가 -->
													<dd id="info_box_nick_desc">스타벅스 리워드 회원이 매장에서 스타벅스 카드로 결제 후, 주문하신 제품 / 상품을 찾으실 때 불러드리는 고유한 이름입니다.</dd><!-- 접근성_20171120 id 추가 --> <!-- 스타벅스 리워드 수정 -->
												</dl>
												<p class="t1">[이용방법]</p>
												<ol>
													<li>1. 닉네임 등록</li>
													<li>2. 스타벅스 카드를 등록하여 "스타벅스 리워드" 회원 가입</li> <!-- 스타벅스 리워드 수정 -->
													<li>3. 매장 방문 후 제품/상품 주문</li>
												</ol>
												<p class="t2">주문하신 제품/상품을 찾으실 때, 파트너가 등록하신 닉네임을 불러 드립니다.</p>
													<p class="img"><img src="//image.istarbucks.co.kr/common/img/util/myinfo/nick_bn.jpg" alt="홍길동 고객님, 주문하신 바닐라 라떼 나왔습니다." /></p>
													<dl>
													<dt>[닉네임 등록 안내]</dt>
													<!-- 150706 DOM 수정 - 텍스트 수정 -->
													<dd>명사로 이루어진 한글 6자리 이내로 등록해 주세요.<br>(형용사 및 동사는 입력이 안되거나 불러드릴 수 없음을 양해 바랍니다.)</dd>
													<!-- 150706 DOM 수정 - 텍스트 수정 end -->
													<dd>미풍양속 및 사회 통념에 어긋나는 욕설, 비속어나 회사의 정책 상 부적절한 단어의 경우<br>닉네임 등록이 제한되거나 관리자에 의해 삭제될 수 있으며, 등록이 되더라도<br>파트너가 불러드리지 못할 수 있습니다.
													<p class="t3">표시가 포함된 닉네임은 불러드리기 곤란한 닉네임이므로 변경해 주시기 바랍니다. </p>
													<p class="t4">(영수증 상에도 " &nbsp;&nbsp;&nbsp; "표시가 되오니 양해 바랍니다.)</p>
													</dd>
													<dd>매장에서 공개적으로 불러드리는 명칭이오니, 신중하게 선택하여 주시기 바랍니다.</dd>
													<dd>스타벅스 리워드 회원이 스타벅스 카드로 결제하실 경우에만 활용됩니다.</dd> <!-- 스타벅스 리워드 수정 -->
													<dd>등록하신 닉네임은 영수증에 출력됩니다.</dd>
													<!-- 150706 DOM 수정 - 텍스트 수정 및 br 태그 제거 -->
													<dd>등록하신 닉네임은 개인정보 확인 및 수정을 통해 언제든지 수정할 수 있으며 다른 사용자와 중복되어 사용 될 수 있습니다.</dd>
													<!-- 150706 DOM 수정 - 텍스트 수정 및 br 태그 제거 end -->
												</dl>
												<p class="btn_close02"><a href="javascript:void(0);" role="button" title="닉네임 설명 레이어 닫기">닫기</a></p><!-- 접근성_20171120  title  추가  -->
											</div>
										</div>
										<!-- //툴팁 -->
										<!-- 20180726 이용약관 영역추가 -->
										<!-- <section class="mem_agreement_wrap choice_agreement_wrap new_agr_choice">
											<h5>선택적 개인정보 수집동의 및 이용약관</h5>
											접근성_20171120 추가
											<span class="agree-check">
												<input type="checkbox" name="mem_choice" id="mem_choice_yes" class="mem" />
												<label for="mem_choice_yes">동의</label>
											</span>
											접근성_20171120 추가 end
											<div class="mem_purpose_area mem_purpose_area_v2">
												개인정보의 수집 및 이용목적 내용
												<div class="privacy_cont">
							                		<p class="nickname_text" id="nickname_text"></p>
												</div>
												개인정보의 수집 및 이용목적 내용 end
											</div>
										</section> -->
										<!-- //20180726 이용약관 영역추가 -->
										<label for="user_nick_nm" class="hid">닉네임</label> <input type="text" name="nickname" id="user_nick_nm" placeholder="닉네임 입력을 입력해주세요." maxlength="6" /><!-- 20180726 수정 -->
										<input type="hidden" id="nick_nm_use" name="nick_nm_use" value="N" />
										<p class="limit_txt input_warn_text user_nick_nm_txt" id="user_nick_nm_txt"></p><!-- 접근성_20171120 id 값 추가 -->
									</div>	
								</section>
								<p class="modify_txt2">
									<b>
									   ＊ 선택항목은 입력하지 않거나 동의하지 않아도 회원 가입이 가능합니다.
									   
									</b>
								</p>
								
								<p class="btn_mem_login">
									<input type="submit" value='가입하기' style="color:#fff;font-size:24px; display:block; line-height:65px; background: #006633; margin: auto; border-style: none; width: 530px; cursor:pointer;"/>
									
								</p>
							</fieldset>	
							
							<!-- jsp 추가 - 주소 찾기 팝업 20150625 -->
							
							<!-- jsp 추가 - 주소 찾기 팝업 20150625 end -->
						</form>
					</div>
				</div>
			<!-- 내용 end -->
		</div>
		
	<!-- 	<input type="hidden" name="sms_yn" value="N" id="agreement2" />
		<input type="hidden" name="mail_yn" value="N" id="agreement4" /> -->
		
		




		
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
						<li><a href="/">HOME</a></li>
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
						
			<script src='//image.istarbucks.co.kr/common/js/makePCookie.js'></script>
		
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

	// 예은 수신동의
	 function eventCheck(val){
		
		if(val == "sms"){
			var check = document.getElementById('agreement1').checked;
			if(check){
				document.getElementById('agreement1').value = 'Y';
			}else{
				document.getElementById('agreement1').value = 'N';
			}
		}else if(val == "email"){
				document.getElementById('agreement3').checked;
			
			if(check){
				document.getElementById('agreement3').value = 'Y';
			}else{
				document.getElementById('agreement3').value = 'N';
			}
		}
	} 
	
	$(document).ready(function () {
		var srmSeq = 0;
 	 	document.getElementById('agreement3').value = 'N';
		
		document.getElementById('agreement1').value = 'N'; 

		
	});
	
	//특수문자, 특정문자열(sql예약어의 앞뒤공백포함) 제거
	function checkSearchedWord(keyword){
		if(keyword.length >0){
			//특수문자 제거
			var expText = /[%=><]/ ;
			if(expText.test(keyword) == true){
				alert("특수문자를 입력할 수 없습니다.") ;
				keyword = keyword.split(expText).join(""); 
				return false;
			}
			
			//특정문자열(sql예약어의 앞뒤공백포함) 제거
			var sqlArray = new Array("OR", "SELECT", "INSERT", "DELETE", "UPDATE", "CREATE", "DROP", "EXEC", "UNION",  "FETCH", "DECLARE", "TRUNCATE");
			
			var regex;
			var regex_plus;
			
			for(var i=0; i<sqlArray.length; i++){
				regex = new RegExp("\\s" + sqlArray[i] + "\\s","gi") ;
				
				if ( regex.test(keyword) == true) {
				    alert("\"" + sqlArray[i]+"\"와(과) 같은 특정문자로 검색할 수 없습니다.");
				    keyword = keyword.replace(regex, "");
				    return false;
				}
				
				regex_plus = new RegExp( "\\+" + sqlArray[i] + "\\+","gi") ;
				if ( regex_plus.test(keyword) == true) {
				    alert("\"" + sqlArray[i]+"\"와(과) 같은 특정문자로 검색할 수 없습니다.");
				    keyword = keyword.replace(regex_plus, "");
					return false;
				}
			}
		}
		return true ;
	}

	function searchAddr(_nPage) {
		if (typeof(_nPage) != "number") {
			_nPage = 1;
		}
		
		var keyword  = $.trim( $("#adr_keyword").val() );
		if (keyword == "") {
			alert("검색어를 입력하세요.");
			return;
		}
		
		if (!checkSearchedWord(keyword)) {
			return;
		}
		
		var objParam = {
			 currentPage  : _nPage
			,countPerPage : 5
			,resultType   : "json"
			,keyword      : keyword
		};
		
		$.ajax({
			 url : "../common/addrLinkApi"
			,type:"post"
			,data:objParam
			,dataType:"json"
			,success:function(response){
				
				if ( response.result_code != 'SUCCESS' ) {
					if ( response.alert_msg != null && response.alert_msg.length > 0 ) {
						alert( response.alert_msg );
					} else {
						alert("검색 중 오류가 발생하였습니다.");
					}
					return;
				} 
				
				$("#tbody_adr_result")("");
				$(".adr_total_cnt").text("");
				$(".tbl_pager_inner .pager").empty();
				$(".have_result_with , .adr_cbox").show();

				var jsonStr = response.data;
				if (jsonStr != null) {
					var errCode = jsonStr.results.common.errorCode;
					var errDesc = jsonStr.results.common.errorMessage;
					
					if (errCode == "0"
							&& jsonStr.results.common.totalCount > 0) {
						//console.log(jsonStr);
						$(".adr_total_cnt").text("(" + jsonStr.results.common.totalCount.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + "건)");
						
						var arrJuso = jsonStr.results.juso;
						
						for (var i = 0; i < arrJuso.length; i++) {
							var row = arrJuso[i];
							
							var nStNo = (objParam.currentPage - 1) * objParam.countPerPage + 1;
							
							var html  = '<tr>';
								html += '	<td>' + (nStNo + i) + '</td>';
								html += '	<td class="t_lft"><a href="javascript:void(0);" class="btn_select_address" data-zipcode="' + row.zipNo + '" data-address="' + row.roadAddrPart1 + '" tabindex="1">' + row.roadAddrPart1 + '<br>[지번]' + row.jibunAddr + '</a></td>';
								html += '	<td>' + row.zipNo + '</td>';
								html += '</tr>';
								
							$("#tbody_adr_result").append(html);
						}
						
						//페이징
						$replyPage 		= objParam.currentPage;
						$mycTotalCount 	= jsonStr.results.common.totalCount;
						$mycPageSize 	= objParam.countPerPage;
						
						var isPageCnt =  parseInt( parseInt($mycTotalCount) / parseInt($mycPageSize) );
						var isPageMod =  parseInt( parseInt($mycTotalCount) % parseInt($mycPageSize) );
						var isPageMax =  ( isPageMod > 0 ) ? (isPageCnt + 1 ) : (isPageCnt);
						
						$(".tbl_pager_inner .pager").paging({
							current : $replyPage,
							max     : isPageMax,
							length  : 10,
							next	: '<a href="javascript:void(0)" tabindex="1"><img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/next.jpg"></a>',
							prev	: '<a href="javascript:void(0)" tabindex="1"><img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/prev.jpg"></a>',
							format	: '<a href="javascript:void(0)" tabindex="1">{0}</a>',
							first	: '<a href="javascript:void(0)" tabindex="1"><img alt="처음으로" src="//image.istarbucks.co.kr/common/img/util/ec/first.jpg"></a>',
							last	: '<a href="javascript:void(0)" tabindex="1"><img alt="끝으로" src="//image.istarbucks.co.kr/common/img/util/ec/last.jpg"></a>',
							onclick : function(e,page) {
								searchAddr(page);
							}
						});
					} else {
						$("#tbody_adr_result")('<tr><td colspan="3">검색결과가 없습니다.</td></tr>');
					}
				} else {
					$("#tbody_adr_result")('<tr><td colspan="3">검색결과가 없습니다.</td></tr>');
				}
			}
			,error: function(xhr,status, error){
				alert("검색 중 오류가 발생하였습니다.");
			}
		});
	}
</script>
		
		<script src="../common/js/jquery.numeric.min.js"></script>
		<script src="../common/js/common_jhp.js"></script>
		<!-- <script src="../common/js/search_address.js"></script> -->
		
		<script>
			var m_bIdUseOk = false;
			var m_strOkId  = "";
			//2019.05.10 [비밀번호 규칙 추가] 비밀번호 규칙 체크
			var check_pwd_rules = false;
			
			//닉네임 설정 제한 기능 추가
			var nickLimitedDtYn = "";	//닉네임 설정 제한 여부
			var nickLimitedMessage = "";	//닉네임 설정 제한 안내 문구
		
			$(document).ready(function(){
				$('#mem_agreeMent_yes').click(function(){
					if ($("#mem_agreeMent_yes").is(":checked")){
						$('#mem_purpose_yes').focus();
						$(window).scrollTop( $('#mem_purpose_yes').offset().top -300 );
					}
				});

				$('#mem_purpose_yes').click(function(){
					if ($("#mem_purpose_yes").is(":checked")){
						$(window).scrollTop( $('#mem_purpose_yes').offset().top + 100 );
					}
				});
				
				$('div.mem_agreement_area').mCustomScrollbar();
				$('div.mem_purpose_area').mCustomScrollbar();
				
				initBirth();
				initEmail();
				setEvents();
				//initClause();
				//initNickLimited();
				
				$('.renew_input_box .icon_mark_point').click(function(){
					$('.info_btn_inner').hide();
					$(this).parent().nextAll('.info_btn_inner').fadeIn();
				
				});
				
				$('.btn_close, .btn_close02').click(function(){
					$('.info_btn_inner').fadeOut();
				});
				
				/*예은체크*/
				//$('.user_gender a').click(function(){
				//	$('.user_gender a').removeClass('on');
				//	$(this).addClass('on');
				//});

				$('.btn_close a, .btn_close02 a').click(function () { // 접근성_20171120   수정
			        var $this = $(this).parents('.info_btn_inner');
			        $this.fadeOut();
					$this.prev().children('a').focus();
			    });

				// 20180809 오은규 수정
				// (아이핀 인증: 2, 모바일 인증: 3)
				// 핸드폰 인증일경우 핸드폰란 수정불가 / ipin 인증일경우 수정가능 처리
				if ($("#frmJoin").serializeObject().join_flag == "3") {	// 휴대폰 인증 인가?
					$("#phone").attr("readOnly", true);
				}else{
					$("#phone").attr("readOnly", false);
				}    
				/* $('.pw_chk input, .id_chk input, .birth_select select, .mail_chk input, .user_nick_nm_chk input, .phone_chk input').focus(function(){
					$(this).nextAll('.limit_txt').show();
					$(this).nextAll('.input_warn_text').show();
				});
				
				$('.pw_chk input, .id_chk input, .birth_select select, .mail_chk input, .user_nick_nm_chk input, .phone_chk input').blur(function(){
					if(!$(this).nextAll('.limit_txt').hasClass('input_warn_text')){
						$(this).nextAll('.limit_txt').hide();
					}
				}); */
				
				// $('.choice_agreement input[type=checkbox], .choice_agreement input[type=radio]').ezMark(); 접근성_20171120 삭제

				var sbox = $('.birth_select select, .cell_sel select, .mail_sel select');
				sbox.change(function(){
					var sbox_name = $(this).children('option:selected').text();
					$(this).siblings('label').text(sbox_name);
				});
			});
			

			// 20180813 오은규 2차 추가 약관정보 불러오기
	/* 		function initClause() {
				var objParam = {
						 "reqClientType" : "WEB"
						,"clause_type"   : "NICKNAME"
						,"clause_yn"   : "N"
					};

			 	__ajaxCall("interface/reqWebClauseData", objParam, true, "json", "post"
						, function (_response) {
						if (_response.resultCode == "0000") {
						    $("#nickname_text")(_response.data.contents);
						}else{
							alert(_response.resultMessage);
						}
					}
					, function (_error) {
					}
				); 
			} */
			
			/* var m_iPinRstInfo = {
				 birth      : "--"
				,phone      : 000-0000-0000
				,phone_flag : "STB1901"
				,init : function () {
					var arrBirth = this.birth.split("-");
					if (arrBirth.length == 3) {
						$("#birth_year").val(arrBirth[0]).trigger("change");
						$("#birth_month").val(arrBirth[1]).trigger("change");
						setTimeout(function () {
							$("#birth_day").val(arrBirth[2]).trigger("change");	
						}, 150);
					}
					var arrPhone = this.phone.split("-");
					if (arrPhone.length == 3) {
						$(".nofix_num").text(this.phone).prop("disabled", true);
					} else {
						$(".nofix_num").remove();
						$("#phone").attr("type","tel");
					}
					$("#phone").val(this.phone);
				}
			};
			
			$(document).ready(function () {
				m_iPinRstInfo.init();
				
			}); */
			
			function setEvents() {
				//$("input:text, input:password, input#phone, input#email").on("keyup", function () {
				$("input:text, input:password, input#phone, input#email").on("focus", function () {
					//$(this).removeClass("input_warn").addClass("green");
					if($(this).hasClass("input_warn") === false) {
						$(this).addClass("green");
					}
				}).on("keydown", function () {
					$(this).nextAll('.limit_txt').hide();
					$(this).nextAll('.input_warn_text').hide();
					$(this).attr({ "aria-describedby": "", "aria-invalid": "false" }); // 접근성_20171120 수정
				}).on("blur", function () {
					$(this).removeClass("green");
				});
				
				// 중복확인
				/* $("a.id_chk").on("click", checkUserId); */
				
				
				
				$("#user_id").on("keyup", function() {
					$(this).val( $(this).val().replace(/[^a-z0-9]/gi,'') );
				});
				// 아이디 입력 체크(원본)
				$("#user_id").on("blur", checkUserId);
				
			
				
				// 새 비밀번호 입력 체크
				$("#user_pwd").on("blur", function() {
					var strPwdNew = $(this).val();
					var isValid = m_regex_pwd1.test(strPwdNew);
					
					if(strPwdNew.length == 0) {
						$("#user_pwd_chk").removeClass("input_warn");
						$(".user_pwd_chk_txt").removeClass("input_warn_text").text("");
					}
					
					if (strPwdNew.length > 9) {
						isValid = m_regex_pwd2.test(strPwdNew);
					}
					
					if (isValid) {
						// 2019.05.10 [비밀번호 규칙 추가] 비밀번호 규칙 체크
						var objParam = {
							 "user_id"      : $("#user_id").val().trim()
							,"user_pwd"     : strPwdNew
							,"phone"        : $("#phone").val().trim()
							,"birth"		: $("#birth_year").val() + $("#birth_month").val() + $("#birth_day").val()
						};
						__ajaxCall("/starbucks/interface/getUserPwdCheck", objParam, true, "json", "post"
							, function (_response) {
							console.log(_response);
								if (_response.result_code == "SUCCESS") {
									$("#user_pwd").removeClass("input_warn");
									$(".user_pwd_txt").removeClass("input_warn_text").text("사용가능한 비밀번호 입니다.").show();
									check_pwd_rules = true;
									
									if(strPwdNew != $("#user_pwd_chk").val() && $("#user_pwd_chk").val().length > 0) {
										$("#user_pwd_chk").addClass("input_warn");
										$(".user_pwd_chk_txt").addClass("input_warn_text").text("일치하지 않습니다.").show();
									}
								} else {
									$("#user_pwd").addClass("input_warn");
									$(".user_pwd_txt").addClass("input_warn_text").text(_response.alert_msg).show();
									check_pwd_rules = false;
								}
							}
						);
					}else{
						$("#user_pwd").addClass("input_warn");
						$(".user_pwd_txt").addClass("input_warn_text").text("영문, 숫자 혼합하여 10~20자리 이내로 입력하세요.").show();
					}
				});
				
				// 새 비밀번호 확인 체크
				$("#user_pwd_chk").on("blur", function() {
					var strPwdNew    = $("#user_pwd").val();
					var strPwdNewChk = $(this).val();
					
					if(!$("#user_pwd").hasClass("input_warn")){
						if (strPwdNew == strPwdNewChk) {
							
							$("#user_pwd_chk").removeClass("input_warn");
							$(".user_pwd_chk_txt").removeClass("input_warn_text").text("일치합니다.").show();
						} else {
							$("#user_pwd_chk").addClass("input_warn");
							$(".user_pwd_chk_txt").addClass("input_warn_text").text("일치하지 않습니다.").show();
						}
					}
				});
				
				
				$("#user_nick_nm").on("keyup", function(){
					var ptrn =/^[ㄱ-ㅎ|가-힣]+$/gi;
					var value = $(this).val();
					
					if ( value != "")
					{
						var ptrnCheckBool = value.match( ptrn );	
						
						if ( ptrnCheckBool ==null )
						{
							var regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/gi;
							$(this).val(value.replace(regexp,''));
							return;
						}
					}
				});
				
				// 20180809 오은규 수정 2차 닉네임 약관 체크박스 선택또는 해제시
				/* $("#mem_choice_yes").on("change", function() {
					//placeholder
					var $chk = $('[name="mem_choice"]:checked');
	
					if ($chk.length == 0) {

						$("#user_nick_nm").removeClass("input_warn");
						$(".user_nick_nm_txt").removeClass("input_warn_text").text("").hide();
						
						$("#user_nick_nm").attr("placeholder", "닉네임 입력을 위해 약관에 동의해 주세요.").blur();
						$("#user_nick_nm").attr("disabled", false);
						$("#user_nick_nm").val("");	// 닉네임 입력내용 삭제
					}else{
						//닉네임 설정 제한 기능 기능 추가
						if(nickLimitedDtYn == 'Y'){
							alert(nickLimitedMessage);
							$("input:checkbox[name='mem_choice']").prop("checked", false);
							return;
						}
					
						$("#user_nick_nm").attr("placeholder", "한글 6자리 이내로 입력하세요.").blur();
						$("#user_nick_nm").attr("disabled", false);
						$("#user_nick_nm").focus();
					}
				}); */

				$("#user_nick_nm").on("blur change", function() {
					// 닉네임 체크
					var user_nick_nm = $("#user_nick_nm").val().trim();
					if (user_nick_nm == "") {
						$(".user_nick_nm_txt").text("").hide();
						
					} else {
						if (isValidNickname(user_nick_nm) == false) {
							$("#user_nick_nm").addClass("input_warn");
							$(".user_nick_nm_txt").addClass("input_warn_text").text("닉네임은 한글 6자리 이내로 입력해주세요.").show();
							return;
						} else {
							var strWrong = checkEucKr(user_nick_nm);
							if (strWrong != "") {
								$("#user_nick_nm").addClass("input_warn");
								$(".user_nick_nm_txt").addClass("input_warn_text").text("'" + strWrong + "'는(은) 사용할 수 없는 문자열 입니다.").show();
								return;
							}
							var objParam = {
								"user_nick_nm" : user_nick_nm,
								"penalty_check_yn" : "N"
							};
							
							___ajaxCall("/starbucks/interface/checkNicknameValid", objParam, true, "json", "post"
								, function (_response) {
									if (_response.result_code != "SUCCESS") {
										$("#user_nick_nm").addClass("input_warn");
										$(".user_nick_nm_txt").addClass("input_warn_text").text(_response.alert_msg).show();
										//$(".user_nick_nm_txt").addClass("input_warn_text").text("사용불가능한 닉네임입니다. 명사로 이루어진 한글 6자리 이내로 입력해주세요.").show();
										return;
									} else {
										$("#user_nick_nm").removeClass("input_warn");
										$(".user_nick_nm_txt").hide();
										//$(".user_nick_nm_txt").removeClass("input_warn_text").text("사용가능한 닉네임입니다.").show();
									} 
								}
							);			
						}
					}
					
				});
				
				// 예은 - 이름 체크
				
				$("#user_nm").on("keyup", function(){
				var ptrn =/^[ㄱ-ㅎ|가-힣]+$/gi;
				var value = $(this).val();
				
				if ( value != "")
				{
					var ptrnCheckBool = value.match( ptrn );	
					
					if ( ptrnCheckBool ==null )
					{
						var regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/gi;
						$(this).val(value.replace(regexp,''));
						return;
					}
				}
			});
				
				$("#user_nm").on("blur change", function() {
					// 이름 체크
					var user_name = $("#user_nm").val().trim();
					if (user_name == "") {
						$(".user_nm_txt").text("").hide();
						
					} else {
						if (isValidName(user_name) == false) {
							$("#user_nm").addClass("input_warn");
							$(".user_nm_txt").addClass("input_warn_text").text("이름은 한글 6자리 이내로 입력해주세요.").show();
							return;
						} else {
							var strWrong = checkEucKr(user_name);
							if (strWrong != "") {
								$("#user_nm").addClass("input_warn");
								$(".user_nm_txt").addClass("input_warn_text").text("'" + strWrong + "'는(은) 사용할 수 없는 문자열 입니다.").show();
								return;
							}
							var objParam = {
								"user_nm" : user_nm
							};
							
					___ajaxCall("/interface/checkNameValid", objParam, true, "json", "post"
								, function (_response) {
									if (_response.result_code != "SUCCESS") {
										$("#user_nm").addClass("input_warn");
										$(".user_nm_txt").addClass("input_warn_text").text(_response.alert_msg).show();
										$(".user_nm_txt").addClass("input_warn_text").text("사용불가능한 이름입니다. 명사로 이루어진 한글 6자리 이내로 입력해주세요.").show();
										return;
									} else {
										$("#user_nm").removeClass("input_warn");
										$(".user_nm_txt").hide();
										$(".user_nm_txt").removeClass("input_warn_text").text("사용가능한 이름입니다.").show();
									} 
								}
							);	
						}
					}
					
				});
				
				
				$("#phone").on("blur", function() {
					var msg1 = checkValid2("#phone", "HP"); // 휴대폰 유효성 체크
					if (msg1 != "") {
						$("#phone").addClass("input_warn");
						$(".phone_txt").addClass("input_warn_text").text(msg1).show();
						return;
					} else {
						$("#phone").removeClass("input_warn");
						$(".phone_txt").removeClass("input_warn_text").text("").hide();
					}
				});
				
				$("#email").on("blur", function() {
					var msg1 = checkValid2("#email", "EMAIL"); // 이메일 유효성 체크
					if (msg1 != "") {
						$("#email").addClass("input_warn");
						$(".mail_txt").addClass("input_warn_text").text(msg1).show();
						return;
					} else {
						$("#email").removeClass("input_warn");
						$(".mail_txt").removeClass("input_warn_text").text("").hide();
					}
				});
				
				$("p.btn_mem_login > a").on("click", joinMember);
			}

			// 예은- 중복확인
			function checkUserId() {
				
				var msg = checkValid2("#user_id", "ID");	// 아이디 체크
				var user_id = $("#user_id").val().trim();
				
				if (msg != "") {
					$("#user_id").addClass("input_warn");
					$(".id_chk_txt").addClass("input_warn_text").text(msg).show();
					return;
				}
				
				var objParam = {
					"user_id" : user_id
				}
				
				
			
				__ajaxCall("isExistId", objParam, true, "json", "post"
					, function (_response) {
						console.log(_response);
						if (_response.alert_msg != "") {
							$(".id_chk_txt").addClass("input_warn_text").text(_response.alert_msg).show();
						}
						
						if (_response.result_code == "SUCCESS") {
							
							//console.log(_response.result_code);
							$("#user_id").removeClass("input_warn");
							$(".id_chk_txt").removeClass("input_warn_text").text("사용가능한 아이디 입니다.").show();
							m_bIdUseOk = true;
							m_strOkId  = user_id;
							
							
						} else {
							$("#user_id").addClass("input_warn");
							$(".id_chk_txt").show();
							m_bIdUseOk = false;
							m_strOkId  = "";
						
						}
					}
					, function (_error) {
					}
				);
			}


			// 회원가입
			function joinMember() {
				//2019.05.10 [비밀번호 규칙 추가] 비밀번호 규칙 체크
				if(!check_pwd_rules){
					$("#user_pwd").addClass("input_warn").focus().attr({ "aria-describedby": "user_pwd_txt", "aria-invalid": "true" });
					return;
				}
				
				var msg = checkValid2("#user_id", "ID"); // 아이디 체크
				if (msg != "") {
					$("#user_id").addClass("input_warn").focus().attr({ "aria-describedby": "id_chk_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".id_chk_txt").addClass("input_warn_text").text(msg).show();
					return;
				}
				
				if (m_bIdUseOk == false || m_strOkId != $("#user_id").val()) { // 아이디 중복체크
					$("#user_id").addClass("input_warn").focus().attr({ "aria-describedby": "id_chk_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".id_chk_txt").addClass("input_warn_text").text("아이디 중복확인을 해주세요.").show();
					return;
				}
				
				msg = checkValid2("#user_pwd", "PASSWORD"); // 새 비밀번호 체크
				if (msg != "") {
					$("#user_pwd").addClass("input_warn").focus().attr({ "aria-describedby": "user_pwd_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".user_pwd_txt").addClass('input_warn_text').text(msg).show();
					return;
				}
				
				msg = checkValid2("#user_pwd_chk", "PASSWORD"); // 새 비밀번호 확인 체크
				if (msg != "") {
					$("#user_pwd_chk").addClass("input_warn").focus().attr({ "aria-describedby": "user_pwd_chk_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".user_pwd_chk_txt").addClass('input_warn_text').text(msg).show();
					return;
				}
				
				if ($("#user_pwd").val() != $("#user_pwd_chk").val()) { // 새 비밀번호 일치여부
					$("#user_pwd_chk").addClass("input_warn").focus().attr({ "aria-describedby": "user_pwd_chk_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".user_pwd_chk_txt").addClass('input_warn_text').text("일치하지 않습니다.").show();
					return;
				}	
				
				
			
				
						
				msg = checkValid2("#birth_year, #birth_month, #birth_day", "BIRTH"); // 생년월일 일치여부
				if (msg != "") {
					$("#birth_year").focus().attr({ "aria-describedby": "birth_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".birth_txt").addClass('input_warn_text').text(msg).show();
					return;
				} else {
					$(".birth_txt").text("");
				}	
				
				msg = checkValid2("#phone", "HP"); // 휴대폰 유효성 체크
				if (msg != "") {
					$("#phone").addClass("input_warn").focus().attr({ "aria-describedby": "phone_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".phone_txt").addClass('input_warn_text').text(msg).show();
					return;
				} else {
					$(".phone_txt").text("");
				}

				var user_nick_nm = $("#user_nick_nm").val().trim(); // 닉네임 체크
				
				// 닉네임 약관에 동의상태일경우 조건 체크
				var $chk = $('[name="mem_choice"]:checked');
				if ($chk.length > 0) {
					msg = checkValid2("#user_nick_nm", "NICKNAME"); // 닉네임 유효성 체크 $("#user_nick_nm").val()
					if (msg != "") {
						$("#user_nick_nm").addClass("input_warn").focus().attr({ "aria-describedby": "user_nick_nm_txt", "aria-invalid": "true" });
						$(".user_nick_nm_txt").addClass('input_warn_text').text(msg).show();
						return;
					} else {
						$(".user_nick_nm_txt").text("");
					}

					if (isValidNickname(user_nick_nm) == false) {
						$("#user_nick_nm").addClass("input_warn").focus().attr({ "aria-describedby": "user_nick_nm_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
						$(".user_nick_nm_txt").addClass('input_warn_text').text("닉네임은 한글 6자리 이내로 입력해주세요.").show();
						return;
					} else {
						var strWrong = checkEucKr(user_nick_nm);
						if (strWrong != "") {
							$("#user_nick_nm").addClass("input_warn").focus().attr({ "aria-describedby": "user_nick_nm_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
							$(".user_nick_nm_txt").addClass('input_warn_text').text("'" + strWrong + "'는(은) 사용할 수 없는 문자열 입니다.").show();
							return;
						}
					}
				}else{
					$(".user_nick_nm_txt").text("");
				}
				
/* 				//예은
				var msg = checkValid2("#user_nm", "NAME")
				var user_name = $("#user_nm").val().trim(); // 닉네임 체크
			
					if (msg != "") {
						$("#user_nm").addClass("input_warn").focus().attr({ "aria-describedby": "user_nm_txt", "aria-invalid": "true" });
						$(".user_nm_txt").addClass('input_warn_text').text(msg).show();
						return;
					} else {
						$(".user_nm_txt").text("");
					}

					if (isValidName(user_name) == false) {
						$("#user_nm").addClass("input_warn").focus().attr({ "aria-describedby": "user_nm_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
						$(".user_nm_txt").addClass('input_warn_text').text("이름은 한글 6자리 이내로 입력해주세요.").show();
						return;
					} else {
						var strWrong = checkEucKr(user_name);
						if (strWrong != "") {
							$("#user_nm").addClass("input_warn").focus().attr({ "aria-describedby": "user_nm_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
							$(".user_nm_txt").addClass('input_warn_text').text("'" + strWrong + "'는(은) 사용할 수 없는 문자열 입니다.").show();
							return;
						}
					}
				}else{
					$(".user_nm_txt").text("");
				}  */
				 
				
				
				

				msg = checkValid2("#email", "EMAIL"); // 이메일 유효성 체크
				if (msg != "") {
					$("#email").addClass("input_warn").focus().attr({ "aria-describedby": "mail_txt", "aria-invalid": "true" }); // 접근성_20171120 수정
					$(".mail_txt").addClass('input_warn_text').text(msg).show();
					return;
				} else {
					$(".mail_txt").text("");
				}
				
				if ($("#user_nick_nm").val().trim().length > 0) {
					$('[name="nick_nm_use"]').val("Y");
				} else {
					$('[name="nick_nm_use"]').val("N");
				}
				var phone = phoneNumAddHyphen($("#phone").val());
				var email = $("#email").val().trim();
				if (confirm("입력하신 정보를 다시 한번 확인해주세요.\n\n＊휴대폰 번호 : "+ phone +"\n＊이메일 : "+ email)) {
					$("p.btn_mem_login > a").hide();
					
					var objParam  = $("#frmJoin").serializeObject();
						objParam.birth     = $("#birth_year").val() + "-" + $("#birth_month").val() + "-" + $("#birth_day").val();
						objParam.phone     = phone;
						objParam.email     = email;
						//objParam.zipcode   = $("#zipcode_1").val() + $("#zipcode_2").val();
						//objParam.addr_sido = $("#address1").val().split(" ")[0];
						objParam.user_pwd_new = $("#user_pwd").val();

					// 2018.08.09 오은규 2차 sms, mail 수신여부 수동셋팅
					var memAdv = sessionStorage.getItem('MEM_ADV');
					if (memAdv == "Y" ) {
						$('#agreement2').val('Y');
						$('#agreement4').val('Y');
						objParam.sms_yn     = 'Y';
						objParam.mail_yn    = 'Y';
					} else {
						$('#agreement2').val('N');
						$('#agreement4').val('N');
						objParam.sms_yn     = 'N';
						objParam.mail_yn    = 'N';
					}
					//[161130] 유입 경로 추가
					objParam.reg_channel = "1";	// 회원가입(PC WEB)
					if (navigator.userAgent.match(/Android/)) {
						if ($("#IS_APP").val() == "Y") {
							objParam.reg_channel = "4";	// 회원가입(Android APP)
						} else {
							objParam.reg_channel = "2";	// 회원가입(Android WEB)
						}	
					} else if (navigator.userAgent.match(/iPhone|iPad|iPod/)) {
						if ($("#IS_APP").val() == "Y") {
							objParam.reg_channel = "5";	//5:회원가입(iOS APP)
						} else {
							objParam.reg_channel = "3";	//3:회원가입(iOS WEB)
						}	
					}
					// $('[name="nick_nm_use"]').val("Y");
					
				    //clauseTypes = String.valueOf(_param.get("clause_type")).split(",");
				     //clauseYns = String.valueOf(_param.get("clause_yn")).split(",");
					objParam.clauseTypes = "WEB,PRIVATE,NICKNAME";
					
					objParam.clauseYns = "Y,Y," + $('[name="nick_nm_use"]').val();
					
				 	__ajaxCall("interface/joinMember", objParam, true, "json", "post"
						, function (_response) {
							if (_response.alert_msg != "") {
								$("p.btn_mem_login > a").show();
								
								alert(_response.alert_msg);
							}
							
							if (_response.result_code == "SUCCESS") {
								if (objParam.join_flag == "3") {	// 휴대폰 인증 인가?
									var objPhoneCertParam = {
										 userid       : objParam.user_id
										,before_phone : "NONE"
										,after_phone  : $("#phone").val()
										,channel      : m_formulaCode
									}
									
									___ajaxCall("interface/setPhoneCertLogForJoin", objPhoneCertParam, false, "json", "post"
										,function (_response) {
										}
									);
								}
								
								if ($("#IS_APP").val() == "Y") {
									location.href = "starbucks://joinMemberOK";
								}
							}

							if (_response.custom_code != "") {
								eval(_response.custom_code);
							}				
							if (_response.location_replace != "") {
								location.replace(_response.location_replace);
							}
							if (_response.location_href != "") {
								location.href = _response.location_href;
							}
						}
						, function (_error) {
						}
					); 
				}
			}

			/**
			 * 닉네임 체크
			 * @param _text
			 * @returns
			 */
			function isValidNickname(_text) {
				return /^[가-힣]{1,6}$/.test(_text);
			}
			
			// 예은 - 아이디 체크
			function isValidName(_text) {
				return /^[가-힣]{1,6}$/.test(_text);
			}
			
			
			function phoneNumAddHyphen(num){
				var phone = $.trim(num);
				if(phone.split("-")[0].length == 10) {
					phone =  phone.substr(0, 3) + "-" + phone.substr(3, 3) + "-" + phone.substr(6, 4);
				}
				if(phone.split("-")[0].length == 11) {
					phone =  phone.substr(0, 3) + "-" + phone.substr(3, 4) + "-" + phone.substr(7, 4);
				}
				return phone;
			}
			
			//닉네임 설정 제한 정보 조회
/* 			function initNickLimited() {
				__ajaxCall("/starbucks/interface/checkNicknameLimitedYn", '', true, "json", "post"
					, function (response) {
						if (response.result_code == "FAIL") {
							var jsonData = response.data;
							
							if(jsonData != null){
								nickLimitedDtYn = (jsonData.use_yn == null) ? '' : jsonData.use_yn;	//닉네임 설정 제한 여부
								nickLimitedMessage = (jsonData.ncknm_stng_rstrc_words_cntnt == null) ? '' : jsonData.ncknm_stng_rstrc_words_cntnt;	//닉네임 설정 제한 안내 문구
							}
						}else if(response.result_code == "ERROR"){
							alert(_response.resultMessage);
						}
					}
					, function (_error) {
					}
				); 
			} */
		</script>
	</div>
	
	
</body>
</html>