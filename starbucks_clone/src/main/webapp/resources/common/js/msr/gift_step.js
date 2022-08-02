var m_sendType = 0;
var m_separator = "#|";
//kbs 충전 금액 수정
var amount_input = null;
//메시지 최대 글자 수
var maxReqMsg = 200;

$(document).ready(function () {
//	kbs 충전 금액 수정
	var directInput = "a";
	var number = null;
  initPage();
  setEvents();

  var referrer = document.referrer;
  if (referrer ==  undefined) {
    referrer = "";
  } else {
    referrer = referrer.toLowerCase();
  }

  // 결제하기(step3)에서 온거면..
  if (referrer.indexOf("gift_step3") > -1) {
    showFromStep3();
  } else {
    // 선물내역에서 온거면..
    if ($("#egiftOrderSeq").val() != "") {
      var egiftOrderSeq = $("#egiftOrderSeq").val();
      var receiveDataInfo = $("#receiveDataInfo").val();

      showEgiftOrderDetail(egiftOrderSeq, receiveDataInfo);
    }

    // 장바구니에서 온거면..
    if ($("#egiftCartSeq").val() != "") {
      showMsrEgiftCartDetail($("#egiftCartSeq").val());
    }
  }
  
  	//메시지 길이 체크
  	$('#reqMsg').on('keyup', function() {
		$('#reqMsgCnt').html("(" + $(this).val().length + "/" + maxReqMsg + ")");
		
		if($(this).val().length > maxReqMsg) {
			$(this).val($(this).val().substring(0, maxReqMsg));
	  	}
	});
});

function initPage() {
	/* 디폴트를 1개만 해달라고 해서 삭제
	m_sendType = 2;
	
	while ($(".receive_method3 .tbl_card_sending").length < 3) {
		addEmailArea();	
	}
	
	m_sendType = 0;
	
	while ($(".receive_method1 .tbl_card_sending").length < 3) {
		addPhoneArea();	
	}
	*/

  /*addPhoneArea();*/
  addEmailArea();
}

function setEvents() {
  // 선물할 방법
  $('[name="sendType"]').on("change", function () {
    var nIdx = $('[name="sendType"]').index(this);

/*    if (nIdx == 2) {
      $(".egift_phone_cert_info").hide();
    } else {
      $(".egift_phone_cert_info").show();
    }*/

    if ($("#previewXls").is(":visible")) {
      $("#previewXls").hide();
    }

    $(".receive_method1, .receive_method2, .receive_method3").hide();
    $(".receive_method" + (nIdx + 1)).show();

    m_sendType = nIdx;
    // 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 선물할 방법 변경 시, 휴대폰 소액결제 가능한지 체크
    togglePayMethod3();
  });

  // 엑셀 업로드
  //$("#frmUpload").on("submit", successUploadXls);
  $("a.file_input_ok").on("click", uploadXls);

  // 나에게 선물하기
  $("#giftMe").on("change", giftMe);

  $(document).on("click", "a.addPhone", addPhoneArea);		// 휴대폰 입력창 [추가]
  $(document).on("click", "a.removePhone", removePhoneArea);	// 휴대폰 입력창 [삭제]

  $(document).on("click", "a.removeXls", removeXlsArea);	// 이메일 입력창 [삭제]

  $(document).on("change", '[name="em_select3"]', function () {
    $(this).prev().text($(this).val());
    $(this).parent().parent().prev().val($(this).val());
  });
  $(document).on("click", "a.addEmail", addEmailArea);		// 이메일 입력창 [추가]
  $(document).on("click", "a.removeEmail", removeEmailArea);	// 이메일 입력창 [삭제]
  
  $(".amountInput").on("keyup", changeTotPrice); // kbs 충전금액 수정
  
  $(".amountInput").on("click", function(){
	  directInput="a";
	  $("#price5").prop("checked", true);
	  
//	  changeTotPrice();
  }); // kbs 충전 금액 수정
  
  // 금액 선택
  $('[name="price"]').on("change click", function () {
	
    if ($(this).val() == "") {
    	$('.amountInput').focus();
    	$("#amount").val("");
      amount_input = "0";
    } else {
    	directInput="a";
      $("#amount").val("");
      amount_input =   $("[name='price']:checked").val();
    }
  }); // kbs 금액 선택 수정
 
  $(".amountInput").focusout(function(){
	  if(directInput =="a"){
		  $(this).val("");
		  amount_input = "0";
	  }else{
		  if( number < 10000){
			  if(directInput == 0 || directInput == 5000){
				  $(this).val( $.number(number) );
				  amount_input = number ; 
			  }else {
				  alert("5천원, 1만원 ~ 50만원까지 가능합니다. (5천원 또는 1만원 단위로만 입력 가능)");
				  amount_input = "0";
				  directInput = "a";
				  $(".amountInput").focus();
				  $(this).val("");
			  } 
		  }else{
			  if(directInput == 0){
				  $(this).val( $.number(number) );
				  amount_input = number ; 
			  }else {
				  alert("5천원, 1만원 ~ 50만원까지 가능합니다. (5천원 또는 1만원 단위로만 입력 가능)");
				  amount_input = "0";
				  directInput = "a";
				  $(this).focus();
				  $(this).val("");
			  }
		  }
	  }
  });// kbs 금액 선택 수정
  

  // 전송방법
  $('[name="reqKub"]').on("change", function () {
    if ($(this).val() == "R") {
      $("div.reserve_send_wrap").show();
      $("#payMethod3").prop("disabled", true);
      // 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 예약 전송 선택 시, 휴대폰 소액결제 checked -> 신용카드 check
      if ( $('#payMethod3').is(":checked")) {
      	$('#payMethod1').prop("checked",true);
      }
    } else {
      $("div.reserve_send_wrap").hide();
      $("#payMethod3").prop("disabled", false);
    }
  });

  $('#sendDate').prop("readonly", true).datepicker({
    "dateFormat": "yy-mm-dd"
    /*,"dayNamesMin"     : ['일', '월', '화', '수', '목', '금', '토']*/
    , "maxDate": "+30D"
    , "minDate": "+1D"
    /*,"monthNamesShort" : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']*/
  });

  // [뒤로]
  $("li.gift_info_send_btn1 > a").on("click", function () {
    var arrKeyAndValues = new Array({
      "KEY": "egiftCartSeq"
      , "VALUE": $("#egiftCartSeq").val()
    });

    var strAction = "/msr/sceGift/gift_step1.do";

    goWithPostData(arrKeyAndValues, strAction);
  });

  // [다음]
  $("li.gift_info_send_btn2 > a").on("click", goNextStep);
}

