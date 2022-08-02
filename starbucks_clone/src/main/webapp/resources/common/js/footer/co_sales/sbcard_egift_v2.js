var m_receiveDataInfo    = "";
var m_totalCnt           = 0;
var m_totalAmonut        = 0;
var m_attachFileHpPath   = "";
var m_attachFileName     = "";
var m_attachFileNameOld  = "";
var m_attachFileRealName = "";

var m_fileHpPath         = "";
var m_fileName           = "";
var m_fileRealName       = "";
var m_rprsnPhnoUseYn     = "";

var m_selectedReqNo      = "";
var saveParam = {
         "hopeDt"             : ""
        ,"corpName"           : ""
        ,"custTelNo"          : ""
        ,"custEmail"          : ""
        ,"bizNumber"          : ""
        ,"sendTelNo"          : ""
        ,"totalReqCnt"        : ""
        ,"totalReqAmount"     : ""
        ,"subject"            : ""
        ,"contents"           : ""
        ,"remark"             : ""
        ,"egiftImgMngSeq"     : ""
        ,"receiveDataInfo"    : ""
        ,"receiveDataCnt"     : ""
        ,"attachFileHpPath"   : ""
        ,"attachFileName"     : ""
        ,"attachFileRealName" : ""
        ,"payType"			  : ""
        ,"sendName"			  : ""
        ,"fileHpPath"		  : ""
        ,"fileName"			  : ""
        ,"fileRealName"		  : ""
        ,"egiftType"		  : ""
        ,"rprsnPhnoUseYn"	  : ""
    };

var bulkSaveParam = {
        "orderBsnscName"      : ""
       ,"ordrPhno"            : ""
       ,"ordrEmad"            : ""
       ,"bsnscBrno"           : ""
       ,"sndrName"            : ""
       ,"buyPrpsCntnt"        : ""
       ,"dwnldHopeDate"       : ""
       ,"bulkDataInfo"        : ""
       ,"totalOrderCscnt"     : ""
       ,"totalOrderAmnt"      : ""
       ,"stlmnDvsnCode"       : ""
       ,"asfRqstCntnt"        : ""
       ,"egiftType"		      : ""
   };

$(document).ready(function () {
    setEvents();

    // 2. 마음을 담아 선물할 e-Gift 카드 이미지를 선택해 주세요.
    showEgiftImgList();

    /*
    // 점검일시(2015-10-01 00:00 ~ 02:00) 인가?
    startDt = new Date(2015, 9, 1, 0, 0, 0);
    nowDt   = new Date();
    endDt   = new Date(2015, 9, 1, 2, 0, 0);

    if (startDt <= nowDt && nowDt <= endDt) {
        $("#btn_order_save").hide();
    }
    */

});

