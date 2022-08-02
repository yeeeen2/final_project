$(document).ready(function () {
	// 전자영수증 출력
	$(document).on("click", ".btn_show_eReceipt", function () {
		var digitalReceiptKey = $(this).data("digitalreceiptkey");
		showReceipt(digitalReceiptKey);
	});

	$('.pop_receipt_close').click(function(){
		$('.pop_receipt, .pop_receipt_dimm').fadeOut();
	});

	//[인쇄]
	$("a.pop_receipt_print").on("click", function () {
		$(".receipt_wrap").printThis();
	});
});

function showReceipt(_digitalReceiptKey) {
	$("div.receipt_header").hide();
	$("div.receipt_wrap_inner").empty();

	var jsonReceipt = "";

	var rdnParam = "?rdn=" + Math.random().toString().substr(2);	// 캐싱 방지

	var response = { result_code : "FAIL" };
	___ajaxCall("/interface/getApiSBERct.do" + rdnParam, {eReceiptKey : _digitalReceiptKey}, false, "json", "post"
		,function (_response) {
			response = _response;
		}
	);

	if (response.result_code == "SUCCESS") {
		jsonReceipt = jQuery.parseJSON(response.data);

		if (jsonReceipt.ExceptionType) {	// 영수증 조회 결과가 정상이 아니면..
			showErrorMsg(jsonReceipt.ExceptionType);
			return;
		}
	} else {
		showErrorMsg();
		return;
	}

	var html = '';

	$("div.receipt_header").show();

	//[eReceiptSectionHeader] 영수증 머릿말
	var HEADER = this.getSection(jsonReceipt, "eReceiptSectionHeader");
	var isVersion = false; // 신포맷 여부 by 2017-04-28
	if (HEADER.HeaderContent.length > 0) {
		for (var i = 0; i < HEADER.HeaderContent.length; i++) {
			if (html != "") {
				html += "<br />";
			}
			var head = HEADER.HeaderContent[i];
            if (head.Data.Title != null && head.Data.Title == "Version") {
				isVersion = true;
			} else {
				isVersion = false;
				html += HEADER.HeaderContent[i].Data.split("\\n").join(" ");
			}
		}
		$("div.receipt_header strong").html(html);
	}

	//[eReceiptSectionStore] 명판 (매장 정보)
	var STORE = this.getSection(jsonReceipt, "eReceiptSectionStore");
	html  = '<div class="store_area_info">';
	html += '	<div class="store_area_info1">';
	html += '		<p class="store_area_name">' + STORE.Store.SBStoreName + '</p>';
	html += '		<p class="store_area_tel">' + STORE.Store.PhoneNumber + '</p>';
	html += '	</div>';
	html += '	<div class="store_area_info2">';
	html += '		<p class="store_area_add">' + STORE.Store.Address + '</p>';
	//html += '		<p class="store_area_tel">' + STORE.Store.PhoneNumber + '</p>';
	html += '	</div>';
	html += '	<div class="store_area_info3">';
	//20190516 POS에서 ManagerName을 대표:송데이비드호섭으로 전달하여 '대표:' 제외 요청
	html += '		<p class="brand_master">대표 : ' + (STORE.Store.ManagerName).replace("대표:", "") + '</p>';
	html += '		<p class="store_biz_id">' + STORE.Store.BizID + '</p>';
	html += '	</div>';
	html += '	<div class="store_area_info3">';
	html += '		<p class="pos_info">[매장#'+ STORE.Store.SBStoreID +', POS ' + STORE.POSNo + ']</p>';
	html += '		<p class="date_time">' + STORE.IssueDate + '</p>';
	html += '	</div>';
	html += '</div>';
	$("div.receipt_wrap_inner").append(html);


	//[eReceiptSectionOrder] 상품
	var ORDER = this.getSection(jsonReceipt, "eReceiptSectionOrder");
	var html3 = '';
	if (ORDER.OrderTitle) {	// 닉네임 (또는 주문번호)
		if ($.isArray(ORDER.OrderTitle) == false) {
			ORDER.OrderTitle = [ORDER.OrderTitle];
		}

		var nickname = "";
		if (ORDER.OrderTitle.length == 5) {	// "*"표기된 닉네임은 불러드리기 어려운 점 양해바랍니다.
			html3 = '<strong class="hard_nick">' + ORDER.OrderTitle[0].Data + ' ' + ORDER.OrderTitle[1].Data + ' ' + ORDER.OrderTitle[2].Data + ' ' + ORDER.OrderTitle[3].Data + '</strong>';
			nickname = ORDER.OrderTitle[4].Data;
		} else if (ORDER.OrderTitle.length == 2) {
			html3 = '<strong class="hard_nick">' + ORDER.OrderTitle[0].Data + '</strong>';
			nickname = ORDER.OrderTitle[1].Data;
		} else {
			nickname = ORDER.OrderTitle[0].Data;
		}

		html3 += '<div class="user_nickname">';
		html3 += '	<p>' + nickname + '</p>';
		html3 += '</div>';

		$("div.receipt_wrap_inner").append(html3);
	}

	html3 = '<div class="buy_list_wrap">';
	html3 += '	<ul class="buy_list_wrap_down">';
	for (var i = 0; i < ORDER.OrderItems.Data.length; i++) {
		var row = ORDER.OrderItems.Data[i];

		html3 += '	<li>';
		if (row.IsCustom) {
			html3 += '		<ul class="buy_list_wrap_down">';
			html3 += '			<li>';
			html3 += '				<p class="prduct_option_name">' + row.ItemName + '</p>';
			html3 += '				<p class="prduct_option_price">' + row.UnitPrice + '</p>';
			html3 += '				<p class="prduct_option_num">' + row.OrderCount + '</p>';
			html3 += '				<p class="prduct_option_price_sum">' + row.TotalPrice + '</p>';
			html3 += '			</li>';
			html3 += '		</ul>';
		} else {
			var itemName = row.ItemName;
			if(itemName == ""){
				itemName = "&nbsp;";
			}

			html3 += '		<p class="prduct_name">' + itemName + '</p>';
			html3 += '		<p class="prduct_price">' + row.UnitPrice + '</p>';
			html3 += '		<p class="prduct_num">' + row.OrderCount + '</p>';
			html3 += '		<p class="prduct_price_sum">' + row.TotalPrice + '</p>';
		}
		html3 += '	</li>';
	}
	html3 += '	</ul>';
	html3 += '</div>';
	$("div.receipt_wrap_inner").append(html3);

	addOrderSection(ORDER, "Subtotal");
	addOrderSection(ORDER, "CouponeItems");
	addOrderSection(ORDER, "DiscountItems");
	if (!isVersion) {
		addOrderSection(ORDER, "NETAmt");
		addOrderSection(ORDER, "Tax");
	}

	if (ORDER.TotalAmt.Data.Title
			&& ORDER.TotalAmt.Data.Value) {
		html3  = '<div class="buy_total_wrap">';
		if (isVersion) {
			html3 += '	<p class="total_txt">' + ORDER.TotalAmt.Data.Title + '<br /><span class="total_tax_txt">' + ORDER.Tax.Data.Title + '</span></p>';
			html3 += '	<p class="total_price">' + ORDER.TotalAmt.Data.Value + '<br /><span class="total_tax_price">' + ORDER.Tax.Data.Value + '</span></p>';
		} else {
			html3 += '	<p class="total_txt">' + ORDER.TotalAmt.Data.Title + '</p>';
			html3 += '	<p class="total_price">' + ORDER.TotalAmt.Data.Value + '</p>';
		}
		html3 += '</div>';
		$("div.receipt_wrap_inner").append(html3);
	}

	//[eReceiptSectionPayment] 지불
	var PAYMENT = this.getSection(jsonReceipt, "eReceiptSectionPayment");
	var html4 = '';
	for (var i = 0; i < PAYMENT.Payments.length; i++) {
		var Payment = PAYMENT.Payments[i];
		if (Payment.Attributes != null) {
			switch (Payment.PaymentMethodCD) {
				case "01":	// Card Payment
					if (Payment.Attributes[0].PAKey == 1) {	// PAKey가 1이면 별도 처리 한다..
						html4  = '<div class="card_payment_info">';
						html4 += '	<p class="card_name">' + Payment.Attributes[0].PAValue.Data.Title + '</p>';
						html4 += '	<p class="card_payment_num lucida">' + Payment.Attributes[0].PAValue.Data.Value + '</p>';
						html4 += '</div>';
					}

					html4 += '<div class="cash_receipt_wrap2">';
					for (var j = 1; j < Payment.Attributes.length; j++) {	// "Card Payment" 첫번째 줄은 별도 처리 했으므로 1부터 시작..
						var Data = Payment.Attributes[j].PAValue.Data;

						html4 += '<div class="cash_receipt_approve">';
						html4 += '	<p class="cash_receipt1">' + Data.Title + '</p>';
						html4 += '	<p class="cash_receipt2">' + Data.Value + '</p>';
						html4 += '</div>';
					}
					html4 += '!@str@!';
					html4 += '</div>';

					break;

				case "06":	// 현금영수증 발급
				case "34":	// 신세계포인트
					html4  = '<div class="order_num_wrap">';
					for (var j = 0; j < Payment.Attributes.length; j++) {
						var Data = Payment.Attributes[j].PAValue.Data;

						if (Payment.Attributes[j].PAValue.IsBold) {
							html4 += '	<div class="sirenoder_num">';
						} else {
							html4 += '	<div>';
						}
						html4 += '		<p class="order_num1">' + Data.Title + '</p>';
						html4 += '		<p class="order_num2 lucida">' + Data.Value + '</p>';
						html4 += '	</div>';
					}
					html4 += '!@str@!';
					html4 += '</div>';

					break;
				case "99": // 컵보증금 :: 컵보증금 합계값 list length==1
					for (var j = 0; j < Payment.Attributes.length; j++) {
						var Data = Payment.Attributes[j].PAValue.Data;
						
						var cupDepositHtml = '';
						cupDepositHtml += '<li>'
						cupDepositHtml += 	'<p class="subtotal1">'+ Data.Title +'</p>'
						cupDepositHtml += 	'<p class="subtotal2"></p>'	
						cupDepositHtml += 	'<p class="subtotal4">'+ Data.Value +'</p>'
						cupDepositHtml += 	'<p class="subtotal3" style="letter-spacing:1px;"></p>'
						cupDepositHtml += '</li>'
					
						$('.buy_subtotal_wrap ul li').eq(0).after(cupDepositHtml);
					}
					break;
				default:
					html4 = '<div class="cash_receipt_wrap2">';
					for (var j = 0; j < Payment.Attributes.length; j++) {
						var Data = Payment.Attributes[j].PAValue.Data;

						if (Payment.PaymentMethodCD == "33"
								&& Payment.Attributes[j].PAKey == 21) {	// "스타벅스카드" 상단 구분선 추가
							html4 += '</div>';
							html4 += '<div class="cash_receipt_wrap2">';
						}
						html4 += '<div class="cash_receipt_approve">';
						if (typeof(Data) != "string") {	// Data가 Object로 넘어오는 경우가 있어서..
							html4 += '	<p class="cash_receipt1">' + Data.Title + '</p>';
							html4 += '	<p class="cash_receipt2">' + Data.Value + '</p>';
						} else {
							var style = "";
							switch (Payment.Attributes[j].PAValue.Align) {
								case 1: style = ' style="text-align:left;"';   break;
								case 2: style = ' style="text-align:right;"';  break;
								case 3: style = ' style="text-align:center;"'; break;
							}
							html4 += '	<p'+style+'>' + Data + '</p>';
						}
						html4 += '</div>';
					}
					html4 += '!@str@!';
					html4 += '</div>';
					break;
			}
		} // if end
		else {
			html4 = ""; // 속성이 없고 메모만 있는경우가 있어서 초기화
			if(Payment.PaymentMethodCD=="11" || Payment.PaymentMethodCD=="13"){ //e-프리퀀시 일경우
				html4 = '<div class="cash_receipt_wrap2">';
				html4 += '!@str@!';
				html4 += '</div>';
			}
		}

		var rpstr = ""; // 메모내용
		if (Payment.Memo != null) {

			if (Payment.Memo.Data.length > 0) {	// 메모가 1개 이상 있으면..
				if (isVersion) { // 신포맷
					rpstr = "";
				} else { // 구포맷
					rpstr = '<div class="msr_info">';
				}
				rpstr += '	<ul>';
				for (var j = 0; j < Payment.Memo.Data.length; j++) {
					var Data = Payment.Memo.Data[j].Data;
					if (typeof(Data) != "string") {	// Data가 Object로 넘어오는 경우가 있어서..
						Data = Data.PRINT_MSG;
					}

					if (Payment.PaymentMethodCD == "13"
							&& j == 0
							&& Data.indexOf("----------") > -1) {	// "스타벅스카드"인 경우 첫번째 분단선 삭제..
						continue;
					}

					if (j == Payment.Memo.Data.length - 1
							&& Data.indexOf("----------") > -1) {	// 마지막줄이 분단선이면 생략..
						continue;
					}

					var style = "";
					if (isVersion) {
						switch (Payment.Memo.Data[j].Align) {
							case 1: style = 'text-align:left;';   break;
							case 2: style = 'text-align:right;';  break;
							case 3: style = 'text-align:center;'; break;
						}
					}

					if (typeof(Data) != "undefined" && Data != null && Data != "") {
						rpstr += '		<li style="line-height:1.2;' + style + '">' + Data.replace("---------", "") + '</li>';	// 분단선이 너무 길면 개행이 발생하므로 적당히 삭제 한다..
					}
				}
				rpstr += '	</ul>';
				if (isVersion) {
					rpstr += "";
				} else {
					rpstr += '</div>';
				}
			}
		} // if end

		if (isVersion) {
			html4 = html4.replace("!@str@!", rpstr);
		} else {
			html4 = html4.replace("!@str@!", "");
			html4 += rpstr;
		}

		$("div.receipt_wrap_inner").append(html4);
	} // for end

	//[eReceiptSectionFooter] 영수증 하단
	var FOOTER = this.getSection(jsonReceipt, "eReceiptSectionFooter");
	if (FOOTER.PartnerName
			&& FOOTER.PartnerNumber) {	// 파트너 이름
		html  = '<div class="partner_wrap">';
		/* 파트너 이름 비노출 */		
//		if (isVersion) { // 신포맷
//			html += '	<p class="partner_ttl lucida">파트너 : </p>';
//		} else { // 구포맷
//			html += '	<p class="partner_ttl lucida">Partner name : </p>';
//		}
//		html += '	<p class="partner_name"><span class="lucida">[' + FOOTER.PartnerNumber + ']</span> ' + FOOTER.PartnerName + '</p>';
		html += '</div>';
		$("div.receipt_wrap_inner").append(html);
	}

	if (FOOTER.FooterNotice.length > 0) {	// 각종 알림
		html  = '<p class="payment_option_txt">';
		for (var i = 0; i < FOOTER.FooterNotice.length; i++) {
			/*console.log(FOOTER.FooterNotice[i]);
			console.log(typeof(FOOTER.FooterNotice[i].Data));*/
			if (typeof(FOOTER.FooterNotice[i].Data) == "object") {	// 서명인 경우 object임..
				html += FOOTER.FooterNotice[i].Data.Title;
			} else {
				var text = FOOTER.FooterNotice[i].Data;

				if (text == " ") {
					text = "<br />";
				}

				text = text.split("\n").join("<br />"); // 개행문자는 br로 치환..
				text = text.split("\"").join("");

				html += text;
			}
		}
		html += '</p>';
		$("div.receipt_wrap_inner").append(html);
	}

	if (FOOTER.FooterItems.length > 0) {	// 바코드 출력
		html  = '<div class="barcode_wrap">';
		html += '	<p class="sb_url lucida"><a href="http://' + FOOTER.FooterItems[0].Data + '?target=blank">' + FOOTER.FooterItems[0].Data + '</a></p>';
		html += '	<p class="barcode_img">';
		html += '		<img src="/interface/getReceiptBarcode.do?c=' + FOOTER.FooterItems[1].Data + '" />';
		html += '	</p>';
		html += '	<p class="barcode_num">' + FOOTER.FooterItems[2].Data + '</p>';
		html += '</div>';
		$("div.receipt_wrap_inner").append(html);
	}

	//[eReceiptSectionEvents] 하단부 행사
	var EVENTS = this.getSection(jsonReceipt, "eReceiptSectionEvents");
	//console.log(EVENTS);
	if (EVENTS != null) {
		var html6 = '';

		if (EVENTS.EventList.length > 0) {
			for (var i = 0; i < EVENTS.EventList.length; i++) {
				var eventList = EVENTS.EventList[i];

				html6 += '<div class="event_info ta_center bd_none">';
				for (var j = 0; j < eventList.EventDetailItem.length; j++) {
					var item = eventList.EventDetailItem[j];
					var Data = item.Data;

					switch (item.DataType) {
						case 1:	// DataType이 1이면 QR이다..
							if (Data.indexOf(".") > -1) {
								var bypassFiles = "150_cvqrcodeimg.bmp|16year_qr.bmp|2015.bmp|2015newyear_qr.bmp|2015plannerevent.bmp|2015_2_.bmp|2015_planner.bmp|2016planner.bmp|2017planner.bmp|5weeksofjoy.bmp|app_renewal.bmp|award.bmp|efreapp.bmp|hologram.bmp|msr_logoimg.bmp|qrcode_100.bmp|qrcode_100.jpg|qrcode_2015planer_150mm1_mono.bmp|reserve.bmp|reserveqr.bmp|reserveqr_delete.bmp|starbucks_newlogo.bmp|starbucks_newlogo_i.bmp|valentineqr.bmp|webrenewalqr.bmp";
								if (bypassFiles.indexOf(Data.toLowerCase()) == -1) {
									html6 += '<figure class="qr_code_img"><img src="/upload/eReceipt/qr/' + Data + '" alt="" /></figure>';
								} else {
									html6 += '<p>&nbsp;</p>';
								}
							} else {
								html6 += '<figure class="barcode_img"><img src="/interface/getReceiptBarcode.do?c=' + Data + '" alt="" /></figure>';
							}
							break;

						case 3:
							html6 += '<div style="background-image:url(/interface/getReceiptBarcode.do?c=' + Data + '); background-position:center; background-repeat:no-repeat; background-size: 100%; height:50px;"></div>';
							break;

						default:
							// 텍스트 중 URL을 발라낸다.
							var url = extractUrl(Data);

							if (url != "") {	// URL이 있으면..
								Data = Data.replace(url, "");

								var href = "http://" + url;
								if (href.indexOf("?") > -1) {
									href += "&target=blank";
								} else {
									href += "?target=blank";
								}

								html6 += '<p>' + Data + '<a href="' + href + '">' + url + '</a></p>';
							} else {
								var style = "";
								switch (item.Align) {
									case 1: style = ' style="text-align:left;"';  break;
									case 2: style = ' style="text-align:right;"'; break;
								}

								if ($.trim(Data) == "") {
									Data = '&nbsp;';
								}
								html6 += '<p' + style + '>' + Data.replace("---------", "").replace("====", "") + '</p>';	// 분단선이 너무 길면 개행이 발생하므로 적당히 삭제 한다..
							}
							break;
					}
				}
				html6 += '</div>';
			}
			$("div.receipt_wrap_inner").append(html6);
		}
	}

	try	{	// 스크롤바 생성
		$('.pop_receipt_cont').mCustomScrollbar();
	} catch (e) {
	}

	/*$('.pop_receipt').css("top", (($(window).height() - $('.pop_receipt').outerHeight()) / 2) + $(window).scrollTop() + 200 );*/ //전자영수증 팝업창 노출 수정 20190604
	$(".pop_receipt_dimm , .pop_receipt").fadeIn();
}