// kbs 충전금액 수정
function changeTotPrice() {
$(this).val($(this).val().replace(/[^0-9]/g,""));

  number = $(this).val();
  if(number <= 500000){
	  directInput = number%10000;
  }else{
	  alert("5천원, 1만원 ~ 50만원까지 가능합니다. (5천원 또는 1만원 단위로만 입력 가능)");
	  directInput = "a";
	  number = null;
	  $(this).val("");
  }
}

/**
 * 나에게 선물하기
 */
function giftMe() {
  var $div1 = $(".receive_method1 .tbl_card_sending").eq(0);
  var $div3 = $(".receive_method3 .tbl_card_sending").eq(0);

  var userName = "";
  var arrPhone = new Array("", "", "");
  var arrEmail = new Array("", "");

  if ($(this).is(":checked")) {
    userName = $(this).data("username");
    arrPhone = $(this).data("phone").split("-");
    arrEmail = $(this).data("email").split("@");

    while ($(".receive_method1 .tbl_card_sending").length > 1) {
      removePhoneArea();
    }
    while ($(".receive_method3 .tbl_card_sending").length > 1) {
      removeEmailArea();
    }

    //$("#reqMsg").prop("disabled", true);
    $("#trReqMsg").hide();
  } else {
    //$("#reqMsg").prop("disabled", false);
    $("#trReqMsg").show();
  }

  $div1.find('[name="name"]').val(userName);
  $div1.find('[name="phone1"]').val(arrPhone[0]).trigger("change");
  $div1.find('[name="phone2"]').val(arrPhone[1]);
  $div1.find('[name="phone3"]').val(arrPhone[2]);

  $div3.find('[name="name"]').val(userName);
  $div3.find('[name="email1"]').val(arrEmail[0]);
  $div3.find('[name="email2"]').val(arrEmail[1]);

  if (m_sendType == 1) {
    $('[name="sendType"]').eq(0).prop("checked", true).trigger("change");
  }
}

function addPhoneArea() {
  var nLength = $(".receive_method1 .tbl_card_sending").length;
  if (nLength == 10) {
    alert("1회 10명까지만 입력 하실 수 있습니다.");
    return;
  }

  var nSeq = nLength + 1;

  var div = '<div class="tbl_card_sending">';
  div += '	<p>' + nSeq + '</p>';
  div += '	<input type="text" class="sender" placeholder="받는 사람 이름" name="name" />';
  div += '	<div class="sel_wrap">';
  div += '		<div class="tbl_card_select">';
  div += '			<label for="phone1_' + nSeq + '">선택</label>';
  div += '			<select id="phone1_' + nSeq + '" name="phone1" title="휴대폰 첫번째 자리">';
  div += '				<option value="" selected="selected">선택</option>';
  div += '				' + createMobile();
  div += '			</select>';
  div += '		</div>';
  div += '	</div>';
  div += '	<span>-</span>';
  div += '	<input type="tel" name="phone2" class="pnum_input" maxlength="4" title="휴대폰 두번째 자리" />';
  div += '	<span>-</span>';
  div += '	<input type="tel" name="phone3" class="pnum_input" maxlength="4" title="휴대폰 세번째 자리" />';
  div += '	<a class="sender_addel_btn addPhone" href="javascript:void(0);">추가</a>';
  div += '	<a class="sender_addel_btn removePhone" href="javascript:void(0);">삭제</a>';
  div += '</div>';

  $("a.addPhone, a.removePhone").remove();
  $(".receive_method1").append($(div)).append($(".receive_method1 p.gift_info_adding"));

  $("div.tbl_card_sending").last().find(".pnum_input").numeric();

  togglePayMethod3();
}

function removePhoneArea() {
  var nLength = $(".receive_method1 .tbl_card_sending").length;
  if (nLength == 1) {
    alert("1명 이상 입력 하셔야 합니다.");
    return;
  }

  var $div = $(".receive_method1 .tbl_card_sending");
  var nTargetIdx = $div.length - 2;

  $div.eq(nTargetIdx).append($("a.addPhone, a.removePhone"));
  $div.last().remove();

  togglePayMethod3();
}

