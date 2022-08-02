<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko"><head>
	
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=LAAwsQelHfyg_d9tCLZ7"></script> 


<!--	메모
		: 받는사람(나에게 선물하기 사용자 dto값 넣어줘야함)
 -->

<!-- 0617 카카오페이 다정 -->
<!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>



<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type" content="website">
<meta property="og:title" content="Starbucks">
<meta property="og:url" content="https://www.starbucks.co.kr/">
<meta property="og:image" content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">선물하기 | Starbucks Korea</title> <!-- 220117 수정 -->
<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico">
<!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="../../common/css/reset.css" rel="stylesheet">
<link href="../../common/css/style.css?v=210721" rel="stylesheet">
<link href="../../common/css/jquery.bxslider.css" rel="stylesheet">
<link href="../../common/css/idangerous.swiper.css" rel="stylesheet">
<link href="../../common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
<link href="../../common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="../../common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="../../common/css/jquery-ui.css" rel="stylesheet">
<link href="../../common/css/ezmark.css" rel="stylesheet">
<link href="../../common/css/style_dt.css?v=20191211" rel="stylesheet"> <!-- 20191211 수정 -->

<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<link href="../../common/css_ie/style.css" rel="stylesheet">
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



<script src="https://connect.facebook.net/ko_KR/sdk.js?hash=571337aab505af06447c7edc4dbb59b4" async=""
    crossorigin="anonymous"></script>
<script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-66158138-1', 'auto');
    ga('send', 'pageview');
</script>

<script type="text/javascript">
/* var req;

$(document).ready(function(){
	$('#send').on("click", requestPay);
		
});


function requestPay(){
	console.log("리퀘스트페이결제확인");
	var IMP = window.IMP;
	IMP.init('imp46354288');
	
	var name = document.getElementById('name').value;
	if(!name){
		alert('이름을 입력해주세요');
	}
	
	var email1 = document.getElementById('email1').value;
	var email2 = document.getElementById('email2').value;
	if(!email1 || !email2){
		alert('이메일을 제대로 입력해주세요');
	}
	
	var remaincost = document.getElementByName('remaincost').value;
	

 */
</script>

<!-- 네이버페이 ... ㅠㅠ실패
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
<script>
    var oPay = Naver.Pay.create({
          "mode" : "development", // development or production
          "clientId": "LAAwsQelHfyg_d9tCLZ7" // clientId
    });
    window.onload = function(){
    //직접 만드신 네이버페이 결제버튼에 click Event를 할당하세요
    var elNaverPayBtn = document.getElementById("send");

    elNaverPayBtn.addEventListener("click", function() {
        oPay.open({
          "merchantUserKey": "TC0ONETIME",
          "merchantPayKey": "가맹점 주문 번호",
          "productName": "상품명을 입력하세요",
          "totalPayAmount": "10000",
          "taxScopeAmount": "10000",
          "taxExScopeAmount": "0",
          "returnUrl": "msr/sceGift/eGiftCardProc"
        });
    });
    };	
</script> -->


<!-- <script type="text/javascript">

	function submitForm(){
		var msg = '${msg}';
		alert(msg);
		document.getElementById('egift_f').submit()
	}
</script>
 -->



<script type="text/javascript">
    var eFrequencyYn = 'Y';
    var eFrequencySeq = '172';
    var eFrequencyPlannerYn = 'Y';
</script>

