$(document).ready(function () {
	$(window).on("load", function(){
		
		console.log("faq");
		$.bbsInit.categoryList($vo);

		$.bbsInit.faqList();
	});
});

/** ajax 데이터 셋 구성**/

(function ($) {
    $.bbsInit = {
    	
    	init : function()
    	{
			$(".select_box select").on("change",function(){
				$(this).prev().html($(this).find("option:selected").text());
				}).prev().html(function() {
				return $(this).next().find("option:selected").text();
			});    	
			
			
			$(".sch_btn").on("click", function(){
				var sText =$("INPUT[name=msr_bar01]").val();
				$vo.searchKeyword = sText;
				$vo.pageIndex = 1;
				$.bbsInit.faqList($vo.cate, $vo.searchKeyword , $vo.pageIndex);
			});
			
			
		    $("#msr_bar01").unbind("keydown").keydown(function (e) {
		    	if (e.keyCode == 13) 
		    	{
		    		e.preventDefault();
					var sText =$("INPUT[name=msr_bar01]").val();
					$vo.searchKeyword = sText;
					$vo.pageIndex = 1;
					$.bbsInit.faqList($vo.cate, $vo.searchKeyword , $vo.pageIndex);		
		    	}
		    });			
			
    	}
    	,
        categoryList: function(vo) { //카테고리 데이터를 가져오는 부분
        	$.bbsInit.init();
        	if ( vo.menu_cd =="STB2703")
        	{
        		var html = "";
    				html += '<option value="${cate_cd}" {{if cate_cd == $item.setCateCd()}}selected{{/if}}  >${cate_nm}</option>';
    			$.template( "faqCategoryList", html );
        		
        		__ajaxCall("/customer/faqCodeAjax.do", {}, true, "json", "post",
        				function (_response) 
        				{
            				console.log(_response.list.length);
            				$( "#msr_faq_01").empty();
            				$( "#msr_faq_01").append("<option value=''>전체</opion>");
            				if ( _response.list.length > 0 )
            				{
            					var selected = "";
            					

            					jQuery.each( _response.list , function(x,y){
            						selected = "";
            						
            						if ( y.cate_cd != "F00")
            						{
            							
            							if ( y.cate_cd ==  vo.cate )
            							{
            								selected = "selected";
            							}
            							
                						var html = '<option value="'+y.cate_cd+'" '+selected+' >'+y.cate_nm+'</option>';
                						$("#msr_faq_01").append(html);
                						
            							
            						}
            					});
            					/**
                				$.tmpl( "faqCategoryList", _response.list, {
                					setCateCd : function(){
                						return vo.cate;
                					}
                				}).appendTo( "#msr_faq_01" );
                				**/
                				$( "#msr_faq_01").trigger("change");
                				
                				$init.category = _response.list;
                				$.bbsInit.info(_response.list);
                				
                				$( "#msr_faq_01").on("change", $.bbsInit.categorySelected );
                				
                				$.bbsInit.faqList();
            				}
        		        }
        				, 
        				function(_error)
        				{
        				}
            	);        		
        	}
        }
    	,
    	info : function(data) // 카테고리 선택시 페이지 단위에서 표기정보를 변경하는 함수
    	{
    		jQuery.each( data , function(x,y){
    			if (y.cate_cd == $vo.cate)
    			{
    				$(".subHeadMnu2").html(y.cate_nm);
    				$init.setCategoryCode = y.cate_nm;
    			}
    		});
    		$(".msr_t1").html();
			switch ( $vo.cate )
			{
				case "F17" , "F21", "F20" , "F23" , "F05" :
					$(".subHeadMnu1").html("STARBUCKS REWARDS"); //스타벅스 리워드 수정 
					break;
				default :
					$(".subHeadMnu1").html("STARBUCKS REWARDS"); //스타벅스 리워드 수정					
					break;
			};
    	}
    	,
    	categorySelected : function(e) //카테고리 SELECT BOX 이벤트 처리
    	{
    		var setCateCd = $(this).val();
    		$vo.cate 			= setCateCd;
    		$vo.pageIndex 		= 1;
    		$vo.searchKeyword 	= "";
    		$("INPUT[name=msr_bar01]").val("");

    		$.bbsInit.info($init.category );
    		$.bbsInit.faqList(setCateCd);
    	}
    	,
    	faqList : function(category, isSearchText, page)
    	{
    		$.bbsInit.init();
    		
    		var setSearchTxt = $vo.searchKeyword;
    		if ( !!(isSearchText) && isSearchText != "" ){	setSearchTxt = isSearchText; }
    		
    		var setPage = $vo.pageIndex;
    		if ( !!(page) && page != "" ){	setPage = page; }
    		
    		var setCategory = $vo.cate;
    		if ( !!(category) && category != "" ){	setCategory = category; }
    		

    		var param = {
    			"menu_cd" 			  : $vo.menu_cd		,
    			"cate" 	 			  : setCategory		,
    			"searchKeyword" 	  : setSearchTxt	,
    			"pageIndex"	  		  : setPage			
    		};
    		var cd_voc_cause_1;
    		var cd_voc_cause_2;

    		if( setCategory == 'F17') {
    			cd_voc_cause_1 = '028';
    			cd_voc_cause_2 = '028001';
    		} else if( setCategory == 'F05') {
    			cd_voc_cause_1 = '020';
				cd_voc_cause_2 = '020001';
    		} else if( setCategory == 'F22') {
				cd_voc_cause_1 = '019';
				cd_voc_cause_2 = '019003';
			}

			var param = {
				"CD_VOC_CAUSE_1" : cd_voc_cause_1,
				"CD_VOC_CAUSE_2" : cd_voc_cause_2,
				"KEYWORD" : setSearchTxt,
				"pageIndex" : setPage,
			};
			
    		var html ="";
    		
    		html += '<dt class="ajaxFaqList" data-index="${rnum}">';
    		html += '	<ul>';
    		//html += '		<li class="li1">${cate_nm}</li>';
    		html += '		<li class="li2">';
    		html += '			<dl>';
    		html += '				<dt class="en">Q</dt>';
    		html += '				<dd>${ds_QESTN}</dd>';
    		html += '			</dl>';
    		html += '		</li>';
    		html += '	</ul>';
    		html += '</dt>';
    		html += '<dd>';
    		html += '	<ul>';
    		//html += '		<li class="li1">&nbsp;</li>';
    		html += '		<li class="li2">';
    		html += '			<dl>';
    		html += '				<dt class="en">A</dt>';
    		html += '				<dd>';
    		html += "					{{html ds_ANSWER.replace(/\\n/g,'<br />')}}";
    		html += '				</dd>';
    		html += '			</dl>';
    		html += '		</li>';
    		html += '	</ul>';
    		html += '</dd>';   

    		$.template( "faqListBox", html );
    		
			//__ajaxCall("/aboutUs/faqList.do", param, true, "json", "post",
			__ajaxCall("/voc/getFaqList.do", param, true, "json", "post",
					function (_response) 
					{
	    				console.log(_response);
	    				$(".msr_faq_wrap").empty();
        				$.tmpl( "faqListBox", _response.list, {}).appendTo( ".msr_faq_wrap" );	
        				
        				$(".msr_faq_wrap p").each(function(){
        					$(this).addClass("tt");
        				});
        				$(".ajaxFaqList").on("click", $.bbsInit.listBoxSelected);
        				
        				$('.msr_faq_wrap > dt').eq(0).toggleClass("on");
        				$('.msr_faq_wrap > dd').eq(0).show();
        				
        				
        				var $page 			= $vo.pageIndex;
        				var $TotalCount 	= _response.totCnt;
        				var $PageSize 		= 10;
        				
        				console.log( " _response.total : " + _response.totCnt);
        				
        				var isPageCnt =  parseInt( parseInt($TotalCount) / parseInt($PageSize) );
        				var isPageMod =  parseInt( parseInt($TotalCount) % parseInt($PageSize) );
        				var isPageMax =  ( isPageMod > 0 ) ? (isPageCnt + 1 ) : (isPageCnt);
        				
        				$(".pager").paging({
        					current     :   $page		,
        					max		    :	isPageMax	,
        					length		: 	10																								,
        					onclick:function(e,page){
        						$vo.pageIndex = page;
        						$.bbsInit.faqList($vo.cate, $vo.searchKeyword, $vo.pageIndex);
        					}
        				});        				
			        }
					, 
					function(_error)
					{
					}
	    	);        		
    		
    	}
    	,
    	listBoxSelected : function(e) //해당 리스트를 클릭했을 경우에 처리
    	{
			$(this).toggleClass('on');
			$(this).next().slideToggle();    		
    	}    	
    };
})(jQuery);