/**
 * 2명 이상 입력시 휴대폰 소액 결제 사용 불가 처리
 */
 function togglePayMethod3() {
  var nLength = getOrderCnt();

  if (nLength == 1 || nLength == 0) {
    $('#payMethod3, label[for="payMethod3"]').show();
  } else {
    $('#payMethod3, label[for="payMethod3"]').hide();
    // 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 2명 이상 입력 시, 휴대폰 소액 결제 checked -> 신용카드 check
    if ( $('#payMethod3').is(":checked")) {
    	$('#payMethod1').prop("checked",true);
    }
  }
}

function goNextStep() {
  //$.phoneCertLib.certInfo = $.phoneCertLib.getCurrentPhoneCertInfo();
  $.phoneCertLib.certInfo.isCert = true;
  
	//등록된 휴대폰 번호 확인
	var regi_number = $(".pre_regi_number").text().replaceAll("--","");

	//등록된 휴대폰 번호가 없는 고객의 경우 alert 노출
	if (regi_number == null || regi_number == ""){
		alert ("보내시는 분의 휴대폰 번호 정보가 없습니다. My Starbucks > 개인정보관리에서 휴대폰 번호를 입력해주세요.");
		return;
	}

  // 인증 된 발신번호가 아닌 경우
  if (m_sendType != 2) {
    if ($.phoneCertLib.certInfo.isCert == false) {
      alert("e-Gift를 선물하시려면 휴대폰 번호 “인증”을 받으셔야 합니다.");
      return;
    }
  }

  var orderCnt = getOrderCnt();

  switch (m_sendType) {
    case 0:
      for (var i = 0; i < orderCnt; i++) {
        var div = '.receive_method1 .tbl_card_sending:eq(' + i + ') ';

        var selector = div + ' [name="name"]';
        var msg = (i + 1) + "번째 받는 사람 이름을 입력하세요.";
        var msg2 = "";
        //if (checkValid(selector, msg)) { return; }

        // 문자열 체크
        var strNoEucKr = checkEucKr($(selector).val());
        if (strNoEucKr != "") {
          alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
          $(selector).focus();
          return;
        }

        selector = div + '[name="phone1"], ' + div + '[name="phone2"], ' + div + '[name="phone3"]';
        msg = (i + 1) + "번째 받는 사람 휴대폰 번호를 입력하세요.";
        msg2 = (i + 1) + "번째 받는 사람 휴대폰 번호를 정확하게 입력하세요.";

        if (checkValid(selector, msg, "HP", msg2)) { return; }
      }
      break;

    case 1:
      // 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 받는 사람에 엑셀파일 업로드 시, 0명일 경우, 다음으로 넘어가지 않도록 수정
      if ( !$("#previewXls").is(":visible") || $(".gifter_nostat_bg").is(":visible") ) {
        alert("엑셀 파일을 업로드 하세요.");
        return;
      }

      for (var i = 0; i < orderCnt; i++) {
        var div = '.gifter_stat_bg .gifter_stat_each:eq(' + i + ') ';

        var selector = div + ' [name="name"]';
        var msg = (i + 1) + "번째 받는 사람 이름을 입력하세요.";
        var msg2 = "";
        //if (checkValid(selector, msg)) { return; }

        // 문자열 체크
        var strNoEucKr = checkEucKr($(selector).val());
        if (strNoEucKr != "") {
          alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
          $(selector).focus();
          return;
        }

        selector = div + '[name="phone1"], ' + div + '[name="phone2"], ' + div + '[name="phone3"]';
        msg = (i + 1) + "번째 받는 사람 휴대폰 번호를 입력하세요.";
        msg2 = (i + 1) + "번째 받는 사람 휴대폰 번호를 정확하게 입력하세요.";

        if (checkValid(selector, msg, "HP", msg2)) { return; }
      }
      break;

    case 2:
      for (var i = 0; i < orderCnt; i++) {
        var div = '.receive_method3 .tbl_card_sending:eq(' + i + ') ';

        var selector = div + ' [name="name"]';
        var msg = (i + 1) + "번째 받는 사람 이름을 입력하세요.";
        var msg2 = "";
        //if (checkValid(selector, msg)) { return; }

        // 문자열 체크
        var strNoEucKr = checkEucKr($(selector).val());
        if (strNoEucKr != "") {
          alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
          $(selector).focus();
          return;
        }

        selector = div + '[name="email1"], ' + div + '[name="email2"]';
        msg = (i + 1) + "번째 받는 사람 이메일을 입력하세요.";
        msg2 = (i + 1) + "번째 받는 사람 이메일을 정확하게 입력하세요.";

        if (checkValid(selector, msg, "EMAIL", msg2)) { return; }
      }
      break;
  }

  //if ($("#reqMsg").prop("disabled") == false) {
  if ($("#trReqMsg").is(":visible")) {
    if (checkValid("#reqMsg", "메시지를 입력하세요.")) { return; }

    var strNoEucKr = checkEucKr($("#reqMsg").val());
    if (strNoEucKr != "") {
      alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
      $("#reqMsg").focus();
      return;
    }
    
	if($("#reqMsg").val().length > maxReqMsg) {
    	alert(maxReqMsg + "자 내외 입력이 가능합니다.");
    	$("#reqMsg").focus();
    	return;
    }
  }

  var orderCnt = getOrderCnt();

  var amount = $('[name="price"]:checked').val();
  if (amount == "") {// kbs 금액 선택 수정
	if(amount_input == "0"){
		alert("금액을 입력해 주세요");
		$(".amountInput").focus();
		return;
	}else{
		amount = amount_input;
//		amount = $("#amount").val();
	}
  }

  var reqKub = $('[name="reqKub"]:checked').val();
  var sendDate = $("#sendDate").val();
  if (reqKub == "R" && sendDate == "") {
    alert("예약 전송일을 선택하세요.");
    return;
  }

  var sendTime = $("#sendTime_hour").val() + ":" + $("#sendTime_min").val();

  var receiveDataInfo = getReceiveDataInfo();
  var receiverInfo = getReceiverInfo(receiveDataInfo);

  var excelUploadYn = "N";
  if ($('[name="sendType"]:eq(1)').is(":checked")) {
    excelUploadYn = "Y";
  }

  var myselfYn = "N";
  var reqMsg = $("#reqMsg").val();
  var reqMsg_html = reqMsg.replace(/\n/gi, "<br />");

  if ($("#giftMe").is(":checked")) {
    myselfYn = "Y";
    reqMsg = "나에게 선물";
    reqMsg_html = "";
  }

  var arrKeyAndValues = new Array(
    { "KEY": "egiftCartSeq", "VALUE": $("#egiftCartSeq").val() }
    , { "KEY": "reqMsg", "VALUE": reqMsg }
    , { "KEY": "reqMsg_html", "VALUE": reqMsg_html }
    , { "KEY": "egiftImgMngSeq", "VALUE": $("#egiftImgMngSeq").val() }
    , { "KEY": "totalAmount", "VALUE": orderCnt * Number(amount) }
    , { "KEY": "orderCnt", "VALUE": orderCnt }
    , { "KEY": "amount", "VALUE": amount }
    , { "KEY": "reqKub", "VALUE": reqKub }
    , { "KEY": "sendType", "VALUE": $('[name="sendType"]:checked').val() }
    , { "KEY": "sendDate", "VALUE": sendDate }
    , { "KEY": "sendTime", "VALUE": sendTime }
    , { "KEY": "gopaymethod", "VALUE": $('[name="gopaymethod"]:checked').val() }
    , { "KEY": "receiveDataInfo", "VALUE": receiveDataInfo }
    , { "KEY": "excelUploadYn", "VALUE": excelUploadYn }
    , { "KEY": "cardName", "VALUE": $("#cardName").val() }
    , { "KEY": "cardImgUrl", "VALUE": $("#cardImgUrl").val() }
    , { "KEY": "receiverInfo", "VALUE": receiverInfo }
    , { "KEY": "myselfYn", "VALUE": myselfYn }
  );

  var strAction = "/msr/sceGift/gift_step3.do";

  goWithPostData(arrKeyAndValues, strAction);
}

