var $mobilePlccLogo =  $(".ms_user_info_left .plcc-logo");
var $pcPlccLogo =  $(".ms_user_info_right .plcc-logo");
	
$(document).ready(function () {
	//이단
	showRewardSummary();
	setEvents();
	
	
	var d = new Date();
	var n = d.getFullYear();
	
	if($userBirth != "" && $userBirth.length == 10) {
		if($userGender == "M" || $userGender == "F") {
			userYear = $userBirth.substr(0, 4);
			userAge = n - userYear + 1;
			
			$('#my_ms_age option').attr('selected', false);
			
			if(userAge < 20) {
				$('#my_ms_age option:eq(0)').attr('selected', 'selected');
				// $('#my_ms_age').prev().text($('#my_ms_age option:eq(0)').text()); 접근성_20171201 삭제
			} else if(userAge >= 20 && userAge < 30) {
				$('#my_ms_age option:eq(1)').attr('selected', 'selected');
				// $('#my_ms_age').prev().text($('#my_ms_age option:eq(1)').text()); 접근성_20171201 삭제
			} else if(userAge >= 30 && userAge < 40) {
				$('#my_ms_age option:eq(2)').attr('selected', 'selected');
				// $('#my_ms_age').prev().text($('#my_ms_age option:eq(2)').text()); 접근성_20171201 삭제
			} else if(userAge >= 40 && userAge < 50) {
				$('#my_ms_age option:eq(3)').attr('selected', 'selected');
				// $('#my_ms_age').prev().text($('#my_ms_age option:eq(3)').text()); 접근성_20171201 삭제
			} else if(userAge >= 50) {
				$('#my_ms_age option:eq(4)').attr('selected', 'selected');
				// $('#my_ms_age').prev().text($('#my_ms_age option:eq(4)').text()); 접근성_20171201 삭제
			}

			$('#my_ms_select option').attr('selected', false);
			
			if($userGender == "M") {
				$('#my_ms_select option:eq(0)').attr('selected', 'selected');
				// $('#my_ms_select').prev().text($('#my_ms_select option:eq(0)').text()); 접근성_20171201 삭제
			} else if($userGender == "F") {
				$('#my_ms_select option:eq(1)').attr('selected', 'selected');
				// $('#my_ms_select').prev().text($('#my_ms_select option:eq(1)').text()); 접근성_20171201 삭제
			}
		}
	}
	
	setEdw('W0000001');
	setEdw('W0000012');
	setEdw('W0000057');
	
	// $('#my_ms_age, #my_ms_select').change(function() {
	$('.my_ms_setBtn').click(function() {	// 접근성_20171201 change -> click 이벤트로 변경
		setEdw('W0000001');
		setEdw('W0000012');
		setEdw('W0000057');
	});
});

