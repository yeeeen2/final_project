<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
	<head>
		



<!-- 
<script type="text/javascript">
	function submitForm(){
		send.addEventListener("click",function(){
      	  var form = document.getElementById("couponRegister");
      	  form.action = "my/couponRegisterProc";
      	  form.metho = "POST";
      	  form.submit();
        });
		
		alert('${msg}');
	}
</script>
 -->


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

		
		<link href="../common/css/style_util.css?" rel="stylesheet">
		<link href="../common/css/style_util2.css" rel="stylesheet"><!-- 20180906 추가 -->
		<link href="../common/css/style_star.css" rel="stylesheet">
		<!-- <link href="https://www.starbucks.co.kr/common/css/style_star.css?v=211112" rel="stylesheet">211008 추가 -->
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
				<h1 class="logo"><a href="../">스타벅스 코리아</a></h1>
				<nav class="tablet_gnb_sep">
					<ul>
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2"></span></a></li><!-- 150709 클레스 수정 -->
						<li class="tablet_gnb02"><a href="index"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb03"><a href="strore/store_map"><span class="a11y">매장찾기</span></a><!-- 접근성_20171106 span추가 --></li>
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
									<li><a href="cardList" required="login">보유 카드</a></li>
									<li><a href="mycard_info_input" required="login">카드 등록</a></li>
									<li><a href="mycard_charge_1" required="login">카드 충전</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="../msr/sceGift/gift_step2" required="login">선물하기</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="ecoupon" required="login">등록하기</a></li>
									<li><a href="couponList" required="login">보유 쿠폰 내역</a></li>
								</ul>
							</li>
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
									<li><a href="strore/store_nitro_coldbrew">나이트로 콜드브루</a></li>
									<li><a href="strore/store_coldbrew">콜드 브루</a></li>
									<li><a href="menuStory/teavana">스타벅스 티바나</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="strore/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="strore/store_map?disp=quick">빠른 검색</a></li>
									<li><a href="strore/store_map?disp=locale">지역 검색</a></li>
								</ul>
							</li>
							<li><a href="strore/store_drive">드라이브 스루 매장</a></li>
							<li><a href="strore/store_reserve">스타벅스 리저브™ 매장</a></li>
							<li><a href="strore/store_community">커뮤니티 스토어 매장</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- <li><a href="strore/store_cheongdam">청담스타</a></li> 20210727 메뉴 비노출 -->
									<li><a href="strore/store_star_field">티바나 바 매장</a></li>
									<!-- <li><a href="strore/store_park">파미에파크</a></li> 20210727 메뉴 비노출 -->
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
	<li class="util_nav01 sign_out" style="display:none;"><a href="javascript:void(0);">Sign out</a></li>
	<li class="util_nav01 sign_in"><a href="javascript:void(0);">Sign In</a></li>
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
			<h4><img alt="My 음료/매장" src="//image.istarbucks.co.kr/common/img/util/ec/tit01.png"></h4>
			<ul class="smap">
				<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
				<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="작은 맵 화살표"></li>
				<li><a href="my/index">My Starbucks</a></li>
				
					<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="작은 맵 화살표"></li>
					<li><a href="my/ecoupon">My 쿠폰</a></li>
				
				
			</ul>
		</div>
	</div>
