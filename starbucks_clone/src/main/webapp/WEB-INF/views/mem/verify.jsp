<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type"		content="website">
<meta property="og:title"		content="Starbucks">
<meta property="og:url"			content="https://www.starbucks.co.kr/">
<meta property="og:image"		content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">본인 인증 | Starbucks Korea</title> <!-- 220117 수정 -->
<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="../common/css/reset.css" rel="stylesheet">
<!-- <link href="../common/css/style_util.css?v=180906" rel="stylesheet"> -->

<!-- 예은 -->
<script type="text/javascript">
	var req;
	
	
	
	function phoneAuth(){
		
		req = new XMLHttpRequest();
		req.open('post', 'phoneAuth');
		req.onload =()=>{
			alert(req.response);
			
		};
		req.send(document.getElementById('phone').value);
	}
	
	function phoneAuthCheck(){
		req = new XMLHttpRequest();
		req.open('post', 'phoneAuthCheck');
		req.setRequestHeader("Content-Type", "application/json; charset=UTF-8;");
		var phoneData = document.getElementById('phone').value;
		var number = document.getElementById('verifyCode').value;
		var data = {verifyCode : number};
		data = JSON.stringify(data);
		req.onload =()=>{
			alert(req.response);
			
			window.opener.document.join1f.num.value=phoneData;
			window.opener.document.join1f.submit();
			self.close();


		};
		
		req.send(data);
		
		
	}
	

	
</script>


<style type="text/css">