function getOrderCnt() {
  var orderCnt = 0;

  switch (m_sendType) {
    case 0:
      orderCnt = $(".receive_method1 .tbl_card_sending").length;
      break;

    case 1:
      orderCnt = Number($(".receiveDataCnt").text().replace("건", ""));
      break;

    case 2:
      orderCnt = $(".receive_method3 .tbl_card_sending").length;
      break;
  }

  return orderCnt;
}

function getReceiveDataInfo() {
  var receiveDataInfo = "";

  switch (m_sendType) {
    case 0:
      $(".receive_method1 .tbl_card_sending").each(function (_nIdx) {
        var name = $(this).find('[name="name"]').val()
        var phone = $(this).find('[name="phone1"]').val() + ":" + $(this).find('[name="phone2"]').val() + ":" + $(this).find('[name="phone3"]').val();

				/*if (receiveDataInfo == "") {
					receiveDataInfo = phone + ":" + name;
				} else {
					receiveDataInfo += m_separator + phone + ":" + name;
				}*/
        receiveDataInfo += phone + ":" + name + m_separator;
      });
      break;

    case 1:
      $(".gifter_stat_each").each(function () {
        var name = $(this).find('[name="name"]').val();
        var phone = $(this).find('[name="phone1"]').val() + ":" + $(this).find('[name="phone2"]').val() + ":" + $(this).find('[name="phone3"]').val();

				/*if (receiveDataInfo == "") {
					receiveDataInfo  = phone + ":" + name;
				} else {
					receiveDataInfo += m_separator + phone + ":" + name;
				}*/
        receiveDataInfo += phone + ":" + name + m_separator;
      });
      break;

    case 2:
      $(".receive_method3 .tbl_card_sending").each(function (_nIdx) {
        var name = $(this).find('[name="name"]').val()
        var email = $(this).find('[name="email1"]').val() + ":@:" + $(this).find('[name="email2"]').val();

				/*if (receiveDataInfo == "") {
					receiveDataInfo = email + ":" + name;
				} else {
					receiveDataInfo += m_separator + email + ":" + name;
				}*/
        receiveDataInfo += email + ":" + name + m_separator;
      });
      break;
  }

  return receiveDataInfo;
}