</header>
				<!-- 서브 타이틀 end -->
				
				<!-- 내용 -->
				
				<div class="ms_cont_wrap">
					<div class="ms_cont">
						<!-- My e-쿠폰 -->
						<div class="ms_ecoupon">
							<!-- My e-쿠폰 팝업  couponRegisterProc-->
							<form action="couponRegisterProc" name="couponRegister" id="couponRegister" method="post">
							<div class="ecPop">
								<div class="head">
									<p class="tt"><span class="en">My</span> 쿠폰 등록</p>
									<p class="close" onclick="window.close();"><a><img src="//image.istarbucks.co.kr/common/img/util/cal/calpop_close2.png" alt="닫기"></a></p>
								</div>
								<!-- 20170726 추가 -->                                
                                <div class="myPopInner">
                                    
                                        <fieldset>
                                            <legend class="hid">My 쿠폰 등록</legend>
                                            
                                            <p class="couponTabTit">영수증 쿠폰, MMS 쿠폰 또는 Star 쿠폰 중 등록하고자 하시는 쿠폰을 선택하세요.</p> <!-- 211008 수정 -->
                                            <ul class="couponTabList">
                                                <li class="cpTab1 cpTabOn"><a href="#">영수증 쿠폰</a></li>
                                                <li class="cpTab2"><a href="#">MMS 쿠폰</a></li>
                                                <li class="cpTab3" id="couponTypeStar"><a href="#">Star 쿠폰</a></li> <!-- 211008 추가 -->
                                            </ul>
                                            <div class="cpClear"></div>
                                            <!-- 퀵 서치 -->
                                            <!-- 1. 영수증쿠폰 -->
                                            <div class="myCouponCb myCouponCb1 myCouponWrap" > <!-- 211008 클래스 추가 -->
                                                <div class="coupon_input">
                                                    <label for="coupon_num1">영수증 쿠폰번호 16자리를 입력해주세요.</label>
                                                    <div class="input">
                                                        <input type="text" name="rptcoupon_num1" id="rptcoupon_num1" maxlength="4" title="쿠폰 앞번호">
                                                        <span class="line"></span>
                                                        <input type="text" name="rptcoupon_num2" id="rptcoupon_num2" maxlength="4" title="쿠폰 두번째 번호">
                                                        <span class="line"></span>
                                                        <input type="text" name="rptcoupon_num3" id="rptcoupon_num3" maxlength="4" title="쿠폰 세번째 번호">
                                                        <span class="line"></span>
                                                        <input type="text" name="rptcoupon_num4" id="rptcoupon_num4" maxlength="4" title="쿠폰 마지막 번호" class="last">
                                                    </div>
                                                    <div class="cpClear"></div>
                                                </div>
                                                <!-- <div class="mobile_input mobile_input2">
                                                    <p class="con">e-쿠폰 등록코드 8자리를 입력해주세요.</p>
                                                    <div class="input">
                                                        <input type="tel" name="regiCode" id="regiCode" maxlength="8" ref="num" value="" title="e-쿠폰 등록코드">
                                                    </div>
                                                </div> -->
                                            </div>
                                            <!--// 1. 영수증쿠폰 -->
                                            
                                            <!-- 2. mms쿠폰 -->
                                            <div class="myCouponCb myCouponCb2 myCouponWrap" style="display: none"> <!-- 211008 클래스 추가 -->
                                                <div class="coupon_input">
                                                    <label for="coupon_num3">MMS 쿠폰번호 13자리를 입력해주세요.</label>
                                                    <div class="input">
                                                        <input type="text" name="coupon_num1" id="coupon_num1" maxlength="4" title="쿠폰 앞번호">
                                                        <span class="line"></span>
                                                        <input type="text" name="coupon_num2" id="coupon_num2" maxlength="4" title="쿠폰 중간 번호"><!-- maxlength 5->4로 변경 -->
                                                        <span class="line"></span>
                                                        <input type="text" name="coupon_num3" id="coupon_num3" maxlength="5" title="쿠폰 마지막 번호" class="last">
                                                    </div>
                                                    <div class="cpClear"></div>
                                                </div>
                                                <!-- <div class="mobile_input">
                                                    <p class="con">수신자(선물 받은 사람)의 휴대폰 번호를 입력해주세요.</p>
                                                    <div class="input">
                                                        <div class="select_box select_box03">
                                                            <label class="value" for="myplane_date01">선택</label>
                                                            <select title="휴대폰 앞번호" id="myplane_date01">
                                                                <option value="" selected="selected">선택</option>
                                                                <option value="010">010</option>
                                                                <option value="011">011</option>
                                                                <option value="016">016</option>
                                                                <option value="017">017</option>
                                                                <option value="018">018</option>
                                                                <option value="019">019</option>
                                                            </select>
                                                        </div>
                                                        <span class="line"></span>
                                                        <input type="tel" name="mobile_num2" id="mobile_num2" maxlength="4" ref="num" value="" title="휴대폰 중간번호">
                                                        <span class="line"></span>
                                                        <input type="tel" name="mobile_num3" id="mobile_num3" maxlength="4" ref="num" value="" title="휴대폰 마지막 번호" class="last">
                                                    </div>
                                                </div> -->
                                            </div>
                                            <!--// 2. mms쿠폰 -->
                                            
                                            <!-- s::211008 추가 -->
	                                        <!-- 3. Star 쿠폰 -->
	                                        <div class="myCouponCb myCouponCb3 myCouponWrap nonsr_user" style="display: none"> <!-- 211101 수정 -->
	                                            <div class="starcoupon_input">
	                                                <label for="starcoupon_num1">Star 쿠폰번호 13자리를 입력해주세요.</label>
	                                                <div class="input">
	                                                    <input type="text" name="starcoupon_num1" id="starcoupon_num1" maxlength="4" title="쿠폰 앞번호">
	                                                    <span class="line"></span>
	                                                    <input type="text" name="starcoupon_num2" id="starcoupon_num2" maxlength="4" title="쿠폰 중간 번호"><!-- maxlength 5->4로 수정 -->
	                                                    <span class="line"></span>
	                                                    <input type="text" name="starcoupon_num3" id="starcoupon_num3" maxlength="5" title="쿠폰 마지막 번호" class="last">
	                                                </div>
	                                                <div class="cpClear"></div>
	                                            </div>
	                                            <!-- <div class="pin_input">
	                                                <p class="con">PIN 번호 8자리를 입력해주세요.</p>
	                                                <div class="input">
	                                                    <input type="tel" name="pinCode" id="pinCode" maxlength="8" ref="num" value="" title="PIN 번호">
	                                                </div>
	                                            </div> -->
	                                        </div>
	                                        <!--// 3. Star 쿠폰 -->
	                                        <!-- //e::211008 -->
                                        </fieldset>
                                    
                                </div>
                                <!--// 20170726 추가 -->
                                
                                <div class="info_wrap cpBg">
                                    <!-- 1. 영수증쿠폰 -->
                                    <ul class="myCouponCb myCouponCb1"> <!-- 211008 클래스 추가 -->
                                        <li>e-쿠폰으로 등록한 영수증 쿠폰은 등록해지가 불가능하며, 등록이후 기존의 실물 쿠폰은 더 이상 사용하실 수 없습니다.</li>
                                        <li>등록된 e-쿠폰은 해당 계정에 등록된 스타벅스 카드 또는 쿠폰의 QR코드를 제시하여 사용하실 수 있습니다.</li>
                                        <li>e-쿠폰 및 실물 쿠폰은 상업적으로 이용할 수 없으며, 스타벅스에서 제공하는e-쿠폰 선물하기 기능 외 방법으로 전달된 쿠폰 사용으로 인해 발생된 문제에 대해서는 스타벅스가 책임지지 않습니다.</li>
                                        <li>쿠폰이 발행된 원 거래가 취소되는 경우, 등록된 e-쿠폰도 즉시 회수됩니다.</li>
                                    </ul>
                                    
                                    <!-- 2. mms쿠폰 -->
                                    <ul class="myCouponCb myCouponCb2" style="display: none"> <!-- 211008 클래스 추가 -->
                                        <li>e-쿠폰 등록 후에는 선물 받은 쿠폰의 문자 메시지가 삭제되었더라도 해당 계정에 등록된 스타벅스 카드 또는 쿠폰 QR코드를 제시하시면 사용하실 수 있습니다.</li>
                                        <li>e-쿠폰 및 실물 쿠폰은 상업적으로 이용할 수 없으며, 스타벅스에서 제공하는 e-쿠폰 선물하기 기능 외 방법으로 전달된 쿠폰 사용으로 인해 발생된 문제에 대해서는 스타벅스가 책임지지 않습니다.</li>
                                        <li>쿠폰이 발행된 원 거래가 취소되는 경우, 등록된 e-쿠폰도 즉시 회수됩니다.</li>
                                    </ul>

                                    <!-- s::211008 추가 -->
	                                <!-- 3. Star 쿠폰 -->
	                                <ul class="myCouponCb myCouponCb3" style="display: none">
	                                	<li class="green"><strong>Star 쿠폰은 스타벅스 리워드 회원에 한해서만 등록 및 사용이 가능한 쿠폰입니다.</strong></li> <!-- 211101 추가 -->
	                                    <li>하나의 Star 쿠폰에는 여러 개의 별이 들어 있으며, Star 쿠폰을 My 쿠폰으로 등록하는 즉시 별로 전환됩니다. 전환된 별은 별 History에서 확인 가능합니다.</li>
	                                    <li>전환된 별은 별 정책에 따라 승급/별 12개 쿠폰 발행에 사용됩니다.</li>
	                                    <li>Star 쿠폰은 쿠폰 그 자체로 사용할 수 없으며, My 쿠폰 등록을 통해 별로 전환하여 사용 가능합니다.</li>
	                                    <li>Star 쿠폰 유효기간 내에만 쿠폰 등록이 가능합니다.</li>
	                                    <li>Star 쿠폰으로 전환되는 별의 유효기간은 별 전환 시점으로부터 1년입니다.</li>
	                                    <li>등록 완료되어 별로 전환된 Star 쿠폰은 등록 취소 및 재사용 불가합니다.</li>
	                                    <li>Star 쿠폰은 상업적으로 이용할 수 없습니다.</li>
	                                </ul>
	                                <!-- //e::211008 -->
	                                <button id="formSubmit" style="background: #e2c383; border: 1px solid #bb9f65; color: #222; font-size: 12px; font-weight: bold;float: left; width: 81px; height: 28px; line-height: 28px; border-radius: 3px; text-align: center;">등록하기</button>
									<input type="reset" value="취소" style="float: left;width: 81px; height: 28px; line-height: 28px; border-radius: 3px; text-align: center; background: #222; border: 1px solid #222; color: #fff;font-size: 12px; font-weight: bold; margin-left: 5px;">
                                    <!-- <p class="btns"><a href="javascript:void(0)" class="a1">쿠폰 등록</a> <a href="javascript:void(0)" class="a2">취소</a></p> -->
                                </div>
                                
							</div>
							</form>
							<div class="ecPop2">
								<div class="head">
									<p class="tt">My 쿠폰 사용하기</p>
									<p class="close"><a href="javascript:void(0)">닫기</a></p>
								</div>
								<div class="myPopInner">
									<div class="myPopScroll designScroll">
										<div class="ec_use">
											<p class="tt couponName"><!-- [BOGO] 라스베리 트러플 모카 --></p>
											<p class="qr"><img alt="" /></p>
											<p class="qr_txt">이 QR코드는 <span id="timer">00:00:00</span>까지 유효합니다.</p><!-- 20180906 추가 -->
											<p class="coffee"><img src="//image.istarbucks.co.kr/common/img/util/ec/icon_cup.jpg" alt="" /></p>
											<ul>
												<li>
													<dl>
														<dt>유효기간</dt>
														<dd class="validDt"><!-- 2015-03-10 ~ 2015-04-22 --></dd>
													</dl>
												</li>
												<li>
													<dl>
														<dt>쿠폰내역</dt>
														<dd class="couponHistList"><!-- 2015-03-10&nbsp;&nbsp;발급<br>2015-03-23&nbsp;&nbsp;선물<br>2015-03-23&nbsp;&nbsp;회수 --></dd>
													</dl>
												</li>
												<li>
													<dl>
														<dt>상세정보</dt>
														<dd class="couponDetail">
															<!--
															- 스타벅스 매장 내에서 파트너가 제조한 음료 구매시 동일한 음료 한잔 더 증정<br>-  병음료 , 생수, 요거트, POC 브루드커피, 바
															-->
														</dd>
													</dl>
												</li>
											</ul>
											<input type="hidden" id="couponNumber" />
										</div>
									</div>
								</div>
								<div class="info_wrap">
									<p class="con" id="useGuide">* 계산대에서 파트너에게 QR코드를 제시하면 해당 쿠폰을 사용하실 수 있습니다.</p>
									<p class="btns">
										<a href="javascript:void(0)" class="a3 btn_gift_coupon" style="display:none;">쿠폰 선물하기</a>
									</p>
								</div>
							</div>
							<div class="ecPop3">
								<div class="head">
									<p class="tt">상세보기</p>
									<p class="close"><a href="javascript:void(0)">닫기</a></p>
								</div>
								<div class="myPopInner">
									<div class="myPopScroll designScroll">
										<div class="myCoupon">
											<p class="tit"><img id="myCouponImg" src="//image.istarbucks.co.kr/common/img/util/ec/icon_ecoupon03.png" alt="">&nbsp;&nbsp;<span class="couponName"></span></p>
											<ul>
												<li>
													<dl>
														<dt>유효기간</dt>
														<dd class="validDt"></dd>
													</dl>
												</li>
												<li>
													<dl>
														<dt>쿠폰내역</dt>
														<dd class="CouponHistory"></dd>
													</dl>
												</li>
												<li>
													<dl>
														<dt>쿠폰 받는 분</dt>
														<dd class="phone"></dd>
													</dl>
												</li>
												<li class="message">
													<dl>
														<dt>메시지 내용</dt>
														<dd class="giftMmsContents"></dd>
													</dl>
												</li>
												<li class="last">
													<dl class="warning">
														<dt>유의사항</dt>
														<dd>
															<ul class="useNotice"></ul>
														</dd>
													</dl>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="info_wrap">
									<p class="btns">
										<a href="javascript:void(0)" class="a4 btn_gift_recall" style="display:none;">선물회수</a>
										<a href="javascript:void(0)" class="a5 btn_gift_message_resend" style="display:none;">재발송</a>
									</p>
								</div>
							</div>
							<!-- My e-쿠폰 팝업 end -->
							<dl class="ec_tab">
								<dt class="dt1"><a href="javascript:void(0)" class="selected">사용 가능한 쿠폰</a></dt>
								<dd>
									<div class="ec_step1">
										<!-- s::211008 수정 -->
	                                    <div class="ec_info">
	                                        <div class="info_txt">
	                                            <p class="p1">영수증 쿠폰 또는 선물 받은 MMS 쿠폰을 <span>My 쿠폰</span>으로 등록하여 편리하게 사용해 보세요!</p>
	                                            <p class="p2 mb20">e-쿠폰 등록번호가 있는 영수증 쿠폰 또는 선물 받은 MMS 쿠폰, Star 쿠폰은 My 쿠폰으로 등록하실 수 있습니다.<br>등록 후에는 쿠폰을 분실하거나 문자메시지를 삭제하시더라도 해당 계정에 등록된 스타벅스 카드 또는 쿠폰 QR코드를 제시하시면 쿠폰을 사용하실 수 있습니다.</p>

	                                            <p class="p1">별이 가득 담긴 Star 쿠폰을 <span>My 쿠폰</span>으로 등록하여 별로 전환해 보세요!</p>
	                                            <p class="p2">하나의 Star 쿠폰에는 여러 개의 별이 들어 있으며, Star 쿠폰을 My 쿠폰으로 등록하는 즉시 별로 전환 됩니다.<br>전환된 별은 별 정책에 따라 승급/별 12개 쿠폰 발행에 사용됩니다.</p>
	                                            <p class="p2">Star 쿠폰은 쿠폰 그 자체로 사용할 수 없으며, My 쿠폰 등록을 통해 별로 전환하여 사용 가능합니다.</p>
	                                        </div>
	                                        <p class="btn"><a href="javascript:void(0);">My 쿠폰 등록</a></p>
	                                    </div>
	                                    <!-- //e::211008 -->

										<p class="mc">사용 가능한 보유 쿠폰 : ${couponCount }<span class="totalCnt"></span></p>
										<!-- 쿠폰리스트 150616 - 문진욱 -->
										<section class="ecoupon_list_wrap">
											<ul>
											</ul>
										</section>
										<script id="myCouponList" type="text/x-jquery-tmpl">
											<li style="background-image:url(${couponImgUrl}); background-repeat:no-repeat;">
												<div class="ecoupon_list_cont">
													<p>${couponName}<br /><span>${validStartDt} ~ ${validEndDt}</span></p>
													{{html $item.getBtnCoupon}}
													{{html $item.getRemainDays}}
												</div>
											</li>
										</script>
										<!-- 쿠폰리스트 150616 - 문진욱 end -->
										<ul class="pager">
										</ul>
									</div>
								</dd>
								<dt class="dt2"><a href="javascript:void(0)">쿠폰 히스토리</a></dt>
								<dd style="display:none;">
									<!-- 기간선택 -->
									<!-- 170213 황기흠 수정 -->
									<section class="ec_pick_period">
										<form action="" method="post">
											<fieldset>
												<legend>기간 선택 폼</legend>
												<dl class="my_rsh_pick_bg">
													<dt>기간별</dt>
													<dd>
														<!--<input id="pickPeriod1" name="pickPeriod" type="radio">
														<label for="pickPeriod1">일주일</label>-->
														<input id="pickPeriod2" name="pickPeriod" type="radio" checked="checked" value="1_MONTH">
														<label for="pickPeriod2">1개월</label>
														<!--<input id="pickPeriod3" name="pickPeriod" type="radio">
														<label for="pickPeriod3">3개월</label>-->
														<input id="pickPeriod4" name="pickPeriod" type="radio" value="1_YEAR">
														<label for="pickPeriod4">1년</label>
													</dd>
												</dl>
												<dl class="my_card_pick_date">
													<dt>일자별</dt>
													<dd>
														<div class="pick_date_each">
															<div class="pick_date_each_left"><input type="text" id="pickDate01" name="pickDate" title="원하는 날짜를 선택해 주세요." readonly="readonly" /></div>
															<div class="pick_date_each_right"><label for="pickDate01">날짜 선택</label></div>
														</div>
														<p class="hyphen_bg"></p>
														<div class="pick_date_each">
															<div class="pick_date_each_left"><input type="text" id="pickDate02" name="pickDate" title="원하는 날짜를 선택해 주세요." readonly="readonly" /></div>
															<div class="pick_date_each_right"><label for="pickDate02">날짜 선택</label></div>
														</div>
														<p class="btn_pick_date"><a href="javascript:void(0);">검색</a></p>
													</dd>
												</dl>
											</fieldset>
										</form>
									</section>
									<!-- 170213 황기흠 수정 end -->
									<!-- 기간선택 end -->
									
									<!-- 170213 황기흠 수정 -->
									<p class="my_card_date_refer mb30">최대 조회 기간은 5년입니다.</p>
									<!-- 170213 황기흠 수정 end -->
																		
									<table summary="사용 가능한 쿠폰 내역 웹 버전" class="list_tb">
										<caption class="hid">사용 가능한 쿠폰 썸네일, 쿠폰명, 유효기간, 쿠폰 남은 기간, 쿠폰 선물하기</caption>
										<colgroup>
											<col width="62">
											<col width="83">
											<col width="253">
											<col width="197">
											<col width="130">
											<col width="106">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">No</th>
												<th scope="col">구분</th>
												<th scope="col">쿠폰명</th>
												<th scope="col">유효기간</th>
												<th scope="col">사용여부</th>
												<th scope="col">상세내역</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
									<script id="myCouponHistoryList" type="text/x-jquery-tmpl">
										<tr>
											<td class="center">${$item.getSeq}</td>
											<td class="center"><img src="${couponImgUrl}" alt=""></td>
											<td class="tt">${couponName}</td>
											<td class="en">${validStartDt} ~ ${validEndDt}</td>
											<td class="center">{{html $item.getStatus}}</td>
											<td class="center">{{html $item.getBtnDetail}}</td>
										</tr>
									</script>
									
									<table summary="사용 가능한 쿠폰 내역 모바일 버전" class="m_list_tb">
										<caption class="hid">사용 가능한 쿠폰 썸네일, 쿠폰명, 유효기간, 쿠폰 남은 기간, 쿠폰 선물하기</caption>
										<colgroup>
											<col width="23.4375%">
											<col width="76.5625%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">구분</th>
												<th scope="col">쿠폰명, 유효기간, 사용여부</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
									<script id="myCouponHistoryList_MOBILE" type="text/x-jquery-tmpl">
										<tr>
											<td class="kind"><img src="${couponImgUrl}" alt=""></td>
											<td>
												<p class="p1">${couponName}</p>
												<p class="p2">${validStartDt} ~ ${validEndDt}</p>
												<p class="p3">{{html $item.getStatus}}</p>
											</td>
										</tr>
									</script>
									
									<ul class="pager">
									</ul>
								</dd>
							</dl>
						</div>
						<!-- My e-쿠폰 end -->
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
		
			
			<script src="../common/js/common_jhp.js"></script>
			<script src="../common/js/my/ecoupon.js"></script>
			<!-- <script src="https://www.starbucks.co.kr/common/js/my/ecoupon.js?v=211115"></script> -->
			
			
			
			<script type="text/javascript">
				<!-- 20170726추가 -->
				$(document).ready(function () {
					if(m_jsonRewardSummary != null && m_jsonRewardSummary.msrMemberYn == "Y") {
						$('input[name=starcoupon_num]').prop("disabled", false);
						$('#pinCode').prop("disabled", false);
						$('#starCouponRegInfo').removeClass('nonsr_user');
					}

					//s::211008 수정
					$('.couponTabList li').on('click', function(){

						var idx = $(this).index(),
						$couponContent = $('.myCouponCb');

						$("form").each(function() { // form reset
							if(this.id == "efrm1") this.reset();
						});

						$(this).addClass('cpTabOn').siblings().removeClass('cpTabOn');

						$couponContent.hide();
						$('.myCouponCb'+(idx+1)).show();

					});
					//e::211008
				});
				<!--// 20170726추가 -->

				$(".select_box select").on("change",function(){
					$(this).prev()($(this).find("option:selected").text());
					}).prev().html(function() {
					return $(this).next().find("option:selected").text();
				});
	

	/*
				$("a.detailView").bind("click", function(){
	
					var ww = $(window).scrollTop();
					$("div.ecPop3").css('top', ww + "px");
					$("div.myDimm").show();
					$("div.ecPop3").fadeIn();
					return false;
				});
	*/

	
				$(".designScroll").mCustomScrollbar(); // 팝업 스크롤
				/* 성연욱 추가 end */
				
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
				$('.coffee').seqfx();
				
				
				var m_strType = '';
			</script>
		</div>
	</body>
</html>