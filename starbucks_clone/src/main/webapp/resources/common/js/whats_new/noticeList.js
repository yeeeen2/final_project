var noticeTmp = '\
	<tr>\
	    <td>\${$item.index()}</td>\
	    <td class="left"><a href="noticeView.do?seq=\${seq}">{{if webxpsrseqc != "" }}<span class="icon_pin">중요</span>{{/if}}\${title}</a></td>\
	    <td>\${reg_dt}</td>\
	    <td>\${hit}</td>\
	</tr>\
	';
$.template("noticeList", noticeTmp);
var noticeTmp2 = '\
	<tr>\
	<td></td>\
	<td class="left">데이터가 없습니다.</td>\
	<td></td>\
	<td></td>\
	</tr>\
	';
$.template("noticeList2", noticeTmp2);
var m_noticeTmp = '\
	<li class="first">\
	<ul>\
	<li><a href="noticeView.do?seq=\${seq}">{{if webxpsrseqc != "" }}<span class="icon_pin">중요</span>{{/if}}\${title}</a></li>\
	<li class="date">\${reg_dt}</li>\
	</ul>\
	</li>\
	';
$.template("m_noticeList", m_noticeTmp);
var noticeList = {
  getList: function (search, index) {
    var param = {
      pageIndex: index,
      searchKey: 1,
      searchKeyword: search,
      menu_cd: 'STB2701'
    }
    __ajaxCall("noticeListAjax.do", param, true, "JSON", "POST", function (data) {
      $("#notice").html("");
      $("#m_notice_list").html("");
      if (data.list.length > 0) {
        var key = -1;
        $.tmpl("noticeList", data.list, {
          index: function () {
            key += 1;
            return (data.cnt - (index - 1) * 10 - key);
          }
        }).appendTo("#notice");
        $.tmpl("m_noticeList", data.list, {
          index: function () {
            key += 1;
            return (data.cnt - (index - 1) * 10 - key);
          }
        }).appendTo("#m_notice_list");
        
        /* 20180305 개인정보처리방침 개정으로 공지사항 제목 글자 크기&색상 변경 - 하드코딩 by smno */
        var $obj; 
        $('#notice a').each(function(i){
        	$obj = $(this);
        	if ( $obj.attr('href') == 'noticeView.do?seq=3184' ) {
        		$obj.css('font-weight', 'bold').css('color', 'red');
        	}
        });
		$('#m_notice_list a').each(function(i){
        	$obj = $(this);
        	if ( $obj.attr('href') == 'noticeView.do?seq=3184' ) {
        		$obj.css('font-weight', 'bold').css('color', 'red');
        	}
        });
		/* end 20180305 개인정보처리방침 개정으로 공지사항 제목 글자 크기&색상 변경 - 하드코딩 by smno */
		
        
        ///////////////공지 사항 웹/ 모바일 일시 조치  20150922 ///////////////////////////
        if (myWindow < 640) {
          $(".notice_tb").hide();
        }
        ///////////////////////////////////////////
      } else {
        //$.tmpl( "noticeList2", data.list).appendTo("#m_notice_list");
      }
      $(".newBoardSearchBtn").unbind("click").on("click", function () {
        if (pattern_check("#sch_bar", "검색어를  입력하세요.", "허용되지 않은 문자입니다.", getPattern('BASIC3')) == false) { return; }
        var searchKeyword = $("#sch_bar").val();
        noticeList.getList(searchKeyword, 1);
      });
      //페이징
      $replyPage = index;
      $mycTotalCount = data.cnt;
      $mycPageSize = 10;
      var isPageCnt = parseInt(parseInt($mycTotalCount) / parseInt($mycPageSize));
      var isPageMod = parseInt(parseInt($mycTotalCount) % parseInt($mycPageSize));
      var isPageMax = (isPageMod > 0) ? (isPageCnt + 1) : (isPageCnt);
      if ($mycTotalCount > 0) { // 접근성_20171123 데이터가 없을 경우 페이징 표시 안함
        $(".news_pagination .pager").paging({
          current: $replyPage,
          max: isPageMax,
          length: 10,
          onclick: function (e, page) {
            var searchKeyword = $("#sch_bar").val();
            noticeList.getList(searchKeyword, page);
          }
        });
      } else {  // 접근성_20171123 데이터가 없을 경우 데이터 없음 표시
        $('#notice').append(noticeTmp2);
        $(".news_pagination .pager").html(''); // 접근성_20171212 추가
      }
    }, function (data) {
      alert("실패");
      return;
    });
  }
}
$(document).ready(function () {
  $(window).on("load", function () {
    //검색 엔터키
    $("#sch_bar").keyup(function (e) { if (e.which == 13) { $(".newBoardSearchBtn").click(); } });
    if ($search != "") {
      $("#sch_bar").val($search);
      setTimeout(function () {
        noticeList.getList($search, 1);
      }, 300);
    } else {
      noticeList.getList('', 1);
    }
  });
});