function getReceiverInfo(_receiveDataInfo) {
  var receiverInfo = "";
  var rows = null;
  var nLength = 0;

  if (_receiveDataInfo.indexOf(m_separator) > -1) {
    rows = _receiveDataInfo.split(m_separator);
    nLength = rows.length - 1;
  } else {
    rows = [_receiveDataInfo];
  }

  var arr = rows[0].split(":");
  if (m_sendType == 2) {
    receiverInfo = arr[3] + " [" + arr[0] + arr[1] + arr[2] + "]";
  } else {
    receiverInfo = arr[3] + " [" + arr[0] + "-" + arr[1] + "-" + arr[2] + "]";
  }

  if (nLength > 1) {
    receiverInfo += " 외 " + (nLength - 1) + "명";
  }

  return receiverInfo;
}

function addEmailArea() {
  

  var div = '<div class="tbl_card_sending">';
  div += '	<input id="name" class="sender2" placeholder="받는 사람 이름" type="text" name="name" />';
  div += '	<input class="em_input" id="email1" name="email1" title="이메일 앞주소" type="text" />';
  div += '	<span>@</span>';
  div += '	<input class="em_input" id="email2" name="email2" title="이메일 뒷주소" type="text" />';
  div += '	<div class="em_sel_wrap">';
  div += '		<div class="tbl_em_select">';
  div += '			<label for="em_select3_">직접입력</label>';
  div += '			<select id="em_select3_" name="em_select3" title="이메일 선택">';
  div += '				<option value="" selected="selected">직접입력</option>';
  div += '				' + createMail();
  div += '			</select>';
  div += '		</div>';
  div += '	</div>';
  div += '</div>';

  $("a.addEmail, a.removeEmail").remove();
  $(".receive_method3").append($(div)).append($(".receive_method3 p.gift_info_adding"));

  $("div.tbl_card_sending").last().find(".pnum_input").numeric();

  togglePayMethod3();
}

function removeEmailArea() {
  var nLength = $(".receive_method3 .tbl_card_sending").length;
  if (nLength == 1) {
    alert("1명 이상 입력 하셔야 합니다.");
    return;
  }

  var $div = $(".receive_method3 .tbl_card_sending");
  var nTargetIdx = $div.length - 2;

  $div.eq(nTargetIdx).append($("a.addEmail, a.removeEmail"));
  $div.last().remove();
  
  togglePayMethod3();
}

/**
 * 엑셀 업로드 처리
 */
function uploadXls(_e) {
	_e.preventDefault();
	var targetId = "ifrmUpload";
	$("#"+targetId).one("load", function () {
		try {
			var _response = jQuery.parseJSON( $(document.getElementById('ifrmUpload').contentWindow.document.body).text() );
			if (_response.result_code) {
				if (_response.result_code == "SUCCESS") {
					var jsonData = jQuery.parseJSON(_response.data);
					
					if (jsonData.receiveDataCnt > 0) {
						$(".gifter_nostat_bg").hide();
						$(".gifter_stat_bg").show();
						
						previewXls(jsonData.receiveDataInfo);
					} else {
						$(".gifter_nostat_bg").show();
						$(".gifter_stat_bg").hide();
						
						// 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 문구 수정
						$(".receiveDataCnt").text("0건");
						$(".doubleDataCnt").text("0건");
						$("#previewXls").show();
					}
					togglePayMethod3();
				} else {
					alert(_response.alert_msg);
				}
			}
		} catch (_err) {
		}
	});
	
	$("#frmUpload")
		.attr("action", "/interface/uploadXls.do")
		.attr("target", targetId)
		.submit();
	
	$("#frmUpload").removeAttr("target");
	
}
/*function successUploadXls() {
	$("#ifrmUpload").on("load", function () {
		var jsonBody = null;
		var msg      = "";
		
		try {
			jsonBody = $(document.getElementById('ifrmUpload').contentWindow.document.body).text();
		} catch (_e) {
			jsonBody = "";
		}
		
		if (jsonBody == null
				|| jsonBody == undefined
				|| jsonBody == "") {
			
			___ajaxCall("/interface/getJsonXlsData.do", {}, false, "json", "post"
				,function (_response) {
					jsonBody = _response;
				}
				,function (_error) {
					msg = "파일 분석 중 오류가 발생하였습니다.\n관리자에게 문의 하세요.[TYPE:A]";
				}
			);
		}
		
		if (jsonBody == null
				|| jsonBody == undefined
				|| jsonBody == "") {
			___ajaxCall("/interface/getJsonXlsData2.do", {}, false, "json", "post"
				,function (_response) {
					jsonBody = _response;
				}
				,function (_error) {
					msg = "파일 분석 중 오류가 발생하였습니다.\n관리자에게 문의 하세요.[TYPE:B]";
				}
			);
		}
		
		if (jsonBody == null
				|| jsonBody == undefined
				|| jsonBody == "") {
			if (msg) {
				alert(msg);
			} else {
				alert("파일 분석 중 오류가 발생하였습니다.\n관리자에게 문의 하세요.[TYPE:C]");
			}
			return;
		}
		
		var _response = jQuery.parseJSON( jsonBody );
		
		if (_response.result_code == "SUCCESS") {
			var jsonData = jQuery.parseJSON(_response.data);
			
			if (jsonData.receiveDataCnt > 0) {
				$(".gifter_nostat_bg").hide();
				$(".gifter_stat_bg").show();
				
				previewXls(jsonData.receiveDataInfo);
			} else {
				$(".gifter_nostat_bg").show();
				$(".gifter_stat_bg").hide();
			}
			
			$("#previewXls").show();
			togglePayMethod3();
		} else {
			alert( _response.alert_msg );
		}
	});
}*/