function setEdw(type_cd) {
	var age = $('#my_ms_age').val();
	var sex = $('#my_ms_select').val();

    var option = {
            'SER_TYPE_CD' : type_cd,
            'SER_AGE' : age,
            'SER_SEX' : sex
    };
    __ajaxCall('/my/getEdwAjax.do', option , true, "JSON", "POST", 
    function(data) {
    	if(data.list.length > 0) {
    		// $('.criteria').text(data.list[0].ser_END_DATE + ' ' + data.list[0].ser_START_DATE + '주차 기준');
    		$('.criteria').html('스타벅스 리워드<br>최근 일주일 판매 집계 기준'); // 스타벅스 리워드 수정
    		
    		var str = "";
			$.each( data.list, function(x, y) {				
				var cateName = "";
				var goClass = "";
				
				if(type_cd == 'W0000001') {
					cateName = "음료";
					goClass = "goDrink";
					$('.my_ms_rank_each1 ul').html("");
				} else if(type_cd == 'W0000012') {
					cateName = "푸드";
					goClass = "goFood";
					$('.my_ms_rank_each2 ul').html("");
				} else if(type_cd == 'W0000057') {
					cateName = "원두";
					goClass = "goCoffee";
					$('.my_ms_rank_each3 ul').html("");
				}
				
				if(!(y.ser_SUB_TYPE_CD == 'W0000003' //에스프레소
					|| y.ser_SUB_TYPE_CD == 'W0000004' //프라푸치노
					|| y.ser_SUB_TYPE_CD == 'W0000005' //블렌디드
					|| y.ser_SUB_TYPE_CD == 'W0000053' //기타 제조 음료
					|| y.ser_SUB_TYPE_CD == 'W0000060' //브루드 커피
					|| y.ser_SUB_TYPE_CD == 'W0000061' //스타벅스 피지오		
					|| y.ser_SUB_TYPE_CD == 'W0000062' //스타벅스 주스(병음료)
					|| y.ser_SUB_TYPE_CD == 'W0000075' //티
					|| y.ser_SUB_TYPE_CD == 'W0000171' //콜드브루
					// [푸드]
					|| y.ser_SUB_TYPE_CD == 'W0000013' //베이커리
					|| y.ser_SUB_TYPE_CD == 'W0000032' //케이크	
					|| y.ser_SUB_TYPE_CD == 'W0000033' //샌드위치&샐러드
					|| y.ser_SUB_TYPE_CD == 'W0000054' //따뜻한 푸드
					|| y.ser_SUB_TYPE_CD == 'W0000055' //과일&요거트
					|| y.ser_SUB_TYPE_CD == 'W0000056' //스낵&미니디저트
					|| y.ser_SUB_TYPE_CD == 'W0000064' //아이스크림
					|| y.ser_SUB_TYPE_CD == 'W0000113' //프리미어 푸드
					|| y.ser_SUB_TYPE_CD == 'W0000126' //브런치유어웨이
					// [원두]
					|| y.ser_SUB_TYPE_CD == 'W0000058' //스타벅스 원두
					|| y.ser_SUB_TYPE_CD == 'W0000059' //리저브 원두
					|| y.ser_SUB_TYPE_CD == 'W0000072' //스타벅스 비아
					|| y.ser_SUB_TYPE_CD == 'W0000073' //스타벅스 오리가미
					)
				) {
					return;
				}
				
				file_NAME = y.file_NAME.split('@');
				file_PATH = y.file_PATH.split('@');
				ser_PRODUCT_NAME = y.ser_PRODUCT_NAME.replace(/[(tall)]/gi, '').replace(/[(NGFC용)]/gi, '').replace(/&/gi, ' ').replace(/amp;/gi, '').replace(/mp;/gi, '').split('@');
				ser_PRODUCT_SKU = y.ser_PRODUCT_SKU.split('@');
				ser_RANK = y.ser_RANK.split('@');
				
				str = str + '<li>';
				str = str + '	<header>부문별 ' + cateName + ' 판매 순위<br><strong>' + y.ser_SUB_TYPE + '</strong></header>';
				str = str + '	<figure><a href="javascript:void(0);" class="' + goClass + '" data-sku="' + ser_PRODUCT_SKU[0] + '"><img alt="" src="' + y.img_UPLOAD_PATH.replace("www", "image") + file_PATH[0] + '"></a></figure>';
				str = str + '	<p class="first_bev">1위</p>';
				str = str + '	<p class="coffee_name"><a href="javascript:void(0);" class="' + goClass + '" data-sku="' + ser_PRODUCT_SKU[0] + '">' + ser_PRODUCT_NAME[0] + '</a></p>';
				if(!!(ser_PRODUCT_SKU[1])) {
					str = str + '	<p class="second_rank">';
					str = str + '		<span class="left"><strong>2위</strong></span>';
					str = str + '		<span class="right"><a href="javascript:void(0);" class="' + goClass + '" data-sku="' + ser_PRODUCT_SKU[1] + '">' + ser_PRODUCT_NAME[1] + '</a></span>';
					str = str + '	</p>';
					if( !!(ser_PRODUCT_SKU[2]) ) {
						str = str + '	<p class="third_rank">';
						str = str + '		<span class="left"><strong>3위</strong></span>';
						str = str + '		<span class="right"><a href="javascript:void(0);" class="' + goClass + '" data-sku="' + ser_PRODUCT_SKU[2] + '">' + ser_PRODUCT_NAME[2] + '</a></span>';
						str = str + '	</p>';
					}
				}
				str = str + '</li>';
			});
			
			if(type_cd == 'W0000001') {
				$('.my_ms_rank_each1 ul').html(str);
				
				$('.my_ms_rank_wrap ul figure img').each(function() {
					$(this).error(function() {
						$(this).attr('src', '//image.istarbucks.co.kr/common/img/util/edwDefault.png');
					});
				});
				
				$('.my_ms_rank_each1 ul').find('.goDrink').on('click', function() {
					
                    product_cd = $(this).attr('data-sku');
                    f = document.edwForm;
                    
					var input2 = document.createElement("input");
					input2.setAttribute("type", "hidden");
					input2.setAttribute("name", "product_cd");
					input2.setAttribute("value", product_cd);
					f.appendChild(input2);
					
                    f.action = m_domain_http + "/menu/drink_view.do";
                    f.submit();
				});
				
				if ( $edwSlider1 != null) {
					$edwSlider1.destroySlider();
				}
				
				setTimeout(function(){
					$edwSlider1 = $('.edw1').bxSlider({
	                    pager:false,
	                    slideMargin:0
	                });					
				},100);

		} else if(type_cd == 'W0000012') {
			$('.my_ms_rank_each2 ul').html(str);
			$('.my_ms_rank_wrap ul figure img').each(function() {
				$(this).error(function() {
					$(this).attr('src', '//image.istarbucks.co.kr/common/img/util/edwDefault.png');
				});
			});			
			$('.my_ms_rank_each2 ul').find('.goFood').on('click', function() {
				product_cd = $(this).attr('data-sku');
				f = document.edwForm;
									
				var input2 = document.createElement("input");
				input2.setAttribute("type", "hidden");
				input2.setAttribute("name", "product_cd");
				input2.setAttribute("value", product_cd);
				f.appendChild(input2);
				f.action = m_domain_http + "/menu/food_view.do";
				f.submit();
			});
			
			if ( $edwSlider2 != null) {
				$edwSlider2.destroySlider();
			}
			
			setTimeout(function(){
				$edwSlider2 = $('.edw2').bxSlider({
					pager:false,
					slideMargin:0
				});					
			},100);

		} else if(type_cd == 'W0000057') {
			$('.my_ms_rank_each3 ul').html(str);
			
			$('.my_ms_rank_wrap ul figure img').each(function() {
				$(this).error(function() {
					$(this).attr('src', '//image.istarbucks.co.kr/common/img/util/edwDefault.png');
				});
			});
			
			$('.my_ms_rank_each3 ul').find('.goCoffee').on('click', function() {
				product_cd = $(this).attr('data-sku');
				f = document.edwForm;
				var input2 = document.createElement("input");
				input2.setAttribute("type", "hidden");
				input2.setAttribute("name", "PRODUCT_CD");
				input2.setAttribute("value", product_cd);
				f.appendChild(input2);
				f.action = m_domain_http + "/coffee/product_view.do";
				f.submit();
			});
	
			if ( $edwSlider3 != null) {
				$edwSlider3.destroySlider();
			}
			
			setTimeout(function(){
				$edwSlider3 = $('.edw3').bxSlider({
					pager:false,
					slideMargin:0
				});					
			},100);
		}		
	}
    },
    function() {
    });
}