function getSection(_jsonReceipt, _strSectionName) {
	var jsonSection = null;

	for (var i = 0; i < _jsonReceipt.Sections.length; i++) {
		if (_jsonReceipt.Sections[i].SectionType == _strSectionName) {
			jsonSection = _jsonReceipt.Sections[i];
			break;
		}
	}

	return jsonSection;
}

function addOrderSection(_ORDER, _strID) {
	if (_ORDER[_strID].Data) {
		var arr = _ORDER[_strID].Data;
		if ($.isArray(arr) == false) {
			arr = [arr];
		}

		for (var i = 0; i < arr.length; i++) {
			var row = arr[i];

			if (row.Title && row.Value) {
				var html  = '<li>';
					html += '	<p class="subtotal1">' + row.Title + '</p>';
					switch (_strID) {
						case "CouponeItems":
						case "DiscountItems":
							html += '	<p class="subtotal2" style="letter-spacing:1px;">[－]</p>';
							break;
						case "Tax":
							html += '	<p class="subtotal2" style="letter-spacing:1px;">[+]</p>';
							break;
						default:
							html += '	<p class="subtotal2"></p>';
							break;
					}
					html += '	<p class="subtotal4">' + row.Value + '</p>';
					html += '	<p class="subtotal3" style="letter-spacing:1px;">-&gt;</p>';
					html += '</li>';

				if ($("div.buy_subtotal_wrap ul").length == 0) {
					$("div.receipt_wrap_inner").append('<div class="buy_subtotal_wrap"><ul /></div>');
				}

				$("div.buy_subtotal_wrap ul").append(html);
			}
		}
	}
}

