<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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

		<link href="../common/css/style_util.css?v=210610" rel="stylesheet">
		<link href="../common/css/style_util2.css?v=210609" rel="stylesheet">
	</head>
	<body>
		<!-- 자동 충전 해지사유 팝업 -->
		<div class="auto_cancel_reason_pop" style='display:none;'>
			<header class="auto_cancel_reason_ttl">자동 충전 해지사유<a href="javascript:void(0);">닫기</a></header>
			<section class="auto_cancel_reason_cont">
				<div class="auto_cancel_reason_inner">
					<p>5만원 이상 자동충전 해지 시, BOGO e-쿠폰 발급 혜택이 사라집니다.</p>
					<div class="options">
						<input id="reason1" name="canReasonCode" type="radio" value="1">
						<label for="reason1">미사용</label>
					</div>
					<div class="options">
						<input id="reason2" name="canReasonCode" type="radio" value="2">
						<label for="reason2">결제수단 변경</label>
					</div>
					<div class="options">
						<input id="reason3" name="canReasonCode" type="radio" value="9">
						<label for="reason3">기타</label>
					</div>
					<!-- 150904 수정 -->
					<textarea class="auto_text" placeholder="사유를 입력해 주세요." name="canReasonText" id="canReasonText" cols="37" rows="10" style="display:none;"></textarea>
					<p class="auto_info">5만원 이상 자동충전 해지 시, BOGO e-쿠폰 발급 혜택이 사라집니다.</p>
					<!-- 150904 수정 end -->
				</div>
				<div class="auto_cancel_reason_btns">
					<ul>
						<li class="auto_cancel_reason_btn1"><a href="javascript:void(0);">확인</a></li>
						<li class="auto_cancel_reason_btn2"><a href="javascript:void(0);">취소</a></li>
					</ul>
				</div>
				
				<input type="hidden" id="cardNickname" value="" />
				<input type="hidden" id="cardRegNumber" value="" />
			</section>
		</div>
		<!-- 자동 충전 해지사유 팝업 end -->
	
		<div class="pop_dimm" style='display:none;'></div>
		<div id="wrap" class="scrollNon"><!-- 20190220 class="scrollNon" 추가 -->
			
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
						<p class="msr_card_area" onclick="location.href = 'my/mycard_index';" style="cursor:pointer;"><img alt="" /></p>
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
							<p class="icon_add_card" onclick="location.href = 'my/mycard_info_input';"><img alt="카드등록 아이콘" src="//image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
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
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/sceGift/gift_step1" required="login">선물하기</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/ecoupon" required="login">등록하기</a></li>
									<li><a href="../menu/couponUse" required="login">보유 쿠폰 내역</a></li>
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
							<li><a href="dtpass" required="login">My DT Pass</a></li>
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
				<h1 class="logo"><a href="../" title="스타벅스 메인페이지" >스타벅스 코리아</a><!-- 접근성_20171106 title 추가 --></h1>
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
							<!-- 160609 텍스트 수정 -->
							<h4><img alt="카드 충전" src="//image.istarbucks.co.kr/common/img/util/cha_card_ttl.png"></h4>
							<!-- 160609 텍스트 수정 end -->
							<ul class="smap">
								<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="my/index">My Starbucks</a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="my/mycard_index">My 스타벅스 카드</a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<!-- 160609 텍스트 수정 -->
								<li><a href="my/mycard_charge">카드 충전</a></li>
								<!-- 160609 텍스트 수정 end -->
							</ul>
						</div>
					</div>
				</header>
				<!-- 서브 타이틀 end -->
				
				<input type="hidden" id="curCardRegNumber" value="" />
				<input type="hidden" id="curAutoReloadType" value="" />
				
				<!-- 내용 -->
				<div class="ms_cont_wrap">
					<div class="ms_cont">
						<!-- 카드 충전 -->
							<section class="card_charge_wrap">
								
								<article>
									<form name="frm_NORMAL" id="frm_NORMAL" action="#" method="post">
									
										<!-- 일반충전영역 - PLCC 배너 추가 202009 -->									
										<!-- PLCC 배너 삭제 20210607 
										<div class="plcc-banner_box normal_charge_plcc_banner">
										</div> -->
										
									<!-- <div class="paymentBannerArea" style="display:none;">
										일반충전영역 - [결제배너관리] 충전 배너 슬라이드 PC
										<div class="paymentSlideArea type1 pc" id="paymentSlideArea1">
											<div class="bxslide-main">
												<ul class="payment_slider s1 payment_slider_web">
												</ul>
												<div class="payment_slider_control_pager">
													<div class="payment_slider_controls s1"></div>
													<div class="payment_slider_pagers s1"></div>
												</div>
											</div>
											<div class="payslide_btn_wrap">
												<p class="prevBtn"><a href="javascript:void(0)">이전 버튼</a></p>
												<p class="nextBtn"><a href="javascript:void(0)">다음 버튼</a></p>
											</div>
										</div>
										
										일반충전영역 - [결제배너관리] 충전 배너 슬라이드 MOBILE
										<div class="paymentSlideArea type1 mobile" id="paymentSlideArea2">
											<div class="bxslide-main">
												<ul class="payment_slider m1 payment_slider_mobile">
												</ul>
												<div class="payment_slider_control_pager">
													<div class="payment_slider_controls m1"></div>
													<div class="payment_slider_pagers m1"></div>
												</div>
											</div>
											<div class="payslide_btn_wrap">
												<p class="prevBtn"><a href="javascript:void(0)">이전 버튼</a></p>
												<p class="nextBtn"><a href="javascript:void(0)">다음 버튼</a></p>
											</div>
										</div>
									</div> -->
									
										<!-- 웹테이블 -->
										<table class="regular_charge gift_info_tbl chargeWh" summary="충전 카드 선택, 충전 금액 선택, 결제 수단 선택, 온라인 충전 시 유의 사항"><!-- 20181101 class="chargeWh" 추가 -->
											<caption>충전 카드 선택, 충전 금액 선택, 결제 수단 선택, 온라인 충전 시 유의 사항에 대한 테이블</caption>
											
											<tr>
												<th scope="row">충전 카드 선택</th>
												<td>
													<div class="sel_wrap">
														<p class="user_sel_wrap">
															<label for="cardNumber_NORMAL" >충전 할 카드를 선택해주세요</label>
															<select id="cardNumber_NORMAL" name="cardName">
																<c:forEach var="cardDTO" items="${list }">
																	<option id="c_num" value="${cardDTO.c_num }">${cardDTO.c_name }</option>
																</c:forEach>
															</select>
															<br><br>
														</p>
														
													</div>
													<!-- <div class="user_card_wrap">
														<p>
															<strong class="en cardNumber"></strong><br /><br />
															최종 사용일 : <span class="balanceConfirmDate">2015-03-23 09:37</span><br />
															카드 등록일 : <span class="cardRegDate">2015-02-01 00:00</span>
														</p>
													</div> -->
													<div>
													<!-- 0614 header.js에서 cardNumber 검색하면 정보 불러오는 js 볼 수 있음 -->
													<!-- <strong class="en cardNumber"></strong><br /><br />
													카드 등록일 : <span class="cardRegDate"></span> -->
													</div>
												</td>
											</tr>
											<tr>
											<!-- 20180117 수정 -->
												<th scope="row">충전 금액 선택</th>
												<td>
												<!-- 20180117 수정 -->
												<%-- <div class="sel_wrap">
													<p class="charge_change">충전 후 총 카드 잔액 : <span class="en t_006633 afterChargeBalance" name="totPrice">${}</span>원</p>
												</div> --%>
													<ul class="charge_options">
							                          <li><label><input type="radio" value="100000" name="totPrice">10만원</label></li>
							                          <li><label><input type="radio" value="50000" name="totPrice">5만원</label></li>
							                          <li><label><input type="radio" value="30000" name="totPrice">3만원</label></li>
							                          <li><label><input type="radio" value="10000" name="totPrice">1만원</label></li>
							                        </ul>
												</td>
												<!-- <td>
													<div class="sel_wrap">
														<p class="user_sel_wrap">
															<label for="totPrice_NORMAL"></label>
															<select id="totPrice_NORMAL" name="totPrice">
															</select>
														</p>
														<p class="charge_change">충전 후 총 카드 잔액 : <span class="en t_006633 afterChargeBalance">0</span>원</p>
													</div>
                                                    <p class="charge_level_guide">스타벅스 카드 온라인 충전은 1만원 단위로 최대 55만원까지 가능하며, 충전 후 합계 잔액이 55만원을 초과할 수 없습니다. </p>
												</td> -->
											</tr>
											<tr>
												<th scope="row">결제 수단 선택</th>
												<td>
													<div class="sel_wrap">
														<p class="user_sel_wrap">
															<label for="gopaymethod_NORMAL">카카오페이</label>
															<select id="gopaymethod_NORMAL" name="gopaymethod">
																<option value="onlykakao" selected="selected">카카오페이</option>
																<!-- <option value="onlyhpp">휴대폰</option>
																<option value="onlydbank">실시간 계좌이체</option> -->
															</select>
														</p>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">온라인 충전 시<br>유의 사항</th>
												<td>
													<ol class="charge_warn">
														<li>
															1. 이용안내
															<ul>
																<li>
																	스타벅스 리워드 프로그램에 등록된 스타벅스 카드의 충전은 매장 충전 외에도 다음의 온라인 서비스를 통해<br>이용하실 수 있습니다. <!-- 스타벅스 리워드 수정  -->
																	<ul>
																		<li>PC 홈페이지 (www.starbucks.co.kr)</li>
																		<li>스타벅스 App (iOS 및 Android 버전 제공)</li> <!-- 스타벅스 리워드 수정  --> <!-- 20210216 수정 -->
																	</ul>
																</li>
																<li>
																	온라인 충전은 회원님의 편의를 위해 다음의 2가지 방법으로 제공됩니다.
																	<ul>
																		<li>일반 충전 : 필요시 마다 충전금액과 결제수단 등의 정보를 입력하여 즉시 충전</li>
																		<li>자동 충전 : 카드별로 자동충전방법, 충전금액, 결제수단 등을 미리 설정해두고 설정값에 따라 자동 충전(카드번호 등<br>결제수단 정보는 거래승인을 위해서 최초 신청시에만 입력을 받게되며 신청이 완료된 후 저장되지 않습니다.)</li>
																	</ul>
																</li>
																<li>온라인 접속 환경 및 충전 방법에 따라 충전시 결제 수단에 차이가 있을 수 있습니다.</li>
																<li>스타벅스 카드 충전 금액에 대한 현금 영수증은 충전 시에는 발행되지 않으며, 매장에서 실제로 구매결제 시 발행됩니다.</li>
																<li>카드 충전금액의 유효기간은 스타벅스 카드의 마지막 거래발생일로부터 5년 입니다.</li>
															</ul>
														</li>
														<li>
															2. 온라인 충전 취소
															<ul>
																<li>재충전 이후 거래 이력이 없는 경우, 충전일로부터 최대 7일 내 온라인에서 충전 취소가 가능합니다.</li><!-- 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 문구 수정 -->
																<li>휴대폰 충전 시, 충전취소 요청 일이 당월이 아닌 익월인 경우 익월 취소가 불가한 통신사의 정책에 따라 지정하신 계좌로 <br>환불됩니다. (ex 3/30 충전, 4/2 충전 취소요청 &rarr; 계좌환불)</li><!-- 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 문구 수정 -->
																<li>매장에서 충전한 거래는 온라인에서 취소하실 수 없습니다.</li>
															</ul>
														</li>
														<li>
															3. 온라인 충전 제한
															<ul>
																<li>미성년자(만 14세 미만)는 온라인 충전을 하실 수 없습니다.</li>
															</ul>
															<p class="fw_normal">※ 매장, 홈페이지, 모바일 애플리케이션 간 충전 가능한 결제수단의 차이가 있을 수 있습니다.</p> <!-- 20210216 추가 -->
														</li>
													</ol>
												</td>
											</tr>
										</table>
										<!-- 웹테이블 end -->
										<input type="text" style="display:none;" />
																		
									<!-- 160125 김민호 추가 -->
										<!-- <div class="ez-checkbox cahrge_page_ck">
											<input type="checkbox" name="sui_index" id="notice_ck02" t="COMMON" title="선택" value="1" class="ez-hide delegatecardynChk" > 
											<span class="charge_change">충전 후 대표카드 설정</span>
										</div> -->
									
									<!-- 160125 김민호 추가 end -->
									
									<!-- 카드 충전 경로 바꿔야함!!! -->
									<ul class="charge_tbl_btns">
										<li class="charge_tbl_btn1"><a href='javascript:void(0);' onclick="chargeMoney();" class="charge_normal">카드 충전</a></li>
										<li class="charge_tbl_btn2"><a href="javascript:history.back();">취소</a></li>
									</ul>
									</form>	
								</article>									
							
								
								
							</section>
						<!-- 카드 충전 end -->
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
		<li class="msRnb_btn"><a href="reward_tumbler" >개인컵 리워드 설정</a></li>
		<li class="msRnb_btn"><a href="dtpass" required="login">My DT Pass</a></li>
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
					<a class="c_00b050" href="footer/etc/privacy">개인정보처리방침</a>
					<a href="footer/etc/rules_vod" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="footer/etc/rules">홈페이지 이용약관</a>
					<a href="footer/etc/rules_loc" class="mbn">위치정보 이용약관</a>
					<a href="footer/etc/rules_msr" class="mbn">스타벅스 카드 이용약관</a>
					<a href="footer/etc/rules_non" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="footer/etc/rules_mdp">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="footer/etc/hotline" class="last">윤리경영 핫라인</a></span>
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
			