/**
 * 엑셀 데이터 관리 영역 출력
 * @param receiveDataInfo
 */
function previewXls(_data) {
  $(".gifter_stat_bg").empty();

  var arr = _data.split(m_separator);

  for (var i = 0; i < arr.length; i++) {
    var row = arr[i].split(":");
    
    if ( row.length == 4 ) {
	    var div = '<div class="gifter_stat_each">';
	    div += '	<p>' + (i + 1) + '</p>';
	    div += '	<input class="sender" placeholder="받는 사람 이름" type="text" name="name" value="' + htmlToString(row[3]) + '" />';
	    div += '	<div class="sel_wrap">';
	    div += '		<div class="tbl_card_select">';
	    div += '			<label for="phone1_' + (i + 1) + '">' + htmlToString(row[0]) + '</label>';
	    div += '			<select id="phone1_' + (i + 1) + '" name="phone1" title="휴대폰 첫번째 자리">';
	    div += '				<option value="">선택</option>';
	    div += '				' + createMobile(htmlToString(row[0]));
	    div += '			</select>';
	    div += '		</div>';
	    div += '	</div>';
	    div += '	<span>-</span>';
	    div += '	<input class="pnum_input" title="휴대폰 두번째 자리" type="text" name="phone2" value="' + htmlToString(row[1]) + '" />';
	    div += '	<span>-</span>';
	    div += '	<input class="pnum_input" title="휴대폰 세번째 자리" type="text" name="phone3" value="' + htmlToString(row[2]) + '" />';
	    div += '	<a class="sender_addel_btn removeXls" href="javascript:void(0);" data-idx="' + i + '">삭제</a>';
	    div += '</div>';
	
	    $(".gifter_stat_bg").append($(div));
    }
  }

  if (arr.length > 0) {
    setXlsDataCnt();
    $("#previewXls").show();
  }
}

/**
 * 엑셀 데이터 삭제
 */
function removeXlsArea() {
  var nIdx = $(this).data("idx");

  var $div = $('.gifter_stat_each');
  if ($div.length == 1) {
	  alert("선물을 위해 최소 1개의 연락처는 있어야 합니다.");
	  return;
  }
  $div.eq(nIdx).remove();
  
  var receiveDataInfo = getReceiveDataInfo();
  
  var arr = receiveDataInfo.split(m_separator);
  arr.splice(arr.length-1, 1);
  
  receiveDataInfo = arr.join(m_separator);

  previewXls(receiveDataInfo);
  // 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 결제수단 휴대폰 소액결제 가능 여부 확인
  togglePayMethod3();
}

/**
 * 장바구니 정보 획득
 */
function showMsrEgiftCartDetail(_egiftCartSeq) {
  var objParam = {
    "egiftCartSeq": _egiftCartSeq
  };

  ___ajaxCall("/interface/getMsrEgiftCartDetail.do", objParam, false, "json", "post"
    , function (_response) {
      if (_response.result_code == "SUCCESS") {
        var jsonData = jQuery.parseJSON(_response.data);

        var list = jsonData.cartDetailList;

        // 선물할 방법
        if (jsonData.sendType == "M") {
          if (list.length <= 10) {
            $("#method1").prop("checked", true).trigger("change");

            while ($(".receive_method1 .tbl_card_sending").length > 1) {
              removePhoneArea();
            }
          } else {
            $("#method2").prop("checked", true).trigger("change");
          }
        } else if (jsonData.sendType == "E") {
          $("#method3").prop("checked", true).trigger("change");

          while ($(".receive_method3 .tbl_card_sending").length > 1) {
            removeEmailArea();
          }
        }

        // 받는 사람
        switch (m_sendType) {
          case 0:
            for (var i = 0; i < list.length; i++) {
              if (i > 0) {
                addPhoneArea();
              }

              var row = list[i];

              var arrPhone = [
                row.receiverMobile.substr(0, 3)
                , row.receiverMobile.substr(3, 3)
                , row.receiverMobile.substr(6, 4)
              ];
              if (row.receiverMobile.length == 11) {
                arrPhone[1] = row.receiverMobile.substr(3, 4);
                arrPhone[2] = row.receiverMobile.substr(7, 4);
              }

              var name = row.receiverName;

              var $div = $(".receive_method1 .tbl_card_sending").last();
              $div.find('[name="name"]').val(name);
              $div.find('[name="phone1"]').val(arrPhone[0]).trigger("change");
              $div.find('[name="phone2"]').val(arrPhone[1]);
              $div.find('[name="phone3"]').val(arrPhone[2]);
            }
            break;

          case 1:
            var data = "";
            for (var i = 0; i < list.length; i++) {
              var row = list[i];

              var arrPhone = [
                row.receiverMobile.substr(0, 3)
                , row.receiverMobile.substr(3, 3)
                , row.receiverMobile.substr(6, 4)
              ];
              if (row.receiverMobile.length == 11) {
                arrPhone[1] = row.receiverMobile.substr(3, 4);
                arrPhone[2] = row.receiverMobile.substr(7, 4);
              }

              if (data == "") {
                data = arrPhone[0] + ":" + arrPhone[1] + ":" + arrPhone[2] + ":" + row.receiverName
              } else {
                data += m_separator + arrPhone[0] + ":" + arrPhone[1] + ":" + arrPhone[2] + ":" + row.receiverName
              }
            }

            $(".gifter_nostat_bg").hide();
            $(".gifter_stat_bg").show();

            previewXls(data);
            break;

          case 2:
            for (var i = 0; i < list.length; i++) {
              if (i > 0) {
                addEmailArea();
              }

              var row = list[i];

              var arrEmail = row.receiverEmail.split("@");
              var name = row.receiverName;

              var $div = $(".receive_method3 .tbl_card_sending").last();
              $div.find('[name="name"]').val(name);
              $div.find('[name="email1"]').val(arrEmail[0]);
              $div.find('[name="email2"]').val(arrEmail[1]);
            }
            break;
        }

        // 메시지 입력
        if(jsonData.reqMsg) {
            $("#reqMsg").val(jsonData.reqMsg.substring(0, maxReqMsg));
            $('#reqMsgCnt').html("(" + $('#reqMsg').val().length + "/" + maxReqMsg + ")");
        }

        // 금액 선택
        if (jsonData.amount <= 30000) {
          $("input[value=" + jsonData.amount + "]").prop("checked", true).trigger("change");
        } else {
          $("#price5").prop("checked", true).trigger("change");
          $("#amount").val(jsonData.amount).trigger("change");
        }

        // 전송방법
        $('[name="reqKub"][value="' + jsonData.reqKub + '"]').prop("checked", true).trigger("change");
        if (jsonData.reqKub == "R") {
          var arrDateTime = jsonData.sendDate.split(" ");
          var date = arrDateTime[0];
          var arrTime = arrDateTime[1].split(":");

          $("#sendDate").val(date);
          $("#sendTime_hour").val(arrTime[0]).trigger("change");
          $("#sendTime_min").val(arrTime[1]).trigger("change");
        }
      }
    }
  );
}


