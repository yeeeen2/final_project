// 숫자 타입에서 쓸 수 있도록 format() 함수 추가
Number.prototype.format = function(){
	if(this==0) return 0;
	var reg = /(^[+-]?\d+)(\d{3})/;
	var n = (this + '');
	while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
	return n;
};

// 문자열 타입에서 쓸 수 있도록 format() 함수 추가
String.prototype.format = function(){
	var num = parseFloat(this);
	if( isNaN(num) ) return "0";
	return num.format();
};

$("#email2").on('change blur', document, function() {
	var hasValue = false;
	var thisVal = $(this).val();

	for (var i = 0; i < $("#mail option").length; i++) {
		var item = $("#mail option").eq(i);

		if ($(item).val() === thisVal) {
			hasValue = true;
			break;
		}
	}

	if (hasValue) {
		$("#mail").val(thisVal).change();
	} else {
		$("#mail").val("직접입력");
		$("#mail").siblings('label').text("직접입력");
	}
});

$("#mail").on('change', document, function() {
	$(this).siblings('label').text($(this).val());
	$("#email2").val($(this).val());
});

if ($("select[id=mail]").length) {
	$("select[id=mail]").append(createMail(selectedMail));

	if ($("select[id=mail] option:selected").index()) {
		$("select[id=mail]").change();
	}

	$("select[id=phone]").append(createMobile(''));
	$("select[id=phone]").append(createPhone(''));
}


$(".onlyNumber").bind("keydown keyup", function (event) {
	$(this).val($.number($(this).val()));
});

$(":radio[name='nbt_type']").on("change", function(){
	var value = $(":radio[name='nbt_type']:checked").val();

	if(value == 'Y'){
		$(".ps_text1").show();
		$(".ps_text2").hide();
	}else{
		$(".ps_text2").show();
		$(".ps_text1").hide();
	}

});

var ranges = [
	'\ud83c[\udf00-\udfff]', // U+1F300 to U+1F3FF
	'\ud83d[\udc00-\ude4f]', // U+1F400 to U+1F64F
	'\ud83d[\ude80-\udeff]' // U+1F680 to U+1F6FF
];