//	 					var sbox = $('.my_ms_select select');
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
                    	url : 'edt/edtCheckLogin',
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
                                     	url : 'interface/getMsrRewardSummary',
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
		
			
			<script src="../common/js/utilMSreward.js"></script>
			<script src="../common/js/jquery.ezmark.min.js"></script>
			<script>
				// [결제배너관리] 슬라이드 추가
				var paySlides = new Array();
				var isPaymentBannerLoad = false;
				var errorMsg = '처리에 실패하였습니다. 지속적으로 발생 시 고객센터에 문의해 주시기 바랍니다.';
				
				$(document).ready(function(){

					$('input[type=checkbox]').ezMark();

					$('#ckAll').click(function(){
						$('input:checkbox').prop('checked', this.checked).change();
					});

					var sbox = $('.user_sel_wrap select');
					sbox.change(function(){
						var sbox_name = $(this).children('option:selected').text();
						$(this).siblings('label').text(sbox_name);
					});

					/* 150603 - 문진욱 */

					var sbox2 = $('.reg_user_sel_wrap select');
					sbox2.change(function(){
						var sbox_name = $(this).children('option:selected').text();
						$(this).siblings('label').text(sbox_name);
					});

					/* 150603 - 문진욱 end */

					/*
					$('.ctype1').click(function(){
						$('.lowest_limit').show();
						$('.monthly_fixed').hide();
					});

					$('.ctype2').click(function(){
						$('.lowest_limit').hide();
						$('.monthly_fixed').show();
					});
					*/

					$('section.card_charge_wrap h5 a:not(.on)').parent().next().hide();
					$('section.card_charge_wrap h5 a').bind('click', function(){
						$('section.card_charge_wrap h5 a').removeClass('on');
						$(this).addClass('on');
						$('section.card_charge_wrap article').hide();
						$(this).parent().next().show();
						
						// [결제배너관리] 슬라이드 추가
						setReloadSlider();

						return false;
					});
					
					setPaymentBannerSlide();// [결제배너관리] 슬라이드 추가
					getPaymentBannerList($('#bannerTypePaymentCharge').val()); //[결제배너관리] 배너리스트 호출
					
				});
				
				function getPaymentBannerList(sabBannerType) { //[결제배너관리] 충전 배너 리스트 조회
					var option = {
							'bannerType': sabBannerType
					};
					
					__ajaxCall('banner/getPaymentBannerList', option, true, "JSON", "POST",
						function (data) {
							if (data.list.length > 0) {
								for (var i = 0; i < data.list.length; i++) {
									if (data.list[i].imgUrl != undefined && data.list[i].imgUrl != "" 
											&& data.list[i].subImgUrl != undefined && data.list[i].subImgUrl != ""
												&& data.list[i].schema != undefined && data.list[i].schema != "") {
										var isTarget = ""; 
										if(data.list[i].bnrNwndwYn != undefined && data.list[i].bnrNwndwYn == "Y") {
											isTarget = "_blank";
										}
										var bannerHtml = '<li><a href="'+data.list[i].schema+'" target="'+isTarget+'">';
											bannerHtml += '<img class="payment_banner_web" src="'+data.list[i].imgUrl+'"/></a></li>';
											
										var	bannerHtmlM = '<li><a href="'+data.list[i].schema+'" target="'+isTarget+'">';
											bannerHtmlM += '<img class="payment_banner_mobile" src="'+data.list[i].subImgUrl+'"/></a></li>';
										
										$(".payment_slider_web").append(bannerHtml); //[web]일반,자동충전 페이지에 노출
										$(".payment_slider_mobile").append(bannerHtmlM); //[mobile]일반,자동충전 페이지에 노출
										
										isPaymentBannerLoad = true;
									}
								}
								if(isPaymentBannerLoad) {
									$(".paymentBannerArea").show();
									setReloadSlider();
								}
							}
						}
					);
					
				}
				
				function setPaymentBannerSlide() { //[결제배너관리] 슬라이드 추가
					setBxSlider('paymentSlideArea1');
					setBxSlider('paymentSlideArea2');
					setBxSlider('paymentSlideArea3');
					setBxSlider('paymentSlideArea4');
					
					// resize sldier reload
					$(window).on("resize", function () {
						setReloadSlider();
					});
				}
				function setReloadSlider() {
					if(isPaymentBannerLoad){
						$.each(paySlides, function (index) { 
							paySlides[index].reloadSlider();
						});
					}
				}
				function setBxSlider(elementId) {
					var $selector = $('#'+elementId);
					var slider = $selector.find('ul.payment_slider').bxSlider({
						pause: 5000,
						speed: 2000,
						auto: true,
						autoControls: true,
						autoControlsCombine:true,
						controls: true,
						pager: true,
						pagerSelector: $selector.find("div.payment_slider_pagers"),
						autoControlsSelector: $selector.find("div.payment_slider_controls")
					});
					
					$selector.find("p.prevBtn").click(slider.goToPrevSlide);
					$selector.find("p.nextBtn").click(slider.goToNextSlide);
					
					paySlides.push(slider);
				}
			</script>
			
			<script language="javascript" type="text/javascript" src="//stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
			
			<script src="../common/js/common_jhp.js"></script>
			<script src="../common/js/my/mycard_charge.js?v=220117"></script>
			
			<!-- 아임포트 -->
		<script src ="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
		
			