/* 팝업디자인 */
	.ecPop { position:absolute;  width:421px; background:#ffffff; z-index:100; display:none; border-radius:3px; overflow:hidden; }
	.ecPop div.head { background:#8c8279; color:#fff; font-size:14px; padding:15px; position:relative; }/* 팝업 수정 20150525 */
	.ecPop div.head p.close { position:absolute; right:11px; top:17px; }/* 팝업 수정 20150525 */
	.ecPop div.head p.close a{ transition:transform 1s; -webkit-transition:-webkit-transform 1s; display:block; width:14px; height:14px; background:url('../img/util/cal/calpop_close2.png') 0 0 no-repeat; text-indent:-9999px; }
	.ecPop div.head p.close a:hover { transform:rotate(180deg); }
	.ecPop .myPopInner { width:381px; padding:20px 20px 0 20px; position:relative; }
	.ecPop p.tit { font-size:18px; font-weight:bold; color:#222; padding-bottom:20px; }

	.ecPop div.coupon_input { /*border-top:2px solid #333;*/ border-bottom:1px solid #dbdbdb; padding-bottom:20px; margin-bottom:20px; }
	/*.ecPop div.coupon_input p.con { font-size:12px; color:#222; margin-bottom:10px; }*/
	.ecPop div.coupon_input label { background:url("../img/util/bullet_grey.gif") 0 5px no-repeat; color:#222; display:block; font-size:12px; margin-bottom:10px; text-indent:10px; }

	.ecPop div.coupon_input div.input input { width:118px; height:26px; line-height:26px; border:1px solid #ddd; border-radius:3px; color:#222; font-size:12px; font-family:'Arial'; text-indent:5px; margin-right:10px; }
	.ecPop div.coupon_input div.input input.last { margin-right:0; }

	.ecPop div.mobile_input { margin-bottom:20px; vertical-align:middle; }
	.ecPop div.mobile_input p.con { background:url("../img/util/bullet_grey.gif") 0 5px no-repeat; color:#222; font-size:12px; margin-bottom:10px; text-indent:10px; }
	.ecPop div.mobile_input div.input { width:382px; height:28px; }
	.ecPop div.mobile_input div.input:after { content:""; display:block; clear:both; }
	.ecPop div.mobile_input div.input input { float:left; width:115px; height:26px; line-height:26px; border:1px solid #ddd; border-radius:3px; color:#222; font-size:12px; font-family:'Arial'; text-indent:5px; }
	
	.ecPop div.coupon_input span.line,
	.ecPop div.mobile_input span.line{ float:left; display:block; width:11px; height:28px; background:url('../img/util/ec/dash_bg.jpg') center center no-repeat; } /*20170726수정*/

	/*20170726추가*/
	.ecPop .myCouponCb2 div.coupon_input div.input input{float:left; margin-right: 0; width:117px}
	.ecPop .myCouponCb2 div.mobile_input div.input input{width:118px}
	.ecPop .myCouponCb1 div.coupon_input div.input input {float:left;  width:85.5px; height:26px; line-height:26px; border:1px solid #ddd; border-radius:3px; color:#222; font-size:12px; font-family:'Arial'; text-indent:5px; margin-right:0}
	.ecPop .myCouponCb1 div.coupon_input div.input input.last { margin-right:0; }
	.ecPop .myCouponCb1 div.coupon_input span.line,
	.ecPop .myCouponCb1 div.mobile_input span.line{width:10px}
	.ecPop .myCouponCb1 div.mobile_input div.input { width:100%; height:28px; }
	.ecPop .myCouponCb1 div.mobile_input div.input input { float:left; width:100%; }
	
	.couponTabTit{font-size:12px; color: #000000; letter-spacing: -0.5px; line-height: 16px}
	.couponTabList{height:45px; padding:10px 0 0}
	.couponTabList li{display: inline-block; float:left; padding-right:20px; font-size:14px}
	.couponTabList li a{display: inline-block; height:21px; line-height: 20px; padding-left:28px; background:url("../img/util/cp_check_off.png") 0 0 no-repeat; font-size:14px}
	.couponTabList li.cpTabOn a{background:url("../img/util/cp_check_on.png") 0 0 no-repeat;}
	.cpClear{clear:both}
	.cpBg{background:#f4f4f2 !important}
	/*20170726추가*/

	.ecPop div.select_box03 { width:118px; background:#ffffff url("../img/coffee/select_arrow.png") no-repeat 100px center; top:0; float:left; }
	.ecPop div.select_box03 select { width:120px; }

	.ecPop div.info_wrap { padding:20px; background:#f4f4f2; }
	/*.ecPop div.info_wrap ul { margin-bottom:20px; } *//*20170726수정*/
	.ecPop div.info_wrap li { font-size:12px; color:#666; margin-bottom:8px; line-height:1.3; padding-left:8px; background:url('../img/util/ec/dot.jpg') 0 5px no-repeat; }

	.ecPop p.btns { height:30px; margin:0 auto; width:172px; }
	.ecPop p.btns a { float:left; width:81px; height:28px; line-height:28px; border-radius:3px; text-align:center; }
	.ecPop p.btns a.a1 { background:#e2c383; border:1px solid #bb9f65; color:#222; font-size:12px; font-weight:bold; }
	.ecPop p.btns a.a2 { background:#222; border:1px solid #222; color:#fff; font-size:12px; font-weight:bold; margin-left:5px; }
	.ecPop p.btns a.a3 { background:#e2c383; border:1px solid #bb9f65; color:#222; font-size:12px; font-weight:bold; margin-left:40px; }
	
</style>
</head>

<body>

<div class="ecPop" style="display: block;">
	<div class="head">
		<p class="tt">본인 인증 확인</p>
	</div>
	<!-- 20170726 추가 -->                                
            <div class="myPopInner">
                <form name="efrm1" id="efrm1" method="post">
                    <fieldset>
                        <legend class="hid">본인 인증 확인</legend>
                        
              			  <div class="myCouponCb myCouponCb1 myCouponWrap"> <!-- 211008 클래스 추가 -->
	                      <div class="mobile_input mobile_input2">
	                            <p class="con">핸드폰 번호를 - 없이 입력해주세요.</p>
	                            <div class="input">
	                                <input type="text" name="phone" id="phone" ref="num" value="" placeholder="ex)01012345678" title="전화번호 입력"/>
	                                <br><br><br>
	                                <p id="phoneChk" class="btns"><a href="#" class="a3" onclick="phoneAuth();">인증 번호 발송</a></p>
	                            </div>
	                            <div class="cpClear"></div>
	                        </div>
	                        <div class="mobile_input mobile_input2">
	                            <p class="con">인증번호 6자리를 입력해주세요.</p>
	                            <div class="input">
	                                <input type="text" name="verifyCode" id="verifyCode" maxlength="8" ref="num" value="" placeholder="ex)123456" title="인증번호"">
	                            </div>
	                        </div>
	                    </div>
                    </fieldset>
                </form>
            </div>
      <!--// 20170726 추가 -->
      
      <div class="info_wrap cpBg">

          <p class="btns"><a href="#" class="a1" onclick="phoneAuthCheck();">인증 확인</a> <a href="#" class="a2" onclick="window.close()">취소</a></p>
      </div>
                         
		</div>
	</body>
</html>