var i = {
	goSubmit : function(){
		if(i.valCh()){
			var param = $("#write").serializeObject();

				if (sidoName && gugunName) {
					param.nsci_sgstn_title_name = sidoName + " " + gugunName + " 신규입점제의";
				} else {
					param.nsci_sgstn_title_name = $("#sido option[value='" + $("#nbt_sido").val() + "']").text()
						+ " " + $("#gugun option[value='" + $("#nbt_gugun").val() + "']").text() + " 신규입점제의";
				}

			param.nbt_email1 = $.trim($('#email1').val());
			param.nbt_email2 = $.trim($('#email2').val());

			$('#btnApply').attr('onclick', null);

			__ajaxCall("/footer/partnership/newPartnerWriteProc.do", param , true, "JSON", "POST", function(data) {
				if(data != undefined && data != null) {
					if(data.alert_msg != undefined && data.alert_msg != null) {
						alert(data.alert_msg);
					}
					// location.href = data.result_code == "SUCCESS" ? "new_partner_list.do" : location.href;
					if (data.result_code === "SUCCESS") {
						location.href = "new_partner_list.do";
					} if (data.alert_msg === "수정 불가입니다.") {
						location.href = "new_partner_list.do";
					}
				}
			},function(data) {
				if(data != undefined && data != null) {
					if(data.alert_msg != undefined && data.alert_msg != null) {
						alert(data.alert_msg);
					}
				}
				return;
			});
		}
	},cancel : function(){
		if(confirm("취소하시겠습니까?")) {
			location.href = '/footer/partnership/new_partner_list.do';
		}
	},valCh : function(){
		if($("#address1").val() == ""){
			alert("주소찾기 버튼을 클릭해서 주소를 입력 해주세요.");
			window.scrollTo(0,200);
			return false;
		}
		if($.trim($("#address2").val()) == ""){
			alert("상세 주소를 입력해 주세요.");
			window.scrollTo(0,200);
			$("#address2").focus();
			return false;
		}
		if($.trim($("#email1").val()) == ""){
			alert("E-Mail을 확인해 주세요.");
			$("#email1").focus();
			return false;
		}
		if($.trim($("#email2").val()) == ""){
			alert("E-Mail을 확인해 주세요.");
			$("#email2").focus();
			return false;
		}
		if ( $.trim($("#email1").val()).length > 32 ) {
			alert("E-Mail 아이디와 도메인을 32자리 이내로 입력하세요.");
			$("#email1").focus();
			return false;
		}
		if ( $.trim($("#email12").val()).length > 32 ) {
			alert("E-Mail 아이디와 도메인을 32자리 이내로 입력하세요.");
			$("#email12").focus();
			return false;
		}
		$('#email').val($.trim($('#email1').val()) + '@' + $.trim($('#email2').val()));
		var msg = checkValid2("#email", "EMAIL");	// 이메일 유효성 체크
		if(msg != ""){
			alert(msg);
			$("#email1").focus();
			return false;
		}

		// if(pattern_check("#stor_grnd_area" , "토지면적을 확인해 주세요." , "해당 영역은 숫자만 입력 가능합니다.", getPattern('NUM') )==false){
		if ($("#stor_grnd_area").val() == '') {
			alert('토지면적을 확인해 주세요.');
			$("#stor_grnd_area").focus();
			return false;
		}
		if (!$.isNumeric($("#stor_grnd_area").val().replace(/\D/g, ''))) {
			alert('해당 영역은 숫자만 입력 가능합니다.');
			$("#stor_grnd_area").focus();
			return false;
		}

		// if(pattern_check("#exclusive" , "전용면적을 확인해 주세요." , "해당 영역은 숫자만 입력 가능합니다.", getPattern('NUM') )==false){
		if ($("#exclusive").val() == '') {
			alert('전용면적을 확인해 주세요.');
			$("#exclusive").focus();
			return false;
		}
		if (!$.isNumeric($("#exclusive").val().replace(/\D/g, ''))) {
			alert('해당 영역은 숫자만 입력 가능합니다.');
			$("#exclusive").focus();
			return false;
		}

		if ($("#rent_stor_flcnt").val() == '') {
			alert('층을 확인해 주세요.');
			$("#rent_stor_flcnt").focus();
			return false;
		}

		// if(pattern_check("#stor_rent_qrmn" , "보증금을 확인해 주세요." , "해당 영역은 숫자만 입력 가능합니다.", getPattern('NUM') )==false){
		if ($("#stor_rent_qrmn").val() == '') {
			alert('보증금을 확인해 주세요.');
			$("#stor_rent_qrmn").focus();
			return false;
		}
		if (!$.isNumeric($("#stor_rent_qrmn").val().replace(/\D/g, ''))) {
			alert('해당 영역은 숫자만 입력 가능합니다.');
			$("#stor_rent_qrmn").focus();
			return false;
		}

		// if(pattern_check("#stor_rnfe_amnt" , "임대료를 확인해 주세요." , "해당 영역은 숫자만 입력 가능합니다.", getPattern('NUM') )==false){
		if ($("#stor_rnfe_amnt").val() == '') {
			alert('임대료를 확인해 주세요.');
			$("#stor_rnfe_amnt").focus();
			return false;
		}
		if (!$.isNumeric($("#stor_rnfe_amnt").val().replace(/\D/g, ''))) {
			alert('해당 영역은 숫자만 입력 가능합니다.');
			$("#stor_rnfe_amnt").focus();
			return false;
		}

		if ($("#hope_rntfe_rat").val() == '') {
			alert('희망 수수료율을 확인해 주세요.');
			$("#hope_rntfe_rat").focus();
			return false;
		}
		if (!$.isNumeric($("#hope_rntfe_rat").val().replace(/\D/g, ''))) {
			alert('해당 영역은 소수점 2자리까지 입력 가능합니다.');
			$("#hope_rntfe_rat").focus();
			return false;
		}
		if ($("#hope_rntfe_rat").val().replace(/,/g, '') <= 0 || $("#hope_rntfe_rat").val().replace(/,/g, '') > 99.999) {
			alert('희망 수수료율은 0 ~ 100미만으로 입력해 주세요.');
			$("#hope_rntfe_rat").focus();
			return false;
		}

		// if(pattern_check("#rent_stor_mncs" , "관리비를 확인해 주세요." , "해당 영역은 숫자만 입력 가능합니다.", getPattern('NUM') )==false){
		if ($("#rent_stor_mncs").val() == '') {
			alert('관리비를 확인해 주세요.');
			$("#rent_stor_mncs").focus();
			return false;
		}
		if (!$.isNumeric($("#rent_stor_mncs").val().replace(/\D/g, ''))) {
			alert('해당 영역은 숫자만 입력 가능합니다.');
			$("#rent_stor_mncs").focus();
			return false;
		}

		var contentVal = $.trim($("#content").val());

		if(contentVal == "") {
				alert("기타상세 내용을 입력해 주세요.");
			$("#content").focus();
			return false;
		}

		if(new RegExp(ranges.join('|'), 'g').test(contentVal)) {
			alert("이모지 문자는 입력 할 수 없습니다.");
			$("#content").focus();

			return false;
		}

		return true;
	}

}

var j = {
	goSubmit : function(){
		if($("#sgAgreeChk_yes").is(":checked")){
			document.location.href="/footer/partnership/new_partner_agree.do?sgAgreeChk=Y";
		}else{
			alert("상담신청에 동의 하셔야 신청 가능합니다.");
			$("#sgAgreeChk_yes").focus();
		}
	}
}

var agree = {
	goSubmit : function(){
		if(!$("#hompageUseAgree").is(":checked")) {
			alert("이용약관에 동의 하셔야 합니다.");
			$("#hompageUseAgree").focus();
		} else if(!$("#userInfoAgree").is(":checked")) {
			alert("개인정보의 수집 및 이용에 동의 하셔야 합니다.");
			$("#userInfoAgree").focus();
		} else {
			showCertPopup("MOBILE");
		}
	}
}