<script type="text/javascript">//결제페이지-다정0621
	var req;
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
	
	function chargeMoney(){
		var price_length = document.getElementsByName('totPrice').length;
		var price;
		 for (var i=0; i<price_length; i++) {
	            if (document.getElementsByName("totPrice")[i].checked == true) {
	            	price = document.getElementsByName("totPrice")[i].value;
	            }
	     }
		 var c_num = document.getElementById('c_num').value;
		var msg;
			//결제요청
			IMP.request_pay({
				//name과 amout만있어도 결제 진행가능
				pg : 'kakao', //pg사 선택 (kakao, kakaopay 둘다 가능)
				pay_method: 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : 'Starbucks Card 금액 충전', // 상품명
				amount : price,
				buyer_name : '<c:out value="${sessionScope.userinfo.id }"/>',
				buyer_tel : '010-1234-1234',  //필수항목
			}, function(rsp){
				if(rsp.success){//결제 성공시 판매날짜랑 판매수단, 가격
					msg = '결제가 완료되었습니다';
					var result = {
						"c_num" : c_num,
						"price" : price,
					//"couponNum" : couponNum
					}
					
					req = new XMLHttpRequest();
					req.onreadystatechange = resultAjax;
					req.open('post', 'setChargeAjax')
					data = JSON.stringify(result);//json의 자료형으로 변경해주기
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
			
	}
	
	function resultAjax(){
		var price_length = document.getElementsByName('totPrice').length;
		var price;
		 for (var i=0; i<price_length; i++) {
	            if (document.getElementsByName("totPrice")[i].checked == true) {
	            	price = document.getElementsByName("totPrice")[i].value;
	            }
	     }
		
		if(req.readyState == 4 && req.status == 200){
			var _response = req.responseText;
			if (_response == 1) {
				msg = price+"원 충전을 완료하였습니다.";
			} else {
				msg = ("ajax통신실패");
			}
			alert(msg);
			//location.href = 'index';
		}
	}
</script>
		</div>
		
		
		<input type="hidden" id="bannerTypePaymentCharge" value="STB9002" />
		
		
		<form id="ini_normal_web" name="ini_normal_web" method="post">
			<input type="hidden" name="gopaymethod" size=20 value="">
			<input type="hidden" name="goodname" size=20 value="">
			<input type="hidden" name="buyername" size=20 value="정다정" />
			<input type="hidden" name="buyeremail" size=20 value="wjdekwjd02@naver.com" />
			<input type="hidden" name="buyertel" size=20 value="010-4036-4933" />
		
			<input type="hidden" name="acceptmethod" value="SKIN(GREEN):HPP(2):no_receipt:cp_msg(현대카드 H-COIN만 사용 가능합니다. [M포인트 사용 불가]):CardPoint">
			<input type="hidden" name="currency" value="WON">
			
			<input type="hidden" name="oid" size=40 value="">
			
			<input type="hidden" name="ini_encfield" value="">
			<input type="hidden" name="ini_certid" value="">
			<input type="hidden" name="quotainterest" value="">
			<input type="hidden" name="paymethod" value="">
			<input type="hidden" name="cardcode" value="">
			<input type="hidden" name="cardquota" value="">
			<input type="hidden" name="rbankcode" value="">
			<input type="hidden" name="reqsign" value="DONE">
			<input type="hidden" name="encrypted" value="">
			<input type="hidden" name="sessionkey" value="">
			<input type="hidden" name="uid" value=""> 
			<input type="hidden" name="sid" value="">
			<input type="hidden" name="version" value=5000>
			<input type="hidden" name="clickcontrol" value="enable">
		</form>
		
		<form id="ini_normal_web_std" name="" method="POST" >
			<input type="hidden" name="goodname" value="" >
			<input type="hidden" name="buyername" value="정다정" >
			<input type="hidden" name="buyertel" value="010-4036-4933" >
			<input type="hidden" name="buyeremail" value="wjdekwjd02@naver.com" >
			<input type="hidden" name="price" value="" >
			<input type="hidden" name="mid" value="" >
			<input type="hidden" name="gopaymethod" value="" >
			<input type="hidden" name="mKey" value="" >
			<input type="hidden" name="signature" value="" >
			<input type="hidden" name="oid" value="" >
			<input type="hidden" name="timestamp" value="" >
			<input type="hidden" name="version" value="1.0" >
			<input type="hidden" name="currency" value="WON" >
			<input type="hidden" name="acceptmethod" value="SKIN(GREEN):popreturn:HPP(2):no_receipt:cardpoint" >
			<input type="hidden" name="returnUrl" value="" >
			<input type="hidden" name="closeUrl" value="" >
			<input type="hidden" name="customized_msg" value="cp_msg_cardCode=04&cp_msg_custom=현대카드 H-COIN만 사용 가능합니다. [M포인트 사용 불가]" >
		</form>
		
		<form id="ini_auto_web_std" name="" method="POST" >
			<input type="hidden" name="goodname" value="" >
			<input type="hidden" name="buyername" value="정다정" >
			<input type="hidden" name="buyertel" value="010-4036-4933" >
			<input type="hidden" name="buyeremail" value="wjdekwjd02@naver.com" >
			<input type="hidden" name="price" value="" >
			<input type="hidden" name="mid" value="" >
			<input type="hidden" name="gopaymethod" value="" >
			<input type="hidden" name="mKey" value="" >
			<input type="hidden" name="signature" value="" >
			<input type="hidden" name="oid" value="" >
			<input type="hidden" name="timestamp" value="" >
			<input type="hidden" name="version" value="1.0" >
			<input type="hidden" name="currency" value="WON" >
			<input type="hidden" name="acceptmethod" value="SKIN(GREEN):popreturn:cardpoint:HPP(5)" >
			<input type="hidden" name="returnUrl" value="" >
			<input type="hidden" name="closeUrl" value="" >
			<input type="hidden" name="customized_msg" value="cp_msg_cardCode=04&cp_msg_custom=현대카드 H-COIN만 사용 가능합니다. [M포인트 사용 불가]" >
		</form>
		
		<form id="ini_normal_mobile" name="ini_normal_mobile" method="post" accept-charset="UTF-8">
			<input type="hidden" name="P_MID" />
			<input type="hidden" name="P_OID" />
			<input type="hidden" name="P_AMT" />
			<input type="hidden" name="P_UNAME" value="정다정" />
			<input type="hidden" name="P_MNAME" />
			<input type="hidden" name="P_GOODS" />
			<input type="hidden" name="P_MOBILE" value="010-4036-4933" />
			<input type="hidden" name="P_EMAIL" value="wjdekwjd02@naver.com" />
			<input type="hidden" name="P_NEXT_URL" value="" />
			<input type="hidden" name="P_NOTI_URL" value="" />
			<input type="hidden" name="P_RETURN_URL" value="" />
			<input type="hidden" name="P_NOTI" />
			<input type="hidden" name="P_RESERVED" value="block_isp=Y&twotrs_isp=Y&twotrs_isp_noti=N&apprun_check=Y&cp_yn=Y&ismart_use_sign=Y&disable_kpay=Y&bank_receipt=N" />
			<input type="hidden" name="P_HPP_METHOD" value="2" />
			<input type="hidden" name="P_TID" />
			<input type="hidden" name="P_CUSTOMIZED_MSG" value="cp_msg=현대카드 H-COIN만 사용 가능합니다. [M포인트 사용 불가]" />
			
		</form>
		
		<form id="ini_auto_web" name="ini_auto_web" method="post">
			<input type="hidden" name="buyername" size=20 value="정다정" />
			<input type="hidden" name="goodname" size=20 value="" />
			<input type="hidden" name="mid" size=20 maxlength=10 value="" />
			<input type="hidden" name="price" size=20 value="">
			<input type="hidden" name="ini_offer_period" size=20 value="" />
			<input type="hidden" name="print_msg" size=40 value="" />
			<input type="hidden" name="acceptmethod" value="BILLAUTH:FULLVERIFY" />
			
			<input type="hidden" name="encrypted" value="" />
			<input type="hidden" name="sessionkey" value="" />
			<input type="hidden" name="cardcode" value="" />
			<input type="hidden" name="uid" value="" />
			<input type="hidden" name="version" value="4000" />
			<input type="hidden" name="clickcontrol" value="" />
			<input type="hidden" name="merchantreserved3"  value="" />
			<input type="hidden" name="paymethod" value="">
		</form>
		
		<form id="ini_auto_mobile" name="ini_auto_mobile" method="post" accept-charset="UTF-8">
			<input type="hidden" name="mid" />
			<input type="hidden" name="buyername" value="정다정" />
			<input type="hidden" name="goodname" />
			<input type="hidden" name="price" />
			<input type="hidden" name="type" value="2" />
			<input type="hidden" name="orderid" />
			<input type="hidden" name="returnurl" />
			<input type="hidden" name="merchantreserved" />
			<input type="hidden" name="notice" />
			<input type="hidden" name="timestamp" />
			<input type="hidden" name="period" />
			<input type="hidden" name="p_noti" />
			<input type="hidden" name="hashdata" />
		</form>
		
		
		<form id="smarto_normal_web" method="post" action="https://pay.smilepay.co.kr/interfaceURL.jsp" accept-charset="UTF-8">
			<input type="hidden" name="MID"             value=""     alt="MID" />
			<input type="hidden" name="Moid"            value=""     alt="상품주문번호" />
			<input type="hidden" name="PayMethod"       value=""     alt="지불수단" />
			<input type="hidden" name="ReturnURL"       value="https://www.starbucks.co.kr/my/smartropay/stopPay" />
			<input type="hidden" name="SocketYN"        value="Y"    alt="소켓사용유무" />
			<input type="hidden" name="SocketReturnURL" value=""     alt="SocketReturnURL" />
			<input type="hidden" name="BuyerAddr"       value=""     alt="" />
			<input type="hidden" name="BuyerName"       value="%C1%A4%B4%D9%C1%A4" />
			<input type="hidden" name="BuyerTel"        value="010-4036-4933" />
			<input type="hidden" name="BuyerEmail"      value="wjdekwjd02@naver.com" />
			<input type="hidden" name="GoodsCnt"        value="1"    alt="결제 상품 품목 개수" />
			<input type="hidden" name="GoodsName"       value="%BD%BA%C5%B8%B9%F7%BD%BA%C4%AB%B5%E5%28%C0%CF%B9%DD%C3%E6%C0%FC%29" alt="거래 상품명" />
			<input type="hidden" name="Amt"             value=""     alt="거래 금액" />
			<input type="hidden" name="MallIP"          value=""     alt="상정서버IP" />
			<input type="hidden" name="EncryptData"     value=""     alt="암호화데이터" />
			<input type="hidden" name="ediDate"         value=""     alt="전문생성일시" />
			<input type="hidden" name="OpenType"        value="KR"   alt="오픈타입" />
			<input type="hidden" name="UrlEncode"       value="Y"    alt="결과응답 URLEncoding" />
			<input type="hidden" name="EncodingType"    value="utf8" alt="결제결과 인코딩" />
			<input type="hidden" name="FORWARD"         value="Y"    alt="화면처리방식" />
			<input type="hidden" name="SecureType"      value="S2"   alt="암호화 타입" />
		</form>
		
		<form id="smarto_normal_mobile" method="post" action="https://smpay.smilepay.co.kr/pay/interfaceURL" accept-charset="UTF-8">
			<input type="hidden" name="MID"             value=""     alt="MID" />
			<input type="hidden" name="Moid"            value=""     alt="상품주문번호" />
			<input type="hidden" name="PayMethod"       value=""     alt="지불수단" />
			<input type="hidden" name="ReturnURL"       value="https://www.starbucks.co.kr/my/smartropay/stopPay" />
			<input type="hidden" name="StopURL"         value="https://www.starbucks.co.kr/my/smartropay/stopPay" />
			<input type="hidden" name="SocketYN"        value="Y"    alt="소켓사용유무" />
			<input type="hidden" name="SocketReturnURL" value=""     alt="SocketReturnURL" />
			<input type="hidden" name="BuyerAddr"       value=""     alt="" />
			<input type="hidden" name="BuyerName"       value="정다정" />
			<input type="hidden" name="BuyerTel"        value="010-4036-4933" />
			<input type="hidden" name="BuyerEmail"      value="wjdekwjd02@naver.com" />
			<input type="hidden" name="GoodsCnt"        value="1"    alt="결제 상품 품목 개수" />
			<input type="hidden" name="GoodsName"       value="스타벅스카드(일반충전)" alt="거래 상품명" />
			<input type="hidden" name="Amt"             value=""     alt="거래 금액" />
			<input type="hidden" name="MallIP"          value=""     alt="상정서버IP" />
			<input type="hidden" name="UserIP"          value="175.116.9.23"     alt="회원사고객IP" />
			<input type="hidden" name="ediDate"         value=""     alt="전문생성일시" />
			<input type="hidden" name="OpenType"        value="KR"   alt="오픈타입" />
			<input type="hidden" name="UrlEncode"       value="Y"    alt="결과응답 URLEncoding" />
			<input type="hidden" name="EncodingType"    value="utf8" alt="결제결과 인코딩" />
			<input type="hidden" name="SecureType"      value="S2"   alt="암호화 타입" />
		</form>
		
		<form id="smarto_auto" method="post" action="" accept-charset="UTF-8">
			<input type="hidden" name="PayMethod"       value=""       alt="결제수단" />
			<input type="hidden" name="MID"             value=""       alt="상점아이디" />
			<input type="hidden" name="Moid"            value=""       alt="상점요청주문번호" />
			<input type="hidden" name="MallUserID"      value=""       alt="MallUserID" />
			<input type="hidden" name="MallIP"          value=""       alt="상정서버IP" />
			<input type="hidden" name="ReturnURL"       value="https://www.starbucks.co.kr/my/smartropay/mycard_charge_auto_cardbill_result_trans" alt="상점 결제결과 전송 URL" />
			<input type="hidden" name="VerifyValue"     value=""       alt="해쉬데이터" />
			<input type="hidden" name="SecureType"      value="S2"     alt="암호화 타입" />
			<input type="hidden" name="EncodingType"    value="utf-8"  alt="응답 Charset" />
			<input type="hidden" name="SspMallID"       value=""       alt="간편결제 가맹점ID" />
			<input type="hidden" name="EdiDate"         value=""       alt="결제요청일시" />
			<input type="hidden" name="RtnUrlEncUse"    value="Y"      alt="응답데이타UrlEncoding 처리 여부" />
			<input type="hidden" name="IsPwdPass"       value="Y"      alt="결제 비밀번호 등록 Skip 여부" />
		</form>
	</body>
</html>