function showErrorMsg(_exceptionType) {
	if (_exceptionType == undefined) {
		_exceptionType = "412";
	}

	var msg = "영수증 조회 중 오류가 발생 하였습니다. [" + _exceptionType + "]";
	switch (_exceptionType.toString()) {
		case "411": msg = "표시할 영수증 정보가 없습니다.<br />온라인 충전 결제는 결제 시 입력한 이메일 또는 해당 카드사를 통해, 홀케이크는 수령 이후부터 영수증을 확인하실 수 있습니다."; break;
		case "412": msg = "해당 전자영수증 정보는 준비중 입니다."; break;
	}

	$("div.receipt_wrap_inner").html('<p class="receipt_wait">' + msg + '</p>');
	$(".pop_receipt_dimm , .pop_receipt").fadeIn();
}

//텍스트 중 URL을 발라낸다.
function extractUrl(_data) {
	var url = "";

	if (_data.indexOf("www") > -1) {
		if (_data.substr(0, 3).toLowerCase() == "www") {
			var arrTmp1 = _data.split(" ");
			url = arrTmp1[0];
		} else {
			var nStUrlIdx = _data.indexOf("www");
			var nEdUrlIdx = _data.lastIndexOf(" ");

			if (nStUrlIdx > nEdUrlIdx) {
				nEdUrlIdx = _data.length;
			}

			url = _data.substr(nStUrlIdx, nEdUrlIdx);
		}
	}

	return url;
}