<link href="../../common/css/style_main.css" rel="stylesheet">
<link href="../../common/css/style_msr.css?v=210223" rel="stylesheet">
<link href="../../common/css/style_util.css?v=210223" rel="stylesheet">
<link href="../../common/css/style_menu.css" rel="stylesheet">
<style type="text/css"
    data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">
    .fb_hidden {
        position: absolute;
        top: -10000px;
        z-index: 10001
    }

    .fb_reposition {
        overflow: hidden;
        position: relative
    }

    .fb_invisible {
        display: none
    }

    .fb_reset {
        background: none;
        border: 0;
        border-spacing: 0;
        color: #000;
        cursor: auto;
        direction: ltr;
        font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
        font-size: 11px;
        font-style: normal;
        font-variant: normal;
        font-weight: normal;
        letter-spacing: normal;
        line-height: 1;
        margin: 0;
        overflow: visible;
        padding: 0;
        text-align: left;
        text-decoration: none;
        text-indent: 0;
        text-shadow: none;
        text-transform: none;
        visibility: visible;
        white-space: normal;
        word-spacing: normal
    }

    .fb_reset>div {
        overflow: hidden
    }

    @keyframes fb_transform {
        from {
            opacity: 0;
            transform: scale(.95)
        }

        to {
            opacity: 1;
            transform: scale(1)
        }
    }

    .fb_animate {
        animation: fb_transform .3s forwards
    }

    .fb_dialog {
        background: rgba(82, 82, 82, .7);
        position: absolute;
        top: -10000px;
        z-index: 10001
    }

    .fb_dialog_advanced {
        border-radius: 8px;
        padding: 10px
    }

    .fb_dialog_content {
        background: #fff;
        color: #373737
    }

    .fb_dialog_close_icon {
        background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;
        cursor: pointer;
        display: block;
        height: 15px;
        position: absolute;
        right: 18px;
        top: 17px;
        width: 15px
    }

    .fb_dialog_mobile .fb_dialog_close_icon {
        left: 5px;
        right: auto;
        top: 5px
    }

    .fb_dialog_padding {
        background-color: transparent;
        position: absolute;
        width: 1px;
        z-index: -1
    }

    .fb_dialog_close_icon:hover {
        background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent
    }

    .fb_dialog_close_icon:active {
        background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent
    }

    .fb_dialog_iframe {
        line-height: 0
    }

    .fb_dialog_content .dialog_title {
        background: #6d84b4;
        border: 1px solid #365899;
        color: #fff;
        font-size: 14px;
        font-weight: bold;
        margin: 0
    }

    .fb_dialog_content .dialog_title>span {
        background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;
        float: left;
        padding: 5px 0 7px 26px
    }

    body.fb_hidden {
        height: 100%;
        left: 0;
        margin: 0;
        overflow: visible;
        position: absolute;
        top: -10000px;
        transform: none;
        width: 100%
    }

    .fb_dialog.fb_dialog_mobile.loading {
        background: url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;
        min-height: 100%;
        min-width: 100%;
        overflow: hidden;
        position: absolute;
        top: 0;
        z-index: 10001
    }

    .fb_dialog.fb_dialog_mobile.loading.centered {
        background: none;
        height: auto;
        min-height: initial;
        min-width: initial;
        width: auto
    }

    .fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
        width: 100%
    }

    .fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
        background: none
    }

    .loading.centered #fb_dialog_loader_close {
        clear: both;
        color: #fff;
        display: block;
        font-size: 18px;
        padding-top: 20px
    }

    #fb-root #fb_dialog_ipad_overlay {
        background: rgba(0, 0, 0, .4);
        bottom: 0;
        left: 0;
        min-height: 100%;
        position: absolute;
        right: 0;
        top: 0;
        width: 100%;
        z-index: 10000
    }

    #fb-root #fb_dialog_ipad_overlay.hidden {
        display: none
    }

    .fb_dialog.fb_dialog_mobile.loading iframe {
        visibility: hidden
    }

    .fb_dialog_mobile .fb_dialog_iframe {
        position: sticky;
        top: 0
    }

    .fb_dialog_content .dialog_header {
        background: linear-gradient(from(#738aba), to(#2c4987));
        border-bottom: 1px solid;
        border-color: #043b87;
        box-shadow: white 0 1px 1px -1px inset;
        color: #fff;
        font: bold 14px Helvetica, sans-serif;
        text-overflow: ellipsis;
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
        vertical-align: middle;
        white-space: nowrap
    }

    .fb_dialog_content .dialog_header table {
        height: 43px;
        width: 100%
    }

    .fb_dialog_content .dialog_header td.header_left {
        font-size: 12px;
        padding-left: 5px;
        vertical-align: middle;
        width: 60px
    }

    .fb_dialog_content .dialog_header td.header_right {
        font-size: 12px;
        padding-right: 5px;
        vertical-align: middle;
        width: 60px
    }

    .fb_dialog_content .touchable_button {
        background: linear-gradient(from(#4267B2), to(#2a4887));
        background-clip: padding-box;
        border: 1px solid #29487d;
        border-radius: 3px;
        display: inline-block;
        line-height: 18px;
        margin-top: 3px;
        max-width: 85px;
        padding: 4px 12px;
        position: relative
    }

    .fb_dialog_content .dialog_header .touchable_button input {
        background: none;
        border: none;
        color: #fff;
        font: bold 12px Helvetica, sans-serif;
        margin: 2px -12px;
        padding: 2px 6px 3px 6px;
        text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
    }

    .fb_dialog_content .dialog_header .header_center {
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        line-height: 18px;
        text-align: center;
        vertical-align: middle
    }

    .fb_dialog_content .dialog_content {
        background: url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;
        border: 1px solid #4a4a4a;
        border-bottom: 0;
        border-top: 0;
        height: 150px
    }

    .fb_dialog_content .dialog_footer {
        background: #f5f6f7;
        border: 1px solid #4a4a4a;
        border-top-color: #ccc;
        height: 40px
    }

    #fb_dialog_loader_close {
        float: left
    }

    .fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
        visibility: hidden
    }

    #fb_dialog_loader_spinner {
        animation: rotateSpinner 1.2s linear infinite;
        background-color: transparent;
        background-image: url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
        background-position: 50% 50%;
        background-repeat: no-repeat;
        height: 24px;
        width: 24px
    }

    @keyframes rotateSpinner {
        0% {
            transform: rotate(0deg)
        }

        100% {
            transform: rotate(360deg)
        }
    }

    .fb_iframe_widget {
        display: inline-block;
        position: relative
    }

    .fb_iframe_widget span {
        display: inline-block;
        position: relative;
        text-align: justify
    }

    .fb_iframe_widget iframe {
        position: absolute
    }

    .fb_iframe_widget_fluid_desktop,
    .fb_iframe_widget_fluid_desktop span,
    .fb_iframe_widget_fluid_desktop iframe {
        max-width: 100%
    }

    .fb_iframe_widget_fluid_desktop iframe {
        min-width: 220px;
        position: relative
    }

    .fb_iframe_widget_lift {
        z-index: 1
    }

    .fb_iframe_widget_fluid {
        display: inline
    }

    .fb_iframe_widget_fluid span {
        width: 100%
    }

    .fb_mpn_mobile_landing_page_slide_out {
        animation-duration: 200ms;
        animation-name: fb_mpn_landing_page_slide_out;
        transition-timing-function: ease-in
    }

    .fb_mpn_mobile_landing_page_slide_out_from_left {
        animation-duration: 200ms;
        animation-name: fb_mpn_landing_page_slide_out_from_left;
        transition-timing-function: ease-in
    }

    .fb_mpn_mobile_landing_page_slide_up {
        animation-duration: 500ms;
        animation-name: fb_mpn_landing_page_slide_up;
        transition-timing-function: ease-in
    }

    .fb_mpn_mobile_bounce_in {
        animation-duration: 300ms;
        animation-name: fb_mpn_bounce_in;
        transition-timing-function: ease-in
    }

    .fb_mpn_mobile_bounce_out {
        animation-duration: 300ms;
        animation-name: fb_mpn_bounce_out;
        transition-timing-function: ease-in
    }

    .fb_mpn_mobile_bounce_out_v2 {
        animation-duration: 300ms;
        animation-name: fb_mpn_fade_out;
        transition-timing-function: ease-in
    }

    .fb_customer_chat_bounce_in_v2 {
        animation-duration: 300ms;
        animation-name: fb_bounce_in_v2;
        transition-timing-function: ease-in
    }

    .fb_customer_chat_bounce_in_from_left {
        animation-duration: 300ms;
        animation-name: fb_bounce_in_from_left;
        transition-timing-function: ease-in
    }

    .fb_customer_chat_bounce_out_v2 {
        animation-duration: 300ms;
        animation-name: fb_bounce_out_v2;
        transition-timing-function: ease-in
    }

    .fb_customer_chat_bounce_out_from_left {
        animation-duration: 300ms;
        animation-name: fb_bounce_out_from_left;
        transition-timing-function: ease-in
    }

    .fb_invisible_flow {
        display: inherit;
        height: 0;
        overflow-x: hidden;
        width: 0
    }

    @keyframes fb_mpn_landing_page_slide_out {
        0% {
            margin: 0 12px;
            width: 100% - 24px
        }

        60% {
            border-radius: 18px
        }

        100% {
            border-radius: 50%;
            margin: 0 24px;
            width: 60px
        }
    }

    @keyframes fb_mpn_landing_page_slide_out_from_left {
        0% {
            left: 12px;
            width: 100% - 24px
        }

        60% {
            border-radius: 18px
        }

        100% {
            border-radius: 50%;
            left: 12px;
            width: 60px
        }
    }

    @keyframes fb_mpn_landing_page_slide_up {
        0% {
            bottom: 0;
            opacity: 0
        }

        100% {
            bottom: 24px;
            opacity: 1
        }
    }

    @keyframes fb_mpn_bounce_in {
        0% {
            opacity: .5;
            top: 100%
        }

        100% {
            opacity: 1;
            top: 0
        }
    }

    @keyframes fb_mpn_fade_out {
        0% {
            bottom: 30px;
            opacity: 1
        }

        100% {
            bottom: 0;
            opacity: 0
        }
    }

    @keyframes fb_mpn_bounce_out {
        0% {
            opacity: 1;
            top: 0
        }

        100% {
            opacity: .5;
            top: 100%
        }
    }

    @keyframes fb_bounce_in_v2 {
        0% {
            opacity: 0;
            transform: scale(0, 0);
            transform-origin: bottom right
        }

        50% {
            transform: scale(1.03, 1.03);
            transform-origin: bottom right
        }

        100% {
            opacity: 1;
            transform: scale(1, 1);
            transform-origin: bottom right
        }
    }

    @keyframes fb_bounce_in_from_left {
        0% {
            opacity: 0;
            transform: scale(0, 0);
            transform-origin: bottom left
        }

        50% {
            transform: scale(1.03, 1.03);
            transform-origin: bottom left
        }

        100% {
            opacity: 1;
            transform: scale(1, 1);
            transform-origin: bottom left
        }
    }

    @keyframes fb_bounce_out_v2 {
        0% {
            opacity: 1;
            transform: scale(1, 1);
            transform-origin: bottom right
        }

        100% {
            opacity: 0;
            transform: scale(0, 0);
            transform-origin: bottom right
        }
    }

    @keyframes fb_bounce_out_from_left {
        0% {
            opacity: 1;
            transform: scale(1, 1);
            transform-origin: bottom left
        }

        100% {
            opacity: 0;
            transform: scale(0, 0);
            transform-origin: bottom left
        }
    }

    @keyframes slideInFromBottom {
        0% {
            opacity: .1;
            transform: translateY(100%)
        }

        100% {
            opacity: 1;
            transform: translateY(0)
        }
    }

    @keyframes slideInFromBottomDelay {
        0% {
            opacity: 0;
            transform: translateY(100%)
        }

        97% {
            opacity: 0;
            transform: translateY(100%)
        }

        100% {
            opacity: 1;
            transform: translateY(0)
        }
    }
</style>
</head>

<body style="">
    <div class="loading_dimm" style="display:none; z-index:20000;"></div>
    <div class="loading_img" style="display:none; z-index:20001;"></div>
    <div class="pop_dimm"></div>
    <div id="wrap">

        <script>
            //appId      : '1012019678818238',
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '179159949450639',
                    xfbml: true,
                    version: 'v2.4'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) { return; }
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
        <div id="top_MSR" class="eFreqTop">
            <!-- 20170510 수정 : 클래스 eFreqTop 추가 -->
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
                    <p class="user_greet_txt"><strong>
                            <!-- 홍길동 -->
                        </strong>님, 안녕하세요!</p>
                    <p class="msr_btn_setting"><a href="my/myinfo_modify_login">개인정보 수정</a></p>
                </div>
                <!-- 유저인포 end -->
                <span class="msr_sep_line"></span>

                <!-- 유저레벨 -->
                <!-- MSR 회원 -->
                <div class="user_level" style="display:none;">
                    <a href="my/reward">
                        <p class="level_star_bg en">0</p>
                        <p class="user_level_txt">
                            <!-- <strong class="t_ac8432 en userGrade">Gold Level</strong><br /><strong>무료음료</strong> 획득 별까지<br><strong class="necessaryStar">0개</strong> 남았습니다. -->
                        </p>
                    </a>
                </div>
                <!-- MSR 회원 end -->

                <!-- 일반회원 -->
                <div class="msr_lead">
                    <a href="msr/msreward/level_benefit">
                        <p class="icon_msr_cup"></p>
                        <p class="msr_lead_txt"><strong>스타벅스 리워드</strong><br>혜택에 편리함까지 더한<br>스타벅스 리워드를<br>즐겨보세요.</p>
                        <!-- 스타벅스 리워드 수정 -->
                    </a>
                </div>
                <!-- 일반회원 end -->
                <!-- 유저레벨 end -->

                <span class="msr_sep_line"></span>

                <!-- 카드인포 -->
                <!-- MSR 회원 -->
                <!-- 150805 DOM 수정 -->
                <div class="msr_card_info w_card_pic">
                    <p class="msr_card_area" onclick="location.href = '/my/mycard_index';" style="cursor:pointer;"><img
                            alt=""></p>
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
                        <p class="num">
                            <!-- 1234-1234-1234-1234 -->
                        </p>
                        <p class="barcord">
                            <!-- <img src="//image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> -->
                        </p>
                    </div>
                    <div class="mycard_one" style="transform: rotateY(307.013deg);">
                        <!-- <div class="front"> -->
                        <img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt="">
                        <!-- </div> -->
                        <!-- <div class="back"><img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt=""></div> -->
                    </div>
                    <p class="mycard_money_result">잔액 <span class="en balance">
                            <!-- 550,000 -->
                        </span>원</p>
                    <!-- 150924 - 다른카드보기버튼 추가 -->
                    <p class="btn_other_more"><a href="my/mycard_index">다른 카드 보기</a></p>
                    <!-- 150924 - 다른카드보기버튼 추가 ebd -->
                </div>
                <!-- 150805 DOM 수정 -->
                <!-- MSR 회원 end -->

                <!-- 일반회원 -->
                <div class="sb_card_regi">
                    <a href="javascript:void(0);">
                        <p class="icon_add_card" onclick="location.href = '/my/mycard_info_input';"><img alt="카드등록 아이콘"
                                src="//image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
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
                    <p class="top_msr_mem_yet"><strong>스타벅스커피 코리아 회원이 아니세요?</strong><br>스타벅스커피 코리아 회원만의<br>특별한 혜택을 누릴 수
                        있습니다.</p>
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
                    <p class="sbcard_lead_txt"><strong>스타벅스 카드를 가지고 계신가요?</strong><br>스타벅스 카드를 등록하시면, 스타벅스 리워드 만의<br>특별한
                        혜택을 누릴 수 있습니다.</p> <!-- 스타벅스 리워드 수정 -->
                    <p class="btn_sbcard_regi">
                        <a href="my/mycard_info_input">카드 등록</a>
                    </p>
                </div>
                <!-- 160628 수정 -->
                <div class="top_msr_nologin_b">
                    <p class="egift_lead_txt"><strong>스타벅스 카드가 없으신가요?</strong><br>스타벅스 매장에서 구매하시거나,<br>PC/모바일웹, 스타벅스
                        앱에서<br>e-Gift를 “나에게 선물하기”로 구매 후,<br>편리하게 등록하세요!<br>스타벅스 리워드의 특별한 혜택! 생일 쿠폰을 드립니다!</p>
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
                    <li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기">
                            <!-- 접근성_20171106 role, title 추가 --><span class="rCup2"
                                style="width: 90px; height: 90px; overflow: hidden;">
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/001.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/002.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/003.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/004.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/005.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/006.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/007.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/008.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/009.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/010.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/011.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/012.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/013.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/014.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/015.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/016.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/017.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/018.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/019.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/020.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/021.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/022.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/023.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/024.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/025.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/026.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/027.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/028.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/029.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/030.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/031.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/032.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/033.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/034.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/035.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/036.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/037.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/038.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/039.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/040.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/041.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: block; width: 90px; height: 90px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup_m/login/042.png&quot;);">
                                </div>
                                <div id="jsMovie_event_overlay" style="width: 90px; height: 180px; margin-top: -180px;">
                                </div>
                                <div id="jsMovie_image_preload_container"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/001.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/002.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/002.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/003.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/004.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/003.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/005.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/004.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/006.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/007.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/005.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/008.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/006.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/009.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/007.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/010.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/008.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/011.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/009.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/012.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/010.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/013.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/011.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/014.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/012.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/015.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/013.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/016.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/014.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/015.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/016.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/017.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/018.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/019.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/020.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/021.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/022.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/023.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/024.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/025.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/026.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/027.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/028.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/029.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/030.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/031.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/032.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/033.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/034.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/035.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/017.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/036.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/018.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/037.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/019.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/038.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/020.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/039.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/021.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/040.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/022.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/041.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/023.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/024.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup_m/login/042.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/025.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/026.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/027.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/028.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/029.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/030.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/031.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/032.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/033.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/034.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/035.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/036.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/037.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/038.png" alt=""
                                        style="height: 1px; width: 1px;"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/039.png" alt=""
                                        style="height: 1px; width: 1px;"></div>
                            </span>
                        </a></li><!-- 150709 클레스 수정 -->
                    <li class="tablet_gnb02"><a href="javascript:void(0);" required="login" data-href="my/index"><span
                                class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 -->
                    </li>
                    <li class="tablet_gnb03"><a href="store/store_map"><span class="a11y">매장찾기</span></a>
                        <!-- 접근성_20171106 span추가 -->
                    </li>
                    <li class="tablet_gnb04"><a href="javascript:void(0);"><span class="a11y"
                                role="button">메뉴열기</span></a><!-- 접근성_20171106 span추가 -->
                    </li>
                </ul>
            </nav>
        </div>
        <!-- 960 gnb end -->
        <!-- 640 gnb -->
        <div class="mob_gnb_dimm"></div>
        <div class="mob_gnb_wrap">
            <div class="mob_gnb_wrap_inner">
                <aside class="btn_gnb_close"><a href="javascript:void(0);" title="메뉴닫기" role="button">닫기</a>
                    <!-- 접근성_20171106 title 추가 -->
                </aside>
                <div class="mob_gnb_search">
                    <div class="mob_gnb_search_inner">
                        <label for="search_text" class="a11y">검색어</label><!-- 접근성_20171106 검색어 추가 -->
                        <input type="text" id="search_text" name="search_text">
                        <a href="javascript:void(0);" class="mob_gnb_search_btn" titie="검색">Search</a>
                        <!-- 접근성_20171106 title 추가 -->
                    </div>
                </div>
                <nav class="mob_gnb_menus">
                    <ul>
                        <li class="mob_gnb_ttl1" style="display: list-item;"><a role="button" class="en"
                                href="javascript:void(0);">My Starbucks<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                        </li>
                        <li style="display: none;"><a href="my/index">한눈에 보기</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">My 리워드<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/reward">리워드 및 혜택</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/reward_star_history">별 히스토리</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">My 스타벅스 카드<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/mycard_index">보유 카드</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/mycard_info_input">카드 등록</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/mycard_charge">카드 충전</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/mycard_lost">분실신고/잔액이전</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="msr/sceGift/gift_step1">선물하기</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/egiftCard">선물 내역</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/egiftCard_shopping_bag">장바구니 내역</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">My 쿠폰<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/ecoupon?t=REG">등록하기</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/ecoupon?t=GIFT">선물하기</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/ecoupon?t=USE">사용하기</a></li>
                            </ul>
                        </li>
                        <li style="display: none;"><a href="javascript:void(0);" required="login"
                                data-href="my/calendar">My 캘린더</a></li>
                        <!-- <li><a href="my/drink_shop" required="login">My 음료/매장</a></li> -->
                        <li style="display: none;"><a href="javascript:void(0);" required="login"
                                data-href="my/my_menu">My 메뉴</a></li>


                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">My e-프리퀀시<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="eFreq/guide?promoSeq=172">이용안내</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="eFreq/status?promoSeq=172">이용현황</a></li>
                            </ul>
                        </li>

                        <li style="display: none;"><a href="javascript:void(0);" required="login"
                                data-href="my/vocList">My 고객의 소리</a></li>
                        <li style="display: none;"><a href="javascript:void(0);" required="login"
                                data-href="my/eReceiptList">전자영수증</a></li>
                        <li class="msRnb_btn" style="display: none;"><a href="javascript:void(0);"
                                onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
                        <li style="display: none;"><a href="javascript:void(0);" required="login"
                                data-href="edt/expressDtList">My DT Pass</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">개인정보관리<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/myinfo_modify_login">개인정보확인 및 수정</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/myinfo_out">회원 탈퇴</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="my/myinfo_modify_pwd">비밀번호 변경</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en"
                                href="javascript:void(0);">COFFEE<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                        </li>
                        <li style="display: none;"><a href="coffee/index">한눈에 보기</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">커피<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="coffee/product_list">스타벅스 원두</a></li>
                                <li style="display: none;"><a href="coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>
                                <!-- <li><a href="coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li> 20210915 삭제 -->
                                <li style="display: none;"><a href="coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a>
                                </li><!-- 20210915 추가 -->
                            </ul>
                        </li>
                        <li style="display: none;"><a href="coffee/productFinder">나와 어울리는 커피</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">스타벅스 리저브™<span
                                    class="mob_gnb_arrow_down"></span></a>
                            <ul>
                                <li style="display: none;"><a href="coffee/reserve_info">ABOUT</a></li>
                                <li style="display: none;"><a href="coffee/reserve_magazine_list">RESERVE MAGAZINE</a>
                                </li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">에스프레소 음료<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
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
                            <a role="button" href="javascript:void(0);">최상의 커피를 즐기는 법<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
                            <ul>
                                <li style="display: none;"><a href="coffee/higher_enjoy">커피 프레스</a></li>
                                <li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>
                                <li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>
                                <li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>
                                <li style="display: none;"><a href="coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는
                                        법</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">커피 이야기<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
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
                        <li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en"
                                href="javascript:void(0);">MENU<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                        </li>
                        <li style="display: none;"><a href="menu/index">한눈에 보기</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">음료<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="menu/drink_list">전체보기</a></li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_cold_brew">콜드 브루</a>
                                </li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_brood">브루드 커피</a>
                                </li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_espresso">에스프레소</a>
                                </li>
                                <li style="display: none;"><a
                                        href="menu/drink_list?CATE_CD=product_frappuccino">프라푸치노</a></li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_blended">블렌디드</a>
                                </li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_fizzo">스타벅스 피지오</a>
                                </li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_tea">티(티바나)</a></li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_etc">기타 제조 음료</a>
                                </li>
                                <li style="display: none;"><a href="menu/drink_list?CATE_CD=product_juice">스타벅스
                                        주스(병음료)</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="menu/food_list">전체보기</a></li>
                                <li style="display: none;"><a href="menu/food_list?CATE_CD=product_bakery">브레드</a></li>
                                <li style="display: none;"><a href="menu/food_list?CATE_CD=product_cake">케이크</a></li>
                                <li style="display: none;"><a href="menu/food_list?CATE_CD=product_sandwich">샌드위치 &amp;
                                        샐러드</a></li>
                                <li style="display: none;"><a href="menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a>
                                </li>
                                <li style="display: none;"><a href="menu/food_list?CATE_CD=product_fruit_yogurt">과일
                                        &amp; 요거트</a></li>
                                <li style="display: none;"><a href="menu/food_list?CATE_CD=product_snack">스낵 &amp; 미니
                                        디저트</a></li>
                                <li style="display: none;"><a href="menu/food_list?CATE_CD=product_icecream">아이스크림</a>
                                </li>
                                <!-- <li><a href="menu/food_list?CATE_CD=product_etc">기타 푸드</a></li> -->
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="menu/product_list">전체보기</a></li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_mug">머그</a></li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_glass">글라스</a>
                                </li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_plastic">플라스틱
                                        텀블러</a></li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_stainless">스테인리스
                                        텀블러</a></li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_vacuum">보온병</a>
                                </li>
                                <li style="display: none;"><a
                                        href="menu/product_list?CATE_CD=product_accessories">액세서리</a></li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_present">선물세트</a>
                                </li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_coffee">커피 용품</a>
                                </li>
                                <li style="display: none;"><a href="menu/product_list?CATE_CD=product_teaPackage">패키지
                                        티(티바나)</a></li>
                                <!-- <li><a href="menu/product_list?CATE_CD=product_planner">스타벅스 플래너</a></li> -->
                                <!-- 20210602 삭제 -->
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">카드<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="menu/card_list">전체보기</a></li>
                                <li style="display: none;"><a href="menu/card_list?CATE_CD=product_offline">실물카드</a>
                                </li>
                                <li style="display: none;"><a href="menu/card_list?CATE_CD=product_egift">e-Gift 카드</a>
                                </li>
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
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">메뉴 이야기<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="store/store_nitro_coldbrew">나이트로 콜드브루</a></li>
                                <li style="display: none;"><a href="store/store_coldbrew">콜드 브루</a></li>
                                <li style="display: none;"><a href="menuStory/teavana">스타벅스 티바나</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en"
                                href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                        </li>
                        <li style="display: none;"><a href="store/index">한눈에 보기</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">매장 찾기<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="store/store_map?disp=quick">빠른 검색</a></li>
                                <li style="display: none;"><a href="store/store_map?disp=locale">지역 검색</a></li>
                            </ul>
                        </li>
                        <li style="display: none;"><a href="store/store_drive">드라이브 스루 매장</a></li>
                        <li style="display: none;"><a href="store/store_reserve">스타벅스 리저브™ 매장</a></li>
                        <li style="display: none;"><a href="store/store_community">커뮤니티 스토어 매장</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">매장 이야기<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <!-- <li><a href="store/store_cheongdam">청담스타</a></li> 20210727 메뉴 비노출 -->
                                <li style="display: none;"><a href="store/store_star_field">티바나 바 매장</a></li>
                                <!-- <li><a href="store/store_park">파미에파크</a></li> 20210727 메뉴 비노출 -->
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en"
                                href="javascript:void(0);">RESPONSIBILITY<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                        </li>
                        <li style="display: none;"><a href="responsibility/index">한눈에 보기</a></li>
                        <li style="display: none;"><a href="responsibility/starbucks_shared_planet">사회공헌 캠페인 소개</a></li>
                        <!-- 20210820 메뉴명 수정 -->
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">지역 사회 참여 활동<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="responsibility/hope_delivery">희망배달 캠페인</a></li>
                                <li style="display: none;"><a href="responsibility/talent_donation">재능기부 카페 소식</a></li>
                                <li style="display: none;"><a href="responsibility/community_store">커뮤니티 스토어</a></li>
                                <li style="display: none;"><a href="responsibility/youth_resource">청년 지원 프로그램</a></li>
                                <!-- 202107 메뉴명 수정 -->
                                <li style="display: none;"><a href="responsibility/our_agriculture">우리 농산물 사랑 캠페인</a>
                                </li>
                                <li style="display: none;"><a href="responsibility/our_culture_defend">우리 문화 지키기</a>
                                </li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">환경보호 활동<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="responsibility/environment">친환경 활동</a></li>
                                <!-- 202107 메뉴명 수정 -->
                                <li style="display: none;"><a href="responsibility/no_disposable_cup">일회용 컵 없는 매장</a>
                                </li>
                                <li style="display: none;"><a href="responsibility/bean_recycling">커피 원두 재활용</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">윤리 구매<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="responsibility/ethically_sourcing">윤리적 원두 구매</a>
                                </li>
                                <li style="display: none;"><a href="responsibility/fair_trade">공정무역 인증</a></li>
                                <li style="display: none;"><a href="responsibility/farmer_support">커피 농가 지원 활동</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">글로벌 사회 공헌<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="responsibility/sp_ethical_management">윤리경영 보고서</a>
                                </li>
                                <li style="display: none;"><a href="responsibility/starbucks_foundation">스타벅스 재단</a>
                                </li>
                                <li style="display: none;"><a href="responsibility/sp_global_month">지구촌 봉사의 달</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en"
                                href="javascript:void(0);">Starbucks Rewards<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                        </li> <!-- 스타벅스 리워드 수정 -->
                        <li style="display: none;"><a href="msr/index">한눈에 보기</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">스타벅스 리워드<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <!-- 스타벅스 리워드 수정 -->
                            <ul>
                                <li style="display: none;"><a href="msr/msreward/about">스타벅스 리워드 소개</a></li>
                                <!-- 스타벅스 리워드 수정 -->
                                <li style="display: none;"><a href="msr/msreward/level_benefit">등급 및 혜택</a></li>
                                <li style="display: none;"><a href="msr/msreward/star">스타벅스 별</a></li>
                                <li style="display: none;"><a href="community/faq?menu_cd=STB2703&amp;cate=F17">자주 하는
                                        질문</a></li> <!-- 20210809 수정 -->
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">스타벅스 카드<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="msr/scard/about">스타벅스 카드 소개</a></li>
                                <li style="display: none;"><a href="msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>
                                <li style="display: none;"><a href="msr/scard/register_inquiry">등록 및 조회</a></li>
                                <li style="display: none;"><a href="msr/scard/charge_information">충전 및 이용안내</a></li>
                                <li style="display: none;"><a href="msr/scard/lost_report">분실신고/환불신청</a></li>
                                <li style="display: none;"><a href="community/faq?menu_cd=STB2703&amp;cate=F05">자주 하는
                                        질문</a></li> <!-- 20210809 수정 -->
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">스타벅스 e-Gift Card<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card
                                        소개</a></li>
                                <li style="display: none;"><a href="msr/sceGift/msr_useguide">이용안내</a></li>
                                <li style="display: none;"><a href="javascript:void(0);" required="login"
                                        data-href="msr/sceGift/gift_step1">선물하기</a></li>
                                <li style="display: none;"><a href="community/faq?menu_cd=STB2703&amp;cate=F22">자주 하는
                                        질문</a></li> <!-- 20210809 수정 -->
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="mob_gnb_ttl2" style="display: list-item;"><a role="button" class="en"
                                href="javascript:void(0);">WHAT'S NEW<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                        </li>
                        <li style="display: none;"><a href="whats_new/index">한눈에 보기</a></li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">이벤트<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                            <!-- 20210304 메뉴명변경 -->
                            <ul>
                                <li style="display: none;"><a href="whats_new/campaign_list">전체</a></li>
                                <li style="display: none;"><a href="whats_new/campaign_list?menu_cd=STB2812">스타벅스 카드</a>
                                </li>
                                <li style="display: none;"><a href="whats_new/campaign_list?menu_cd=STB2813">스타벅스
                                        리워드</a></li> <!-- 스타벅스 리워드 수정 -->
                                <li style="display: none;"><a href="whats_new/campaign_list?menu_cd=STB2814">온라인</a>
                                </li>


                                <li style="display: none;"><a href="whats_new/eFreq_gift">e-프리퀀시 증정품</a></li>
                                <!-- 20210423 메뉴명, 경로 수정 -->

                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">뉴스<span class="mob_gnb_arrow_down"></span></a>
                            <!-- 접근성_20171106 role 추가 -->
                            <!-- 20210304 메뉴명변경 -->
                            <ul>
                                <li style="display: none;"><a href="whats_new/news_list">전체</a></li>
                                <li style="display: none;"><a href="whats_new/news_list?cate=N01">상품 출시</a></li>
                                <li style="display: none;"><a href="whats_new/news_list?cate=N02">스타벅스와 문화</a></li>
                                <li style="display: none;"><a href="whats_new/news_list?cate=N03">스타벅스 사회공헌</a></li>
                                <li style="display: none;"><a href="whats_new/news_list?cate=N04">스타벅스 카드출시</a></li>
                            </ul>
                        </li>
                        <li style="display: none;">
                            <a role="button" href="javascript:void(0);">매장별 이벤트<span
                                    class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
                            <ul>
                                <li style="display: none;"><a href="whats_new/store_event_list">일반 매장</a></li>
                                <li style="display: none;"><a
                                        href="whats_new/store_event_list?search_date=1&amp;tab=1">신규 매장</a></li>
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
                        <h1 class="logo"><a href="/" title="스타벅스 메인페이지">스타벅스 코리아</a><!-- 접근성_20171106 title 추가 -->
                        </h1>
                        <nav class="util_nav">


                            <ul>
                                <li class="util_nav01 sign_out" style=""><a href="/starbucks/login/logout">Sign out</a></li>
                                <li class="util_nav01 sign_in" style="display: none;"><a href="/starbucks/login/login">Sign
                                        In</a></li>
                                <li class="util_nav02"><a href="javascript:void(0);"
                                        data-href="my/index">My Starbucks</a></li>
                                <li class="util_nav03"><a href="menu/orderList">Order</a></li>
                                <li class="util_nav04"><a href="store/store_map">Find a Store</a></li>
                            </ul>
                        </nav>
                       
                        <a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기">
                            <!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3"
                                style="width: 53px; height: 45px; overflow: hidden;">
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/001.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/002.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/003.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/004.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/005.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/006.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/007.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/008.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/009.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/010.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/011.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/012.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/013.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/014.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/015.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/016.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/017.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/018.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/019.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/020.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/021.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/022.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/023.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/024.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/025.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/026.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/027.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/028.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/029.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/030.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/031.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/032.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/033.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/034.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/035.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/036.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/037.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: none; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/038.png&quot;);">
                                </div>
                                <div class="jsMovieFrame"
                                    style="display: block; width: 53px; height: 45px; background-position: 0px 0px; background-repeat: no-repeat; background-image: url(&quot;//image.istarbucks.co.kr/common/img/common/rcup/login/039.png&quot;);">
                                </div>
                                <div id="jsMovie_event_overlay" style="width: 53px; height: 90px; margin-top: -90px;">
                                </div>
                                <div id="jsMovie_image_preload_container"><img
                                        src="//image.istarbucks.co.kr/common/img/common/rcup/login/001.png" alt=""
                                        style="height: 1px; width: 1px;"></div>
                            </span>
                        </a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
                    </div>
                    <nav class="sub_gnb_nav">
                        <div class="sub_gnb_nav_inner">
                            <ul>
                                <!-- COFFEE -->
                                <li class="gnb_nav01">
                                    <h2><a href="coffee/index" class="">COFFEE</a></h2>
                                    <div class="gnb_sub_wrap" style="display: none;">
                                        <div class="gnb_sub">
                                            <div class="gnb_sub_inner">
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="coffee/product_list">커피</a></li>
                                                    <li><a href="coffee/product_list">스타벅스 원두</a></li>
                                                    <li><a href="coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>
                                                    <li><a href="coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="coffee/productFinder">나와 어울리는
                                                            커피</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="coffee/reserve_info">스타벅스 리저브™</a>
                                                    </li>
                                                    <li><a href="coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="coffee/espresso">에스프레소 음료</a></li>
                                                    <li><a href="coffee/doppio">도피오</a></li>
                                                    <li><a href="coffee/espresso_macchiato">에스프레소 마키아또</a></li>
                                                    <li><a href="coffee/americano">아메리카노</a></li>
                                                    <li><a href="coffee/caramel_macchato">마키아또</a></li>
                                                    <li><a href="coffee/cappuccino">카푸치노</a></li>
                                                    <li><a href="coffee/latte">라떼</a></li>
                                                    <li><a href="coffee/mocha">모카</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="coffee/higher_enjoy">최상의 커피를 즐기는
                                                            법</a></li>
                                                    <li><a href="coffee/higher_enjoy">커피 프레스</a></li>
                                                    <li><a href="coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>
                                                    <li><a href="coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>
                                                    <li><a href="coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>
                                                    <li><a href="coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는
                                                            법</a></li>
                                                </ul>
                                                <ul style="padding-top: 30px; clear: both;">
                                                    <li class="gnb_sub_ttl"><a href="coffee/story">커피 이야기</a></li>
                                                    <li><a href="coffee/story">농장에서 우리의 손으로</a></li>
                                                    <li><a href="coffee/story?PACKAGE=02">최상의 아라비카 원두</a></li>
                                                    <li><a href="coffee/story?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>
                                                    <li><a href="coffee/story?PACKAGE=05">스타벅스 디카페인</a></li>
                                                    <li><a href="coffee/story?PACKAGE=04">클로버® 커피 추출 시스템</a></li>
                                                </ul>
                                            </div>
                                        </div> <!-- 텍스쳐 bg -->
                                        <div class="gnb_sub_txbg">
                                            <div class="gnb_sub_tx_inner">
                                                <div class="gnb_sub_tx_left">
                                                    <h3><a href="coffee/productFinder">나와 어울리는 커피 찾기</a></h3>
                                                    <p class="gnb_sub_ex_txt">스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>
                                                    <h3><a href="coffee/higher_enjoy">최상의 커피를 즐기는 법</a></h3>
                                                    <p class="gnb_sub_ex_txt">여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>
                                                </div>
                                                <div class="gnb_sub_tx_right"> </div>
                                            </div>
                                        </div> <!-- 텍스쳐 bg end -->
                                    </div>
                                </li> <!-- COFFEE end -->
                                <!-- MENU -->
                                <li class="gnb_nav02">
                                    <h2><a href="menu/index" class="">MENU</a></h2>
                                    <div class="gnb_sub_wrap" style="display: none;">
                                        <div class="gnb_sub">
                                            <div class="gnb_sub_inner">
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="menu/drink_list">음료</a></li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_cold_brew">콜드 브루</a>
                                                    </li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_brood">브루드 커피</a></li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_espresso">에스프레소</a>
                                                    </li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_frappuccino">프라푸치노</a>
                                                    </li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_blended">블렌디드</a></li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_fizzo">스타벅스 피지오</a>
                                                    </li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_tea">티(티바나)</a></li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_etc">기타 제조 음료</a></li>
                                                    <li><a href="menu/drink_list?CATE_CD=product_juice">스타벅스 주스(병음료)</a>
                                                    </li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="menu/food_list">푸드</a></li>
                                                    <li><a href="menu/food_list?CATE_CD=product_bakery">브레드</a></li>
                                                    <li><a href="menu/food_list?CATE_CD=product_cake">케이크</a></li>
                                                    <li><a href="menu/food_list?CATE_CD=product_sandwich">샌드위치 &amp;
                                                            샐러드</a></li>
                                                    <li><a href="menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a>
                                                    </li>
                                                    <li><a href="menu/food_list?CATE_CD=product_fruit_yogurt">과일 &amp;
                                                            요거트</a></li>
                                                    <li><a href="menu/food_list?CATE_CD=product_snack">스낵 &amp; 미니
                                                            디저트</a></li>
                                                    <li><a href="menu/food_list?CATE_CD=product_icecream">아이스크림</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="menu/product_list">상품</a></li>
                                                    <li><a href="menu/product_list?CATE_CD=product_mug">머그</a></li>
                                                    <li><a href="menu/product_list?CATE_CD=product_glass">글라스</a></li>
                                                    <li><a href="menu/product_list?CATE_CD=product_plastic">플라스틱 텀블러</a>
                                                    </li>
                                                    <li><a href="menu/product_list?CATE_CD=product_stainless">스테인리스
                                                            텀블러</a></li>
                                                    <li><a href="menu/product_list?CATE_CD=product_vacuum">보온병</a></li>
                                                    <li><a href="menu/product_list?CATE_CD=product_accessories">액세서리</a>
                                                    </li>
                                                    <li><a href="menu/product_list?CATE_CD=product_present">선물세트</a>
                                                    </li>
                                                    <li><a href="menu/product_list?CATE_CD=product_coffee">커피 용품</a>
                                                    </li>
                                                    <li><a href="menu/product_list?CATE_CD=product_teaPackage">패키지
                                                            티(티바나)</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="menu/card_list">카드</a></li>
                                                    <li><a href="menu/card_list?CATE_CD=product_offline">실물카드</a></li>
                                                    <li><a href="menu/card_list?CATE_CD=product_egift">e-Gift 카드</a>
                                                    </li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a>메뉴 이야기</a></li>
                                                    <li><a href="store/store_nitro_coldbrew">나이트로 콜드브루</a></li>
                                                    <li><a href="store/store_coldbrew">콜드 브루</a></li>
                                                    <li><a href="menuStory/teavana">스타벅스 티바나</a></li>
                                                </ul>
                                            </div>
                                        </div> <!-- 텍스쳐 bg -->
                                        <div class="gnb_sub_txbg">
                                            <div class="gnb_sub_tx_inner">
                                                <div class="gnb_sub_tx_left">
                                                    <h3><a href="store/store_nitro_coldbrew">나이트로 콜드 브루 <img alt=""
                                                                src="//image.istarbucks.co.kr/common/img/common/icon_gnb_new.png"></a>
                                                    </h3>
                                                    <p class="gnb_sub_ex_txt">나이트로 커피 정통의 물결치듯 흘러내리는 캐스케이딩과 부드러운 크림을
                                                        경험하세요. </p>
                                                </div>
                                                <div class="gnb_sub_tx_right"> </div>
                                            </div>
                                        </div> <!-- 텍스쳐 bg end -->
                                    </div>
                                </li> <!-- MENU end -->
                                <li class="gnb_nav03">
                                    <h2><a href="store/index" class="">STORE</a></h2>
                                    <div class="gnb_sub_wrap" style="display: none;">
                                        <div class="gnb_sub">
                                            <div class="gnb_sub_inner">
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="store/store_map">매장 찾기</a></li>
                                                    <li><a href="store/store_map?disp=quick">퀵 검색</a></li>
                                                    <li><a href="store/store_map?disp=locale">지역 검색</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="store/store_drive">드라이브 스루 매장</a>
                                                    </li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="store/store_reserve">스타벅스 리저브™
                                                            매장</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="store/store_community">커뮤니티 스토어
                                                            매장</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a>매장 이야기</a></li>
                                                    <li><a href="store/store_star_field">티바나 바 매장</a></li>
                                                </ul>
                                            </div>
                                        </div> <!-- 텍스쳐 bg -->
                                        <div class="gnb_sub_txbg">
                                            <div class="gnb_sub_tx_inner">
                                                <div class="gnb_sub_tx_left">
                                                    <h3><a href="store/store_map">매장찾기</a></h3>
                                                    <p class="gnb_sub_ex_txt">보다 빠르게 매장을 찾아보세요.</p>
                                                </div>
                                                <div class="gnb_sub_tx_right"> </div>
                                            </div>
                                        </div> <!-- 텍스쳐 bg end -->
                                    </div>
                                </li>
                                
                                <li class="gnb_nav05">
                                    <h2><a href="msr/index" class="">STARBUCKS REWARDS</a></h2>
                                    <div class="gnb_sub_wrap" style="display: none;">
                                        <div class="gnb_sub">
                                            <div class="gnb_sub_inner">
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="msr/msreward/about">스타벅스 리워드</a>
                                                    </li>
                                                    <li><a href="msr/msreward/about">스타벅스 리워드 소개</a></li>
                                                    <li><a href="msr/msreward/level_benefit">등급 및 혜택</a></li>
                                                    <li><a href="msr/msreward/star">스타벅스 별</a></li>
                                                    <li><a href="community/faq?menu_cd=STB2703&amp;cate=F17">자주 하는
                                                            질문</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="msr/scard/about">스타벅스 카드</a></li>
                                                    <li><a href="msr/scard/about">스타벅스 카드 소개</a></li>
                                                    <li><a href="msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>
                                                    <li><a href="msr/scard/register_inquiry">등록 및 조회</a></li>
                                                    <li><a href="msr/scard/charge_information">충전 및 이용안내</a></li>
                                                    <li><a href="msr/scard/lost_report">분실신고/환불신청</a></li>
                                                    <li><a href="community/faq?menu_cd=STB2703&amp;cate=F05">자주 하는
                                                            질문</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="gnb_sub_ttl"><a href="msr/sceGift/egift_information">스타벅스
                                                            e-Gift Card</a></li>
                                                    <li><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a>
                                                    </li>
                                                    <li><a href="msr/sceGift/msr_useguide">이용안내</a></li>
                                                    <li><a href="javascript:void(0);" required="login"
                                                            data-href="msr/sceGift/gift_step1">선물하기</a></li>
                                                    <li><a href="community/faq?menu_cd=STB2703&amp;cate=F22">자주 하는
                                                            질문</a></li>
                                                </ul>
                                            </div>
                                        </div> <!-- 텍스쳐 bg -->
                                        <div class="gnb_sub_txbg">
                                            <div class="gnb_sub_tx_inner">
                                                <div class="gnb_sub_tx_left">
                                                    <h3><a href="msr/scard/register_inquiry">스타벅스 카드 등록하기</a></h3>
                                                    <p class="gnb_sub_ex_txt">카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</p>
                                                </div>
                                                <div class="gnb_sub_tx_right"> </div>
                                            </div>
                                        </div> <!-- 텍스쳐 bg end -->
                                    </div>
                                </li>
                               
                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- 서브 gnb end -->
            </div>
        </div>


        <div id="container">
            <!-- 서브 타이틀 -->
            <header class="msr_sub_ttl_wrap">
                <div class="msr_sub_ttl_inner">
                    <h4><img alt="선물하기" src="//image.istarbucks.co.kr/common/img/msr/sceGift/gift_ttl.png"></h4>
                    <ul class="smap">
                        <li><a href="javascript:void(0);"><img
                                    src="//image.istarbucks.co.kr/common/img/common/icon_home.png" alt="홈으로"></a></li>
                        <li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png"
                                alt="하위메뉴"></li>
                        <li><a href="javascript:void(0);">Starbucks Rewards</a></li>
                        <li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png"
                                alt="하위메뉴"></li>
                        <li><a href="javascript:void(0);">스타벅스 e-Gift Card</a></li>
                        <li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png"
                                alt="하위메뉴"></li>
                        <li><a href="javascript:void(0);">선물하기</a></li>
                    </ul>
                </div>
            </header>
            <!-- 서브 타이틀 end -->
            

            <!-- 내용   form action eGiftCardProc -->
            <section class="card_gift_info_section">
                <form method="post" id="egift_f">
                    <!-- <input type="hidden" name="b2bYn" value="N">
                    <input type="hidden" id="egiftImgMngSeq" value="326">
                    <input type="hidden" id="cardName" value="고맙습니다 e-Gift">
                    <input type="hidden" id="cardImgUrl"
                        value="https://image.istarbucks.co.kr/cardImg/20220422/009046.gif">

                    <input type="hidden" id="egiftOrderSeq" value="">
                    <input type="hidden" id="receiveDataInfo" value="">

                    <input type="hidden" id="egiftCartSeq" value="">
 -->

					<!-- 0613 다정 -->
						
                    <fieldset>
                        <legend>선물할 정보 입력 및 메시지 입력을 해주세요.</legend>
                        <table class="gift_info_tbl" summary="선물할 카드, 선물할 방법, 받는 사람, 메시지 입력, 금액 선택, 전송방법, 결제 수단 선택, 유의사항">
							<caption>선물할 카드, 선물할 방법, 받는 사람, 메시지 입력, 금액 선택, 전송방법, 결제 수단 선택, 유의사항에 대한 테이블</caption>
							<!-- s::211202 수정 -->
							<colgroup>
								<col width="18%">
								<col width="*">
							</colgroup>
							<!-- e::211202 수정 -->
							<!--
							<tr>
								<th>선물할 카드</th>
								<td>
									<div class="tbl_card_area"><img alt="" src="//image.istarbucks.co.kr/common/img/msr/sceGift/card_sam2.png"></div>
									<p class="tbl_card_txt en">2015 Happy New Year</p>
								</td>
							</tr>
							-->
							<tbody>
							    <!-- 151105 발송전화번호 프로세스 수정 - 문진욱 -->
							    <!-- 0614 다정 -->
							    <!-- <tr class="egift_phone_cert_info" style="display:none;">
							        <th scope="row">보내는 사람</th>
							        <td>
							            <p class="pre_regi_number">010-4036-4933</p>
							            <span class="btn_pre_regi" style="display: none;"><a href="javascript:void(0);">인증</a></span>
							            <span class="pop_sender_btn" style="display: none;"><a href="javascript:void(0);">발신번호 사전등록제란?</a></span>
							
							            151118 수정
							            <p class="phone_num_warn2" style="display: none;">e-Gift Card 선물을 하시려면 휴대폰 번호 “인증”을 받으셔야 합니다.</p>
							            151118 수정 end
							            <p class="phone_chg_num">보내는 사람의 전화번호는 <a href="my/myinfo_modify_login">개인정보확인 및 수정</a> 페이지에서 변경 가능합니다.
							            </p>
							        </td>
							    </tr> -->
							    <!-- 151105 발송전화번호 프로세스 수정 - 문진욱 end -->
							    <tr>
							        <th>받는 사람<br>
							        	<!-- 0615 다정 나에게 선물하기 정보 불러오는 주석 풀어야함 -->
							            <p><div class="ez-checkbox"><input type="checkbox" id="giftMe" data-username="${name }" data-phone="010-0000-0000" data-email="${email }" class="ez-hide"></div><label for="giftMe">나에게 선물하기</label></p>
							        	<%-- <p><div class="ez-checkbox"><input type="checkbox" id="giftMe" data-username="${register.name }" data-phone="${register.phone }" data-email="${register.email }" class="ez-hide"></div><label for="giftMe">나에게 선물하기</label></p> --%>
							        </th>
							        <td>
							            <!-- 20150630 변경된 내용들 -->
							            <div class="receive_method1" style="display: none;">
							                <!--
							            <div class="tbl_card_sending">
							                <p>1</p>
							                <input class="sender" placeholder="받는 사람 이름" type="text">
							                <div class="sel_wrap">
							                    <div class="tbl_card_select">
							                        <label for="pnum_select1">010</label>
							                        <select id="pnum_select1" title="휴대폰 첫번째 자리">
							                            <option selected="selected">010</option>
							                            <option>011</option>
							                            <option>016</option>
							                        </select>
							                    </div>
							                </div>
							                <span>-</span>
							                <input class="pnum_input" name="" title="휴대폰 두번째 자리" type="text">
							                <span>-</span>
							                <input class="pnum_input" name="" title="휴대폰 세번째 자리" type="text">
							            </div>
							            -->
							                <!-- 220524 문구 수정 및 ul로 변경  -->
							
							
							                <!-- 220524 문구 수정 및 ul로 변경  -->
							                <!-- <div class="tbl_card_sending">
							                    <input type="text" class="sender" placeholder="받는 사람 이름" name="name">
							                    <div class="sel_wrap">
							                        <div class="tbl_card_select"> <label for="phone1_1">선택</label> <select id="phone1_1"
							                                name="phone1" title="휴대폰 첫번째 자리">
							                                <option value="" selected="selected">선택</option>
							                                <option value="010">010</option>
							                                <option value="011">011</option>
							                                <option value="016">016</option>
							                                <option value="017">017</option>
							                                <option value="018">018</option>
							                                <option value="019">019</option>
							                            </select> </div>
							                    </div> <span>-</span> <input type="tel" name="phone2" class="pnum_input" maxlength="4"
							                        title="휴대폰 두번째 자리"> <span>-</span> <input type="tel" name="phone3" class="pnum_input"
							                        maxlength="4" title="휴대폰 세번째 자리"> 
							                        <a class="sender_addel_btn addPhone" href="javascript:void(0);">추가</a> 
							                        <a class="sender_addel_btn removePhone" href="javascript:void(0);">삭제</a>
							                </div> -->
							                <p class="gift_info_adding" style="font-size: 14px; line-height: 1.6; color: #666; margin-top: 10px;">
							                    - 1회 10명까지 입력하실 수 있으며, 2명 이상 입력 시 신용카드 및 실시간 계좌이체 결제만 가능합니다.<br>
							                    - 10명 이상에게 동시 전송을 원하시는 경우 전송방법 중 "휴대폰 대량 전송(엑셀 업로드)"를 선택해 주세요.<br>
							                    - 휴대폰 전송을 하시는 경우 발송 환경에 따라 수신완료까지 최대 3시간이 소요될 수 있습니다.<br>
							                    -<span style="color: #006633; font-weight: bold;"> 선물 받는 분에게 알림톡으로 전송됩니다.</span><br>
							                    - '받는 사람 이름' 그대로 수신자 메시지에 표시됩니다.
							                </p>
							            </div>
							            <div class="receive_method2" style="display: none;">
							                <div class="file_input_wrap">
							
							
							
							                    <input class="file_input_txtbox" id="filename" readonly="readonly" type="text">
							                    <div class="btn_file_input">
							                        <input class="btn_file_search" type="button" value="찾아보기">
							                        <input class="btn_hidden"
							                            onchange="javascript:document.getElementById('filename').value = this.value;" type="file"
							                            name="file" id="file">
							                    </div>
							
							
							
							                    <a class="file_input_ok" href="javascript:void(0);">확인</a>
							                    <p class="btn_excel_down"><a href="upload/sample/e-Gift_upload_sample.xls">업로드 샘플 다운로드하기</a></p>
							                </div>
							                <p class="info" style="font-size: 14px; line-height: 1.6; color: #666; margin-top: 10px;">
							                    - 1회 100명까지 입력하실 수 있으며, 2명 이상 입력 시 신용카드 및 실시간 계좌이체 결제만 가능합니다. <br>
							                    - 선물 받으실 분의 휴대폰 번호를 엑셀파일 형식에 맞춰 맨 앞 Sheet에 정확히 입력해 주세요.<br>
							                    - 2번째 열은 휴대폰 번호, 3번째 열은 이름(비필수)을 입력하며 최대 100명만 입력하세요.<br>
							                    - 휴대폰 번호에 특수문자(-, !, ~, &amp; 등)나 영문 등을 입력하시면 업로드 되지 않습니다. 숫자만 입력해주세요.<br>
							                    - 1MB미만 엑셀파일(.xls 또는 .xlsx)만 업로드 하여 주세요.<br>
							                    - <span style="color: #006633; font-weight: bold;"> 선물 받는 분에게 알림톡으로 전송됩니다.</span><br>
							                    - '받는 사람 이름' 그대로 수신자 메시지에 표시됩니다.
							                </p>
							            </div>
							            <div class="receive_method3" style="display: block;">
							                <!--
							            <div class="tbl_card_sending">
							                <p>3</p>
							                <input class="sender2" placeholder="받는 사람 이름" type="text">
							                <input class="em_input" name="" title="이메일 앞주소" type="text" value="">
							                <span>@</span>
							                <input class="em_input" name="" title="이메일 뒷주소" type="text" value="">
							                <div class="em_sel_wrap">
							                    <div class="tbl_em_select">
							                        <label for="em_select3">직접입력</label>
							                        <select id="em_select3" title="이메일 선택">
							                            <option selected="selected">직접입력</option>
							                            <option>선택1</option>
							                            <option>선택2</option>
							                        </select>
							                    </div>
							                </div>
							                <a class="sender_addel_btn" href="javascript:void(0);">추가</a>
							                <a class="sender_addel_btn" href="javascript:void(0);">삭제</a>
							            </div>
							            -->
							                <!-- 161118 문진욱 문구 추가 -->
							
							                <!-- 161118 문진욱 문구 추가 end -->
							                <!-- <div class="tbl_card_sending">
							                    <p>1</p> <input class="sender2" placeholder="받는 사람 이름" type="text" name="name"> <input
							                        class="em_input" name="email1" title="이메일 앞주소" type="text"> <span>@</span> <input
							                        class="em_input" name="email2" title="이메일 뒷주소" type="text">
							                    <div class="em_sel_wrap">
							                        <div class="tbl_em_select"><label for="em_select3_1">직접입력</label><select id="em_select3_1"
							                                name="em_select3" title="이메일 선택">
							                                <option value="" selected="selected">직접입력</option>
							                                <option value="hotmail.com">hotmail.com</option>
							                                <option value="yahoo.co.kr">yahoo.co.kr</option>
							                                <option value="hanmir.com">hanmir.com</option>
							                                <option value="naver.com">naver.com</option>
							                                <option value="empal.com">empal.com</option>
							                                <option value="hitel.net">hitel.net</option>
							                                <option value="netian.com">netian.com</option>
							                                <option value="nate.com">nate.com</option>
							                                <option value="korea.com">korea.com</option>
							                                <option value="hanmail.net">hanmail.net</option>
							                                <option value="freechal.com">freechal.com</option>
							                                <option value="lycos.co.kr">lycos.co.kr</option>
							                                <option value="gmail.com">gmail.com</option>
							                            </select> </div>
							                    </div> <a class="sender_addel_btn addEmail" href="javascript:void(0);">추가</a> <a
							                        class="sender_addel_btn removeEmail" href="javascript:void(0);">삭제</a>
							                </div> -->
							                
							            </div>
							            <!-- 20150630 변경된 내용들 end -->
							        </td>
							    </tr>
							    <!-- 카드 선택 -->
							    <tr>
							    	<th>카드 선택</th>
							    	<td>
							    		<select style="border-color:#ddd; height:26px; color:#666; border-radius: 3px;" name="c_name" id="c_name">
							    			<option value="2022 Cherry Blossom" selected="selected">2022 Cherry Blossom</option>
							    			<option value="고맙습니다 e-Gift">고맙습니다 e-Gift</option>
							    			<option value="Thank You!">Thank You!</option>
							    			<option value="2022 서머 그린 카드">2022 서머 그린 카드</option>
							    			<option value="2022 무궁화 카드">2022 무궁화 카드</option>
							    			<option value="2022 밸런타인 데이 카드">2022 밸런타인 데이 카드</option>
							    			<option value="Coffee Date">Coffee Date</option>
							    			<option value="Super Hero">Super Hero</option>
							    			<option value="응원합니다!">응원합니다!</option>
							    			<option value="High Five">High Five</option>
							    			<option value="Friends & Coffee">Friends & Coffee</option>
							    			<option value="Coffee On Me">Coffee On Me</option>
							    			<option value="Happy You Day!">Happy You Day!</option>
							    			<option value="Celebration">Celebration</option>
							    		</select>
							    	</td>
							    </tr>
							    <!-- 선물 받으실 분 -->
							    <!-- <tr id="previewXls" style="display:none;">
							        <th>선물 받으실 분<br><span class="gifter_add_ex">(업로드한 엑셀파일에 대한 금액 별 건수 입니다.)</span></th>
							        <td>
							            <p class="gifter_stat">[선물 받으실 분 : <strong class="receiveDataCnt">0건</strong> | 중복입력 : <strong
							                    class="doubleDataCnt">0건</strong>]</p>
							            없는 경우
							            <div class="gifter_nostat_bg">
							                <p>선물 받으실 분이 없습니다.</p>
							            </div>
							            없는 경우 end
							            있는 경우
							            <div class="gifter_stat_bg" style="display:none;">
							                
							            <div class="gifter_stat_each">
							                <p>1</p>
							                <input class="sender" placeholder="받는 사람 이름" type="text">
							                <div class="sel_wrap">
							                    <div class="tbl_card_select">
							                        <label for="gnum_select1">010</label>
							                        <select id="gnum_select1" title="휴대폰 첫번째 자리">
							                            <option selected="selected">010</option>
							                            <option>011</option>
							                            <option>016</option>
							                        </select>
							                    </div>
							                </div>
							                <span class="">-</span>
							                <input class="pnum_input" name="" title="휴대폰 두번째 자리" type="text">
							                <span>-</span>
							                <input class="pnum_input" name="" title="휴대폰 세번째 자리" type="text">
							                <a class="sender_addel_btn" href="javascript:void(0);">삭제</a>
							            </div>
							           
							            </div>
							            있는 경우 end
							        </td>
							    </tr> -->
							    <!-- 선물 받으실 분 end -->
							    <tr id="trReqMsg">
							        <th>메시지 입력</th>
							        <td>
							            <textarea name="reqMsg" id="reqMsg" placeholder="내용을 입력해 주세요. (200자 내외)"></textarea>
							            <p id="reqMsgCnt" class="gift_info_adding">(0/200)</p>
							        </td>
							    </tr>
							    <tr>
							        <th>금액 선택</th>
							        <td>
							            <div class="tbl_card_radio">
							                <input id="price1" name="remaincost" type="radio" value="100000">
							                <label for="price1">10만원</label>
							                <input id="price2" name="remaincost" type="radio" value="50000">
							                <label for="price2">5만원</label>
							                <input id="price3" name="remaincost" type="radio" value="30000">
							                <label for="price3">3만원</label>
							                <input id="price4" name="remaincost" type="radio" value="10000" checked="checked">
							                <label for="price4">1만원</label>
							            </div>
							        </td>
							    </tr>
							    <tr>
							        <th>결제 수단 선택</th>
							        <td>
							            <div class="tbl_card_radio">
							                <input id="kakaoPay" name="kakaoPay" type="radio" value="kakaoPay" checked="checked">
							                <label for="kakaoPay">카카오페이</label>
							                <!-- <input id="payMethod2" name="gopaymethod" type="radio" value="onlydbank">
							                <label for="payMethod2">실시간 계좌이체</label>
							                <input id="payMethod3" name="gopaymethod" type="radio" value="onlyhpp">
							                <label for="payMethod3">휴대폰 소액결제</label> -->
							            </div>
							        </td>
							    </tr>
							    <tr>
							        <th>유의사항</th>
							        <td>
							            <!-- 160408 수정
							            <ul class="gift_info_adding2">
							                <li><span class="gift_info_add_fb">번호도용 문자차단/휴대폰번호 도용방지 서비스에 가입된 휴대폰은 발송 또는 수신이 불가합니다.<br />(부가서비스 해지 후 반영까지 약 24시간 소요됩니다.)</span></li>
							                <li>예약전송은 다음날부터 30일 이내, 30분 단위로 지정 하실 수 있습니다.<br class="for_web"> 다만, e-Gift Card 전송이 많은 특정 기간의 경우 지정하신 시간보다 수신이 늦어질 수 있습니다.</li>
							                <li>수신 받는 휴대폰 설정에 따라 MMS 전송이 불가할 수 있습니다.</li>
							                <li>e-Gift Card를 받은 수신인이 선물을 거절할 수 있습니다.<br class="for_web" />수신인이 거절하는 경우 보내신 e-Gift Card는 발신인에게 반송되며 등록하여 사용하시거나,<br class="for_web" />반송된 후 2주 내에 결제 취소가 가능합니다.</li>
							                <li>스타벅스 e-Gift 카드는 매장에서 스타벅스 코어 카드로 교환 가능하며, 시즌 한정 및 프로모션 카드로는 교환이 불가합니다. <br class="for_web" />e-Gift 카드의 이미지와 실물 카드 이미지는 상이 할 수 있습니다.</li>
							                <li>스타벅스 코리아는 고객 개인정보 보호 차원에서 e-Gift Card 발송 내역을 발송 후 3개월만 보관하고 있습니다.<br class="for_web"> 이후 문자 삭제, 분실 등에 대한 재발송 처리가 안되오니 이점 유의 하시기 바랍니다.</li>
							            </ul>
							        160408 수정 end -->
							
							            <!-- 220524 유의사항 수정 시작 -->
							            <ul class="gift_info_adding2">
							                <li>통신사나 휴대폰 사정 등 당사의 귀책사유가 없는 미수신의 경우에 대하여 당사는 책임지지 않습니다.</li>
							                <li>당사의 귀책사유 없이 수신자가 잘못 선택된 경우에는 수신자가 그로 인한 책임을 부담하게 되오니 유의하시기 바랍니다.</li>
							                <li>이메일로 전송하시는 경우 발송 환경에 따라 수신완료까지 최대 3시간이 소요될 수 있습니다.</li>
							                <li>결제 취소는 수신자가 e-Gift Card를 등록하지 않고, 거래 이력이 없는 경우 결제일로부터 최대 7일 내 온라인에서 취소가 가능합니다. </li>
							                <li>e-Gift Card를 받은 수신자가 14일 내 선물을 거절할 수 있습니다. 수신자가 e-Gift Card를 거절하는 경우 보내신 e-Gift Card는 온라인에서 14일 내 결제
							                    취소 가능합니다.</li>
							                <li>e-Gift Card는 매장에서 스타벅스 카드로 교환 가능하며, 시즌 한정 및 프로모션 카드로는 교환이 불가합니다. e-Gift Card의 이미지와 실물 카드 이미지는 상이할 수
							                    있습니다.</li>
							            </ul>
							            <!-- 220524    유의사항 수정 끝 -->
							        </td>
							    </tr>
							</tbody>
						</table>
                        <div class="gift_info_send_btns">
                            <ul>
                                <li class="gift_info_send_btn1"><input type="reset" style="border-radius:3px; color:#fff; display:block; background: #666; font-size:12px;font-weight:bold;height:45px;line-height:45px; text-align:center; width:84px; border-style: none;" class="btn123" value="취소" /></li>
                                <!-- 0620예은 -->
                                <li class="gift_info_send_btn2"><input type="button" value="결제하기" id="send" onclick="cardPurchase();" style="border-radius:3px; color:#fff;display:block; font-size:12px;font-weight:bold;height:45px;line-height:45px; text-align:center; width:84px; background:#222; border-style: none;" /></li>
                            </ul>
                        </div>
                    </fieldset>
                </form>

                <form id="frmFromStep3">
                    <input type="hidden" name="receiveDataInfo" value="">
                    <input type="hidden" name="myselfYn" value="">
                    <input type="hidden" name="excelUploadYn" value="">
                    <input type="hidden" name="sendType" value="">
                    <input type="hidden" name="amount" value="">
                    <input type="hidden" name="reqKub" value="">
                    <input type="hidden" name="sendDate" value="">
                    <input type="hidden" name="sendTime" value="">
                    <input type="hidden" name="gopaymethod" value="">
                </form>
            </section>
        </div>

        <!-- footer -->






        <!-- footer -->
        <footer id="footer">
            <div class="footer_wrap">
                <div class="footer_menus">
                    <ul class="footer_first_menu">
                        <li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">CUSTOMER SERVICE &amp;
                                IDEAS<span class="footer_arrow_down"></span></a></li>
                        <li><a href="util/faq">자주 하는 질문</a></li><!-- 20210809 수정 -->
                        <li><a href="customer/suggestionWrite">고객의 소리</a></li>
                        <li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 이용 팁<span
                                    class="footer_arrow_down"></span></a>
                            <ul>
                                <li><a href="util/web_tip">홈페이지 이용 팁</a></li>
                                <li><a href="util/app_tip">애플리케이션 이용 팁</a></li>
                                <li><a href="util/partnership_card">제휴카드 안내</a></li>
                            </ul>
                        </li>
                        <li><a href="util/online_survey">고객 경험 설문조사</a></li> <!-- 20210811 수정  -->


                    </ul>
                    <ul>
                        <li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">COMPANY<span
                                    class="footer_arrow_down"></span></a></li>
                        <li><a href="footer/company/index">한눈에 보기</a></li>
                        <li><a href="footer/company/mission">스타벅스 사명</a></li>
                        <li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 소개<span
                                    class="footer_arrow_down"></span></a>
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
                        <li class="footer_menu_ttl"><a class="en" id="goPage" href="javascript:void(0);">CORPORATE
                                SALES<span class="footer_arrow_down"></span></a></li>
                        <li><a href="footer/co_sales/index">단체 및 기업 구매 안내</a></li>
                        <!-- <li><a href="footer/co_sales/sbcard_egift">스타벅스 <span class="en">e-Gift Card</span></a></li> -->
                        <!-- <li><a href="footer/co_sales/sbcard">스타벅스 카드</a></li> -->
                        <!-- <li><a href="footer/co_sales/co-branded"><span class="en">Co-branded</span> 카드</a></li> -->
                        <!-- <li><a href="footer/co_sales/sb_product">스타벅스 상품</a></li> -->
                        <!-- <li><a href="footer/co_sales/sbgift_certificate">스타벅스 상품권</a></li> -->
                    </ul>
                    <ul>
                        <li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span
                                    class="footer_arrow_down"></span></a></li>
                        <li><a href="footer/partnership/new_partner">신규 입점 제의</a></li>
                        <!-- <li><a href="footer/partnership/portal_systems">협력사 포털 시스템</a></li> -->
                        <li><a href="srm/login">협력 고객사 등록신청</a></li>
                    </ul>
                    <ul>
                        <li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">ONLINE COMMUNITY<span
                                    class="footer_arrow_down"></span></a></li>
                        <li><a href="https://www.facebook.com/starbuckskorea" target="_blank">페이스북</a></li>
                        <li><a href="https://twitter.com/StarbucksKorea" target="_blank">트위터</a></li>
                        <li><a href="https://www.youtube.com/user/starbuckskorea" target="_blank">유튜브</a></li>
                        <li><a href="https://instagram.com/starbuckskorea/" target="_blank">인스타그램</a></li>
                    </ul>
                    <ul>
                        <li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">RECRUIT<span
                                    class="footer_arrow_down"></span></a></li>
                        <li><a href="footer/recruit/index">채용 소개</a></li>
                        <li><a href="http://job.shinsegae.com/recruit_info/notice/notice02_view.jsp?notino=5924"
                                target="_blank">채용 지원하기</a></li><!-- 20210927 수정 -->
                    </ul>
                </div>
            </div>
            <div class="footer_util_btn">
                <ul>
                    <li><a href="/">HOME</a></li>
                    <li>
                        <a href="javascript:$.loginLib.showLayerLogin();" class="sign_in" style="display: none;">Sign
                            In</a>
                        <a href="javascript:$.loginLib.logout();" class="sign_out" style="">Sign Out</a>
                    </li>
                    <li class="last" style="display: none;"><a href="mem/join1">Join Us</a></li>
                </ul>
            </div>
            <!-- 수상내역 -->
            <div class="footer_awards_wrap">
                <div class="footer_awards_wrap_inner">
                    <ul class="footer_awards_slider">
                        <li><a taget="_blank" href="javascript:void(0);"><img alt="여섯가족부 2020 대한민국 일자리대상 여성가족부장관상"
                                    src="//image.istarbucks.co.kr/common/img/footer/footer_award23.jpg"></a></li>
                        <li><a taget="_blank" href="javascript:void(0);"><img alt="행정안전부 2020 소방의 날 행정안전부장관 표창"
                                    src="//image.istarbucks.co.kr/common/img/footer/footer_award24.jpg"></a></li>
                        <li><a taget="_blank" href="javascript:void(0);"><img alt="농림축산식품부 2020 대한민국 커피산업대상 농림축산식품부 장관상"
                                    src="//image.istarbucks.co.kr/common/img/footer/footer_award25.jpg"></a></li>
                        <li><a taget="_blank" href="javascript:void(0);"><img
                                    alt="산업통상자원부 2020 대한민국 중소중견기업혁신 대상 국회산업통상자원중소벤처위원회장상"
                                    src="//image.istarbucks.co.kr/common/img/footer/footer_award26.jpg"></a></li>
                        <li><a taget="_blank" href="javascript:void(0);"><img
                                    alt="일자리위원회 2020 대한민국 일자리 유공 표창 대통령직속 일자리위원회 부위원장상"
                                    src="//image.istarbucks.co.kr/common/img/footer/footer_award27.jpg"></a></li>
                        <li><a taget="_blank" href="javascript:void(0);"><img
                                    alt="동반성장위원회 2020 사랑나눔 사회공헌대상 동반성장위원회 위원장상"
                                    src="//image.istarbucks.co.kr/common/img/footer/footer_award28.jpg"></a></li>
                    </ul>
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
                    <p id="dtPopCommonCloseBtn" class="close dtPopClose"><a href="javascript:void(0)"></a></p>
                    <!-- 팝업 닫힘 클래스 : dtPopClose -->
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
                    <p class="tt">스타벅스 리워드 등록 안내</p> <!-- 스타벅스 리워드 수정  -->
                    <p id="tumblerPopCommonCloseBtn" class="close ecoPopClose"><a href="javascript:void(0)"></a></p>
                    <!-- 팝업 닫힘 클래스 : dtPopClose -->
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
                <span class="br">
                    <!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
                    <a href="footer/etc/rules_mdp">My DT Pass 서비스 이용약관</a>
                </span> <!-- 20200914 mdp 추가 -->
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
        <script src="../../common/js/gnb.js?v=220502"></script>
        <script src="../../common/js/header.js?v=200915"></script>
        <script src="//image.istarbucks.co.kr/common/js/footer.js?v=210818"></script>

        <script src="//image.istarbucks.co.kr/common/js/jquery.tmpl.js"></script>
        <script src="//image.istarbucks.co.kr/common/js/jquery.tmplPlus.min.js"></script>
        <script src="//image.istarbucks.co.kr/common/js/jquery.ezmark.min.js"></script>
        <!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->

        <!--
			<script src="../../common/js/swiper.jquery.min.js"></script>
			<script src="../../common/js/swiper.min.js"></script>
			<script src="../../common/js/util.js"></script>
			-->


        <script src="//image.istarbucks.co.kr/common/js/openevent/openevent.js"></script>
        <script src="//image.istarbucks.co.kr/common/js/open_event_control.js"></script>
        <script type="text/javascript">

            var mrSlider;

            $(document).ready(function () {
                /* 20171204 kbs 페이지별 head 내 title 변경 */
                if ($('.smap li').last().text() == "") {
                    $('#titleJoin').text("Starbucks Korea"); //220117 수정
                }
                else {
                    $('#titleJoin').text($('.smap li').last().text() + " | Starbucks Korea"); //220117 수정	
                }

                $('#pickDate1, #pickDate2').datepicker({
                    "dateFormat": "yy-mm-dd"
                    /* ,"dayNamesMin"     : ['일', '월', '화', '수', '목', '금', '토'] */
                    , "maxDate": "+0m +0w"
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
                        minSlides: 3,
                        maxSlides: 3,
                        slideWidth: 210,
                        slideMargin: 0,
                        controls: false,
                        auto: true,
                        autoControls: true,
                        autoControlsCombine: true,
                        pause: 3000,
                        infiniteLoop: true,
                        pagerSelector: '.footer_slider_pagers',
                        autoControlsSelector: '.footer_slider_controls'
                    });
                } else if (myWindow <= 640) {
                    var faSlider = $('.footer_awards_slider').bxSlider({
                        minSlides: 1,
                        maxSlides: 1,
                        slideWidth: 320,
                        slideMargin: 0,
                        controls: false,
                        auto: true,
                        autoControls: true,
                        autoControlsCombine: true,
                        pause: 3000,
                        infiniteLoop: true,
                        pagerSelector: '.footer_slider_pagers',
                        autoControlsSelector: '.footer_slider_controls'
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
                var itvChangeLink = setInterval(function () {
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
                $('#goPage').bind('click', function () {
                    if (myWindow > 640) {
                        location.href = "footer/co_sales/index";
                    }
                });

                /*kbs Express DT 접근 시 MSR 회원 체크, 비밀번호 체크*/
                var dtPopHt = $('.dtPop').height() * -0.5;
                $('.dtPop').css('margin-top', dtPopHt);

                $('#dtPopCancelBtn, #dtPopCommonCloseBtn, #dtPopCancelBtnMsr, #dtPopCommonCloseBtnMsr, .commonBtn, .commonBtnMsr').click(function () {
                    $('#msrCheckPop').fadeOut();
                    $('#commonPop').fadeOut();
                    $('.dt_pop_up_dimm').fadeOut();
                });

                $('#dtClauseCloseBtn').click(function () {
                    $('#privatePop').fadeOut();
                });

                $('#dtClauseCloseXBtn').click(function () {
                    $('#privatePop').fadeOut();
                });
            });

            /* 개인컵 리워드 s */
            function fn_rewardTumblerMsrCheck() {
                fn_hideGnbMenu();
                var url = document.location.pathname;
                fn_showrewardTumblerMsrCheckLayer(url);
            }
            function fn_showrewardTumblerMsrCheckLayer(url) {
                /* 로그인 체크  */
                $.ajax({
                    type: 'post',
                    url: '/edt/edtCheckLogin',
                    data: {},
                    dataType: 'json',
                    jsonp: 'callback',
                    success: function (_response) {

                        if (_response.result_code != "SUCCESS") {

                            if (url.length == 0) {
                                url = location.href;
                            }
                            location.href = "login/login?redirect_url=" + encodeURIComponent(url);

                        } else {
                            //MSR 회원 여부 체크
                            if (m_jsonRewardSummary == null) {
                                $.ajax({
                                    type: 'post',
                                    url: '/interface/getMsrRewardSummary',
                                    data: {},
                                    dataType: 'json',
                                    jsonp: 'callback',
                                    async: false,
                                    success: function (_response) {
                                        if (_response.result_code == "SUCCESS") {
                                            m_jsonRewardSummary = jQuery.parseJSON(_response.data);
                                            fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
                                        }
                                    }
                                });
                            } else {

                                fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
                            }
                        }
                    }
                });
            }

            function fn_showrewardTumblerMsrCheckPopup(obj) {
                if (obj.msrMemberYn == "Y") { /*msr 회원일 경우 페이지 이동*/
                    location.href = "my/reward_tumbler";
                } else {/* msr 비회원일 경우 팝업창 노출 */
                    $('#msrCheckPop_rewardTumbler').fadeIn();
                    $('.dt_pop_up_dimm').fadeIn();
                    $('#msrCheckPop_rewardTumblerContents').show();
                    $('#tumblerPopConfirmBtn, #tumblerPopCancelBtn').show();
                    $('#tumblerPopConfirmBtn').on('click', function () {
                        // msr 비회원일 경우 카드 등록 페이지로 이동
                        location.href = "my/mycard_info_input";
                    });
                }
            }
            $('#tumblerPopCommonCloseBtn, #tumblerPopCancelBtn').click(function () {
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
            $('div.msr_card_zone').bind('click', function () {
                if ($('div.mycard_area2').css("display") == "none") {
                    $('div.mycard_area1').hide();
                    $('div.mycard_area2').fadeIn();
                    $('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon2.png').attr('alt', '결제하기'); // 접근성_20171106 alt 추가
                } else {
                    $('div.mycard_area1').fadeIn();
                    $('div.mycard_area2').hide();
                    $('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon1.png').attr('alt', '결제완료');// 접근성_20171106 alt 추가
                }
            });
            // 150805 DOM 수정 end

            (function ($) {
                $.fn.seqfx = function () {
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

        <!-- footer end -->
    </div>

    <iframe id="ifrmUpload" name="ifrmUpload" frameborder="0" style="display:none;"></iframe>

    <script src="../../common/js/util.js"></script>
    <script src="../../common/js/gnbward.js"></script>

    <script src="../../common/js/jquery.form.min.js"></script>
    <script src="../../common/js/jquery.numeric.min.js"></script>
    <script src="../../common/js/common_jhp.js"></script>
    <script src="../../common/js/msr/gift_step.js"></script>

    <script>
        // 150630 JSP 추가
        function receive_method1() {
            $('.receive_method2, .receive_method3').hide();
            $('.receive_method1').show();
        }
        function receive_method2() {
            $('.receive_method1, .receive_method3').hide();
            $('.receive_method2').show();
        }
        function receive_method3() {
            $('.receive_method1, .receive_method2').hide();
            $('.receive_method3').show();
        }

        function reserve_send_hidden() {
            $('table.gift_info_tbl tr td div.reserve_send_wrap').hide();
        }

        function reserve_send_visible() {
            $('table.gift_info_tbl tr td div.reserve_send_wrap').show();
        }
        // 150630 JSP 추가 end
        $(document).ready(function () {
            $('input[type=checkbox]').ezMark();

            $(document).on("change", '.tbl_card_select select', function () {
                var sbox_name = $(this).children('option:selected').text();
                $(this).siblings('label').text(sbox_name);
            });
        });
    </script>



    <!-- 151105 발송전화번호 프로세스 수정 - 문진욱 -->
    <!-- 발신번호 사전등록 -->
    <div class="pop_sender_preregist">
        <div class="pop_sender_preregist_head">
            <!-- 151111 수정 -->
            <p class="pop_sender_preregist_ttl">발신번호 사전등록</p>
            <!-- 151111 수정 end -->
            <p class="pop_sender_preregist_close"><a href="javascript:void(0);">닫기</a></p>
        </div>
        <div class="pop_sender_preregist_cont">
            <div class="pop_sender_preregist_warn">
                <p>
                    스타벅스는 <strong>발신번호 사전등록제*</strong>를 준수하여<br class="for_web"> <strong>인증된 발신 번호로만 문자 발송 서비스를
                        지원합니다.</strong><br><br>
                    <span class="cert_guide_01">e-Coupon 선물, e-Gift 휴대폰 전송 서비스 이용을 위해</span><br class="for_web"> 고객님의
                    전화번호를 인증해주세요.<br><br>
                    한번 사전 등록된 발신번호는 변경하거나<br class="for_web"> 타인의 계정에서 인증되기 전까지<br class="for_web"> 추가 인증 없이 사용하실 수
                    있습니다.
                </p>
                <p style="display:none;">
                    스타벅스는 <strong>발신번호 사전등록제*</strong>를 준수하여<br class="for_web">
                    <strong>인증된 발신 번호로만 문자 발송 서비스를 지원합니다.</strong><br><br>
                    e-Coupon 선물, e-Gift 휴대폰 전송 서비스 이용을 위해<br class="for_web">
                    회원정보에 등록된 전화번호를 인증해주세요.<br class="for_web">
                    보내는 사람 번호는 웹사이트<br class="for_web">
                    “개인정보확인 및 수정” 페이지에서 변경 가능합니다.<br><br>
                    한번 사전 등록된 발신번호는 변경하거나<br class="for_web">
                    타인의 계정에서 인증되기 전까지<br class="for_web">
                    추가 인증 없이 사용하실 수 있습니다.
                </p>
            </div>
            <div class="pop_sender_preregist_method">
                <!-- 인증 안했을 경우 -->
                <div class="phone_cert_step_1">
                    <strong>“인증 요청” 버튼을 클릭하시면<br class="for_web"> 인증을 위한 ARS 전화가 <span
                            class="txt_change"></span>걸려옵니다.</strong><br><br>
                </div>

                <div class="preregist_numinput phone_cert_step_1">
                    <p class="btn_preregi_certi">
                        <a href="javascript:void(0);">인증 요청</a>
                    </p>
                </div>
                <br>

                <div class="preregist_number_wrap phone_cert_info" style="display:none;">
                    <strong class="preregist_number">
                        <!-- 최종 인증된 발신번호 : 010-2345-6789  -->
                    </strong>
                    <span class="t_b7312c">
                        <!-- (인증일시 : 2015-12-15 12:04) -->
                    </span>
                </div>
                <!-- 인증 안했을 경우 end -->

                <!-- 인증 했을 경우 -->
                <p class="preregi_certi_guide phone_cert_step_2" style="display:none;">
                    ARS 인증이 완료되면<br class="for_web"> “인증 완료” 버튼을 눌러주세요.<br>
                    <label for="auth_no" class="a11y">인증번호</label>
                    <input class="preregist_certi_input" id="auth_no" type="text" placeholder="인증번호입력" maxlength="2"
                        style="display:none;">
                </p>
                <p class="btn_phone_certi phone_cert_step_2" style="display:none;">
                    <a href="javascript:void(0);">인증 완료</a>
                </p>
                <div class="certi_again_wrap phone_cert_step_2" style="display:none;">
                    <p class="certi_again_wrap_l">ARS 전화가 걸려오지 않았다면,<br class="for_web">“인증 재요청” 버튼을 눌러주세요. </p>
                    <p class="btn_certi_again">
                        <a href="javascript:void(0);">인증 재요청</a>
                    </p>
                </div>
                <!-- 인증 했을 경우 end -->
                <div>
                    <p style="margin-left:10px; margin-right:10px; font-size: 10pt; color: red;">*반복적으로 동일한 인증요청을 시도하는
                        경우에는<br>일정시간 동안 인증 기능이 제한될 수 있습니다.</p>
                </div>
                <!-- <p class="preregi_certi_guide2 phone_cert_step_2" style="display:none;">* “인증 완료” 시 회원정보의 휴대폰 번호도 자동 변경 됩니다.</p> -->
            </div>
            <div class="pop_sender_preregist_ex">
                <strong>* 발신번호 사전등록제란?</strong><a class="preregist_ex_btn" href="javascript:void(0);">자세히보기</a>
                <div class="preregist_ex_cont">
                    <p>휴대폰 문자메시지를 이용한 전자금융 사기 방지를 위해 사전에 등록된 전화번호만 인터넷 문자발송 서비스를 이용할 수 있도록 허용하는 제도입니다. ( * 전기통신사업법 제84조
                        2, 거짓으로 표시된 전화번호로 인한 이용자의 피해 예방 등에 관한 고시 )</p>
                    <p class="phone_cert_info_b2b" style="display:none;">단체 및 기업 e-Gift는 유선 전화번호로도 발송하실 수 있습니다.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 발신번호 사전등록 end -->
    <!-- 발신번호 인증이 완료 되었습니다. -->
    <div class="pop_preregist_done">
        <div class="pop_sender_preregist_head">
            <p class="pop_sender_preregist_ttl">발신번호 인증 완료</p>
            <p class="pop_sender_preregist_close"><a href="javascript:void(0);">닫기</a></p>
        </div>
        <div class="pop_sender_preregist_cont">
            <div class="pop_sender_preregist_warn">
                <strong class="preregist_done"><span class="t_006633">
                        <!-- 010-2345-6789 -->
                    </span><br><span class="t_b7312c">발신번호 사전등록</span>이 완료 되었습니다.</strong>
                <!-- 첫 인증 시 일때 -->
                <p class="other_num">한번 사전 등록된 번호는<br> 발신번호를 변경하거나 타인의 계정에서 인증되기 전까지<br> 추가 인증 없이 사용하실 수 있습니다.</p>
                <!-- 첫 인증 시 일때 end -->

                <!-- 재인증 시 일때 -->
                <p class="other_num cert_re" style="display:none;"><strong>* 회원정보의 휴대폰 번호는<br> 인증이 완료된 정보로 자동
                        변경됩니다.</strong></p>
                <!-- 재인증 시 일때 end -->

                <!-- b2b 추가 인증 시 일때 -->
                <p class="other_num cert_re_tel" style="display:none;"><strong>* 최종 추가 등록된 번호는<br> 타인의 계정에서 인증되기 전까지<br>
                        3개월간 추가 인증 없이 사용하실 수 있습니다.</strong></p>
                <!-- b2b 추가 인증 시 일때 end -->
            </div>
            <p class="btn_preregist_done_close"><a href="javascript:void(0);">닫기</a></p>
        </div>
    </div>
    <!-- 발신번호 인증이 완료 되었습니다. end -->
    <!-- 151214 발신번호사전등록제란 -->
    <div class="myDimm2"></div>
    <div class="pop_preregist_info">
        <div class="pop_sender_preregist_head">
            <p class="pop_sender_preregist_ttl">발신번호 사전등록제란?</p>
            <p class="pop_sender_preregist_close2"><a href="javascript:void(0);">닫기</a></p>
        </div>
        <div class="pop_sender_preregist_cont">
            <div class="pop_sender_preregist_warn2">
                <strong>* 발신번호 사전등록제란?</strong>
                <p><span class="t_bold">휴대폰 문자메시지를 이용한 전자금융 사기 방지를 위해 사전에 등록된 전화번호만 인터넷 문자발송<br class="for_web"> 서비스를
                        이용할 수 있도록 허용하는 제도입니다.</span><br class="for_web"> ( * 전기통신사업법 제84조 2, 거짓으로 표시된 전화번호로 인한 이용자의 피해
                    예방 등에 관한 고시/2015.10.16)</p>
                <ul class="regard_wrap">
                    <li><span class="t_bold">발신번호 사전등록 대상 :</span> 전체 회원</li>
                    <li>
                        <div class="regard_fl">등록 가능한 발신번호 :</div>
                        <div class="regard_fr">e-Gift/e-Coupon 사용자 ▶ 휴대폰 번호<br> 단체 및 기업 e-Gift 사용자 ▶ 휴대폰, 유선전화, 인터넷전화,
                            전국대표번호 등</div>
                    </li>
                    <!-- 151214 수정 -->
                    <li><span class="t_bold">관련 고시 :</span> 거짓으로 표시된 전화번호로 인한 이용자의 피해 예방 등에 관한 고시 (2015.04.16) <a
                            class="btn_down"
                            href="https://image.istarbucks.co.kr/img/down/151214/pop_preregist_info_down1.pdf"
                            target="_blank" download="">자세히 보기</a></li>
                    <li><span class="t_bold">관련 세부지침 :</span> 거짓으로 표시된 전화번호로 인한 이용자 피해 예방 등에 관한 세부지침 (2015.05.01) <a
                            class="btn_down"
                            href="https://image.istarbucks.co.kr/img/down/151214/pop_preregist_info_down2.pdf"
                            target="_blank" download="">자세히 보기</a></li>
                    <!-- 151214 수정 end -->
                </ul><br>
                <strong>* 유의사항</strong>
                <ul class="regard_wrap">
                    <li>번호도용 문자차단 서비스에 등록된 번호로는 MMS 메시지가 발송되지 않습니다.<br class="for_web"> (번호도용 문자차단 서비스: 웹으로 문자메시지 발송 시
                        자기명의 휴대폰 번호를 발신번호로 사용하지 못하도록 하는 서비스)</li>
                    <li>발신번호는 개인 또는 기업이 소유한 유효한 전화번호여야 합니다.</li>
                    <li>발신번호가 변작된 경우 이로 이한 불이익이 발생할 수 있습니다.</li>
                    <li>최종 인증된 전화번호는 타인의 계정에서 인증되기 전까지 추가 인증 없이 사용하실 수 있습니다.</li>
                    <li>단체 및 기업 e-Gift는 유선 전화번호로도 발송하실 수 있습니다. 단, 별도의 인증 절차를 거치셔야 하며<br class="for_web"> 최증 등록된 유선번호는
                        타인의 계정에서 인증되기 전까지 3개월간 추가 인증 없이 사용하실 수 있습니다.</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 151214 발신번호사전등록제란 end -->
    <!-- 151105 발송전화번호 프로세스 수정 - 문진욱 end -->

    <script>
        $(document).ready(function () {
            $.phoneCertLib.init();
        });

        $.phoneCertLib = {
            certInfo: null
            , certInfoTel: null
            , param: {
                userid: ""
                , before_phone: "NONE"
                , after_phone: ""
                , channel: ""
                , site: ""
                , phone_type: "H"
                , tran_id: ""
            }
            , isCalling: false
            , isAppResult: "failure"

            , init: function () {
                if (this.getContentType() != "JOIN_AGREE_STEP3" || this.getContentType() != "JOIN2") {
                    this.getCurrentUserId();
                    $.phoneCertLib.certInfo = this.getCurrentPhoneCertInfo();
                }

                try {
                    this.param.channel = m_formulaCode;
                } catch (e) {
                }
                // 페이지 별 분기 처리
                switch (this.getContentType()) {
                    case "JOIN2":
                    case "JOIN_AGREE_STEP3":
                        this.param.site = "R";
                        break;

                    case "MYINFO_MODIFY":
                        this.param.site = "U";

                        if ($.phoneCertLib.certInfo.isCert) {   // 인증 되어 있으면..
                            $(".certi_no , .phone_num_warn , .pop_sender_btn").hide();
                            $(".phone_num_certi, .certi").show();
                            $('.phone').addClass("nofix_num");
                        } else {
                            $('.phone').removeClass("nofix_num");
                        }

                        // [인증], [변경]
                        $("a.certi_no , a.certi").on("click", function () {
                            $.phoneCertLib.certInfo = $.phoneCertLib.getCurrentPhoneCertInfo();

                            if ($.phoneCertLib.certInfo.isCert
                                && $.phoneCertLib.certInfo.after_phone == $.phoneCertLib.getPhoneNumber()) {
                                alert("이미 인증이 완료된 번호입니다.\n변경을 원하실 경우, 인증 받으실 휴대폰 번호를 입력하신 후 “변경” 버튼을 눌러주세요.");
                                return;
                            }

                            $.phoneCertLib.showLayerPhoneCert();
                        });

                        $(".myDimm").off("click");  // 딤 클릭시 사라지는 이벤트 제거
                        break;

                    case "GIFT_STEP2":
                        this.param.site = "E";
                        $.phoneCertLib.certInfo.isCert = true;

                        if ($.phoneCertLib.certInfo.isCert) {   // 인증 되어 있으면..
                            $(".pre_regi_number").text($.phoneCertLib.getPhoneNumberWithHyphen($.phoneCertLib.certInfo.member_phone));
                            $(".btn_pre_regi , .phone_num_warn2 , .pop_sender_btn").hide();
                        } else {
                            $(".pre_regi_number").text($.phoneCertLib.getPhoneNumberWithHyphen($.phoneCertLib.getCurrentUserPhone()));
                        }

                        // [인증], [변경]
                        $(".btn_pre_regi a").on("click", function () {
                            if ($.phoneCertLib.getPhoneNumber() == "") {
                                if (confirm("보내는 사람의 전화번호는 개인정보확인 및 수정 페이지에서 등록 가능합니다.\n바로 이동 하시겠습니까?")) {
                                    location.href = "my/myinfo_modify_login";
                                }
                            }

                            $.phoneCertLib.showLayerPhoneCert();
                        });

                        $(".pop_dimm").off("click");    // 딤 클릭시 사라지는 이벤트 제거
                        break;

                    case "ECOUPON_GIFT_INPUT":
                        this.param.site = "C";
                        $.phoneCertLib.certInfo.isCert = true;

                        if ($.phoneCertLib.certInfo.isCert) {   // 인증 되어 있으면..
                            $(".pre_regi_number").text($.phoneCertLib.getPhoneNumberWithHyphen($.phoneCertLib.certInfo.member_phone));
                            $(".btn_pre_regi , .phone_num_warn2 , .pop_sender_btn").hide();
                        } else {
                            $(".pre_regi_number").text($.phoneCertLib.getPhoneNumberWithHyphen($.phoneCertLib.getCurrentUserPhone()));
                        }

                        // [인증], [변경]
                        $(".btn_pre_regi a").on("click", function () {
                            if ($.phoneCertLib.getPhoneNumber() == "") {
                                if (confirm("보내는 사람의 전화번호는 개인정보확인 및 수정 페이지에서 등록 가능합니다.\n바로 이동 하시겠습니까?")) {
                                    location.href = "my/myinfo_modify_login";
                                }
                            }

                            $.phoneCertLib.showLayerPhoneCert();
                        });

                        $("body").prepend($('<div class="pop_dimm" />'));
                        break;

                    case "SBCARD_EGIFT":
                        this.param.site = "B";

                        //유무선 둘다 인증 안되어있으면 핸드폰번호로 설정
                        var arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.getCurrentUserPhone());    // 출력 할 전화번호

                        $("#phone1").val(arrPhoneNumber[0]);
                        $("#phone2").val(arrPhoneNumber[1]);
                        $("#phone3").val(arrPhoneNumber[2]);

                        $.phoneCertLib.certInfoTel = $.phoneCertLib.getCurrentPhoneCertInfo("T");
                        //$.phoneCertLib.certInfo    = $.phoneCertLib.getCurrentPhoneCertInfo("H");

                        if ($.phoneCertLib.certInfoTel.isCert
                            && $.phoneCertLib.certInfo.isCert) {    // 유/무선 둘 다 인증 되어 있으면..
                            if ($.phoneCertLib.certInfoTel.response_dt > $.phoneCertLib.certInfo.response_dt) { // 날짜 비교
                                arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.certInfoTel.after_phone);
                                $("input:radio[name=phoneNumType][value=T]").prop("checked", true);
                                //지역번호 없음 체크박스 삭제 2019-11-11 $("#checkTel").show();
                            } else {
                                arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.certInfo.after_phone);
                            }
                        } else {
                            if ($.phoneCertLib.certInfoTel.isCert) {
                                arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.certInfoTel.after_phone);
                                $("input:radio[name=phoneNumType][value=T]").prop("checked", true);
                                //지역번호 없음 체크박스 삭제 2019-11-11 $("#checkTel").show();
                            }

                            if ($.phoneCertLib.certInfo.isCert) {
                                arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.certInfo.after_phone);
                            }
                        }
                        $.phoneCertLib.setPhoneNumber(arrPhoneNumber);
                        /* 지역번호 없음 체크박스 삭제 2019-11-11
                        if ($.phoneCertLib.certInfoTel.isCert && $('#sendTelNo1').val()=="") { //인증받은 유선전화번호의 지역번호가 없으면 블럭 처리
                            $("input:checkbox[name='telNumType']").prop("checked", true);
                        }
                        */
                        $.phoneCertLib.telCheckBox();

                        $("input:radio[name=phoneNumType]").change(function () {
                            if ($(this).val() == 'H') { //발송전화번호에서 휴대폰번호 선택시
                                var inputNumber = $.phoneCertLib.getPhoneNumber();
                                if (!(inputNumber == $.phoneCertLib.certInfoTel.after_phone || inputNumber == "")) {//유선전화번호 인증 받지 않고 핸드폰번호 클릭 시
                                    var telCertNotice = "전화 인증을 하지 않은 번호는 저장되지 않습니다.";
                                    if (!confirm(telCertNotice)) { //취소 시 휴대폰번호 선택 버튼 유지
                                        $("input[name=phoneNumType][value=T]").prop("checked", true);
                                        return;
                                    }
                                }

                                if ($.phoneCertLib.certInfo.after_phone != "NONE") {
                                    arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.certInfo.after_phone);
                                } else {
                                    arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.certInfo.member_phone);
                                }
                                $.phoneCertLib.setPhoneNumber(arrPhoneNumber);
                                /* 지역번호 없음 체크박스 삭제 2019-11-11
                                $("#checkTel").hide();
                                $("#sendTelNo1").removeClass("dimmed");
                                $('#sendTelNo1').attr('disabled', false);
                                $("input:checkbox[name='telNumType']").prop("checked", false);
                                */
                            } else if ($(this).val() == 'T') { //발송전화번호에서 유선전화번호 선택시
                                var inputNumber = $.phoneCertLib.getPhoneNumber();
                                if (!(inputNumber == "" || inputNumber == $.phoneCertLib.certInfo.after_phone)) {//핸드폰번호 인증 받지 않고 유선전화번호 클릭 시
                                    var telCertNotice = "전화 인증을 하지 않은 번호는 저장되지 않습니다.";
                                    if (!confirm(telCertNotice)) { //취소 시 휴대폰번호 선택 버튼 유지
                                        $("input[name=phoneNumType][value=H]").prop("checked", true);
                                        return;
                                    }
                                }
                                arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray($.phoneCertLib.certInfoTel.after_phone);

                                if (isNaN(arrPhoneNumber[1])) { // 유선 전화번호가 없는 경우
                                    $("#sendTelNo1").val('');
                                    $("#sendTelNo2").val('');
                                    $("#sendTelNo3").val('');
                                } else {//유선 전화번호가 있는 경우
                                    $.phoneCertLib.setPhoneNumber(arrPhoneNumber);
                                }
                                /* 지역번호 없음 체크박스 삭제 2019-11-11
                                $("#checkTel").show();
        
                                if ($('#sendTelNo1').val()=="" && $.phoneCertLib.certInfoTel.isCert) { //유선전화번호의 지역번호가 없으면 블럭 처리
                                    $("input:checkbox[name='telNumType']").prop("checked", true);
                                }
                                $.phoneCertLib.telCheckBox();
                                */
                            }
                        });

                        $("#rprsnPhnoUseYn").change(function () { //"지역번호 없음" 체크박스 변경시 이벤트 처리
                            $.phoneCertLib.telCheckBox();
                        });

                        if ($.phoneCertLib.certInfo.isCert
                            || $.phoneCertLib.certInfoTel.isCert) { // 유/무선 아무거나 인증 되어 있으면..
                            $(".btn_sender_change_no , .cert_guide_b2b_01").hide();
                            $(".btn_sender_change").show();
                        }

                        $(".cert_guide_01").text("단체 및 기업 e-Gift 전송 서비스 이용을 위해");
                        $(".preregist_certi_input").text("");

                        // [인증], [변경]
                        $(".btn_sender_change_no a , .btn_sender_change a").on("click", function () {
                            if ($("#rprsnPhnoUseYn").is(":checked")) { // 대표 전화번호 사용이면 비활성화
                                return;
                            }

                            var phoneNumber = $.phoneCertLib.getPhoneNumber();

                            $.phoneCertLib.certInfo = $.phoneCertLib.getCurrentPhoneCertInfo("H");

                            if ($("input:radio[name=phoneNumType]:checked").val() == "H" && $.phoneCertLib.certInfo.isCert
                                && phoneNumber == $.phoneCertLib.certInfo.after_phone) {    // 휴대폰 인증이 이미 되어있으면..
                                alert("이미 인증이 완료된 번호입니다.\n변경을 원하실 경우, 인증 받으실 휴대폰 번호를 입력하신 후 “변경” 버튼을 눌러주세요.");
                                return;
                            }

                            $.phoneCertLib.certInfoTel = $.phoneCertLib.getCurrentPhoneCertInfo("T");

                            /* if (phoneNumber == $.phoneCertLib.certInfoTel.after_phone
                                    && $.phoneCertLib.certInfoTel.isExpired) {
                                alert("사용기간이 만료된 발신번호입니다.\n발신번호 재인증 후 다시 e-Gift를 구매해 주시기 바랍니다.");
                                return;
                            } */
                            if ($("input:radio[name=phoneNumType]:checked").val() == "T") { // 일반전화 인증일때...
                                var pattern15xx = /^(?:[0-9]*)-?(15|16|18)[0-9]{2}-?[0-9]{4}$/;
                                if (pattern15xx.exec(phoneNumber)) { // 대표 전화번호(15YY, 16YY, 18YY) 체크
                                    alert("ARS 인증이 불가한 전화번호입니다.\n대표 전화번호 사용 체크 후\n통신서비스 이용증명원을 등록해주세요.\n담당자가 확인하여 발송번호를 입력해 드립니다.");
                                    return;
                                }
                            }
                            if ($("input:radio[name=phoneNumType]:checked").val() == "T" && $.phoneCertLib.certInfoTel.isCert
                                && phoneNumber == $.phoneCertLib.certInfoTel.after_phone) { // 일반전화 인증이 이미 되어있으면..
                                alert("이미 인증이 완료된 번호입니다.\n변경을 원하실 경우, 인증 받으실 번호를 입력하신 후 “변경” 버튼을 눌러주세요.");
                                return;
                            }

                            $.phoneCertLib.showLayerPhoneCert();
                        });

                        $(".pop_up_dimm").off("click"); // 딤 클릭시 사라지는 이벤트 제거
                        break;

                    case "APP":
                        this.param.channel = "I";
                        this.param.site = "E";

                        if (navigator.userAgent.toLowerCase().indexOf("android") > -1) {
                            this.param.channel = "A";
                        }

                        $(".pop_sender_preregist_warn p:eq(0)").hide();
                        $(".pop_sender_preregist_warn p:eq(1)").show();

                        $.phoneCertLib.showLayerPhoneCert();
                        break;
                }

                // [발신번호 사전등록제란?], [자세히보기]
                $(".pop_sender_btn a , .preregist_ex_btn").on("click", function () {
                    if ($.phoneCertLib.getContentType() == "APP") {
                        $(window).scrollTop(0);
                        $(".pop_preregist_info").css("top", "4px");
                    } else {
                        $(window).scrollTop(567);
                    }
                    $(".myDimm2 , .pop_preregist_info").show();
                });
                $(".pop_sender_preregist_close2 a").on("click", function () {
                    $(".myDimm2 , .pop_preregist_info").hide();
                });

                // [X]
                $(".pop_sender_preregist_close a:eq(0)").on("click", function () {
                    var cfmMsg = "전화 인증이 완료 되지 않았습니다.\n정말 닫으시겠습니까?";

                    if ($(".phone_cert_step_1").is(":visible")) {   // 인증 1단계인가?
                        if (confirm(cfmMsg)) {
                            $.phoneCertLib.hideLayerPhoneCert();
                        }
                    } else {
                        $.phoneCertLib.certInfo = $.phoneCertLib.getCurrentPhoneCertInfo();

                        if ($.phoneCertLib.certInfo.isCert) {   // 인증 되어 있으면 완료 처리..
                            if ($.phoneCertLib.param.phone_type == "H") {   // 휴대전화인가?
                                $.phoneCertLibCompletePhoneCert();
                            } else {
                                //$.phoneCertLibCompletePhoneCertTypeTel();
                                if (confirm(cfmMsg)) {
                                    $.phoneCertLib.hideLayerPhoneCert();
                                }
                            }
                        } else {
                            if (confirm(cfmMsg)) {
                                $.phoneCertLib.hideLayerPhoneCert();
                            }
                        }
                    }
                });

                // [전화 인증 요청], [전화 인증 재요청]
                $(".btn_preregi_certi a , .btn_certi_again a").on("click", this.callPhoneCert);

                // [인증 완료]
                $(".btn_phone_certi a").on("click", function () {
                    if ($.phoneCertLib.param.phone_type == "H") {   // 휴대전화인가?
                        $.phoneCertLibCompletePhoneCert();
                    } else {
                        $.phoneCertLibCompletePhoneCertTypeTel();
                    }
                });

                // [X], [닫기]
                $(".pop_sender_preregist_close a:eq(1) , .btn_preregist_done_close a").on("click", this.hideLayerPhoneCert);
            }

            // 현재 컨텐츠 타입
            , getContentType: function () {
                var contentType = "";

                if (location.href.indexOf("join_agree_step3") > -1) {           // 회원 가입
                    contentType = "JOIN_AGREE_STEP3";
                } else if (location.href.indexOf("join2") > -1) {               // 회원 가입(신)
                    contentType = "JOIN2";
                } else if (location.href.indexOf("myinfo_modify") > -1) {       // 회원 정보 수정
                    contentType = "MYINFO_MODIFY";
                } else if (location.href.indexOf("gift_step2") > -1) {          // e-Gift 선물하기
                    contentType = "GIFT_STEP2";
                } else if (location.href.indexOf("ecoupon_gift_input") > -1) {  // 쿠폰 선물하기
                    contentType = "ECOUPON_GIFT_INPUT";
                } else if (location.href.indexOf("sbcard_egift") > -1) {        // B2B e-Gift 신청하기
                    contentType = "SBCARD_EGIFT";
                } else if (location.href.indexOf("app") > -1) {                 // APP
                    contentType = "APP";
                }

                return contentType;
            }

            // 인증 대상 전화번호
            , getPhoneNumber: function () {
                var phoneNumber = "";

                switch ($.phoneCertLib.getContentType()) {
                    case "MYINFO_MODIFY":

                        if (!change_phone_mask) {
                            ___ajaxCall("interface/updateMemberChangeInfo", {}, false, "json", "post", function (_response) {
                                phoneNumber = (_response.data.orgPhone).replace(/-/g, '');
                            });
                        } else {
                            phoneNumber = $("#phone").val().split("-").join("");
                        }
                        break;
                    case "GIFT_STEP2":
                    case "ECOUPON_GIFT_INPUT":
                        phoneNumber = $(".pre_regi_number").text().split("-").join("");
                        break;
                    case "SBCARD_EGIFT":
                        phoneNumber = $("#sendTelNo1").val() + $("#sendTelNo2").val() + $("#sendTelNo3").val();
                        break;
                    case "APP":
                        phoneNumber = $.phoneCertLib.getCurrentUserPhone();
                        break;
                }

                return phoneNumber;
            }

            // 전화번호 (- 포함)
            , getPhoneNumberWithHyphen: function (_phoneNumber) {
                var arrPhoneNumber = this.getPhoneNumberArray(_phoneNumber);

                return arrPhoneNumber[0] + "-" + arrPhoneNumber[1] + "-" + arrPhoneNumber[2];
            }

            // 전화번호 (Array로)
            , getPhoneNumberArray: function (_phoneNumber) {
                if (_phoneNumber == undefined) {
                    _phoneNumber = $.phoneCertLib.certInfo.after_phone;
                }

                var arrPhoneNumber = new Array(3);

                if (_phoneNumber.substr(0, 2) == "02") {
                    if (_phoneNumber.length == 10) {
                        arrPhoneNumber[0] = _phoneNumber.substr(0, 2);
                        arrPhoneNumber[1] = _phoneNumber.substr(2, 4);
                        arrPhoneNumber[2] = _phoneNumber.substr(6, 4);
                    } else {
                        arrPhoneNumber[0] = _phoneNumber.substr(0, 2);
                        arrPhoneNumber[1] = _phoneNumber.substr(2, 3);
                        arrPhoneNumber[2] = _phoneNumber.substr(5, 4);
                    }
                } else {
                    if (_phoneNumber.length == 11) {
                        arrPhoneNumber[0] = _phoneNumber.substr(0, 3);
                        arrPhoneNumber[1] = _phoneNumber.substr(3, 4);
                        arrPhoneNumber[2] = _phoneNumber.substr(7, 4);
                    } else if (_phoneNumber.length == 8) { //지역번호 없는 유선전화인 경우
                        arrPhoneNumber[0] = "";
                        arrPhoneNumber[1] = _phoneNumber.substr(0, 4);
                        arrPhoneNumber[2] = _phoneNumber.substr(4, 4);
                    } else {
                        arrPhoneNumber[0] = _phoneNumber.substr(0, 3);
                        arrPhoneNumber[1] = _phoneNumber.substr(3, 3);
                        arrPhoneNumber[2] = _phoneNumber.substr(6, 4);
                    }
                }

                return arrPhoneNumber;
            }

            // 전화번호 중간에 마스킹 처리
            , getMaskingPhoneNumber: function (_phoneNumber) {
                var arrPhoneNumber = $.phoneCertLib.getPhoneNumberArray(_phoneNumber);

                if (arrPhoneNumber[0] == "") {
                    return arrPhoneNumber[1] + "-****";
                }

                return arrPhoneNumber[0] + "-" + arrPhoneNumber[1] + "-****";
            }

            // 전화 타입
            , getPhoneType: function (_phoneNumber) {
                if (_phoneNumber == undefined) {
                    _phoneNumber = $.phoneCertLib.certInfo.after_phone;
                }

                return (_phoneNumber.substr(0, 2) == "01") ? "H" : "T";
            }

            // 인증창 팝업 열기
            , showLayerPhoneCert: function () {
                var phoheNumber = $.phoneCertLib.getPhoneNumber();
                if ($.phoneCertLib.getContentType() == "SBCARD_EGIFT") { //b2b 페이지

                    if ($.phoneCertLib.certInfo.isCert || $.phoneCertLib.certInfoTel.isCert) { //핸드폰번호 or 유선전화번호 하나라도 인증 되어있으면 문구 변경
                        $(".phone_cert_step_1 span.txt_change")("추가 인증하는 연락처로 ");
                    } else {
                        $(".phone_cert_step_1 span.txt_change")("");
                    }

                    if ($("input:radio[name=phoneNumType]:checked").val() == "T") {
                        if ($('#sendTelNo1').val() == "" && phoheNumber.length < 8) { //지역번호가 없는 유선 전화번호가 8자리가 안될 경우
                            alert("인증 받을 전화번호를 정확히 입력 하세요.");
                            return;
                        } else if ($('#sendTelNo1').val() != "" && phoheNumber.length < 9) { //지역번호가 있는 유선전화번호가 9자리가 안될 경우
                            alert("인증 받을 전화번호를 정확히 입력 하세요.");
                            return;
                        } else if ($('#sendTelNo1').val() != "" && $('#sendTelNo1').val().length < 2) { //지역번호 있는 유선전화번호 앞자리가 2자리 미만일 경우
                            alert("인증 받을 전화번호를 정확히 입력 하세요.");
                            return;
                        } else if ($('#sendTelNo1').val() != "" && $('#sendTelNo1').val().substr(0, 2) == "01") { //유선전화번호에 핸드폰번호를 입력할 경우
                            alert("인증 받을 전화번호를 정확히 입력 하세요.");
                            return;
                        }
                    } else {
                        if ($('#sendTelNo1').val().substr(0, 2) != "01" || phoheNumber.length < 10) { //핸드폰 번호가 10자리가 안될 경우
                            alert("인증 받을 전화번호를 정확히 입력 하세요.");
                            return;
                        }
                    }
                } else {
                    $(".phone_cert_step_1 span.txt_change")("");

                    if (phoheNumber.length < 9) {
                        alert("인증 받을 전화번호를 정확히 입력 하세요.");
                        return;
                    }
                }

                if ($.phoneCertLib.certInfo.isCert) {   // 발신번호 인증 되어 있으면..
                    var certPhoneNumber = $.phoneCertLib.getMaskingPhoneNumber($.phoneCertLib.certInfo.after_phone);
                    var response_dt = $.phoneCertLib.certInfo.response_dt.split(".")[0];

                    $(".phone_cert_info strong").text("최종 인증된 발신번호 : " + certPhoneNumber);
                    $(".phone_cert_info span").text("(인증일시 : " + response_dt + ")");
                    $(".phone_cert_info").show();
                }

                if ($.phoneCertLib.getContentType() == "SBCARD_EGIFT"
                    && $.phoneCertLib.getPhoneType($.phoneCertLib.getPhoneNumber()) == "H") {
                    $(".phone_cert_info_b2b").show();
                } else {
                    $(".phone_cert_info_b2b").hide();
                }

                if ($.phoneCertLib.getContentType() == "APP") {
                    $(window).scrollTop(0);
                    $(".pop_sender_preregist").css("top", "4px");
                } else {
                    $(window).scrollTop(567);
                }

                $(".phone_cert_step_1").show();
                $(".phone_cert_step_2").hide();

                $(".pop_preregist_done").hide();
                $(".myDimm , .pop_dimm , .pop_up_dimm").fadeIn();
                $(".pop_sender_preregist").fadeIn();
            }

            // 인증창 팝업 닫기
            , hideLayerPhoneCert: function () {
                if ($.phoneCertLib.getContentType() != "APP") {
                    $(".pop_preregist_done").fadeOut();
                    $(".pop_sender_preregist").fadeOut();
                    $(".myDimm , .pop_dimm , .pop_up_dimm").fadeOut();
                } else {
                    location.href = "starbucks://preRegist?result=" + $.phoneCertLib.isAppResult;
                }
            }

            // 현재 사용자 ID
            /* , */ /* getCurrentUserId: function () {
                ___ajaxCall("starbucks/interface/getCurrentUserId", {}, false, "json", "post"
                    , function (_response) {
                        if (_response.result_code == "SUCCESS") {
                            $.phoneCertLib.param.userid = _response.data.toUpperCase();
                        }
                    }
                );
            } */

            // 현재 사용자 전화번호
            /* , getCurrentUserPhone: function () {
                var currentUserPhone = "";

                ___ajaxCall("interface/getCurrentUserPhone", {}, false, "json", "post"
                    , function (_response) {
                        if (_response.result_code == "SUCCESS") {
                            currentUserPhone = _response.data.split("-").join("");
                        }
                    }
                );

                return currentUserPhone;
            } */

            // 인증 여부 조회
            /* , getCurrentPhoneCertInfo: function (_phoneType) {
                var certInfo = {
                    after_phone: "NONE"
                    , before_phone: "NONE"
                    , member_phone: $.phoneCertLib.getCurrentUserPhone()
                    , response_dt: ""
                    , isCert: false
                    , isExpired: false
                };

                if (_phoneType == undefined) {
                    _phoneType = $.phoneCertLib.param.phone_type;
                }

                var objParam = {
                    phone_type: _phoneType
                };

                ___ajaxCall("interface/getCurrentPhoneCertInfo", objParam, false, "json", "post"
                    , function (_response) {
                        if (_response.result_code == "SUCCESS") {
                            certInfo.after_phone = _response.data.after_phone;
                            certInfo.before_phone = _response.data.before_phone;
                            certInfo.member_phone = _response.data.member_phone;
                            certInfo.response_dt = _response.data.response_dt;
                            certInfo.isCert = (certInfo.after_phone == certInfo.member_phone);

                            if (_phoneType == "T") {
                                certInfo.isCert = true;
                                certInfo.isExpired = false;

                                var dAllowed = new Date(_response.data.response_dt);
                                dAllowed.setDate(dAllowed.getDate() + 90);

                                if (dAllowed < new Date()) {
                                    certInfo.isCert = false;
                                    certInfo.isExpired = true;
                                }
                            }
                        }
                    }
                );

                return certInfo;
            }
 */
            // 인증 요청
            /* , callPhoneCert: function () {
                if ($.phoneCertLib.isCalling) {
                    alert("전화 요청 중입니다. 잠시만 기다려 주세요.");
                    return;
                }
                $.phoneCertLib.isCalling = true;

                var url = "interface/callPhoneCert";
                /*
                if (location.href.indexOf("dev") > -1) {
                    url = "interface/getTestXml";
                }
                */

                if ($.phoneCertLib.param.phone_type == "H") {
                    $.phoneCertLib.param.before_phone = $.phoneCertLib.certInfo.after_phone;
                } else {
                    $.phoneCertLib.param.before_phone = $.phoneCertLib.certInfoTel.after_phone;
                }
                $.phoneCertLib.param.after_phone = $.phoneCertLib.getPhoneNumber();
                $.phoneCertLib.param.tran_id = getDateStringFormat(new Date(), "YYYYMMDDHHMMSS") + "_" + getRandomNumber(5);
                $.phoneCertLib.param.phone_type = $.phoneCertLib.getPhoneType($.phoneCertLib.param.after_phone);

                if ($.phoneCertLib.getContentType() == "MYINFO_MODIFY") {
                    $.phoneCertLib.param.changePhone = change_phone_mask;
                }

                ___ajaxCall(url, $.phoneCertLib.param, false, "xml", "post"
                    , function (_response) {

                        $.phoneCertLib.isCalling = false;
                        var xmlData = _response;
                        if (typeof (_response) != "object") {
                            xmlData = $(jQuery.parseXML(_response));
                        }

                        var rstCode = "9000";
                        $(xmlData).find("member").each(function () {
                            switch ($(this).find("name").text()) {
                                case "result":
                                case "faultCode":
                                    rstCode = $(this).find("value").text();
                                    break;
                                case "phonecertcallfault":
                                    rstCode = $(this).find("value").text();
                                    break;
                            }
                        });

                        switch (rstCode) {
                            case "1":
                                //                      $.phoneCertLib.setPhoneCertCallLog();
                                $(".phone_cert_step_1 , .phone_cert_info").hide();
                                $(".phone_cert_step_2").show();

                                if ($.phoneCertLib.param.phone_type == "T") {   // 유선전화인가?
                                    $(".preregist_certi_input").text("").show();
                                } else {
                                    $(".preregist_certi_input").hide();
                                }
                                break;
                            /*
                             * 보안취약점 조치(hakjun 20180702)
                             * ARS 인증 연속요청 방지 로직 추가
                             */
                            case "2":
                                alert("반복된 인증요청으로 30분간 인증시도가 제한됩니다.");
                                break;
                            default:
                                alert("ARS 인증 중 에러가 발생하였습니다.\n인증을 다시 시도하여 주시기 바랍니다.\n(" + rstCode + ")");
                                break;
                        }
                    }
                    , function (_error) {
                        $.phoneCertLib.isCalling = false;
                        alert("ARS 인증 중 에러가 발생하였습니다.\n인증을 다시 시도하여 주시기 바랍니다.(9001)");
                    }
                );
            } */

            // 인증 요청 로그 기록
            /* ,setPhoneCertCallLog : function () {
                ___ajaxCall("interface/setPhoneCertCallLog", $.phoneCertLib.param, false, "json", "post"
                    ,function (_response) {
                        if (_response.result_code == "SUCCESS") {
                            $(".phone_cert_step_1 , .phone_cert_info").hide();
                            $(".phone_cert_step_2").show();
        
                            if ($.phoneCertLib.param.phone_type == "T") {   // 유선전화인가?
                                $(".preregist_certi_input").text("").show();
                            } else {
                                $(".preregist_certi_input").hide();
                            }
                        } else {
                            var msg = (_response.alert_msg != "") ? _response.alert_msg : _response.error_msg;
                            var arr = msg.split("|");
        
                            if (arr.length == 2) {
                                alert(arr[1]);
                            } else {
                                alert("ARS 인증 중 에러가 발생하였습니다.\n인증을 다시 시도하여 주시기 바랍니다.(9002)");
                            }
                        }
                    }
                );
            } */

            // 인증 완료 처리
            , doCompletePhoneCert: function () {
                ___ajaxCall("interface/getPhoneCertResult", $.phoneCertLib.param, false, "json", "post"
                    , function (_response) {
                        if (_response.result_code == "SUCCESS") {
                            switch (_response.data.result_code) {
                                case "0000":
                                    /* if ($.phoneCertLib.certInfo == null) {
                                        $.phoneCertLib.certInfo = {};
                                    } */
                                    $.phoneCertLib.certInfo.after_phone = $.phoneCertLib.param.after_phone;
                                    $.phoneCertLib.certInfo.response_dt = getDateStringFormat(new Date(), "YYYY-MM-DD HH:MM:SS");

                                    //alert("ARS 인증이 완료 되었습니다.");
                                    $.phoneCertLib.showLayerComplete($.phoneCertLib.param);

                                    switch ($.phoneCertLib.getContentType()) {
                                        case "MYINFO_MODIFY":
                                            //$.phoneCertLib.updateMemberPhone();

                                            $(".certi").show();
                                            $(".certi_no , .phone_num_warn , .pop_sender_btn").hide();
                                            $('.phone').addClass("nofix_num");
                                            break;
                                        case "GIFT_STEP2":
                                        case "ECOUPON_GIFT_INPUT":
                                            $(".btn_pre_regi , .phone_num_warn2 , .pop_sender_btn").hide();
                                            break;
                                        case "SBCARD_EGIFT":
                                            /*
                                            $.phoneCertLib.updateMemberPhone();
                                            */

                                            $("#phone2").val($("#sendTelNo2").val());
                                            $("#phone3").val($("#sendTelNo3").val());
                                            $("#phone1").val($("#sendTelNo1").val()).trigger("change");

                                            $(".btn_sender_change_no , .cert_guide_b2b_01").hide();
                                            $(".btn_sender_change").show();
                                            break;
                                        case "APP":
                                            $.phoneCertLib.isAppResult = "success";
                                            break;
                                    }
                                    break;
                                case "0001":
                                    alert("ARS 인증 중입니다.\n잠시 후 [인증완료] 버튼을 눌러주세요.");
                                    break;
                                default:
                                    var result_text = "";
                                    switch (_response.data.result_code) {
                                        case "4002": result_text = "전화인증 취소"; break;
                                        case "4003": result_text = "전화인증 입력시간초과"; break;
                                        case "4004": result_text = "전화인증 신고"; break;
                                        case "4005": result_text = "전화인증 신고 취소"; break;
                                        case "4006": result_text = "전화인증 신고 입력시간 초과"; break;
                                        case "4011": result_text = "통화중"; break;
                                        case "4012": result_text = "잘못된번호"; break;
                                        case "4013": result_text = "결번"; break;
                                        case "4014": result_text = "무응답"; break;
                                        case "4017": result_text = "인증번호 입력오류"; break;
                                        case "4018": result_text = "고객이 통화 끊음"; break;
                                        case "4019": result_text = "음성사서함이 받음"; break;
                                        case "4020": result_text = "ARS 입력시간 초과"; break;
                                        case "4021": result_text = "통신사 전화량 폭주"; break;
                                        case "4022": result_text = "통신사 시스템 장애"; break;
                                        default: result_text = _response.data.result_code; break;
                                    }
                                    alert("ARS 인증 중 에러가 발생하였습니다.\n인증을 다시 시도하여 주시기 바랍니다.\n(" + result_text + ")");
                                    break;
                            }
                        } else {
                            var msg = (_response.alert_msg != "") ? _response.alert_msg : _response.error_msg;
                            var arr = msg.split("|");

                            if (arr.length == 2) {
                                alert(arr[1]);
                            } else {
                                alert("ARS 인증 중 에러가 발생하였습니다.\n인증을 다시 시도하여 주시기 바랍니다.(9003)");
                            }
                        }
                    }
                );
            }

            // 인증 완료 처리 (유선전화)
            , doCompletePhoneCertTypeTel: function () {
                var auth_no = $("#auth_no").val();
                if ($.trim(auth_no) == '') {
                    alert("인증번호를 정확히 입력 하세요.");
                    return;
                }

                var objParam = {
                    result_code: "0000"
                    , after_phone: $.phoneCertLib.param.after_phone
                    , tran_id: $.phoneCertLib.param.tran_id
                    , auth_no: auth_no
                };

                ___ajaxCall("interface/setPhoneCertResponseLogTel", objParam, false, "json", "post"
                    , function (_response) {
                        if (_response.result_code == "SUCCESS") {
                            $.phoneCertLib.certInfoTel.after_phone = $.phoneCertLib.param.after_phone;
                            $.phoneCertLib.certInfoTel.response_dt = getDateStringFormat(new Date(), "YYYY-MM-DD HH:MM:SS");
                            $.phoneCertLib.showLayerComplete($.phoneCertLib.param);

                            $(".btn_sender_change_no , .cert_guide_b2b_01").hide();
                            $(".btn_sender_change").show();
                        } else {
                            if ($.trim(_response.error_msg) == '') {
                                alert("ARS 인증 중 에러가 발생하였습니다.\n인증을 다시 시도하여 주시기 바랍니다.(9004)");
                            } else {
                                alert(_response.error_msg);
                            }
                        }
                    }
                );
            }

            , showLayerComplete: function (_param) {
                $(".pop_sender_preregist").hide();


                if ($.phoneCertLib.getContentType() == "MYINFO_MODIFY" && !$.phoneCertLib.param.changePhone) {
                    ___ajaxCall("interface/updateMemberChangeInfo", {}, false, "json", "post", function (_response) {
                        $(".preregist_done span").eq(0).text($.phoneCertLib.getMaskingPhoneNumber((_response.data.orgPhone).replace(/-/g, "")));
                    });
                } else {
                    $(".preregist_done span").eq(0).text($.phoneCertLib.getMaskingPhoneNumber(_param.after_phone));
                }

                if (_param.site == "B") {   // B2B인가??
                    if (_param.phone_type == "T") { // 유선전화인가?
                        $("p.cert_re_tel").show();
                    } else {
                        $("p.cert_re_tel").hide();
                    }
                } else {
                    if (_param.before_phone != "NONE") {    // 재인증인가?
                        $("p.cert_re").show();
                    }
                }

                if ($.phoneCertLib.getContentType() == "APP") {
                    $(".pop_preregist_done").css("top", "4px");
                }

                $(".pop_preregist_done").show();
            }

            // 인증 번호 해제
            , cancelPhoneCert: function () {
                ___ajaxCall("interface/cancelPhoneCert", $.phoneCertLib.param, false, "json", "post"
                    , function (_response) {
                    }
                );
            }

            //발송전화번호 영역 폰번호 or 유선전화번호 저장
            , setPhoneNumber: function (arrPhoneNumber) {
                $("#sendTelNo1").val(arrPhoneNumber[0]);
                $("#sendTelNo2").val(arrPhoneNumber[1]);
                $("#sendTelNo3").val(arrPhoneNumber[2]);
            }
            //"대표 전화번호 사용" 체크박스 이벤트 처리
            , telCheckBox: function () {
                if ($("#rprsnPhnoUseYn").is(":checked")) {
                    //"대표 전화번호 사용" 체크시 : 전화번호 입력하는 텍스트 박스 입력 불가, 이용증명원 등록 가능
                    $("input:radio[name=phoneNumType]").attr('disabled', true);
                    $(".btn_sender_change, .btn_sender_change_no").find(".btn").addClass("disabled");

                    $("#sendTelNo1").addClass("dimmed");
                    $('#sendTelNo1').attr('disabled', true);
                    $("#sendTelNo2").addClass("dimmed");
                    $('#sendTelNo2').attr('disabled', true);
                    $("#sendTelNo3").addClass("dimmed");
                    $('#sendTelNo3').attr('disabled', true);

                    $('#proofFile').attr('disabled', false);
                    if ($("#proofFilename").length) { // 신버전 브라우저
                        $('#mmsDiv .proof.inp_file .btn.gray').attr('disabled', false);
                        $('#mmsDiv .proof.inp_file .btn.gray').removeClass("disabled");
                    }
                } else {
                    //"대표 전화번호 사용" 체크시 : 전화번호 입력하는 텍스트 박스 입력 가능, 이용증명원 등록 불가
                    $("input:radio[name=phoneNumType]").attr('disabled', false);
                    $(".btn_sender_change, .btn_sender_change_no").find(".btn").removeClass("disabled");

                    $("#sendTelNo1").removeClass("dimmed");
                    $('#sendTelNo1').attr('disabled', false);
                    $("#sendTelNo2").removeClass("dimmed");
                    $('#sendTelNo2').attr('disabled', false);
                    $("#sendTelNo3").removeClass("dimmed");
                    $('#sendTelNo3').attr('disabled', false);

                    $('#proofFile').attr('disabled', true);
                    if ($("#proofFilename").length) { // 신버전 브라우저

                        $('#mmsDiv .proof.inp_file .btn.gray').attr('disabled', true);
                        $('#mmsDiv .proof.inp_file .btn.gray').addClass('disabled');
                    }
                }
            }

        };
    </script>

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
	
	function cardPurchase(){
		var name = document.getElementById('name').value;
		var email1 = document.getElementsByName('email1').value;
		var email2 = document.getElementsByName('email2').value;
		var reqMsg = document.getElementsByName('reqMsg').value;
		
		var s = document.getElementById('c_name');
		var c_name = s.options[s.selectedIndex].value;
		
		var price_length = document.getElementsByName('remaincost').length;
		var price;
		 for (var i=0; i<price_length; i++) {
	            if (document.getElementsByName("remaincost")[i].checked == true) {
	            	price = document.getElementsByName("remaincost")[i].value;
	            }
	     }
		 
		var msg;
			//결제요청
			IMP.request_pay({
				//name과 amout만있어도 결제 진행가능
				pg : 'kakao', //pg사 선택 (kakao, kakaopay 둘다 가능)
				pay_method: 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : 'Starbucks e-gift 카드 선물하기', // 상품명
				amount : price,
				buyer_name : '<c:out value="${sessionScope.userinfo.id }"/>',
				buyer_tel : '010-1234-1234',  //필수항목
			}, function(rsp){
				if(rsp.success){//결제 성공시 판매날짜랑 판매수단, 가격
					msg = '결제가 완료되었습니다';
					var result = {
						"name" : name,
						"email1" : email1,
						"email2" : email2,
						"reqMsg" : reqMsg,
						"c_name" : c_name,
						"price" : price
					//"couponNum" : couponNum
					}
					/* 
					req = new XMLHttpRequest();
					req.onreadystatechange = resultAjax;
					req.open('post', 'setPurchaseAjax') */
					data = JSON.stringify(result);//json의 자료형으로 변경해주기
					//data의 타입 지정하기. 서버에서 확인하여 JSON의 타입으로 처리할 수 있다.
					/* req.setRequestHeader('Content-Type', 'application/json; charset=UTF-8')
					req.send(data); */
					var form = document.getElementById('egift_f');
					form.action='eGiftCardProc';
					form.submit();
					
				}
				else{//결제 실패시
					msg = '결제에 실패했습니다';
					msg += '에러 : ' + rsp.error_msg
					alert(msg);
				}
			});//pay
			
	}
	
	/* function resultAjax(){
		var price_length = document.getElementsByName('remaincost').length;
		var price;
		 for (var i=0; i<price_length; i++) {
	            if (document.getElementsByName("remaincost")[i].checked == true) {
	            	price = document.getElementsByName("remaincost")[i].value;
	            }
	     }
		
		if(req.readyState == 4 && req.status == 200){
			var _response = req.responseText;
			if (_response == 1) {
				msg = price+"원 충전을 완료하였습니다.";
			} else {
				msg = ("ajax통신실패");
			}
			//alert(msg);
			location.href = 'eGiftCardProc';
		}
	} */
</script>



    <div id="ui-datepicker-div"
        class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all notranslate"></div>
    <div id="fb-root" class=" fb_reset">
        <div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
            <div></div>
        </div>
    </div>
</body>

</html>