function setEvents() {
	// 전자영수증 (20210302 수정_인박스->전자영수증)
	$("li.my_ms_per_icon1 > a, .regu_mem_icon1").on("click", function () {
		location.href = "/my/eReceiptList.do";
	});
	
	// 캘린더
	$("li.my_ms_per_icon2 > a, .regu_mem_icon2").on("click", function () {
		location.href = "/my/calendar.do";
	});
	
	// 보유쿠폰
	$("li.my_ms_per_icon3 > a, .regu_mem_icon3").on("click", function () {
		location.href = "/my/ecoupon.do";
	});	
	
	$(document).on("click", ".icon_pencil", changeModifyMode);
	$(document).on("click", ".my_nick_modify", modifyNickname);
	$(document).on("click", ".my_nick_cancel", cancelModifyMode);
	
	// 카드관리/카드충전/잔액이전/잔액환불/등록해지
	$(document).on("click", ".my_ms_card_btns a", function () {
		var type      = $(this).data("type");
		var strAction = "";
		
		switch (type) {
			case "MANAGEMENT":
			case "CHARGE":
			case "MODIFY_GOLD_INFO":
				var arrKeyAndValues = {
					 "KEY"   : "cardRegNumber"
					,"VALUE" : $(this).data("cardregnumber")
				};
				break;
				
			case "TRANSFER":
			case "REFUND":
				var arrKeyAndValues = new Array(
					 { "KEY" : "cardRegNumber", "VALUE" : $(this).data("cardregnumber") }
					,{ "KEY" : "cardNiceName",  "VALUE" : $(this).data("cardnickname") }
					,{ "KEY" : "balance",       "VALUE" : $(this).data("balance") }
				);
				break;
				
			case "DELETE":
				deleteMyCard( $(this).data("cardregnumber") );
				return;
				break;
		}
		
		switch (type) {
			case "MANAGEMENT":       strAction = "/my/mycard.do";          break;
			case "CHARGE":           strAction = "/my/mycard_charge.do";   break;
			case "TRANSFER":         strAction = "/my/mycard_transfer.do"; break;
			case "REFUND":           strAction = "/my/mycard_refund.do";   break;
			case "MODIFY_GOLD_INFO": strAction = "/my/reward_goldcard.do"; break;
		}

		goWithPostData(arrKeyAndValues, strAction);
	});
}


