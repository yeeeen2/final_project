<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>쿠폰 선택 팝업</title>

<script type="text/javascript">

	<!-- function close 만들기-->
	



</script>
<style type="text/css">
	
	.btn_coupon{background:#f6f6f6; margin: 10px; padding-top: 30px;padding-bottom: 30px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
	.submitResetBtn{margin: 10px; padding-top: 14px;padding-bottom: 14px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
</style>
</head>
<body>
<div class="popup" style="margin:auto;text-align: center;">
	<form action="javascript:void(0)">
		<table class="coupon" style="border:solid; border-color: #dfdfdf; font-size: 14px; margin:auto;">
				<thead>
					<tr>
						<th colspan="2" style="padding:25px; width: 140px;">사용 할 쿠폰명</th>
						<th style="padding:25px; width: 230px;">사용기한</th>
						<th style="padding:25px; width: 120px;">할인금액</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="i" value="0"/>
					<c:forEach var="eCouponDTO" items="${list }">
					<tr>
						<td><input type="radio" name="couponChoose" style="text-align: center;" value="${eCouponDTO.pon_no }"/></td>
						<td style="padding:15px; width: 230px;"><p>${eCouponDTO.pon_name }</p>
						<input type="hidden" id="pon_name" value="${eCouponDTO.pon_name }"/></td>
						<td style="padding:15px; width: 140px;"><p>${startList[i]} ~ ${endList[i]}</p>
						<input type="hidden" id="pon_date" value="${startList[i]} ~ ${endList[i]}"/></td>
						<td style="padding:15px; width: 120px;"><p>${eCouponDTO.pon_cash }</p>
						<input type="hidden" id="pon_cash" value="${eCouponDTO.pon_cash }"/></td>
					</tr>
					<c:set var="i" value="${i+1 }"/>
					</c:forEach>
				</tbody>
			</table>
			<label style="color: red; font-size: 12px;"><b>쿠폰의 중복선택은 불가합니다.</b></label><br>
			<input type="button" class="submitResetBtn" style="color: white; background: #006633;" value="쿠폰선택" onclick="sendCoupon();"><input type="reset" style="background: #C22505; color: white;" onclick="window.close()" class="submitResetBtn" value="취소">
	</form>
</div>
</body>
<script src="//image.istarbucks.co.kr/common/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"> 
	
	
	
	//지혜 0621
	function sendCoupon(){
		num = $("input[name='couponChoose']:checked");
		obj = $(num).closest('tr');//부모요소
		name = $(obj).find("#pon_name").val();
		date = $(obj).find("#pon_date").val();
		cost = $(obj).find("#pon_cash").val();
		
		//지혜 0628
		var drink = "<c:out value='${sessionScope.drink}'/>";
		if(name == '[음료전용]별 적립 쿠폰'){
			if(drink == 'N'){
				alert('별 쿠폰은 음료 구매 시에만 적용 가능합니다.');
				return;
			}
		}
		
		window.opener.document.getElementById('ponNo').value = $(num).val();
		window.opener.document.getElementById('pon_name').innerText = name;
		window.opener.document.getElementById('pon_date').innerText = date;
		window.opener.document.getElementById('pon_cost').value = cost;
		window.opener.document.getElementById('pon_cost').click();
		
		window.close();
	}
</script>
</html>