function showEgiftOrderDetail(_egiftOrderSeq, _receiveDataInfo) {
  var objParam = {
    "egiftOrderSeq": _egiftOrderSeq
  };

  ___ajaxCall("/interface/getMsrEgiftOrderDetail.do", objParam, false, "json", "post"
    , function (_response) {
      if (_response.result_code == "SUCCESS") {
        var jsonData = jQuery.parseJSON(_response.data);

        var list = _receiveDataInfo.split(m_separator);

        // 선물할 방법
        if (jsonData.sendType == "M") {
          if (list.length <= 10) {
            $("#method1").prop("checked", true).trigger("change");

            while ($(".receive_method1 .tbl_card_sending").length > 1) {
              removePhoneArea();
            }
          } else {
            $("#method2").prop("checked", true).trigger("change");
          }
        } else if (jsonData.sendType == "E") {
          $("#method3").prop("checked", true).trigger("change");

          while ($(".receive_method3 .tbl_card_sending").length > 1) {
            removeEmailArea();
          }
        }

        // 받는 사람
        switch (m_sendType) {
          case 0:
            for (var i = 0; i < list.length; i++) {
              if (i > 0) {
                addPhoneArea();
              }

              var row = list[i];
              var arr = row.split(":");

              var $div = $(".receive_method1 .tbl_card_sending").last();
              $div.find('[name="name"]').val(arr[3]);
              $div.find('[name="phone1"]').val(arr[0]).trigger("change");
              $div.find('[name="phone2"]').val(arr[1]);
              $div.find('[name="phone3"]').val(arr[2]);
            }
            break;

          case 1:
            $(".gifter_nostat_bg").hide();
            $(".gifter_stat_bg").show();

            previewXls(_receiveDataInfo);
            break;

          case 2:
            for (var i = 0; i < list.length; i++) {
              if (i > 0) {
                addEmailArea();
              }

              var row = list[i];
              var arr = row.split(":");

              var $div = $(".receive_method3 .tbl_card_sending").last();
              $div.find('[name="name"]').val(arr[3]);
              $div.find('[name="email1"]').val(arr[0]);
              $div.find('[name="email2"]').val(arr[2]);
            }
            break;
        }

        // 나에게 선물 체크
        if (jsonData.myselfYn == "Y") {
          $("#giftMe").prop("checked", true).trigger("change");
        }

        // 메시지 입력
        if(jsonData.reqMsg) {
        	$("#reqMsg").html(decodeURIComponent(jsonData.reqMsg).substring(0, maxReqMsg));
            $('#reqMsgCnt').html("(" + $('#reqMsg').val().length + "/" + maxReqMsg + ")");
        }

        // 금액 선택
        if (jsonData.amount <= 30000) {
          $("input[value=" + jsonData.amount + "]").prop("checked", true).trigger("change");
        } else {
          $("#price5").prop("checked", true).trigger("change");
          $("#amount").val(jsonData.amount).trigger("change");
        }

        // 전송방법
        $('[name="reqKub"][value="' + jsonData.reqKub + '"]').prop("checked", true).trigger("change");
        if (jsonData.reqKub == "R") {
          var arrDateTime = jsonData.sendDate.split(" ");
          var date = arrDateTime[0];
          var arrTime = arrDateTime[1].split(":");

          $("#sendDate").val(date);
          $("#sendTime_hour").val(arrTime[0]).trigger("change");
          $("#sendTime_min").val(arrTime[1]).trigger("change");
        }
      }
    }
  );
}


/**
 * 선물할 방법 & 받는 사람 영역 초기화
 * @param _sendType
 */
