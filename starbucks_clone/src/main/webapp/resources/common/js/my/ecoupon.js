$(document).ready(function () {
   /*if (m_jsonRewardSummary == null) {
      getRewardSummary();
   }
   
   showMyCouponList();*/
   setEvents();

   /*// 20180827 사이렌오더 전용 쿠폰 테스트 진행 중 이상동작 수정 - 페이징 노출 이슈
   setTimeout(function() {
      setSearchDateByPeriod( $('input[name=pickPeriod]:checked').val() );
   }, 500);*/

   // 등록하기
   if (m_strType == "REG") {
      showRegPop();
   }
});



function stringToDate(str){
   if(str == null || str == ''){
      return null;
   }else{

      var strArr = str.split('-');

      var year = strArr[0];
      var month = strArr[1];
      var day = strArr[2];

      return new Date(year,month,day);
   }
}

function setEvents() {

   $('#pickDate01, #pickDate02').datepicker({
      dateFormat : 'yy-mm-dd',
        minDate: '-5Y',
        maxDate: new Date()
   }).attr('readOnly', true);

   //5년이내 선택금지
   $('input[name="pickDate"]').on('change',function(){
      var startDate = stringToDate($('input[name="pickDate"]').eq(0).val());
      var endDate = stringToDate($('input[name="pickDate"]').eq(1).val());

      if(startDate!='' && endDate!='' && startDate!=null && endDate!=null){
         var term = (endDate-startDate)/1000/60/60/24/365;
         if(term>5){
            alert('최근 5년 까지만 조회 가능 합니다.');
            $(this).val('');
            return;
         }
      }
   });

   // 사용 가능한 쿠폰 탭
   $("dl.ec_tab > dt > a").on("click", function(){
      var nIdx = $("dl.ec_tab > dt > a").index(this);

      if (nIdx == 0) {
         $("div.ec_step1").show();
         $("div.ec_step2").hide();
         $("div.ec_step3").hide();
         $("dl.ec_tab > dd").hide().eq(0).show();

         showMyCouponList();
      } else {
         $("div.ec_step1").hide();
         $("div.ec_step2").hide();
         $("div.ec_step3").show();
         $("dl.ec_tab > dd").hide().eq(1).show();

         showMyCouponHistoryList();
      }

      $("dl.ec_tab > dt > a").removeClass("selected").eq(nIdx).addClass("selected");
   });

   // e-쿠폰 등록 팝업 열기
   $("div.ec_info p.btn").on("click", showRegPop);

   // e-쿠폰 등록 팝업 닫기
   $("div.ecPop p.close, div.ecPop a.a2").on("click", closeInsertCouponPop);

   // e-쿠폰 등록 [쿠폰등록]
   $(".btns .a1").on("click", registCoupon);

   // [e-쿠폰 사용하기 or 선물하기]
   // [150903] 등록 직후 바로 사용 불가한 오류 수정
   $(document).on("click", ".btn_ecoupon_gift", function () {
      var couponNumber = $(this).data("couponnumber");

      switch (m_strType) {
         case "GIFT":
            goEcouponGift(couponNumber);
            break;

         case "REG":
         case "USE":
         default:
            showPopGiftCoupon(couponNumber);
            break;
      }
   });

   // e-쿠폰 사용하기 팝업 닫기
   $("div.ecPop2 .close a").on("click", hidePopPresentCoupon);

   // e-쿠폰 사용하기 [쿠폰 선물하기]
   $(".btn_gift_coupon").on("click", goEcouponGift);

   $(".btn_gift_recall").on("click", recallPresentCoupon);
   $(".btn_gift_message_resend").on("click", resendPresentMessage);

   // 상세보기 팝업 닫기
   $("div.ecPop3 p.close").on("click", closeDetailPop);

   // 기간별 조회 선택
   $("[name='pickPeriod']").on("click", function () {
      setSearchDateByPeriod($(this).val());

      showMyCouponHistoryList();
   });

   $(".btn_pick_date a").on("click", function () {
      showMyCouponHistoryList();
   });
}

/**
 * 기간별 선택 시 검색일자를 자동으로 셋팅하는 함수
 **/
