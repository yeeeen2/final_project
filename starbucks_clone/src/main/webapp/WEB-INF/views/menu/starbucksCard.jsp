<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스 카드 선택</title>
</head>
<style type="text/css">
	.btn_coupon{background:#f6f6f6; margin: 10px; padding-top: 30px;padding-bottom: 30px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
	.submitResetBtn{margin: 10px; padding-top: 14px;padding-bottom: 14px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
</style>
</head>
<body>
<div class="popup" style="margin:auto; text-align: center;">
	<form action="javascript:void(0)">
		<table class="coupon" style="border:solid; border-color: #dfdfdf; font-size: 14px; margin:auto;">
				<thead style="background: #006633; color: white;">
					<tr>
						<th colspan="2" style="padding:25px; width: 25px;"></th>
						<th style="padding:25px; width: 180px;">카드종류</th>
						<th style="padding:25px; width: 120px;">잔여금액</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cardDTO" items="${list}">
						<c:choose>
							<c:when test="${cardDTO.c_master==1}">
								<tr>
									<td colspan="2" style="text-align: right; padding-right: 15px;"><label style="color: red; font-weight: bold;" >★</label>
									<input type="radio" id="Choose" name="cardChoose" style="text-align: center;" value="${cardDTO.c_num }"/></td>
									<td style="padding:15px; width: 215px;">${cardDTO.c_name}
									</td>
									<td style="padding:15px; width: 120px;">${cardDTO.remaincost }원
									<input type="hidden" id="cardMoney" value="${cardDTO.remaincost }"/>
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="2" style="text-align: right;padding-right: 15px;">
									<input type="radio" id="Choose" name="cardChoose" style="text-align: center;" value="${cardDTO.c_num }"/></td>
									<td style="padding:15px; width: 215px;">${cardDTO.c_name}
									</td>
									<td style="padding:15px; width: 120px;">${cardDTO.remaincost }원
									<input type="hidden" id="cardMoney" value="${cardDTO.remaincost }"/>
									</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
				</tbody>	
			</table>
			<label style="color: red; font-size: 11px;"><b>★ 표시는 자주 사용하는 카드로 등록된 카드 입니다.</b></label><br>
			<input type="button" class="submitResetBtn" style="color: white; background: #006633;" value="카드선택" onclick="sendCard();"><input type="reset" style="background: #C22505; color: white;" onclick="window.close()" class="submitResetBtn" value="취소">
	</form>
</div>
</body>
<script src="//image.istarbucks.co.kr/common/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"> //지혜0621
	function sendCard(){
		
		num = $("input[name='cardChoose']:checked");
		money = $(num).closest('tr').find("#cardMoney").val();
		window.opener.document.getElementById('cardNum').value = $(num).val();
		window.opener.document.getElementById('cardMoney').value = money;
		window.opener.document.getElementById('cardNum').click();
		console.log('카드선택안됨?');
		
		window.close();
	}
</script>

</html>