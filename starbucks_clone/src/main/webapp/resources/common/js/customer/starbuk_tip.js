
	
$(document).ready(function(){
	
	//$("#csi_websiteTip_bar01").keyup(function(e){if(e.which == 13){$(".sch_btn").click();}});	
	
	$.starbuk_tip = {
			tmplete1 : function(){
				
				var tmplete = "";
			
				tmplete = tmplete + '<li>';
				tmplete = tmplete + 	'<a href="/util/website_tip_view.do?seq=${$item.seq()}&status='+status+'">';
				tmplete = tmplete + 		'<dl>';
				tmplete = tmplete + 			'<dt><img alt="" src="/upload/tip/${$item.img_nm()}"></dt>';
				tmplete = tmplete +			 '<dd>';
				tmplete = tmplete + 				'<p class="title">${$item.title()}</p>';
				tmplete = tmplete + 				'<p class="text">{{html $item.content()}}</p>';
				tmplete = tmplete +			 '</dd>';
				tmplete = tmplete + 		'</dl>';
				tmplete = tmplete + 	'</a>';
				tmplete = tmplete + '</li>';
				
				$.template( "stabuck_tipTmp", tmplete );
			}
		,getList : function(page, menu_cd, status,  searchKeyword){
			var param = {
					menu_cd : menu_cd,
					searchKeyword : searchKeyword,
					pageIndex : page,
					searchKey : "3"
			};

			__ajaxCall("/customer/getListAjax.do", param, true, "json", "post",
				function(data){
					console.log(data);
					
			
					$( "#"+status+"_tipList").html("");
					$("#listCnt").html("<span>총 "+data.cnt+" 개 이용안내</span>")
					$.tmpl( "stabuck_tipTmp", data.list , {
						
						img_nm : function(){
							var img_nm = this.data.img_nm;
							return img_nm;
						}
						,title : function(){
							var title = this.data.title;
							return title;
						}
						,content : function(){
							
							var text = this.data.content;
							var title = this.data.title;
							
							text = convert_ohy(text);
						
							var $html = $(text);
							  	  $html.find("img").remove();

							var content  = $html.text();
								  content = strip_tags(content,"");

						    if( content.length > 35 )
							{
								return content.substring(0, 35) + "..";
							}
							else
							{
								return content;
							}
						}
						,seq : function(){
							var seq = this.data.seq;
							return seq;
						}
						,hit : function(){
							var hit = this.data.hit;
							return hit;
						}
						,reg_dt : function(){
							var reg_dt = this.data.reg_dt;
							return reg_dt;
						}
					}).appendTo("#"+status+"_tipList");		
					
					//페이징 처리
					var $page = page;
					var $TotalCount = data.cnt;
					var $PageSize = 10;

					var isPageCnt = parseInt(parseInt($TotalCount)/ parseInt($PageSize));
					var isPageMod = parseInt(parseInt($TotalCount)	% parseInt($PageSize));
					var isPageMax = (isPageMod > 0) ? (isPageCnt + 1): (isPageCnt);

					$(".pager").paging({
						
						current : $page,
						max : isPageMax,
						length : 10,
						onclick : function(e, page) {
							page = page;
							$.starbuk_tip.getList(page, menu_cd, status,  searchKeyword);
						}
					});
					
					if(status == "web"){
					  $("#csi_websiteTip_bar01").unbind("keydown").keydown(function (e) {
					    	if (e.keyCode == 13) 
					    	{
					    			searchBtn('STB2709', 'web');
					    	}
					    });
					}else{
						$("#csi_appTip_bar01").unbind("keydown").keydown(function (e) {
					    	if (e.keyCode == 13) 
					    	{
					    			searchBtn('STB2708', 'app');
					    	}
					    });
					}
					
				}
				,function(data){
				
				});
			
			
			
			
		}
	}
	
	$.starbuk_tip.tmplete1();
	
	$.starbuk_tip.getList(page,  menu_cd, status,  searchKeyword);
});

function strip_tags (input, allowed) {
    allowed = (((allowed || "") + "").toLowerCase().match(/<[a-z][a-z0-9]*>/g) || []).join(''); // making sure the allowed arg is a string containing only tags in lowercase (<a><b><c>)
    var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
        commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
    return input.replace(commentsAndPhpTags, '').replace(tags, function ($0, $1) {        return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
    });
}

function searchBtn(menu_cd, status){
		page = 1;

	 if(status == 'app'){searchKeyword =$("#csi_appTip_bar01").val();}
		else{
			searchKeyword =$("#csi_websiteTip_bar01").val();
			
		}
		
		$.starbuk_tip.getList(page, menu_cd, status,  searchKeyword);
}

//$.loginLib.showLayerLogin() 로그인 팝업띄우기!!