function setSearchDateByPeriod(val) {
   var strStartDt = "";
   var strEndDt   = getDateStringFormat();

   var d = new Date();

   switch (val) {
      case "ALL":
         strStartDt = "";
         strEndDt   = "";
         break;

      case "1_WEEK":
         d.setDate(d.getDate() - 7);
         strStartDt = getDateStringFormat(d);
         break;

      case "1_MONTH":
         d.setMonth(d.getMonth() - 1);
         strStartDt = getDateStringFormat(d);
         break;

      case "3_MONTH":
         d.setMonth(d.getMonth() - 3);
         strStartDt = getDateStringFormat(d);
         break;

      case "1_YEAR":
         d.setFullYear(d.getFullYear() - 1);
         strStartDt = getDateStringFormat(d);
         break;
   }

   $("#pickDate01").val(strStartDt);
   $("#pickDate02").val(strEndDt);
}

function showRegPop(){
   var ww = $(window).scrollTop();
   $("div.ecPop").css('top', ww + "px");
   $("div.myDimm, div.ecPop").fadeIn();
}

function goEcouponGift(_couponNumber) {
   if (typeof(_couponNumber) == "object") {
      _couponNumber = $("#couponNumber").val();
   }

   var arrKeyAndValues = new Array({
       "KEY"   : "couponNumber"
      ,"VALUE" : _couponNumber
   });

   var strAction = "my/ecoupon_gift.do";

   goWithPostData(arrKeyAndValues, strAction);
}

function showMyCouponList(_nPage) {
   if (_nPage == undefined) {
      _nPage = 1;
   }

   var pagingSize = 6;

   var objParam = {
       "searchType" : "W"
      ,"pagingSize" : pagingSize
      ,"page"       : _nPage
      ,"validateYn" : "Y"
   };

   ___ajaxCall("interface/getMsrMyCouponList.do", objParam, false, "json", "post"
      ,function (_response) {
         if (_response.result_code == "SUCCESS") {
            var jsonData = jQuery.parseJSON(_response.data);

            // 사용 가능한 보유 쿠폰
            $(".totalCnt").text(jsonData.totalCnt + "장");

            $(".ecoupon_list_wrap ul").empty();

            $("#myCouponList").tmpl(jsonData.couponList, {
                getBtnCoupon : function () {
                  var btn = '<a href="javascript:void(0);" class="btn_ecoupon_gift" data-couponNumber="' + this.data.couponNumber + '">My 쿠폰 사용하기</a>';

                  if (m_strType == "GIFT") {
                     btn = '<a href="javascript:void(0);" class="btn_ecoupon_gift" data-couponNumber="' + this.data.couponNumber + '">My 쿠폰 선물하기</a>';

                     if (this.data.giftStatus != "0") {
                        btn = "";
                     }
                  }

                  return btn;
               }
               ,getRemainDays : function () {
                  var nNowDate = Number(getDateStringFormat(new Date(), "YYYYMMDD"));
                  var nStDate  = Number(this.data.validStartDt.replace(/-/gi, ""));
                  var nEdDate  = Number(this.data.validEndDt.replace(/-/gi, ""));

                  if (nStDate <= nNowDate && nNowDate < nEdDate) {
                     var strNowDate = getDateStringFormat();
                     var nDateDiff  = getDateDiff(strNowDate, this.data.validEndDt);

                     return '<div class="days_bg">' + Math.abs(nDateDiff) + '일 남음</div>';
                  } else if (nNowDate == nEdDate) {
                     return '<div class="today_bg">오늘까지</div>';
                  } else {
                     return "";
                  }
               }
            }).appendTo(".ecoupon_list_wrap ul");

            // paging
            $(".ec_step1 ul.pager").empty();

            var $replyPage     = jsonData.page;
            var $mycTotalCount = jsonData.totalCnt;
            var $mycPageSize   = pagingSize;

            var isPageCnt =  parseInt( parseInt($mycTotalCount) / parseInt($mycPageSize) );
            var isPageMod =  parseInt( parseInt($mycTotalCount) % parseInt($mycPageSize) );
            var isPageMax =  ( isPageMod > 0 ) ? (isPageCnt + 1 ) : (isPageCnt);

            $(".ec_step1 ul.pager").paging({
                current : $replyPage
               ,max     : isPageMax
               ,length  : 10
               ,onclick : function (e, page) {
                  showMyCouponList(page);
               }
            });
         }
      }
   );
}

