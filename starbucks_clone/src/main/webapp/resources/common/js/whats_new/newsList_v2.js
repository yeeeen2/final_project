
var newTmp = '\
	<tr>\
	<td>\${$item.index()}</td>\
	<td><a href="javascript:newList.goView(\${seq});"><img src="\${imgDomain}/upload/news/\${img_nm}" alt="\${title}" /></a></td>\
	<td>\${$item.cate(cate)}</td>\
	<td class="left">\
	<a href= "javascript:newList.goView(\${seq});"><p class="tit">{{if webxpsrseqc != "" }}<span class="icon_pin">중요</span>{{/if}}\${title}</p>\
		<p class="con" style="display:none;">{{html $item.content()}}</p></a>\
	</td>\
	<td>\${news_dt}</td>\
	</tr>\
	'; // 접근성_20171123 이미지 alt 값 추가
$.template("newList", newTmp);
var newTmp3 = '\
	<tr>\
	<td></td>\
	<td></td>\
	<td></td>\
	<td class="left">데이터가 없습니다.\
	</td>\
	<td></td>\
	</tr>\
	'; // 접근성_20171123 데이터 없음 
var newTmp2 = '\
	 <li class="fli" >\
	<dl>\
		<dt><a href="javascript:newList.goView(\${seq});"><img src="\${imgDomain}/upload/news/\${img_nm}" alt="\${title}" /></a></dt>\
		<dd>\
			<p class="txt1">\${$item.cate(cate)}<br><span>\${news_dt}</span></p>\
			<p class="tit">{{if webxpsrseqc != "" }}<span class="icon_pin">중요</span>{{/if}}\${title}</p>\
			<p class="txt2" style="display:none;">{{html $item.content()}}</p>\
		</dd>\
	</dl>\
</li>\
	'; // 접근성_20171123 이미지 alt 값 추가