function showRewardSummary() {
	if (m_jsonRewardSummary == null) {
		getRewardSummary();
		getPlccLogo(); //plcc로고노출
	}
	
	//이단
	$(".validCouponCnt").text(m_jsonRewardSummary.validCoupontCnt);	// 보유 쿠폰 개수
	
	if (m_jsonRewardSummary.msrMemberYn == "N") {
		$(".regular_user_index").show();
		$(".msr_user_index").hide();
		$(".my_ms_evbnr").hide();
	} else {
		var strUserGrade   = "";	// 회원등급
		var nTotalStar     = 0;		// 현재 유효한 별 수
		var nNextGradeStar = 0;		// 다음 등급에 필요한 별 수
		var strStatNotice  = "";
		
		switch(m_jsonRewardSummary.userGrade) {
			case "00":
				nTotalStar     = m_jsonRewardSummary.starInfo.validStar;
				nNextGradeStar = m_jsonRewardSummary.starInfo.nextGradeStar;
				strUserGrade   = "Welcome Level";
				strStatNotice  = '<strong>' + nNextGradeStar + '</strong>개의 별★이 더 모이면<br /><strong class="en t_0d5f34">Green Level</strong>만의 특별한 혜택이!';
				break;

			case "10":
			case "11":
				nTotalStar     = m_jsonRewardSummary.starInfo.validStar;
				nNextGradeStar = m_jsonRewardSummary.starInfo.nextGradeStar;
				strUserGrade   = "Green Level";
				strStatNotice  = '<strong>' + nNextGradeStar + '</strong>개의 별★이 더 모이면<br /><strong class="en t_bd9b60">Gold Level</strong>만의 특별한 혜택이!';
				$("p.ms_user_stat strong.userGrade").addClass("t_0d5f34");
				break;
				
			case "20":
			case "21":
				nTotalStar     = m_jsonRewardSummary.starInfo.validCouponStar;
				nNextGradeStar = m_jsonRewardSummary.starPolicy.goldGoldStar - m_jsonRewardSummary.starInfo.validStar;
				
				strUserGrade   = "Gold Level";
				strStatNotice  = '<strong>' + nNextGradeStar + '</strong>개의 별★이 더 모이면<br /><strong class="en t_bd9b60">Gold Level</strong>을 1년 더 유지할 수 있습니다!';
				if (nNextGradeStar < 0) {
					var nRemainStar = 12 - nTotalStar;
					if (nRemainStar < 0) {
						nRemainStar = 0;
					}
					strStatNotice  = '<strong class="en t_bd9b60">Gold Level</strong>을 유지 중 입니다.<br />무료음료 쿠폰 발행까지 ' + nRemainStar + '개의 별이 남았습니다.';
				}
				$("p.ms_user_stat strong.userGrade").addClass("t_bd9b60");
				break;
		}
		$(".userGrade").text(strUserGrade);
		$(".totalStar").text(nTotalStar); 
		$(".ms_user_stat_notice").html(strStatNotice);
		
		showCardList();
		showRecentVisitInfo();
	}
}