function initSendTypeAndReceiveMethod(_sendType, _excelUploadYn) {
  if (_sendType == "M") {
    if (_excelUploadYn != 'Y') {
      $("#method1").prop("checked", true).trigger("change");

      while ($(".receive_method1 .tbl_card_sending").length > 1) {
        removePhoneArea();
      }
    } else {
      $("#method2").prop("checked", true).trigger("change");
    }
  } else if (_sendType == "E") {
    $("#method3").prop("checked", true).trigger("change");

    while ($(".receive_method3 .tbl_card_sending").length > 1) {
      removeEmailArea();
    }
  }
}


function showFromStep3() {
  var $frmSource = $("#frmFromStep3");

  var sendType = $frmSource.find('[name="sendType"]').val();
  var myselfYn = $frmSource.find('[name="myselfYn"]').val();
  var excelUploadYn = $frmSource.find('[name="excelUploadYn"]').val();
  var receiveDataInfo = $frmSource.find('[name="receiveDataInfo"]').val();
  var list = receiveDataInfo.split(m_separator);
  var amount = $frmSource.find('[name="amount"]').val();
  var reqKub = $frmSource.find('[name="reqKub"]').val();
  var gopaymethod = $frmSource.find('[name="gopaymethod"]').val();

  // 선물할 방법 & 받는 사람
  initSendTypeAndReceiveMethod(sendType, excelUploadYn);

  // 나에게 선물하기
  if (myselfYn == "Y") {
    $("#giftMe").prop("checked", true).trigger("change");
  } else {
    if (sendType == "M" && excelUploadYn == "N") {	// 휴대폰 전송
      for (var i = 0; i < list.length; i++) {
        if (i > 0) {
          addPhoneArea();
        }

        var row = list[i];
        var arr = row.split(":");

        var $div = $(".receive_method1 .tbl_card_sending").last();
        $div.find('[name="name"]').val(arr[3]);
        $div.find('[name="phone1"]').val(arr[0]).trigger("change");
        $div.find('[name="phone2"]').val(arr[1]);
        $div.find('[name="phone3"]').val(arr[2]);
      }
      // 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 받는 사람 정보 버그 수정
      removePhoneArea();
    } else if (excelUploadYn == "Y") {	// 휴대폰 대량 전송(엑셀 업로드)
      $(".gifter_nostat_bg").hide();
      $(".gifter_stat_bg").show();

      previewXls(receiveDataInfo);
    } else if (sendType == "E") {	// 이메일 전송
      for (var i = 0; i < list.length; i++) {
        if (i > 0) {
          addEmailArea();
        }

        var row = list[i];
        var arr = row.split(":");

        var $div = $(".receive_method3 .tbl_card_sending").last();
        $div.find('[name="name"]').val(arr[3]);
        $div.find('[name="email1"]').val(arr[0]);
        $div.find('[name="email2"]').val(arr[2]);
      }
      // 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 받는 사람 정보 버그 수정
      removeEmailArea();
    }
  }

  // 금액 선택
  if (amount <= 30000) {
    $("input[value=" + amount + "]").prop("checked", true).trigger("change");
  } else {
    $("#price5").prop("checked", true).trigger("change");
    $("#amount").val(amount).trigger("change");
  }

  // 전송방법
  $('input:radio[name="reqKub"][value="' + reqKub + '"]').prop("checked", true).trigger("change");
  if (reqKub == "R") {
    var sendDate = $frmSource.find('[name="sendDate"]').val();
    var sendTime = $frmSource.find('[name="sendTime"]').val();
    var arrTime = sendTime.split(":");

    $("#sendDate").val(sendDate);
    $("#sendTime_hour").val(arrTime[0]);
    $("#sendTime_min").val(arrTime[1]);
    setTimeout(function () {
      $("#sendTime_hour, #sendTime_min").trigger("change");
    }, 150);
  }

  // 결제 수단 선택
  $('input:radio[name="gopaymethod"][value="' + gopaymethod + '"]').prop("checked", true).trigger("change");
}

/**
 * 엑셀 업로드 건수 표시
 */
function setXlsDataCnt() {
  var nReceiveDataCnt = $(".gifter_stat_bg .gifter_stat_each").length;
  var nDoubleDataCnt = 0;
  var strDataTemp = "";

  for (var i = 0; i < nReceiveDataCnt; i++) {
    var $target = $(".gifter_stat_bg .gifter_stat_each").eq(i);
    var hp = $target.find('[name=phone1]').val() + $target.find('[name=phone2]').val() + $target.find('[name=phone3]').val();

    if (strDataTemp.indexOf(hp) > - 1) {
      nDoubleDataCnt++;
    }

    strDataTemp += "|" + hp;
  }

  $(".receiveDataCnt").text(nReceiveDataCnt + "건");
  $(".doubleDataCnt").text(nDoubleDataCnt + "건");
}

/**
 * html to text
 */
function htmlToString( target ) {
    var result = 	target.replace(/&/gi, "&amp;").replace(/#/gi, "&#35;").replace(/</gi, "&lt;").replace(/>/gi, "&gt;").replace(/\"/gi, "&quot;").replace(/\\/gi, '&#92;').replace(/%/gi, '&#37;');
        result = result.replace(/\(/gi, '&#40;').replace(/\)/gi, '&#41;').replace(/\+/gi, '&#43;').replace(/\//gi, '&#47;').replace(/\./gi, '&#46;').replace(/\'/gi, "&#39;");

    return result;
}