function setEvents() {
    $("#phone1").append( $(createMobile()) );
    $("#phone2, #phone3").numeric({ negative: false });
    // 결제방식의 연락처 변경
    $("#phone1").change(function() {
        if ($("#phone1").val() != "" && $("#phone2").val() != "" && $("#phone3").val() != "") {
            $(".pay_info .pay_info_tel").text($("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val());
        }
    });
    $("#phone2, #phone3").on("keyup blur", function() {
        $(this).val($(this).val().replace(/[^0-9]/g,""));

        if ($("#phone1").val() != "" && $("#phone2").val() != "" && $("#phone3").val() != "") {
            $(".pay_info .pay_info_tel").text($("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val());
        }
    });

    $("#email_select").append( $(createMail()) );

    $("#sendTelNo1, #sendTelNo2, #sendTelNo3").numeric({ negative: false });
    $("#sendTelNo1, #sendTelNo2, #sendTelNo3").on("keyup blur", function () {
        $(this).val($(this).val().replace(/[^0-9]/g,""));
    });
    $("#bizNumber1, #bizNumber2, #bizNumber3").numeric({ negative: false });
    $("#bizNumber1, #bizNumber2, #bizNumber3").on("keyup blur", function () {
        $(this).val($(this).val().replace(/[^0-9]/g,""));
    });

    // 직접입력
    $("#email_select").on("change", function () {
        if ($(this).val() != "") {
            $(this).parent().prev().prop("readonly", true);
        } else {
            $(this).parent().prev().prop("readonly", false);
        }
        $(this).parent().prev().val( $(this).val() );
        $(this).parent().prev().keyup();
    });

    // 엑셀 업로드
    $(".file_input_ok").on("click", function (_e) {
        _e.preventDefault();

        var targetId = "ifrmUpload";
        $("#"+targetId).one("load", function () {
            try {
                var _response = jQuery.parseJSON( $(document.getElementById('ifrmUpload').contentWindow.document.body).text() );
                if (_response.result_code) {
                    if (_response.result_code == "SUCCESS") {
                        var jsonData = jQuery.parseJSON(_response.data);
                        showXlsData(jsonData);
                    } else { //실패시 파일 초기화
                        m_receiveDataInfo = "";
                        $(".cnt").text("0건");
                        $(".doubleCnt").text("0건");
                        $('div.mms_recipient > div.list').hide();
                        $('div.mms_recipient > div.no_list').show();
                        alert(_response.alert_msg);
                        $("#filename").focus();
                        IEfocusSet("#filename");
                        $(window).scrollTop( $('#filePosition').offset().top -50);
                    }
                }

            } catch (_err) {
                alert("엑셀파일 데이터추출처리에 실패하였습니다. 지속실패 시 starbucksb2b@starbucks.co.kr로 문의바랍니다.");

            }

            $('#proofFile').attr('disabled', false);
        });

        $('#proofFile').attr('disabled', true);
        $("#frmUpload")
            .attr("action", "/interface/uploadXls.do")
            .attr("target", targetId)
            .trigger("submit");

        $("#frmUpload").removeAttr("target");

    });

    /* 결제방식 안내 */
    $("input[name=payType1]:radio").change(function() {
        var radioValue = $(this).val();

        if (radioValue == 1) {
            $(".pay_info").eq(0).show();
            $(".pay_info").eq(1).hide();
        } else if (radioValue == 6) {
            $(".pay_info").eq(0).hide();
            $(".pay_info").eq(1).show();
        }
    });

    $("input[name=payType2]:radio").change(function() {
        var radioValue = $(this).val();

        if (radioValue == 1) {
            $(".pay_info").eq(2).show();
            $(".pay_info").eq(3).hide();
        } else if (radioValue == 6) {
            $(".pay_info").eq(2).hide();
            $(".pay_info").eq(3).show();
        }
    });

    // 충전금액
    $(document).on("blur", "#bulk_list input[name=cprice]", function() {
        $(this).val($(this).val().replace(/[^0-9]/g,""));

        var number = $(this).val();
        if(number > 500000){
            alert("e-Gift Card의 금액은 5,000원부터 500,000원까지 5천원 단위로 입력 가능합니다.");
            $(this).val("");
        }

        fn_cardAmount($('#bulk_list input[name=cprice]').index(this));
    });

    // 수량
    $(document).on("blur", "#bulk_list input[name=csu]", function() {
        $(this).val($(this).val().replace(/[^0-9]/g,""));

        var number = $(this).val();
        if(number > 4000){
            alert("e-Gift Card의 대량 구매 신청 수량은 총 4000건을 초과할 수 없습니다.");
            $(this).val("");
        }

        fn_cardAmount($('#bulk_list input[name=csu]').index(this));
    });

    $(document).on("keyup", "input:text[numberOnly]", function() {
        $(this).number(true);
    });

    // 통신서비스 이용증명원 업로드 시 확장자 체크
    $("#proofFile").change(function () {
        var thumbext = $(this).val();
        if (thumbext != "") {
            thumbext = thumbext.slice(thumbext.lastIndexOf(".") + 1).toLowerCase();

            if(!/(jpg|jpeg|pdf)$/i.test(thumbext)) {
                alert("통신서비스 이용증명원은 PDF 또는 이미지 파일(JPG, JPEG)만 업로드해 주세요.");
                $(this).val("");
                $(this).trigger("change");

                return;
            }
        }
    });

    // 결제방식의 이메일 변경
    $("#email1, #email2").keyup(function() {
        var ptrn = /[ㄱ-ㅎ|가-힣]/gi;
        $("#email1").val($("#email1").val().replace(ptrn, ''));
        $("#email2").val($("#email2").val().replace(ptrn, ''));

        if ($("#email1").val() != "" && $("#email2").val() != "") {
            $(".pay_info .pay_info_email").text($("#email1").val()+"@"+$("#email2").val());
        }
    });

    //유의 사항 확인 눌렀을 시 구매신청 접수 완료
    $("#purchaseConfirm .popup_btn_wrap .btn.yellow, #purchaseInfoChange .popup_btn_wrap .btn.yellow").click(egiftOrderComplete);

}

function showXlsData(jsonData) {
    var nDataCnt   = jsonData.receiveDataCnt + jsonData.doubleDataCnt;
    var nDoubleCnt = jsonData.doubleDataCnt;

    m_receiveDataInfo    = jsonData.receiveDataInfo;
    m_attachFileHpPath   = jsonData.attachFileHpPath;
    m_attachFileName     = jsonData.attachFileName;
    m_attachFileRealName = jsonData.attachFileRealName;

    // 수정인 경우 기존 파일명..
    if (jsonData.attachFileNameOld != undefined) {
        m_attachFileNameOld = jsonData.attachFileNameOld;
    }

    var tmpRows = m_receiveDataInfo.split("|");
    var tmp2Arr = new Array();

    if (tmpRows.length > 0) {
        // 초기화
        m_totalCnt    = 0;
        m_totalAmonut = 0;
        $("div.mms_recipient > div.list").empty();
        $(".cnt").text("0건");
        $(".doubleCnt").text("0건");
        $("div.mms_recipient > div.no_list").hide();
        $("div.mms_recipient > div.list").show();

        for (var i = 0; i < tmpRows.length; i++) {
            var arr    = tmpRows[i].split(":");
            var amount = arr[1];

            if (tmp2Arr[amount] == undefined) {
                tmp2Arr[amount]  = 1;
            } else {
                tmp2Arr[amount] += 1;
            }
        }

        // 엑셀 내용 리뷰 출력 시작~
        var rowAmount = 0;

        // 5천원부터 시작이라 그냥 5천 단위로 돌림
        for (var i = 5000; i <= tmp2Arr.length; i = i + 5000) {
            if (tmp2Arr[i] != undefined) {
                rowAmount      = i * tmp2Arr[i];
                m_totalCnt    += tmp2Arr[i];
                m_totalAmonut += rowAmount;

                var div  = '<dl>\n';
                    div += '	<dt>' + $.number(i) + '원</dt>\n';
                    div += '	<dd>\n<input class="inp_txt" readonly="readonly" type="text" value="' + tmp2Arr[i] + '">\n<label for="">건</label>\n</dd>\n';
                    div += '	<dd>\n<input class="inp_txt" readonly="readonly" type="text" value="' + $.number(rowAmount) + '">\n<label for="">원</label>\n</dd>\n';
                    div += '</dl>\n';

                $("div.mms_recipient > div.list").append( $(div) );
            }
        }

        var div  = '<dl class="total">\n';
            div += '<dt>합계금액</dt>\n';
            div += '<dd>\n<input type="text" id="" class="inp_txt" readonly="readonly" value="'+m_totalCnt+'">\n<label for="">건</label>\n</dd>\n';
            div += '<dd>\n<input type="text" id="" class="inp_txt" readonly="readonly" value="'+$.number(m_totalAmonut)+'">\n<label for="">원</label>\n</dd>\n';
            div += '</dl>\n';

        $("div.mms_recipient > div.list").append( $(div) );
    } else {
        $("div.mms_recipient > div.no_list").show();
        $("div.mms_recipient > div.list").hide();
    }

    $("div.mms_recipient .cnt").text(nDataCnt + "건");			// 선물 받으실 분
    $("div.mms_recipient .doubleCnt").text(nDoubleCnt + "건");	// 중복입력
}

function showEgiftImgList() {
    var objParam = {
         "b2bYn"       : "Y"
        ,"formulaCode" : m_formulaCode
    };

    ___ajaxCall("/interface/getMsrEgiftImgList.do", objParam, false, "json", "post"
        ,function (_response) {
            if (_response.result_code == "SUCCESS") {
                var jsonData = jQuery.parseJSON(_response.data);

                $("#egift_card_cate_wrap1").empty();
                $("#egift_card_cate_wrap2").empty();

                $("#categoryList1").tmpl(jsonData.categoryList, {
                }).appendTo("#egift_card_cate_wrap1");
                $("#categoryList2").tmpl(jsonData.categoryList, {
                }).appendTo("#egift_card_cate_wrap2");

                $("#egift_card_cate_wrap1 li > ol").each(function (_nIdx) {
                    $("#cardImageList1").tmpl(jsonData.categoryList[_nIdx].cardImageList, {
                    }).appendTo(this);
                });
                $("#egift_card_cate_wrap2 li > ol").each(function (_nIdx) {
                    $("#cardImageList2").tmpl(jsonData.categoryList[_nIdx].cardImageList, {
                    }).appendTo(this);
                });

                setTimeout(function () {
                    if ($("input[name=reqNo]").val() == "") { // 신청일때만 실행
                        $('#egift_card_cate_wrap1 li:eq(0)').addClass("on");
                    }
                    $('#egift_card_cate_wrap2 li:eq(0)').addClass("on");
                }, 150);

                initDatePicker();
            }
        }
    );
}
function onTyping(type){
    var noStr = /[<>\'‘’]+/gi;
    var nBytes = 0;

    if ("corpName"==type) {
        var corpName = $("#corpName").val();

        nBytes = byteCheck(corpName);
        if (nBytes > 20) {
            alert("단체 또는 기업명은 한글 10자, 영문 20자를 넘을 수 없습니다.");
            while(byteCheck(corpName)>20){
                $("#corpName").val(corpName.slice(0,-1));
                corpName = $("#corpName").val();
            }
            return;
        }

        if (nBytes > 0 && noStr.test(corpName)) {
            $("#corpName").val(corpName.replace(noStr, ""));
            return;
        }
    } else if("subject"==type) {
        var subject = $("#subject").val();

        nBytes = byteCheck(subject);
        if (nBytes > 40) {
            alert("제목은 한글 20자, 영문 40자를 넘을 수 없습니다.");
            while(byteCheck(subject)>40){
                $("#subject").val(subject.slice(0,-1));
                subject = $("#subject").val();
            }
            return;
        }
        if (nBytes > 0 && noStr.test(subject)) {
            $("#subject").val(subject.replace(noStr, ""));
            return;
        }
    } else if("contents"==type) {
        var contents = $("#contents").val();

        nBytes = byteCheck(contents);
        if (nBytes > 200) {
            alert("메시지는 한글 100자, 영문 200자를 넘을 수 없습니다.");
            while(byteCheck(contents)>200){
                $("#contents").val(contents.slice(0,-1));
                contents = $("#contents").val();
            }
            return;
        }
        if (nBytes > 0 && noStr.test(contents)) {
            $("#contents").val(contents.replace(noStr, ""));
            return;
        }
    } else if("sendName1"==type) {
        var sendName1 = $("#sendName1").val();

        nBytes = byteCheck(sendName1);
        if (nBytes > 20) {
            alert("발송처는 한글 10자, 영문 20자를 넘을 수 없습니다.");
            while(byteCheck(sendName1)>20){
                $("#sendName1").val(sendName1.slice(0,-1));
                sendName1 = $("#sendName1").val();
            }
            return;
        }
        if (nBytes > 0 && noStr.test(sendName1)) {
            $("#sendName1").val(sendName1.replace(noStr, ""));
            return;
        }
    } else if("sendName2"==type) {
        var sendName2 = $("#sendName2").val();

        nBytes = byteCheck(sendName2);
        if (nBytes > 20) {
            alert("발송처는 한글 10자, 영문 20자를 넘을 수 없습니다.");
            while(byteCheck(sendName2)>20){
                $("#sendName2").val(sendName2.slice(0,-1));
                sendName2 = $("#sendName2").val();
            }
            return;
        }
        if (nBytes > 0 && noStr.test(sendName2)) {
            $("#sendName2").val(sendName2.replace(noStr, ""));
            return;
        }
    } else if("buyPrpsCntnt"==type) {
        var buyPrpsCntnt = $("#buyPrpsCntnt").val();

        nBytes = byteCheck(buyPrpsCntnt);
        if (nBytes > 30) {
            alert("구매 목적은 공백 포함 한글 20자, 영문 30자를 넘을 수 없습니다.");
            while(byteCheck(buyPrpsCntnt)>30) {
                $("#buyPrpsCntnt").val(buyPrpsCntnt.slice(0,-1));
                buyPrpsCntnt = $("#buyPrpsCntnt").val();
            }
            return;
        }
        if (nBytes > 0 && noStr.test(buyPrpsCntnt)) {
            $("#buyPrpsCntnt").val(buyPrpsCntnt.replace(noStr, ""));
            return;
        }
    } else if("remark1"==type) {
        var remark1 = $("#remark1").val();

        nBytes = byteCheck(remark1);
        if (nBytes > 2000) {
            alert("기타요청 사항은 한글 1,000자, 영문 2,000자를 넘을 수 없습니다.");
            while(byteCheck(remark1)>2000){
                $("#remark1").val(remark1.slice(0,-1));
                remark1 = $("#remark1").val();
            }
            return;
        }
        if (nBytes > 0 && noStr.test(remark1)) {
            $("#remark1").val(remark1.replace(noStr, ""));
            return;
        }
    } else if("remark2"==type) {
        var remark2 = $("#remark2").val();

        nBytes = byteCheck(remark2);
        if (nBytes > 600) {
            alert("기타요청 사항은 한글 300자, 영문 600자를 넘을 수 없습니다.");
            while(byteCheck(remark2)>600){
                $("#remark2").val(remark2.slice(0,-1));
                remark2 = $("#remark2").val();
            }
            return;
        }
        if (nBytes > 0 && noStr.test(remark2)) {
            $("#remark2").val(remark2.replace(noStr, ""));
            return;
        }
    }

}

//focus 발생시 IE에서 위치값 이슈 발생으로 분기 처리
function IEfocusSet(focusId){
    var agent = navigator.userAgent.toLowerCase();
    if ((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
        $(window).scrollTop( $(focusId).offset().top -200 );
    }
}

// 유의사항 확인 버튼 클릭시에 구매 신청 완료
function egiftOrderComplete(){
    var objParam = new Array();
    if ($("input[name=egiftType]").val() == 1) {
        objParam = saveParam;
    } else {
        objParam = bulkSaveParam;
    }

    var suMsg = "신청 완료 되었습니다.";
    var url = "/interface/setMsrBizEgiftOrderSave.do";
    if (m_selectedReqNo != "") { // 구매 변경시
        suMsg = "변경 완료 되었습니다.";
        url = "/interface/setMsrBizEgiftOrderEdit.do";
        if ($("input[name=egiftType]").val() == 1) {
            objParam.reqNo = m_selectedReqNo;
            objParam.attachFileNameOld = encodeURIComponent(m_attachFileNameOld);
        } else {
            objParam.begcrOrderNo = m_selectedReqNo;
        }
    }
    // 버튼 비활성화
    $("#purchaseConfirm .popup_btn_wrap .btn.yellow, #purchaseInfoChange .popup_btn_wrap .btn.yellow").off('click');

    ___ajaxCall(url, objParam, false, "json", "post"
        ,function (_response) {
            if (_response.result_code == "SUCCESS") {
                alert(suMsg);
                location.href = _response.location_href;
            } else {
                var arr = _response.error_msg.split("|");
                if (arr.length == 2) {
                    alert(arr[1]);
                } else {
                    if (arr.length == 0) {
                        alert(_response.alert_msg);
                    } else {
                        alert(arr[0]);
                    }
                }
                // 버튼 활성화
                $("#purchaseConfirm .popup_btn_wrap .btn.yellow, #purchaseInfoChange .popup_btn_wrap .btn.yellow").click(egiftOrderComplete);
                return;
            }
        }
    );
}

// 예약발송 희망일 초기화
function initDatePicker() {
    var today = getSrvTime();
    var hour =  today.getHours();

    var recentYear = today.getFullYear();
    var recentMonth = today.getMonth()+1;
    var recentDay = today.getDate();

    if(recentMonth < 10) recentMonth = "0" + recentMonth;
    if(recentDay < 10) recentDay = "0" + recentDay;

    var todayStr = recentYear+""+recentMonth+""+recentDay; // 오늘 문자형
    var hdList = holidayList(todayStr); // 공휴일목록

    var addi = 0; // 최소 선택 날짜
    if (hour >= 12) { // 구매신청이 12시 이후이면 하루증가
        addi = 1;
    }

    var yy = "";
    var mm = "";
    var dd = "";
    var theDay = new Date();
    var nextday = "";
    for (; addi<30; addi++) { // 30일 이내만 선택 가능
        nextday = dateAddDel(todayStr, addi, 'd'); // 신청 가능일

        yy = parseInt(nextday.substr(0, 4), 10);
        mm = parseInt(nextday.substr(4, 2), 10);
        dd = parseInt(nextday.substr(6), 10);
        theDay = new Date(yy, mm - 1, dd);

        if (!(theDay.getDay() == 0 || theDay.getDay() == 6 || hdList.indexOf(nextday) > -1)) { // 주말(0: 일, 6: 토), 공휴일 체크
            break;
        }
    }

    addi++; // 결제일 확보

    var onSel = false;
    var startDate = "+"+addi+"D";
    $('#pickBookDate1').prop("readonly", true).datepicker({
         "dateFormat"      : "yy-mm-dd"
        ,"dayNamesMin"     : ['일', '월', '화', '수', '목', '금', '토']
        ,"maxDate"         : "+30D"
        ,"minDate"         : startDate
        ,"monthNamesShort" : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
        ,"onSelect": function(dateText, inst) {
            onSel = true;
            $(this).change();
         }
    }).on("change", function() {
        // 결제기한 안내
        var dt = $(this).val().replace(/[^0-9]/g,"");
        var diff = getDateDiff(getDateStringFormat(dt, "YYYY-MM-DD"), getDateStringFormat(todayStr, "YYYY-MM-DD"));

        dt = dateAddDel(dt, -1, 'd');
        for (var i=0; i<diff; i++) {
            yy = parseInt(dt.substr(0, 4), 10);
            mm = parseInt(dt.substr(4, 2), 10);
            dd = parseInt(dt.substr(6), 10);
            theDay = new Date(yy, mm - 1, dd);

            if (theDay.getDay() == 0 || theDay.getDay() == 6 || hdList.indexOf(dt) > -1) {
                dt = dateAddDel(dt, -1, 'd');
            } else {
               break;
            }
        }

        var text  = "";
        text += "<span>결제기한 : </span>";
        text += "<span class=\"f_b7312c\">"+yy+"년 "+mm+"월 "+dd+"일 15시까지</span>";
        $("#period1").html(text);
        $("#period1").show();
        if (onSel) {
            text = "<span>결제기한 : <strong class=\"f_b7312c\">"+yy+"년 "+mm+"월 "+dd+"일 15시</strong></span>";
            $("#pDeadLine").html(text);
            text = "<span>기한 내 결제 시에만 발송 가능</span>";
            $("#pAlertMsg").html(text);

            layer_popup("#paymentDeadline");

            onSel = false;
        }
    });

    $('#pickBookDate2').prop("readonly", true).datepicker({
        "dateFormat"      : "yy-mm-dd"
       ,"dayNamesMin"     : ['일', '월', '화', '수', '목', '금', '토']
       ,"maxDate"         : "+30D"
       ,"minDate"         : startDate
       ,"monthNamesShort" : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
       ,"onSelect": function(dateText, inst) {
           onSel = true;
           $(this).change();
        }
   }).on("change", function() {
       // 결제기한 안내
       var dt = $(this).val().replace(/[^0-9]/g,"");
       var diff = getDateDiff(getDateStringFormat(dt, "YYYY-MM-DD"), getDateStringFormat(todayStr, "YYYY-MM-DD"));

       dt = dateAddDel(dt, -1, 'd');
       for (var i=0; i<diff; i++) {
           yy = parseInt(dt.substr(0, 4), 10);
           mm = parseInt(dt.substr(4, 2), 10);
           dd = parseInt(dt.substr(6), 10);
           theDay = new Date(yy, mm - 1, dd);

           if (theDay.getDay() == 0 || theDay.getDay() == 6 || hdList.indexOf(dt) > -1) {
               dt = dateAddDel(dt, -1, 'd');
           } else {
              break;
           }
       }

       var text  = "";
       text += "<span>결제기한 : </span>";
       text += "<span class=\"f_b7312c\">"+yy+"년 "+mm+"월 "+dd+"일 15시까지</span>";
       $("#period2").html(text);
       $("#period2").show();

       if (onSel) {
           text = "<span>결제기한 : <strong class=\"f_b7312c\">"+yy+"년 "+mm+"월 "+dd+"일 15시</strong></span>";
           $("#pDeadLine").html(text);
           text = "<span>기한 내 결제 시에만 다운로드 가능</span>";
           $("#pAlertMsg").html(text);

           layer_popup("#paymentDeadline");

           onSel = false;
       }
   });

}

function byteCheck(el){
    var codeByte = 0;
    for (var idx = 0; idx < el.length; idx++) {
        var oneChar = escape(el.charAt(idx));
        if ( oneChar.length == 1 ) {
            codeByte ++;
        } else if (oneChar.indexOf("%u") != -1) {
            codeByte += 2;
        } else if (oneChar.indexOf("%") != -1) {
            codeByte ++;
        }
    }
    return codeByte;
}

// MMS 미리보기
function fn_mmsMsgView() {
    var sendName   = $("#sendName1").val(); // 발송처
    var subject    = $("#subject").val();
    var contents   = htmlToString($("#contents").val());
    var cardImgUrl = $('[name="eGiftCardImage"]:checked').data("cardimgurl");

    if (checkValid("#sendName1", "발송처를 입력해 주세요.")) { IEfocusSet("#sendName1"); return; }
    if (cardImgUrl == undefined
            || cardImgUrl == "") {
        alert("e-Gift 카드 이미지를 선택해 주세요.");
        return;
    }
    if (checkValid("#subject", "제목을 입력해 주세요.")) { IEfocusSet("#subject"); return; }
    if (checkValid("#contents", "메시지를 입력해 주세요.")) { IEfocusSet("#contents"); return; }

    $("#mmsMsgView .title").text(subject);
    $("#mmsMsgView .cardImgUrl").attr("src", cardImgUrl);
    $("#mmsMsgView .msg_box p.msg > span").html(""+sendName + "님이 보내신 <br />스타벅스 카드 e-Gift가 도착하였습니다.");
    $("#mmsMsgView span.contents").html(contents.split("\n").join("<br />"));

    layer_popup("#mmsMsgView");
}

//Bulk 미리보기
function fn_bulkMsgView() {
    var sendName   = htmlToString($("#sendName2").val());
    var buyPrpsCntnt    = htmlToString($("#buyPrpsCntnt").val());
    var addCnt = $("#bulk_list > dl").size();

    if (checkValid("#sendName2", "발송처를 입력해 주세요.")) { IEfocusSet("#sendName2"); return; }
    if (checkValid("#buyPrpsCntnt", "구매목적을 입력해 주세요.")) { IEfocusSet("#buyPrpsCntnt"); return; }
    if (addCnt < 1) {
        alert("e-Gift 카드 이미지를 선택해 주세요.");
        return;
    }
    $("#bulkMsgView .popup_contents .card_view").empty();

    var htm = '';
    for (var i=0; i<addCnt; i++) {
        var price = Number($("#bulk_list input[name=cprice]").eq(i).val().replace(/[^0-9]/g,""));

        if (price < 1) { continue; }

        htm = '<li>';
        htm += '<strong class="title">'+htmlToString($("#bulk_list > dl > dt").eq(i).data("cardname"))+'</strong>';
        htm += '<div class="img">';
        htm += '<img class="cardImgUrl" src="'+$("#bulk_list > dl > dt").eq(i).data("cardimgurl")+'">';
        htm += '</div>';
        htm += '        <div class="msg_box">';
        htm += '            <p class="msg">';
        htm += '                <span>'+sendName+'</span>';
        htm += '                <span>'+buyPrpsCntnt+'</span>';
        htm += '            </p>';
        htm += '            <ul>';
        htm += '                <li>';
        htm += '                    <strong>* <span class="spacing">상 품 명</span> : </strong>';
        htm += '                    <span>스타벅스 카드 e-Gift ('+$.number(price)+'원 권)</span>';
        htm += '                </li>';
        htm += '                <li>';
        htm += '                    <strong>* <span>유효 기간</span> : </strong>';
        htm += '                    <span>최종 충전 또는 사용일로부터 5년</span>';
        htm += '                </li>';
        htm += '                <li>';
        htm += '                    <strong>* <span class="spacing">사 용 처</span> : </strong>';
        htm += '                    <span>스타벅스 매장 (일부매장 제외)</span>';
        htm += '                </li>';
        htm += '            </ul>';
        htm += '        </div>';
        htm += '        <div class="img_barcode">';
        htm += '            <p class="img"><span class="hid">바코드 미리보기</span></p>';
        htm += '            <div class="barcode_num">';
        htm += '                <span class="card">Card No. 0000-0000-0000-0000</span>';
        htm += '                <span class="pin">Pin No. 00000000</span>';
        htm += '            </div>';
        htm += '        </div>';
        htm += '        <ul class="info">';
        htm += '            <li>';
        htm += '                <span>재충전, 현금영수증, APP 등록 가능</span>';
        htm += '            </li>';
        htm += '            <li>';
        htm += '                <span>합계 잔액 기준 60% 이상 사용 시 환불 가능</span>';
        htm += '            </li>';
        htm += '            <li>';
        htm += '                <span>대표번호 : 1522-3232</span>';
        htm += '            </li>';
        htm += '        </ul>';
        htm += '    </li>';

        $("#bulkMsgView .popup_contents .card_view").append(htm);
    }

    if (htm == "") {
        alert("선택한 e-Gift Card의 금액과 수량을 입력해 주세요.");
    } else {
        layer_popup("#bulkMsgView");
    }
}

/*
 * sDate : 날짜
 * nNum : 증가감
 * type : 'y'=년, 'm'=월, 'd'=일
 * ex: dateAddDel('20170925', -7, 'd')
 *
 * */
function dateAddDel(sDate, nNum, type) {
    sDate = sDate.replace(/[^0-9]/g,"");
    var yy = parseInt(sDate.substr(0, 4), 10);
    var mm = parseInt(sDate.substr(4, 2), 10);
    var dd = parseInt(sDate.substr(6), 10);

    if (type == "d") {
        d = new Date(yy, mm-1, dd + nNum);
    } else if (type == "m") {
        d = new Date(yy, mm-1 + nNum, dd);
    } else if (type == "y") {
        d = new Date(yy + nNum, mm - 1, dd);
    }

    yy = d.getFullYear();
    mm = d.getMonth() + 1; mm = (mm < 10) ? '0' + mm : mm;
    dd = d.getDate(); dd = (dd < 10) ? '0' + dd : dd;

    return '' + yy + mm + dd;
}

/*
 * 공휴일 목록 조회(30일안의 공휴일)
 * dt : 시작일
 *
 * */
function holidayList(dt) {
    var rtnAry = new Array();
    var url = "/footer/co_sales/selectHolidayList.do";
    var objParam = {
             "startDate"       : dt
        };

    ___ajaxCall(url, objParam, false, "json", "post"
            ,function (_response) {
                if (_response.result_code == "SUCCESS") {
                    var hldyList = _response.data;
                    if (hldyList != null) {
                        for (var i=0; i<hldyList.length; i++) {
                            rtnAry[i] = hldyList[i].hldyDate;
                        }
                    }
                }
            }
    );

    return rtnAry;
}

/*
 * 입력값 복사
 * nm : 항목명
 *
 * */
function copyValue(nm) {
    if (nm == "sendName") {
        $("input[name="+nm+"1]").val($("#corpName").val());
        $("input[name="+nm+"2]").val($("#corpName").val());
    }
}

// 사업자 번호 체크
function chkBisNo(bisNo) {
    // 넘어온 값의 정수만 추츨하여 문자열의 배열로 만들고 10자리 숫자인지 확인합니다.
    if ((bisNo = (bisNo+'').match(/\d{1}/g)).length != 10) { return false; }

    // 합 / 체크키
    var sum = 0, key = [1, 3, 7, 1, 3, 7, 1, 3, 5];

    /*// 0 ~ 8 까지 9개의 숫자를 체크키와 곱하여 합에더합니다.
    for (var i = 0 ; i < 9 ; i++) {
        sum += (key[i] * Number(bisNo[i]));
    }

    // 각 8번배열의 값을 곱한 후 10으로 나누고 내림하여 기존 합에 더합니다.
    // 다시 10의 나머지를 구한후 그 값을 10에서 빼면 이것이 검증번호 이며 기존 검증번호와 비교하면됩니다.
    return (10 - ((sum + Math.floor(key[8] * Number(bisNo[8]) / 10)) % 10)) == Number(bisNo[9]);
     */


    for(var i=0;i<9;i++){
        sum += Math.floor(key[i] * Number(bisNo[i])) % 10; // 각 자리의 1의 자리 값들을 더한다.
    }
    sum += Math.floor((key[8] * Number(bisNo[8])) / 10); // 8번째 자리에 10의 자리의 값을 더한다.
    sum = sum + Number(bisNo[9]); // 9번째 자리의 값을 더한다.
    return sum % 10 == 0;
}

/* 팝업처리 */
function layer_popup(el){

    var $el = $(el);

    $el.css({
        'visibility':'visible',
        'opacity':'1'
    });

    // 접근성 추가 2019.11.21
    $el.attr('tabindex', 0).focus();

    cardView.reloadSlider();

    var $elWidth = ~~($el.children().outerWidth()),
        $elHeight = ~~($el.children().outerHeight()),
        docWidth = $(window).width(),
        docHeight = $(window).height();

    if ($elWidth <= docWidth) {
        $el.children().css({
            'margin-left': -$elWidth/2
        })
    } else {
        $el.children().css({
            'top': '0'
        });
    }

    if ($elHeight >= docHeight) {
        $el.children().css({
            'top':'0',
            'height':'100%',
            'margin-top':'0'
        });
    } else {
        $el.children().css({
            'margin-top': -$elHeight /2,
            'margin-left': -$elWidth/2
        })
    }

    $el.find('.btn_popup_close').click(function(){
        $el.css({
            'visibility':'hidden',
            'opacity':'0'
        });
        $('body').css({'overflow':''});
        return false;
    });

    $el.parents('body').css({'overflow':'hidden'});
}

// slider
var cardView;
cardView = $('.card_view').bxSlider({
    controls:true,
    auto:true,
    pager:true,
    pause:3000,
    nextSelector: '.slider_view_next',
    prevSelector: '.slider_view_prev',
    pagerSelector:'.slider_view_pager',
    infiniteLoop: false,
    hideControlOnEnd: true,
    preloadImages:'all'
});

// 대량 구매 카드 추가
function fn_cardAdd(mngseq, cardName, imgUrl, amt, csCnt) {
    if ($("div.eGift_select_info > .list > p.no_list").is(':visible') == true) {
        $("div.eGift_select_info > .list > p.no_list").hide();
        $("#bulk_list").show();
    }

    var dlCnt = $("#bulk_list > dl").size();
    if (dlCnt >= 10) {
        alert("카드 이미지는 최대 10개까지 추가 가능합니다.");
        return;
    }

    var htm = '';
    htm += '<dl>';
    htm += '<dt data-mngseq="'+mngseq+'" data-cardimgurl="'+imgUrl+'" data-cardname="'+htmlToString(cardName)+'">'+htmlToString(cardName)+'</dt>';
    htm += '<dd class="number">';
    htm += '<input type="text" name="cprice" id="cprice'+(dlCnt+1)+'" class="inp_txt" numberOnly title="가격입력" placeholder="가격" value="'+(amt != ""? $.number(amt): "")+'">';
    htm += '<label for="cprice'+(dlCnt+1)+'">원</label>';
    htm += '</dd>';
    htm += '<dd class="number">';
    htm += '<input type="text" name="csu" id="csu'+(dlCnt+1)+'" class="inp_txt" numberOnly title="수량입력" placeholder="수량" value="'+(csCnt != ""? $.number(csCnt): "")+'">';
    htm += '<label for="csu'+(dlCnt+1)+'">개</label>';
    htm += '</dd>';
    htm += '<dd class="price">';
    htm += '<span>0 원</span>';
    htm += '<a href="#none" onclick="javascript:fn_cardDel(this);" class="btn gray">삭제</a>';
    htm += '</dd>';
    htm += '</dl>';

    $("#bulk_list").append(htm);
}

// 대량 구매 합계
function fn_cardAmount(sIdx) {
    var s = $("#bulk_list > dl").size(); // 행

    var cList = new Array(); // 금액 중복체크 배열
    var sum = 0; // 합계 금액
    var tot = 0; // 총 수량
    var cprice = 0; // 가격
    var csu = 0; // 수량
    var mngseq = ""; // 카드이미지일련번호
    var i = 0;
    for (i=0; i<s; i++) {
        cprice = Number($("#bulk_list input[name=cprice]").eq(i).val().replace(/[^0-9]/g,""));
        csu = Number($("#bulk_list input[name=csu]").eq(i).val().replace(/[^0-9]/g,""));
        mngseq = $("#bulk_list > dl > dt").eq(i).data("mngseq");

        if (cprice > 0) {
        	if ((cprice % 5000) > 0) {
				alert("e-Gift Card의 금액은 5,000원부터 500,000원까지 5천원 단위로 입력 가능합니다.");
                $("#bulk_list input[name=cprice]").eq(i).val("");
                return;
            }
        	
            if (sIdx !== undefined && sIdx > -1 && sIdx != i) {
                var cmv = mngseq+":"+cprice;
                cList.push(cmv);
            }
        }
    }

    for (i=0; i<s; i++) {
        cprice = Number($("#bulk_list input[name=cprice]").eq(i).val().replace(/[^0-9]/g,""));
        csu = Number($("#bulk_list input[name=csu]").eq(i).val().replace(/[^0-9]/g,""));
        mngseq = $("#bulk_list > dl > dt").eq(i).data("mngseq");

        if (cprice > 0) {
            var cmv = mngseq+":"+cprice;
            if (cList.length > 0 && sIdx == i && cList.indexOf(cmv) > -1) { // 카드중복체크
                alert("동일한 e-Gift Card가 이미 있습니다.\n다른 금액을 입력해 주세요.");
                $("#bulk_list input[name=cprice]").eq(i).val("");
                return;
            }

            $("#bulk_list input[name=cprice]").eq(i).val($.number(cprice));
        }
        if (csu > 0) {
            tot += csu;

            if (tot > 4000) {
                alert("e-Gift Card의 대량 구매 신청 수량은 총 4000건을 초과할 수 없습니다.");
                $("#bulk_list input[name=csu]").eq(i).val("");
                return;
            }

            $("#bulk_list input[name=csu]").eq(i).val($.number(csu));
        }

        if (cprice > 0 && csu > 0) {
            sum += (cprice*csu);

            $("#bulk_list .price").eq(i).find("span").text($.number(cprice*csu)+" 원");
        } else {
            $("#bulk_list .price").eq(i).find("span").text("0 원");
        }
    }

    $("div.eGift_select_info > .list > p.total").html('<span>\n합계 금액<em>'+$.number(sum)+'</em>원\n</span>');
}

// 대량 구매 카드 삭제
function fn_cardDel(selRow) {
    if (confirm("선택한 e-Gift Card를 삭제하시겠습니까?")) {
        $(selRow).parent().parent().remove();

        fn_cardAmount(); // 합계 계산

        if ($("#bulk_list > dl").size() == 0) {
            $("div.eGift_select_info > .list > p.no_list").show();
            $("#bulk_list").hide();
        }
    }
}

//폼 전송
function fn_giftNotice(etyp) {
    if (etyp == null || etyp == "") {
        location.href = "/";
        return;
    }
    $("input[name=egiftType]").val(etyp); // 1: MMS 발송, 2: 대량 구매

    //1) MMS 발송  :: 점검일시(2021-07-15 18:00 ~ 19:00) 인가?
    if (etyp==1) {
        //
        startDt = new Date(2021, 6, 15, 18, 0, 0);
        nowDt   = new Date(getSrvTime());
        endDt   = new Date(2021, 6, 15, 19, 0, 0);
        
        if (startDt <= nowDt && nowDt <= endDt) {
            return alert('시스템 점검으로 인해 해당 시간동안 이용이 제한됩니다.\n'+
            			 '안정적인 서비스 제공을 위해 노력하겠습니다.\n'+
            			 '이용에 불편을 드려 죄송합니다.\n\n'+
            			 '서비스 중단 시간 : 18:00 - 19:00');
        }
    }
    
    // 신청자 정보 체크
    if (checkValid("#email1, #email2", "이메일을 정확하게 입력해 주세요.", "EMAIL")) { IEfocusSet("#email2"); return; }
    if (checkValid("#phone1, #phone2, #phone3", "연락처를 정확하게 입력해 주세요.", "HP")) { IEfocusSet("#phone3"); return; }
    if (checkValid("#corpName", "단체 또는 기업명을 입력해 주세요.")) { IEfocusSet("#corpName"); return; }

    var strNoEucKr = "";
    var nBytes = 0;
    var noStr = /[<>\'‘’]+/gi;
    var corpName = "";
    if ($("#corpName").val() != "") {
        corpName = $("#corpName").val();

        nBytes = byteCheck(corpName);
        if (nBytes > 20) {
            alert("단체 또는 기업명은 한글 10자, 영문 20자를 넘을 수 없습니다.");
            return;
        } else {
            strNoEucKr = checkEucKr(corpName);
            if (strNoEucKr != "" || noStr.test(corpName)) {
                alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                $("#corpName").focus();
                IEfocusSet("#corpName");
                return;
            }
        }
    }

    var bizNumber = ""+$("#bizNumber1").val()+$("#bizNumber2").val()+$("#bizNumber3").val();
    bizNumber = bizNumber.replace(/[^0-9]/g,"");
    if (bizNumber != "") {
        if (!chkBisNo(bizNumber)) {
            alert("사업자등록번호를 정확하게 입력해 주세요.");
            return;
        }
    } else {
        $("#bizNumber1").val("");
        $("#bizNumber2").val("");
        $("#bizNumber3").val("");
    }

    var sendName = ""; // 발송처
    if (etyp == 1) { // MMS 발송
        if (checkValid("#sendName1", "발송처를 입력해 주세요.")) { IEfocusSet("#sendName1"); return; }
        if ($("#sendName1").val() != "") {
            sendName = $("#sendName1").val();

            nBytes = byteCheck(sendName);
            if (nBytes > 20) {
                alert("발송처는 한글 10자, 영문 20자를 넘을 수 없습니다.");
                return;
            } else {
                strNoEucKr = checkEucKr(sendName);
                if (strNoEucKr != "" || noStr.test(sendName)) {
                    alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                    $("#sendName1").focus();
                    IEfocusSet("#sendName1");
                    return;
                }
            }
        }

        var rprsnPhnoUseYn = "N"; // 대표전화번호사용여부
        var sendTelNo = ""; // 발신자 전화번호
        if ($("input:checkbox[name='rprsnPhnoUseYn']").is(":checked") == true) { // 대표전화번호 사용
            if (($("input[name=reqNo]").val() == "" || m_rprsnPhnoUseYn != "Y") && $("#proofFile").val() == "") { // 신청일때 통신 서비스 이용증명원 등록 필수
                    alert("대표 전화번호 사용을 원하실 경우 통신서비스 이용증명원을 등록 해주세요.");
                    return;
            }
            if ($("#proofFile").val() != "") {
                // 이용증명원 확장자 체크
                var thumbext = $("#proofFile").val();
                thumbext = thumbext.slice(thumbext.lastIndexOf(".") + 1).toLowerCase();
                if(!/(jpg|jpeg|pdf)$/i.test(thumbext)) {
                    alert("통신서비스 이용증명원은 PDF 또는 이미지 파일(JPG, JPEG)만 업로드해 주세요.");
                    return;
                }

                var targetId = "ifrmUpload";
                $("#"+targetId).one("load", function () {
                    try {
                        var _response = jQuery.parseJSON( $(document.getElementById('ifrmUpload').contentWindow.document.body).text() );
                        if (_response.result_code) {
                            if (_response.result_code == "SUCCESS") {
                                var jsonData = _response.data;
                                saveParam.fileName     = encodeURIComponent(jsonData.attachFileName);
                                saveParam.fileRealName = encodeURIComponent(jsonData.attachFileRealName);

                                $('#file').attr('disabled', false);
                            } else { //실패시 파일 초기화
                                alert((_response.alert_msg != ""? _response.alert_msg: "처리에 실패하였습니다. 지속실패 시 starbucksb2b@starbucks.co.kr로 문의바랍니다."));
                                $('#file').attr('disabled', false);
                                return;
                            }
                        } else {
                            alert("처리에 실패하였습니다. 지속실패 시 starbucksb2b@starbucks.co.kr로 문의바랍니다.");
                            $('#file').attr('disabled', false);
                            return;
                        }
                    } catch (_err) {
                        alert("처리에 실패하였습니다. 지속실패 시 starbucksb2b@starbucks.co.kr로 문의바랍니다.");
                        $('#file').attr('disabled', false);
                        return;
                    }

                });

                $('#file').attr('disabled', true);
                $("#frmUpload")
                    .attr("action", "/interface/uploadPoofFile.do")
                    .attr("target", targetId)
                    .trigger("submit");

                $("#frmUpload").removeAttr("target");
            }

            rprsnPhnoUseYn = $("input:checkbox[name='rprsnPhnoUseYn']").val();
        } else { // 전화번호 인증
            $.phoneCertLib.certInfoTel = $.phoneCertLib.getCurrentPhoneCertInfo("T"); // 유선
            $.phoneCertLib.certInfo    = $.phoneCertLib.getCurrentPhoneCertInfo("H"); // 휴대폰

            var phoneNumber = $.phoneCertLib.getPhoneNumber();
            if (phoneNumber == $.phoneCertLib.certInfoTel.after_phone
                    && $.phoneCertLib.certInfoTel.isExpired) {
                alert("사용기간이 만료된 발신번호입니다.\n발신번호 재인증 후 다시 e-Gift를 구매해 주시기 바랍니다.");
                return;
            }

            if ($("input:radio[name=phoneNumType]:checked").val()=="T"
                    && $.phoneCertLib.certInfoTel.after_phone != phoneNumber) {
                alert("e-Gift 구매 신청시 발송 전화번호 인증을 받으셔야 합니다.\n인증이 불가한 경우 통신서비스 이용증명원을 등록해주세요.\n담당자 확인 후 발송번호를 입력해 드립니다.");
                return;
            } else if ($("input:radio[name=phoneNumType]:checked").val()=="H"
                    && $.phoneCertLib.certInfo.after_phone != phoneNumber) {
                alert("e-Gift 구매 신청시 발송 전화번호 인증을 받으셔야 합니다.\n인증이 불가한 경우 통신서비스 이용증명원을 등록해주세요.\n담당자 확인 후 발송번호를 입력해 드립니다.");
                return;
            }

            if ($("#sendTelNo1").val() == "") { // 일반전화
                sendTelNo = $("#sendTelNo2").val() + "-" + $("#sendTelNo3").val();
            } else { // 핸드폰
                sendTelNo = $("#sendTelNo1").val() + "-" + $("#sendTelNo2").val() + "-" + $("#sendTelNo3").val();
            }

        }

        if (checkValid("#pickBookDate1", "예약발송 희망일을 선택해 주세요.")) { IEfocusSet("#pickBookDate1"); return; }

        var hopeDt = $("#pickBookDate1").val();
        if (hopeDt == "") {
            hopeDt = getDateStringFormat();
        }

        var egiftImgMngSeq = $('input:radio[name="eGiftCardImage"]:checked').val()
        if (egiftImgMngSeq == undefined) {
            $(window).scrollTop( $('#egift_card_cate_wrap1').offset().top-200);
            alert("e-Gift 카드 이미지를 선택해 주세요.");
            return;
        }

        if (checkValid("#subject", "제목을 입력해 주세요.")) { IEfocusSet("#subject"); return; }
        var subject = $("#subject").val();

        nBytes = byteCheck(subject);
        if (nBytes > 40) {
            alert("제목은 한글 20자, 영문 40자를 넘을 수 없습니다.");
            return;
        } else {
            strNoEucKr = checkEucKr(subject);
            if (strNoEucKr != "" || noStr.test(subject)) {
                alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                $("#subject").focus();
                IEfocusSet("#subject");
                return;
            }
        }

        if (checkValid("#contents", "메시지를 입력해 주세요.")) { IEfocusSet("#contents"); return; }
        var contents = $("#contents").val();

        nBytes = byteCheck(contents);
        if (nBytes > 200) {
            alert("메시지는 한글 100자, 영문 200자를 넘을 수 없습니다.");
            return;
        } else {
            strNoEucKr = checkEucKr(contents);
            if (strNoEucKr != "" || noStr.test(contents)) {
                alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                $("#contents").focus();
                IEfocusSet("#contents");
                return;
            }
        }

        if (m_receiveDataInfo == "") {
            alert("연락처 엑셀 파일을 업로드해 주세요.");
            return;
        }
        if (!$('input:radio[name=payType1]').is(':checked')) {
            alert("결제방식을 선택해 주세요.");
            return;
        }
        var payType = $('input:radio[name=payType1]:checked').val();
        if ($("#remark1").val() != "") {
            var remark1 = $("#remark1").val();

            nBytes = byteCheck(remark1);
            if (nBytes > 2000) {
                alert("기타요청 사항은 한글 1,000자, 영문 2,000자를 넘을 수 없습니다.");
                return;
            } else {
                strNoEucKr = checkEucKr(remark1);
                if (strNoEucKr != "" || noStr.test(remark1)) {
                    alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                    $("#remark1").focus();
                    IEfocusSet("#remark1");
                    return;
                }
            }
        }

        var custTelNo = $("#phone1").val() + "-" + $("#phone2").val() + "-" + $("#phone3").val();
        var custEmail = $("#email1").val() + "@" + $("#email2").val();
        bizNumber = $("#bizNumber1").val() + "-" + $("#bizNumber2").val() + "-" + $("#bizNumber3").val();
        if (bizNumber == "--") {
            bizNumber = "";
        }

        var receiveDataCnt = m_receiveDataInfo.split("|").length;

        saveParam = {
                 "hopeDt"             : hopeDt
                ,"corpName"           : encodeURIComponent($("#corpName").val())
                ,"custTelNo"          : custTelNo
                ,"custEmail"          : custEmail
                ,"bizNumber"          : bizNumber
                ,"sendTelNo"          : sendTelNo
                ,"totalReqCnt"        : m_totalCnt
                ,"totalReqAmount"     : m_totalAmonut
                ,"subject"            : encodeURIComponent(subject)
                ,"contents"           : encodeURIComponent($("#contents").val())
                ,"remark"             : encodeURIComponent($("#remark1").val())
                ,"egiftImgMngSeq"     : egiftImgMngSeq
                ,"receiveDataInfo"    : encodeURIComponent(m_receiveDataInfo)
                ,"receiveDataCnt"     : receiveDataCnt
                ,"attachFileHpPath"   : m_attachFileHpPath
                ,"attachFileName"     : encodeURIComponent(m_attachFileName)
                ,"attachFileRealName" : encodeURIComponent(m_attachFileRealName)
                ,"payType"			  : payType
                ,"sendName"			  : encodeURIComponent(sendName)
                ,"fileHpPath"		  : m_fileHpPath
                ,"egiftType"          : etyp
                ,"rprsnPhnoUseYn"     : rprsnPhnoUseYn
        };

        layer_popup("#giftNoticeMms");

    } else { // 대량 구매
        if (checkValid("#sendName2", "발송처를 입력해 주세요.")) { IEfocusSet("#sendName2"); return; }
        if ($("#sendName2").val() != "") {
            sendName = $("#sendName2").val();

            nBytes = byteCheck(sendName);
            if (nBytes > 20) {
                alert("발송처는 한글 10자, 영문 20자를 넘을 수 없습니다.");
                return;
            } else {
                strNoEucKr = checkEucKr(sendName);
                if (strNoEucKr != "" || noStr.test(sendName)) {
                    alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                    $("#sendName2").focus();
                    IEfocusSet("#sendName2");
                    return;
                }
            }
        }

        if (checkValid("#buyPrpsCntnt", "구매목적을 입력해 주세요.")) { IEfocusSet("#buyPrpsCntnt"); return; }
        if ($("#buyPrpsCntnt").val() != "") {
            var buyPrpsCntnt = $("#buyPrpsCntnt").val();

            nBytes = byteCheck(buyPrpsCntnt);
            if (nBytes > 30) {
                alert("구매 목적은 공백 포함 한글 20자, 영문 30자를 넘을 수 없습니다.");
                return;
            } else {
                strNoEucKr = checkEucKr(buyPrpsCntnt);
                if (strNoEucKr != "" || noStr.test(buyPrpsCntnt)) {
                    alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                    $("#buyPrpsCntnt").focus();
                    IEfocusSet("#buyPrpsCntnt");
                    return;
                }
            }
        }
        if (checkValid("#pickBookDate2", "다운로드 희망일을 선택해 주세요.")) { IEfocusSet("#pickBookDate2"); return; }

        var addCnt = $("#bulk_list > dl").size();
        if (addCnt < 1) {
            $(window).scrollTop( $('#egift_card_cate_wrap2').offset().top-200);
            alert("e-Gift 카드 이미지를 선택해 주세요.");
            return;
        }
        // 초기화
        m_totalCnt    = 0;
        m_totalAmonut = 0;
        var bulkDataStr = "";
        var cList = new Array(); // 금액 중복체크 배열
        for (var i=0; i<addCnt; i++) {
            var price = Number($("#bulk_list input[name=cprice]").eq(i).val().replace(/[^0-9]/g,"")); // 금액
            var su = Number($("#bulk_list input[name=csu]").eq(i).val().replace(/[^0-9]/g,"")); // 수량
            var mngseq = $("#bulk_list > dl > dt").eq(i).data("mngseq"); // 카드이미지일련번호

            if (price < 1 || su < 1) {
                alert("선택한 e-Gift Card의 금액과 수량을 입력해 주세요.");
                return;
            }
            var cmv = mngseq+":"+price;
            if (cList.indexOf(cmv) > -1) {
                alert("동일한 e-Gift Card가 이미 있습니다.\n다른 금액을 입력해 주세요.");
                return;
            } else {
                cList.push(cmv);
            }
            //카드이미지일련번호:금액:수량|
            bulkDataStr += (cmv+":"+su+"|");

            m_totalCnt += su;
            m_totalAmonut += (price*su);
        }
        if(m_totalCnt > 4000){
            alert("e-Gift Card의 대량 구매 신청 수량은 총 4000건을 초과할 수 없습니다.");
            return;
        }
        if(m_totalAmonut < 500000) {
        	alert("합계금액 50만원 이상 부터 신청 가능합니다.");
        	return;
        }
        if (!$('input:radio[name=payType2]').is(':checked')) {
            alert("결제방식을 선택해 주세요.");
            return;
        }
        var payType = $('input:radio[name=payType2]:checked').val();
        if ($("#remark2").val() != "") {
            var remark2 = $("#remark2").val();

            nBytes = byteCheck(remark2);
            if (nBytes > 600) {
                alert("기타요청 사항은 한글 300자, 영문 600자를 넘을 수 없습니다.");
                return;
            } else {
                strNoEucKr = checkEucKr(remark2);
                if (strNoEucKr != "" || noStr.test(remark2)) {
                    alert("\"" + strNoEucKr + "\"는(은) 사용 할 수 없는 문자열 입니다.");
                    $("#remark2").focus();
                    IEfocusSet("#remark2");
                    return;
                }
            }
        }

        var hopeDt = $("#pickBookDate2").val();
        if (hopeDt == "") {
            hopeDt = getDateStringFormat();
        }
        var custTelNo = $("#phone1").val() + "-" + $("#phone2").val() + "-" + $("#phone3").val();
        var custEmail = $("#email1").val() + "@" + $("#email2").val();
        bizNumber = $("#bizNumber1").val() + "-" + $("#bizNumber2").val() + "-" + $("#bizNumber3").val();
        if (bizNumber == "--") {
            bizNumber = "";
        }

        bulkSaveParam = {
                "orderBsnscName"      : encodeURIComponent($("#corpName").val())
               ,"ordrPhno"            : custTelNo
               ,"ordrEmad"            : custEmail
               ,"bsnscBrno"           : bizNumber
               ,"sndrName"            : encodeURIComponent(sendName)
               ,"buyPrpsCntnt"        : encodeURIComponent($("#buyPrpsCntnt").val())
               ,"dwnldHopeDate"       : hopeDt
               ,"bulkDataInfo"        : encodeURIComponent(bulkDataStr)
               ,"totalOrderCscnt"     : m_totalCnt
               ,"totalOrderAmnt"      : m_totalAmonut
               ,"stlmnDvsnCode"       : payType
               ,"asfRqstCntnt"        : encodeURIComponent($("#remark2").val())
               ,"egiftType"		      : etyp
         };

        layer_popup("#giftNoticeBulk");
    }

}

// 구매신청확인 팝업
function fn_NotiConfirm(notiTyp) {
    if ($("input[name=egiftType]").val() == 1) { // MMS 발송
        $("#giftNoticeMms .btn_popup_close").click();
    } else { // 대량 구매
        $("#giftNoticeBulk .btn_popup_close").click();
    }

    layer_popup("#"+notiTyp);
}


/**
 * e-Gift MMS 발송 내역 상세 보기
 */
function eGiftOrderDetail() {
    var reqNo = $("input[name=reqNo]").val();

    if (reqNo != null && reqNo != "") {
        var objParam = {
            "reqNo" : reqNo,
            "pageType" : "P01"
        };

        ___ajaxCall("/interface/getMsrBizEgiftOrderDetail.do", objParam, false, "json", "post"
            ,function (_response) {
                if (_response.result_code == "SUCCESS") {
                    var jsonData = jQuery.parseJSON(_response.data);

                    m_selectedReqNo = reqNo;					// 주문번호

                    var arrCustEmail = jsonData.custEmail.split("@"); //신청자 이메일
                    $("#email1").val(arrCustEmail[0]);
                    $("#email2").val(arrCustEmail[1]);
                    billEmailInfo();

                    var arrCustTelNo = jsonData.custTelNo.split("-"); //신청자 연락처
                    $("#phone1").val(arrCustTelNo[0]);
                    $("#phone2").val(arrCustTelNo[1]);
                    $("#phone3").val(arrCustTelNo[2]);
                    $("#phone1").change();

                    $("#corpName").val(jsonData.corpName);		// 단체 또는 기업명

                    if (jsonData.bizNumber != "") {
                        var arrBizNumber = jsonData.bizNumber.split("-");
                        $("#bizNumber1").val(arrBizNumber[0]);
                        $("#bizNumber2").val(arrBizNumber[1]);
                        $("#bizNumber3").val(arrBizNumber[2]);		// 사업자등록번호
                    }

                    $("#sendName1").val(jsonData.sendName);		// 발송처

                    m_rprsnPhnoUseYn = jsonData.rprsnPhnoUseYn; // 대표전화번호 사용 여부
                    if (m_rprsnPhnoUseYn == "Y") { // 대표전화번호 사용
                        $("input:checkbox[name='rprsnPhnoUseYn']").prop("checked", true);

                    } else {
                        var arrSendTelNo = jsonData.sendTelNo.split("-");
                        if(arrSendTelNo.length == 2) { //지역번호 없는 유선전화인 경우
                            $("#sendTelNo1").val("");
                            $("#sendTelNo2").val(arrSendTelNo[0]);
                            $("#sendTelNo3").val(arrSendTelNo[1]);
                            //지역번호 없음 체크박스 삭제 2019-11-11 $("input:checkbox[name='telNumType']").prop("checked", true);
                        } else { //핸드폰번호 or 지역번호 있는 유선전화번호
                            $("#sendTelNo1").val(arrSendTelNo[0]);
                            $("#sendTelNo2").val(arrSendTelNo[1]);
                            $("#sendTelNo3").val(arrSendTelNo[2]);
                            //지역번호 없음 체크박스 삭제 2019-11-11 $("input:checkbox[name='telNumType']").prop("checked", false);
                        }

                        if($("#sendTelNo1").val().substr(0, 2) == "01") { //휴대폰 번호일 경우
                            $("input:radio[name=phoneNumType][value=H]").prop("checked",true);
                            //지역번호 없음 체크박스 삭제 2019-11-11 $("#checkTel").hide();
                        } else {
                            $("input:radio[name=phoneNumType][value=T]").prop("checked",true);
                            //지역번호 없음 체크박스 삭제 2019-11-11 $("#checkTel").show();
                        }

                        $("input:checkbox[name='rprsnPhnoUseYn']").prop("checked", false);
                    }
                    $.phoneCertLib.telCheckBox();

                    $("#pickBookDate1").val(getDateStringFormat(jsonData.hopeDt));	// 예약발송 희망일
                    $("#pickBookDate1").trigger("change");

                    // e-Gift 카드 이미지
                    $rdoCardImg = $('#egift_card_cate_wrap1 [name="eGiftCardImage"][value="' + jsonData.egiftImgMngSeq + '"]');
                    $rdoCardImg.prop("checked", true);

                    var nCateIdx = $("#egift_card_cate_wrap1 li > ol").index( $rdoCardImg.parent().parent().parent() );
                    $("#egift_card_cate_wrap1 li > button").eq(nCateIdx).trigger("click");

                    $("#subject").val(jsonData.subject);		// 제목
                    $("#contents").val(jsonData.contents);		// 메시지 입력

                    // 연락처 엑셀 데이터 출력
                    var receiveDataInfo = "";
                    var doubleDataCnt   = 0;
                    var singleDataCnt   = 0; // 구매신청정보 변경시 선물 받으실 분 건수가 잘못 노출되는 이슈로 인해 추가

                    for (var i = 0; i < jsonData.b2BEgiftOrderDetailList.length; i++) {
                        var row = jsonData.b2BEgiftOrderDetailList[i];
                        var hp  = row.recieverTelNo;

                        if (receiveDataInfo.indexOf(hp) > - 1) {
                            doubleDataCnt++;
                        }else {
                            singleDataCnt++;
                        }

                        if (receiveDataInfo != "") {
                            receiveDataInfo += "|";
                        }
                        receiveDataInfo += hp + ":" + row.amount;
                    }

                    var xlsData = {
                         receiveDataInfo    : receiveDataInfo
                        ,receiveDataCnt     : singleDataCnt
                        ,doubleDataCnt      : doubleDataCnt
                        ,attachFileHpPath   : jsonData.attachHpFilePath
                        ,attachFileName     : jsonData.attachFileName //구매신청정보 변경버튼 클릭시 파일명 변경으로 인해 저장 이슈 수정
                        ,attachFileNameOld  : jsonData.attachFileName
                        ,attachFileRealName : jsonData.attachFileRealName
                    };

                    showXlsData(xlsData);

                    $("input:radio[name=payType1][value="+jsonData.payType+"]").prop("checked",true).change(); // 결제방식
                    $("#remark1").val(jsonData.remark);												// 기타요청

                } else {
                    if (_response.error_msg == "") {
                        alert((_response.alert_msg != ""? _response.alert_msg: "처리에 실패하였습니다. 지속실패 시 starbucksb2b@starbucks.co.kr로 문의바랍니다."));
                    } else {
                        var arr = _response.error_msg.split("|");

                        if (arr.length == 2) {
                            alert(arr[1]);
                        } else {
                            alert(arr[0]);
                        }
                    }

                    location.href = "/footer/co_sales/sbcard_egift_list.do";
                }
            }
        );
    }
}

/**
 * e-Gift 대량 구매 내역 상세 보기
 */
function eGiftBulkOrderDetail() {
    var reqNo = $("input[name=reqNo]").val();

    if (reqNo != null && reqNo != "") {
        var objParam = {
            "begcrOrderNo" : reqNo,
            "pageType" : "P01"
        };

        ___ajaxCall("/interface/getMsrBizEgiftBulkOrderDetail.do", objParam, false, "json", "post"
            ,function (_response) {
                if (_response.result_code == "SUCCESS") {
                    var jsonData = jQuery.parseJSON(_response.data);

                    m_selectedReqNo = reqNo;					// 주문번호

                    var arrCustEmail = jsonData.ordrEmad.split("@"); //신청자 이메일
                    $("#email1").val(arrCustEmail[0]);
                    $("#email2").val(arrCustEmail[1]);
                    billEmailInfo();

                    var arrCustTelNo = jsonData.ordrPhno.split("-"); //신청자 연락처
                    $("#phone1").val(arrCustTelNo[0]);
                    $("#phone2").val(arrCustTelNo[1]);
                    $("#phone3").val(arrCustTelNo[2]);
                    $("#phone1").change();

                    $("#corpName").val(jsonData.orderBsnscName);		// 단체 또는 기업명

                    if (jsonData.bsnscBrno != "" && jsonData.bsnscBrno.length == 10) { // 사업자등록번호
                        $("#bizNumber1").val(jsonData.bsnscBrno.substring(0, 3));
                        $("#bizNumber2").val(jsonData.bsnscBrno.substring(3, 5));
                        $("#bizNumber3").val(jsonData.bsnscBrno.substring(5));
                    }

                    $("#sendName2").val(jsonData.sndrName);		// 발송처
                    $("#buyPrpsCntnt").val(jsonData.buyPrpsCntnt); // 구매 목적
                    $("#pickBookDate2").val(getDateStringFormat(jsonData.dwnldHopeDate));	// 다운로드 희망일

                    // 선택한 카드 출력
                    for (var i=0; i<jsonData.egiftBulkList.length; i++) {
                        var row = jsonData.egiftBulkList[i];

                        fn_cardAdd(row.begcrImgNo, row.begcrImgName, row.begcrImgFilePath, row.indvdAmnt, row.orderCscnt);
                    }
                    fn_cardAmount();

                    $("div.eGift_select_info > .list > p.no_list").hide();
                    $("#bulk_list").show();

                    $("input:radio[name=payType2][value="+jsonData.stlmnDvsnCode+"]").prop("checked",true).change(); // 결제방식
                    $("#remark2").val(jsonData.asfRqstCntnt);												// 기타요청

                } else {
                    if (_response.error_msg == "") {
                        alert((_response.alert_msg != ""? _response.alert_msg: "처리에 실패하였습니다. 지속실패 시 starbucksb2b@starbucks.co.kr로 문의바랍니다."));
                    } else {
                        var arr = _response.error_msg.split("|");

                        if (arr.length == 2) {
                            alert(arr[1]);
                        } else {
                            alert(arr[0]);
                        }
                    }

                    location.href = "/footer/co_sales/sbcard_egift_list.do";
                }
            }
        );
    }
}

/**
 * 입력값 maxlength 체크
 */
function maxLengthCheck(object, elementId) {
    var $object = $(object);
    if ($object.val().length >= $object.attr('maxlength')) {
        $object.val( object.value.slice(0, $object.attr('maxlength')) );
        if (!(typeof elementId === 'undefined')) {
            $('#'+elementId).focus();
        }
    }
}

/**
 * 결제방식의 이메일 안내
 */
function billEmailInfo() {
    if ($("#email_select option[value='"+$("#email2").val()+"']").length == 1) {
        $("#email_select").val($("#email2").val());
        setTimeout(function() { // 메일목록 세팅위해 지연
            $("#email_select").change();
        }, 10);
    } else {
        $("#email2").keyup();
    }

}

/**
 * html to text
 */
function htmlToString( target ) {
    var result = 	target.replace(/&/gi, "&amp;").replace(/#/gi, "&#35;").replace(/</gi, "&lt;").replace(/>/gi, "&gt;").replace(/\"/gi, "&quot;").replace(/\\/gi, '&#92;').replace(/%/gi, '&#37;');
        result = result.replace(/\(/gi, '&#40;').replace(/\)/gi, '&#41;').replace(/\+/gi, '&#43;').replace(/\//gi, '&#47;').replace(/\./gi, '&#46;').replace(/\'/gi, "&#39;");

    return result;
}