function showCardList() {
	var objParam = {
		"cardStatus" : "ALL"
	};
	
	___ajaxCall("/interface/getMsrMyCardList.do", objParam, false, "json", "post"
		,function(_response) {
			if (_response.result_code == "SUCCESS") {
				var jsonData = jQuery.parseJSON(_response.data);
				
				// 카드 리스트 출력
				if (Array.isArray(jsonData.cardList) == false) {
					jsonData.cardList = [ jsonData.cardList ];
				}

		$(".my_ms_card_cont .slider").empty();
		
		if (jsonData.cardList.length > 0) {
			$("#cardList").tmpl(jsonData.cardList, {
					getBalance : function() {
					return $.number(this.data.balance);
				}
			}).appendTo(".my_ms_card_cont .slider");
			
			// 슬라이더
			setTimeout(function() {
				var clSlider = $('.my_ms_card_cont .slider').bxSlider({
						pager        : false
					,slideMargin  : 0
					,onSlideAfter : function ($slideElement, oldIndex, newIndex) {
						$(".my_ms_card_inner .curSlideNo").text(newIndex + 1);
					}
				});

				$('.my_ms_card_inner .back').on('click', function () {
					clSlider.goToPrevSlide();	//이전 슬라이드 배너로 이동
							return false;              	//<a>에 링크 차단
					});
					$('.my_ms_card_inner .forward').on('click', function () {
						clSlider.goToNextSlide();	//다음 슬라이드 배너로 이동
							return false;              	//<a>에 링크 차단
					});	
			}, 150);				
		} else {
			$(".msr_user_index .my_ms_card").hide();
			$(".msr_user_index .have_no_ms_card").show();
		}
		
		$(".my_ms_card_inner .recent_card").text("총 보유카드 : " + jsonData.totalCnt + "장");
		$(".my_ms_card_inner .totalCnt").text(jsonData.totalCnt);
	}
		}
	);
}

function showRecentVisitInfo() {
	___ajaxCall("/interface/getMsrRecentVisitInfo.do", {}, false, "json", "post"
		,function(_response) {
			if (_response.result_code == "SUCCESS") {
				if (_response.data) {
					var jsonData = jQuery.parseJSON(_response.data);
					var arrVisitDt = jsonData.visitDt.split("-");
					
					if (jsonData.storeName != "") {
						var strHTML  = '가장 최근 ' + arrVisitDt[0] + '년 ' + Number(arrVisitDt[1]) + '월 ' + Number(arrVisitDt[2]) + '일에 ';
							strHTML += '<strong>' + jsonData.storeName + '점</strong>에서 ';
							strHTML += '<strong class="t_0d5f34">' + jsonData.skuName + '</strong>를 마셨습니다.';
						
						$(".recent_bev").html(strHTML);
						$(".recent_bev_bg").show();
					}
				}
			}
		}
	);
}