$.template("newList2", newTmp2);
var newTmp4 = '\
<li class="fli" >\
			<p class="tit">데이터가 없습니다.</p>\
</li>'; // 접근성_20171123 데이터 없음
var par = {
  cate: 'N01',
  pageIndex: 1,
  searchKeyword: '',
  searchKey: 3,
};
var newList = {
  goPage: function (index, cate, searchKeyword) {
    if (cate == "N00") {
      cate = "";
    }
    if (!(searchKeyword)) {
      searchKeyword = "";
    }
    var tmpIdx = par.pageIndex; // 접근성_20171123 페이징 전환 확인을 위한 기존 페이지 값 저장
    par.pageIndex = index;
    par.cate = cate;
    par.searchKeyword = searchKeyword;
    $vo.cate = cate;
    newList.getList(par);
    tmpIdx !== index && $('dt.on > a[role=button]').parent().next().attr("tabindex","0").focus(); // 접근성_20171123 페이징 전환 시 포커스 이동
  }, goCate: function (cate) {
    $("#sch_bar").val("");
    par.pageIndex = 1;
    par.cate = cate;
    par.searchKeyword = "";
    $vo.cate = cate;
    newList.getList(par);
  }, goSearch: function (search) {
    par.pageIndex = 1;
    par.cate = $vo.cate;
    par.searchKeyword = search;
    newList.getList(par);
  }, goSearchTmp: function (search) {
    par.pageIndex = 1;
    par.cate = "";
    par.seq = search;
    newList.getList(par);
  }, goView: function (seq) {
    $("#seq").val(seq);
    document.newsFrm.action = "/whats_new/newsView.do";
    document.newsFrm.submit();
  }, goView2: function (seq) {
    $("#seq").val(seq);
    document.newsFrm.action = "/app/whats_new/news_view.do";
    document.newsFrm.submit();
  }, getList: function (param) {
    __ajaxCall("/whats_new/newsListAjax.do", param, true, "JSON", "POST", function (data) {
      if (param.cate != "") {
        var isCateCode = param.cate;
      } else {
        var isCateCode = "N00";
      }
      $("#" + isCateCode).html("");
      if (data.list.length > 0) {
        var key = -1;
        $.tmpl("newList", data.list, {
          index: function () {
            key += 1;
            return (data.cnt - (param.pageIndex - 1) * 10 - key);
          }, cate: function (cate) {
            if (cate == 'N01') {
              return '상품출시';
            } else if (cate == 'N02') {
              return '스타벅스와 문화';
            } else if (cate == 'N03') {
              return '스타벅스 사회공헌';
            } else if (cate == 'N04') {
              return '스타벅스 카드출시';
            }
          }
          , content: function () {
            var text = this.data.content;
            var title = this.data.title;
            text = convert_ohy(text);
            var $html = $(text);
            $html.find("img").remove();
            var content = $html.text();
            content = strip_tags(content, "");
            if (content.length > 200) {
              return content.substring(0, 199) + "..";
            } else {
              return content;
            }
          }
        }).appendTo("#" + isCateCode);
        $("#m_" + isCateCode).html("");
        var key2 = -1;
        $.tmpl("newList2", data.list, {
          index: function () {
            key2 += 1;
            return (data.cnt - (param.pageIndex - 1) * 10 - key2);
          }, cate: function (cate) {
            if (cate == 'N01') {
              return '상품출시';
            } else if (cate == 'N02') {
              return '스타벅스와 문화';
            } else if (cate == 'N03') {
              return '스타벅스 사회공헌';
            } else if (cate == 'N04') {
              return '스타벅스 카드출시';
            }
          }
          , content: function () {
            var text = this.data.content;
            var title = this.data.title;
            text = convert_ohy(text);
            var $html = $(text);
            $html.find("img").remove();
            var content = $html.text();
            content = strip_tags(content, "");
            if (content.length > 200) {
              return content.substring(0, 199) + "..";
            }
            else {
              return content;
            }
          }
        }).appendTo("#m_" + isCateCode);
        for (var i = 0; i <= data.list.length - 1; i++) {
          if ((i + 1) % 2 == 0) {
            $(".m_news_list > li").eq(1).attr("class", "last");
          }
        }
        $('.news_content > dt > a.selected').parent().next().show();
        var cNum = $('.news_content > dt > a.selected').parent().next().find('table tbody').find('tr').length;
        $('.news_content > dd p.news_info span').text(cNum);
        $('.news_content > dt > a').bind('click', function () {
          $('.news_content > dt > a').removeClass('selected');
          $(this).addClass('selected');
          $('.news_content > dd').hide();
          $(this).parent().next().show();
          tNum = $(this).parent().next().find('table tbody').find('tr').length;
          $('.news_content > dd p.news_info span').text(tNum);
        });
      // } else { // 접근성_20171123 데이터 없을 경우 페이징 삭제를 위해 조건문 하단으로 이동
      //   //alert("없음");
      // }
        var status = param.cate;
        if ($(".news_tb").css("display") == "none") {
          //모바일 페이징

          $('.news_content > dt > a').css({display: 'none'});

          statusIdx = (!status) ? 0 : Number(status.replace('N', ''));
          $('.news_content > dt').eq(statusIdx).css({left:10, top:10});
          $('.news_content > dt > a').eq(statusIdx).show();
          $('.news_content > dt').eq(statusIdx).next().show();

          $replyPage2 = param.pageIndex;
          $mycTotalCount2 = data.cnt;
          $mycPageSize2 = 2;
          var isPageCnt2 = parseInt(parseInt($mycTotalCount2) / parseInt($mycPageSize2));
          var isPageMod2 = parseInt(parseInt($mycTotalCount2) % parseInt($mycPageSize2));
          var isPageMax2 = (isPageMod2 > 0) ? (isPageCnt2 + 1) : (isPageCnt2);
          $("#" + isCateCode + "Page").paging({
            current: $replyPage2,
            max: isPageMax2,
            length: 2,
            next: '<a href="javascript:void(0)" role="button"><img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/next.jpg"></a>',  // 접근성_20171123 추가
            prev: '<a href="javascript:void(0)" role="button"><img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/prev.jpg"></a>', // 접근성_20171123 추가
            format: '<a href="javascript:void(0)" role="button">{0}</a>', // 접근성_20171123 추가
            onclick : function (e, page) {
              newList.goPage(page, isCateCode);
            }
          });
        } else {
          if (status == 'N01') {
            $('.news_content > dt').eq(1).find('a').addClass('selected');
            $('.news_content > dt').eq(1).next().show();
          } else if (status == 'N02') {
            $('.news_content > dt').eq(2).find('a').addClass('selected');
            $('.news_content > dt').eq(2).next().show();
          } else if (status == 'N03') {
            $('.news_content > dt').eq(3).find('a').addClass('selected');
            $('.news_content > dt').eq(3).next().show();
          } else if (status == 'N04') {
            $('.news_content > dt').eq(4).find('a').addClass('selected');
            $('.news_content > dt').eq(4).next().show();
          } else {
            $('.news_content > dt').eq(0).find('a').addClass('selected');
            $('.news_content > dt').eq(0).next().show();
          }
          //페이징
          $replyPage = param.pageIndex;
          $mycTotalCount = data.cnt;
          $mycPageSize = 10;
          var isPageCnt = parseInt(parseInt($mycTotalCount) / parseInt($mycPageSize));
          var isPageMod = parseInt(parseInt($mycTotalCount) % parseInt($mycPageSize));
          var isPageMax = (isPageMod > 0) ? (isPageCnt + 1) : (isPageCnt);
          $("#" + isCateCode + "Page").paging({
            current: $replyPage,
            max: isPageMax,
            length: 10,
            next: '<a href="javascript:void(0)" role="button"><img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/next.jpg"></a>', // 접근성_20171123 추가
            prev: '<a href="javascript:void(0)" role="button"><img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/prev.jpg"></a>', // 접근성_20171123 추가
            format: '<a href="javascript:void(0)" role="button">{0}</a>', // 접근성_20171123 추가
            onclick: function (e, page) {
              newList.goPage(page, isCateCode);
            }
          });
        }
      } else { // 접근성_20171123 데이터 없음
        $("#" + isCateCode).html('').append(newTmp3);
        $("#m_" + isCateCode).html('').append(newTmp4);
        $(".pager").html(''); // 접근성_20171212 추가
        //alert("없음");
      }
    }, function (data) {
      //alert("실패");
      return;
    });
  }
}

function strip_tags(input, allowed) {
  allowed = (((allowed || "") + "").toLowerCase().match(/<[a-z][a-z0-9]*>/g) || []).join(''); // making sure the allowed arg is a string containing only tags in lowercase (<a><b><c>)
  var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
    commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
  return input.replace(commentsAndPhpTags, '').replace(tags, function ($0, $1) {
    return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
  });
}

$(document).ready(function () {
  /*
  $(window).on("load", function () {
    newList.goCate('');
    $(".panel").eq(0).show();
  }); */
  if ($vo2 != 0) {
    newList.goSearchTmp($vo2);
    $vo2 = 0;
  }

  $(".newBoardSearchBtn").on("click", function () {
    newList.goSearch($("#sch_bar").val());
  });
});