// [e-쿠폰 선물하기] 버튼
function showPopGiftCoupon(_nCouponNumber) {
   if (_nCouponNumber == undefined) {
      return;
   }

   var objParam = {
       "couponNumber" : _nCouponNumber
   };

   ___ajaxCall("interface/getMsrMyCouponDetail.do", objParam, false, "json", "post"
      ,function (_response) {
         if (_response.result_code == "SUCCESS") {
            var jsonData = jQuery.parseJSON(_response.data);

            // 쿠폰내역
            var strCouponHistList = "";
            for (var i = 0; i < jsonData.couponHistList.length; i++) {
               var row = jsonData.couponHistList[i];

               var strHistoryCode = "";
               switch (row.historyCode) {
                  case "1": strHistoryCode = "선물";          break;
                  case "2": strHistoryCode = "선물 재전송";   break;
                  case "3": strHistoryCode = "선물 회수";      break;
                  case "4": strHistoryCode = "재선물";      break;
                  case "5": strHistoryCode = "선물 재회수";   break;
                  case "6": strHistoryCode = "등록";         break;
                  case "7": strHistoryCode = "등록 취소";      break;
               }

               strCouponHistList += row.issueDt + " " + strHistoryCode + "<br />";
            }

            // 상세정보
            var strCouponDetail = "";
            if (jsonData.couponDesc) {
               strCouponDetail = jsonData.couponDesc.replace(/\n/gi, "<br />");
            }
            /*
            if (jsonData.useNotice) {
               strCouponDetail += jsonData.useNotice.replace(/\n/gi, "<br />");
            }
            */
            
            // 팝업창 내용 출력
            var $pop = $(".ec_use");
               $pop.find(".couponName").text(jsonData.couponName);                           // 쿠폰명
               //20180731 사이렌오더 전용 쿠폰 여부 확인 by smno
               //사이렌오더 전용 쿠폰 여부에 따른 QR코드 가이드 노출 추가
               if (m_jsonRewardSummary.cardInfo.cardNumber == "" || (jsonData.sirenOrderOnlyYn != null && jsonData.sirenOrderOnlyYn == 'Y')) {
                  $pop.find("p.qr > img").hide();
                  $pop.find("p.qr_txt").hide();
                  $("#useGuide").hide();
               } else {
                  /* QR CODE */
                  if (!(typeof jsonData.couponQR === 'undefined')) {
                     var qrImgSrc = "my/qr.do?c="+jsonData.couponQR;
                     $pop.find("p.qr > img").attr("src", qrImgSrc);
                  }                  
                  
                  /* 쿠폰 QR코드 만료일시 표시 */
                  if (!(typeof jsonData.expireTime === 'undefined')) {
                     $pop.find("#timer").text(jsonData.expireTime);
                     $pop.find("p.qr_txt").show();
                  } else {
                     $pop.find("p.qr_txt").hide();
                  }
                  
                  $pop.find("p.qr > img").show();
                  $("#useGuide").show();
               }
               $pop.find(".validDt").text(jsonData.validStartDt + " ~ " + jsonData.validEndDt);   // 유효기간
               $pop.find(".couponHistList").html(strCouponHistList);                        // 쿠폰내역
               $pop.find(".couponDetail").html(strCouponDetail);                           // 상세정보
               $pop.find("#couponNumber").val(_nCouponNumber);

            // 선물하기 버튼 노출여부
            $(".btn_gift_coupon").hide();
            if (jsonData.btnGiftSendYn == "Y" && jsonData.giftStatus == "0") {
               $(".btn_gift_coupon").show();
            }
            
            var ww = $(window).scrollTop();
            $("div.ecPop2").css('top', ww + "px");
            $("div.myDimm, div.ecPop2").fadeIn();
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

function hidePopPresentCoupon() {
   $("div.myDimm, div.ecPop2").fadeOut();
}

function closeInsertCouponPop() {
   $("div.myDimm").hide();
   $("div.ecPop").hide();

   $("form").each(function() { // form reset
      if(this.id == "efrm1") this.reset();
   });

}

function registCoupon() {
   var giftSendCouponNum = "";
   var mobile = "";
   var couponType = ""; // 쿠폰종류

   if ($(".cpTab1").hasClass("cpTabOn")) {
      couponType = "P";
   } else if ($(".cpTab2").hasClass("cpTabOn")) {
      couponType = "M";
   } else if ($(".cpTab3").hasClass("cpTabOn")) {
      couponType = "S";
   } else {
      window.alert("쿠폰을 선택해주세요.");
      return;
   }

   var url = "";
   var objParam = {
      "formulaCode"       : m_formulaCode
   };

   if (couponType == "M") { // MMS 쿠폰
      // 쿠폰번호
      if ($.trim($("#coupon_num1").val()) == "" || $.trim($("#coupon_num2").val()) == "" || $.trim($("#coupon_num3").val()) == "") {
         window.alert("쿠폰번호를 입력해주세요.");
         return;
      }
      //0609 다정 휴대폰 번호 주석처리
      /*// 휴대폰 번호
      if ($.trim($("#myplane_date01").val()) == "" || $.trim($("#mobile_num2").val()) == "" || $.trim($("#mobile_num3").val()) == "") {
         window.alert("휴대폰 번호를 입력해주세요.");
         return;
      }*/

      objParam.giftSendCouponNum = $("#coupon_num1").val() + $("#coupon_num2").val() + $("#coupon_num3").val();
      // 0609 다정 휴대폰번호 objParam.mobile = $("#myplane_date01").val() + "-" + $("#mobile_num2").val() + "-" + $("#mobile_num3").val();
      objParam.type = couponType;
      url = "couponRegisterProc";
      /*url = "interface/getMsrMyCouponRegist.do";*/

   } else if (couponType == "P") { // 영수증 쿠폰
      // 쿠폰번호
      if ($.trim($("#rptcoupon_num1").val()) == "" || $.trim($("#rptcoupon_num2").val()) == "" ||
         $.trim($("#rptcoupon_num3").val()) == "" || $.trim($("#rptcoupon_num4").val()) == "") {
         window.alert("쿠폰번호를 입력해주세요.");
         return;
      }
      //0609 다정 e-쿠폰 등록코드 주석처리
      /*// e-쿠폰 등록코드
      if ($.trim($("#regiCode").val()) == "") {
         window.alert("e-쿠폰 등록코드를 입력해주세요.");
         return;
      }*/

      objParam.giftSendCouponNum = $("#rptcoupon_num1").val() + $("#rptcoupon_num2").val() + $("#rptcoupon_num3").val() + $("#rptcoupon_num4").val();
      objParam.mobile = $("#regiCode").val();
      objParam.type = couponType;
      url = "couponRegisterProc";
      /*url = "interface/getMsrMyCouponRegist.do";*/

   } else if (couponType == "S") { // Star 쿠폰

      if(!(m_jsonRewardSummary != null && m_jsonRewardSummary.msrMemberYn == "Y")) {
         alert("Star 쿠폰은 스타벅스 리워드 회원에 한해서만 \n등록 및 사용이 가능한 쿠폰입니다.");
         return;
      }

      var rewardCouponNum = $.trim($("#starcoupon_num1").val() + $("#starcoupon_num2").val() + $("#starcoupon_num3").val());
      var rewardCouponPinNum = $.trim($("#pinCode").val());
      // 쿠폰번호
      if (rewardCouponNum == "") {
         window.alert("쿠폰 번호를 입력해주세요.");
         return;
      }

      if (rewardCouponNum.length != 13) {
         window.alert("쿠폰 번호를 다시 확인해주세요.");
         return;
      }
      // 0609 다정 pin번호 주석처리
      // PIN 번호
      /*if (rewardCouponPinNum == "" || rewardCouponPinNum.length != 8) {
         window.alert("PIN 번호를 다시 확인해주세요.");
         return;
      }
      */
      var srTxt = "Star 쿠폰을 별로 전환하시겠습니까? \n등록 완료되어 별로 전환된 Star 쿠폰은 등록 취소 및 재사용 불가합니다.";
      if(m_jsonRewardSummary != null && m_jsonRewardSummary.msrMemberYn == "Y" && confirm(srTxt)) {
         objParam.rewardCouponNum = rewardCouponNum;
         objParam.rewardCouponPinNum = $("#pinCode").val();
         url = "couponRegisterProc";
         /*url = "interface/getMsrMyCouponRegist.do";*/
      } else {
         return;
      }
   }

   ___ajaxCall(url, objParam, false, "json", "post"
      ,function (_response) {
         if (_response.result_code == "SUCCESS") {
            alert("쿠폰이 등록 되었습니다.");

            if(couponType == "S") {
               location.href = "my/reward_star_history.do";
            }else {
               showMyCouponList();
               closeInsertCouponPop();
            }

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

function showMyCouponHistoryList(_nPage) {
   if (_nPage == undefined) {
      _nPage = 1;
   }

   var searchType    = "W";
   var startDt       = $("#pickDate01").val();
   var endDt         = $("#pickDate02").val();

   if (startDt != "" && endDt != "") {
      searchType = "P";
   }

   var pagingSize = 5;

   var objParam = {
       "searchType" : searchType
      ,"startDt"    : startDt
      ,"endDt"      : endDt
      ,"pagingSize" : pagingSize
      ,"page"       : _nPage
      ,"validateYn" : "N"
   };

   ___ajaxCall("interface/getMsrMyCouponList.do", objParam, false, "json", "post"
      ,function (_response) {
         if (_response.result_code == "SUCCESS") {
            var jsonData = jQuery.parseJSON(_response.data);

            $(".list_tb tbody").empty();
            $(".m_list_tb tbody").empty();

            // No
            var nSeq = jsonData.totalCnt - ((_nPage - 1) * pagingSize);

            // 웹 폼 출력
            $("#myCouponHistoryList").tmpl(jsonData.couponList, {
                getSeq : function () {
                  return nSeq--;
               }
               ,getStatus  : function () {
                  var strStatus = "";

                  switch (this.data.status) {
                     case "A":
                        strStatus = '<span class="en">' + this.data.issueDt + '</span><br />발행';

                        var dNow    = new Date();
                        var arrDate = this.data.validEndDt.split("-");
                        var dEndDt  = new Date(arrDate[0], (Number(arrDate[1]) - 1), arrDate[2], 23, 59, 59);

                        if (dNow > dEndDt) {
                           strStatus = "기간만료";
                        }
                        break;
                     case "U": strStatus = '<span class="en">' + this.data.useDate + '</span><br />사용';      break;
                      case "G": strStatus = '<span class="en">' + this.data.issueDt + '</span><br />선물';      break;
                      case "C": strStatus = '<span class="en">' + this.data.issueDt + '</span><br />관리자 회수';   break;
                  }

                  return strStatus;
               }
               ,getBtnDetail : function () {
                  if (this.data.expireYn == "Y") {
                     return '<p class="btn"><a href="javascript:showPopCouponDetail(\'' + this.data.couponNumber + '\');" class="detailView">상세보기</a></p>';
                  } else {
                     return "";
                  }
               }
            }).appendTo(".list_tb tbody");

            // 모바일 폼 출력
            $("#myCouponHistoryList_MOBILE").tmpl(jsonData.couponList, {
                getStatus  : function () {
                  var strStatus = "";

                  switch (this.data.status) {
                     case "A":
                        strStatus = '<span class="en">' + this.data.issueDt + '</span><br />발행';

                        var dNow    = new Date();
                        var arrDate = this.data.validEndDt.split("-");
                        var dEndDt  = new Date(arrDate[0], (Number(arrDate[1]) - 1), arrDate[2], 23, 59, 59);

                        if (dNow > dEndDt) {
                           strStatus = "기간만료";
                        }
                        break;
                     case "U": strStatus = '<span class="en">' + this.data.useDate + '</span><br />사용';      break;
                      case "G": strStatus = '<span class="en">' + this.data.issueDt + '</span><br />선물';      break;
                      case "C": strStatus = '<span class="en">' + this.data.issueDt + '</span><br />관리자 회수';   break;
                  }

                  return strStatus;
               }
            }).appendTo(".m_list_tb tbody");

            // paging
            $(".ec_tab ul.pager").empty();

            var $replyPage     = jsonData.page;
            var $mycTotalCount = jsonData.totalCnt;
            var $mycPageSize   = pagingSize;

            var isPageCnt =  parseInt( parseInt($mycTotalCount) / parseInt($mycPageSize) );
            var isPageMod =  parseInt( parseInt($mycTotalCount) % parseInt($mycPageSize) );
            var isPageMax =  ( isPageMod > 0 ) ? (isPageCnt + 1 ) : (isPageCnt);

            $(".ec_tab ul.pager").paging({
                current : $replyPage
               ,max     : isPageMax
               ,length  : 10
               ,onclick : function (e, page) {
                  showMyCouponHistoryList(page);
               }
            });
         }
      }
   );
}

/**
 * 사용 가능한 쿠폰 [상세보기] 버튼
 * @param _nCouponNumber
 */
function showPopCouponDetail(_nCouponNumber) {
   if (_nCouponNumber == undefined) {
      return;
   }

   var objParam = {
       "couponNumber" : _nCouponNumber
   };

   ___ajaxCall("interface/getMsrMyCouponDetail.do", objParam, false, "json", "post"
      ,function (_response) {
         if (_response.result_code == "SUCCESS") {
            var jsonData = jQuery.parseJSON(_response.data);

            // 쿠폰내역
            var strCouponHistList = "";
            for (var i = 0; i < jsonData.couponHistList.length; i++) {
               var row = jsonData.couponHistList[i];

               var strHistoryCode = "";
               switch (row.historyCode) {
                  case "1": strHistoryCode = "선물";          break;
                  case "2": strHistoryCode = "선물 재전송";   break;
                  case "3": strHistoryCode = "선물 회수";      break;
                  case "4": strHistoryCode = "재선물";      break;
                  case "5": strHistoryCode = "선물 재회수";   break;
                  case "6": strHistoryCode = "등록";         break;
                  case "7": strHistoryCode = "등록 취소";      break;
               }

               strCouponHistList += row.issueDt + " " + strHistoryCode + "<br />";
            }

            // e-쿠폰 선물하기 내용 출력
            var $detail = $(".myCoupon");
               $detail.find(".couponName").text(jsonData.couponName);                        // 쿠폰명
               $detail.find(".validDt").text(jsonData.validStartDt + " ~ " + jsonData.validEndDt);   // 유효기간
               $detail.find(".couponHistory").text(strCouponHistList);                        // 쿠폰내역
               $detail.find(".phone").text(jsonData.receiverMobileNo);                        // 쿠폰 받는 분
               $detail.find(".giftMmsContents").text(jsonData.giftMmsContents);               // 메시지
               
               //20180731 사이렌오더 전용 쿠폰 여부 확인 by smno
               //상세보기 쿠폰 이미지 URL 변경
               $('#myCouponImg').attr('src', jsonData.couponImgUrl);                        // 쿠폰이미지
               $(".btn_gift_recall").attr("data-couponnumber", _nCouponNumber);
               $(".btn_gift_message_resend").attr("data-couponnumber", _nCouponNumber);

            $detail.find(".useNotice").empty();
            var arrNotice = jsonData.useNotice.split("\n");                                 // 유의사항
            for (var i = 0; i < arrNotice.length; i++) {
               $detail.find(".useNotice").append('<li>' + arrNotice[i] + '</li>');
            }

            // 선물 회수 버튼 노출여부
            if (jsonData.btnGiftRecallYn == "Y") {
               $(".btn_gift_recall").show();
            }

            // 선물 MMS 재발송 버튼 노출여부
            if (jsonData.btnGiftMessageResendYn == "Y") {
               $(".btn_gift_message_resend").show();
            }

            var ww = $(window).scrollTop();
            $("div.ecPop3").css('top', ww + "px");
            $("div.myDimm").show();
            $("div.ecPop3").fadeIn();
         } else {
            alert("쿠폰 정보 조회 중 오류가 발생 하였습니다.");
         }
      }
      ,function (_error) {
         alert("쿠폰 정보 조회 중 오류가 발생 하였습니다.");
      }
   );
}

function closeDetailPop() {
   $("div.myDimm").hide();
   $("div.ecPop3").hide();
}

function recallPresentCoupon() {
   if (confirm("선물 회수는 1회만 가능합니다.\n선물 회수 하시겠습니까?")) {
      var objParam = {
          "couponNumber" : $(this).data("couponnumber")
         ,"formulaCode"  : m_formulaCode
      };

      ___ajaxCall("interface/setMsrPresentCouponRecall.do", objParam, false, "json", "post"
         ,function (_response) {
            if (_response.result_code == "SUCCESS") {
               alert("선물이 회수 되었습니다.");

               showMyCouponHistoryList();
               closeDetailPop();
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

function resendPresentMessage() {
   if (confirm("재전송은 1회만 가능합니다.\n재전송 하시겠습니까?")) {
      var objParam = {
          "couponNumber" : $(this).data("couponnumber")
         ,"formulaCode"  : m_formulaCode
      };

      ___ajaxCall("interface/setMsrPresentMessageResend.do", objParam, false, "json", "post"
         ,function (_response) {
            if (_response.result_code == "SUCCESS") {
               alert("쿠폰이 재전송 되었습니다.");

               showMyCouponHistoryList();
               closeDetailPop();
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