function changeModifyMode() {
	var nIdx = $(".icon_pencil").index(this);
	var cardNickname = $(".my_ms_card_id span").eq(nIdx).text();
	var cardStatus = $(this).data("cardstatus");
	if (cardStatus != "R") {
		alert("중지 또는 미등록 된 카드는 닉네임을 변경 하실 수 없습니다.");
		return;
	}
	
	$(".my_ms_card_id").eq(nIdx).hide();
	$(".my_nick_modify_input").eq(nIdx).val(cardNickname);
	$(".my_ms_card_id_modify").eq(nIdx).show();
}

function modifyNickname() {
	var nIdx = $(".my_nick_modify").index(this);
	var strCardNickname = $(".my_nick_modify_input").eq(nIdx).val();
	
	if (strCardNickname == "") {
		alert("카드 닉네임을 입력하세요.");
		$(".my_nick_modify_input").eq(nIdx).focus(); // 접근성_20171201 focus 추가
		return;
	}
	
	var objParam = {
		 "cardRegNumber" : $(this).data("cardregnumber")
		,"cardNickname"  : encodeURIComponent(strCardNickname)
	};
	
	___ajaxCall("/interface/getMsrMyCardNickNameModify.do", objParam, false, "json", "post"
		,function(_response) {
			if (_response.result_code == "SUCCESS") {
				alert("카드 닉네임이 변경 되었습니다.");

				$(".my_ms_card_id span").eq(nIdx).text(strCardNickname);
				cancelModifyMode(nIdx);
				//location.replace("/my/index.do");
			} else {
				var arr = _response.error_msg.split("|");
				if (arr.length == 2) {
					alert(arr[1]);
				} else {
					alert(arr[0]);
				}
			}
		}
	);
}

function cancelModifyMode(_nIdx) {
	if (typeof(_nIdx) != 'number') {
		_nIdx = $(".my_nick_cancel").index(this);
	}
	
	$(".my_ms_card_id").eq(_nIdx).show();
	$(".my_ms_card_id_modify").eq(_nIdx).hide();
}

/**
 * 중지 카드 삭제
 * @param _cardRegNumber
 */
function deleteMyCard(_nCardRegNumber) {
	if (confirm("삭제 하시겠습니까?")) {
		var objParam = {
			"cardRegNumber" : _nCardRegNumber
		};
		
		___ajaxCall("/interface/setMsrMyCardDelete.do", objParam, false, "json", "post"
			,function(_response) {
				if (_response.result_code == "SUCCESS") {
					alert("카드가 삭제 되었습니다.");
	
					location.replace("/my/index.do");
				} else {
					var arr = _response.error_msg.split("|");
					if (arr.length == 2) {
						alert(arr[1]);
					} else {
						alert(arr[0]);
					}
				}
			}
		);
	}
}

// plcc가입 회원  로고 노출
function getPlccLogo(){
	___ajaxCall("/interface/getMsrPlccMemberInfo.do", {}, false, "json", "post", function (_response) {
		if (_response.result_code == "SUCCESS") {
			try {
				var jsonData = jQuery.parseJSON(_response.data);
				
				if (jsonData.PLCC_MBBR_YN == 'Y') { //plcc가입여부
					if ($(window).width() <= 680) { //mobile
						$mobilePlccLogo.show();
						$pcPlccLogo.hide();
					} else { //pc
						$mobilePlccLogo.hide();
						$pcPlccLogo.show();
					}
					
					$(window).resize(function () {
						if ($(window).width() <= 680) { //mobile
							$mobilePlccLogo.show();
							$pcPlccLogo.hide();
						} else { //pc
							$mobilePlccLogo.hide();
							$pcPlccLogo.show();
						}
					});
				}
			} catch (e) {}
		}
	});
}
