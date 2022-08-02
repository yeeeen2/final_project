/** 스토어 검색 **/

$(document).ready(function(){
	$(".whatsLsmSearch").on("click", function(){
		var deny_char = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\s!@#?$%&*().\r\n,\*]+$/
		if(pattern_check("#store_search" ,   "매장명을 입력하세요." , "해당 영역은 한글/숫자/영문, 특수기호  !,@,#,?,$,%,&,*,(,) 입력 가능합니다.", deny_char )==false){return;}
		
		$search.in_evt_code 	= "";
		$search.search_sido 	= "";
		$search.search_gugun 	= "";
		$search.search_store 	= $("#store_search").val();
		$lsmPage = 1;
		$.whatsLsm.getLsm($search);
	});
	
	
	   $("#store_search").unbind("keydown").keydown(function (e) {
		    var deny_char = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\s!@#?$%&*().\r\n,\*]+$/
	    	if (e.keyCode == 13) 
	    	{
	    		e.preventDefault();
	    		if(pattern_check("#store_search" ,   "매장명을 입력하세요." , "해당 영역은 한글/숫자/영문, 특수기호  !,@,#,?,$,%,&,*,(,) 입력 가능합니다.", deny_char )==false){return;}
	    		
	    		$search.in_evt_code 	= "";
	    		$search.search_sido 	= "";
	    		$search.search_gugun 	= "";
	    		$search.search_store 	= $("#store_search").val();
	    		$lsmPage = 1;
	    		$.whatsLsm.getLsm($search);

				
				$(this).next().focus();
				
				
	    	}
	    });	
	
	
	
	$(".whatsLsmSearchSido").on("click", function(){
		//if( empty_check("#select_a", "시/도를 선택해 주세요.", true, true, "")==false){return;}

		$search.in_evt_code 	= "";
		$search.search_sido 	= $("#select_a").val();
		$search.search_gugun 	= $("#select_b").val();
		$search.search_store 	= "";
		$lsmPage = 1;
		$.whatsLsm.getLsm($search);
	});
	
	
    $('section.store_event_wrap h3 a').bind('click', function(){
        $('section.store_event_wrap h3 a').removeClass('on');
        $(this).addClass('on');
        $('section.store_event_wrap article').removeClass('on');
        $(this).addClass('on');
        
        
        var cssStr = $(this).parent().attr("class");
        if (cssStr == "store_event_all")
        {
        	$search.in_evt_code 	= "";
    		$search.search_sido 	= "";
    		$search.search_gugun 	= "";
    		$search.search_store 	= "";
    		$search.search_date 	= "0";
        }

        if (cssStr == "store_event_store")
        {
        	$search.in_evt_code 	= "";
    		$search.search_sido 	= "";
    		$search.search_gugun 	= "";
    		$search.search_store 	= "";
    		$search.search_date 	= "1";        	
        }
        
        if (cssStr == "store_event_card")
        {
        	$search.in_evt_code 	= "";
    		$search.search_sido 	= "";
    		$search.search_gugun 	= "";
    		$search.search_store 	= "";
    		$search.search_date 	= "2";        	
        }
        

        $("#select_a option:eq(0)").attr("selected", "selected");
        $("#select_a").trigger("change");
        
 
		$("#select_b").empty();
		$("#select_b").append('<option value="">구/군</option>');
		$("#select_b").trigger("change");
		
		$lsmPage = 1;
        $.whatsLsm.getLsm($search);
        return false;
    });
    
    
    
	$.whatsLsm.init();
});


(function ($) {
    $.whatsLsm = {
    	parameter : function()
    	{
    		
    	}
    	,
    	init : function(quick)
    	{
    		$.whatsLsm.setSido();
    		if ( $in_evt_code !=  "" ) 
    		{
        		$search.in_evt_code 	= $in_evt_code;
    		}
    		else
    		{
    			if ( $tab != "" )
    			{
        			$search.in_evt_code 	= "";
            		$search.search_sido 	= "";
            		$search.search_gugun 	= "";
            		$search.search_store 	= "";
            		$search.search_date 	= "1";  
            		
                    $('section.store_event_wrap h3 a').removeClass('on');
                    $('section.store_event_wrap h3 a').eq(1).addClass('on');
                    $('section.store_event_wrap article').removeClass('on');
                    $('section.store_event_wrap article').eq(1).addClass('on');
                    
                    var ww = $(window).width();
                    if($tab == '1' && ww <= 640){
	                    $('section.store_event_wrap h3.store_event_all').css({left:10, top:35});
						$('section.store_event_wrap h3.store_event_store').css({left:10, top:10});
						$('section.store_event_wrap h3.store_event_card').css({left:10, top:60});
                    }
                                		
    			}
    			else
    			{
        			$search.in_evt_code 	= "";
            		$search.search_sido 	= "";
            		$search.search_gugun 	= "";
            		$search.search_store 	= "";
            		$search.search_date 	= "0";    				
    			}
   
    		}
    		$.whatsLsm.getLsm($search);
    	}
    	,
    	getLsm:function(opt)
    	{
    		opt.page = $lsmPage;
    		__ajaxCall("/whats_new/getLsmEvent.do", opt, true, "json", "post",
    				function(data)
    				{
    					$("#lsmBox").html("");
    					
    					console.log(data);
    					
    					$(".t_total_all").find("span").html(data.recordCount);
    					
    					
    					if( data.list.length > 0)
    					{
    						
    						$("#lsmEventListBox").tmpl(data.list,{
    							getStoreName : function()
    							{
    								
    								var store_name  = this.data.s_name_all;
    								var store_bizcd = this.data.s_bizcd_all;
    								
    								if ( store_name.indexOf("@") > -1 )
    								{
    									store_name = store_name.replace(/@/gi, " , ");
    									return store_name;
    								}
    								else
    								{
    									return '<a href="javascript:void(0)" class="getStoreMyView" data-store="'+store_bizcd+'">'+store_name+'</a>';
    								}
    								
    							}
    							,
    							getEvtDesc : function()
    							{
    								var text = this.data.evt_desc;
    								if ( text == null)
    								{
    									text = "";
    								}
    								var re1 = /\r\n/g;
    								var re2 = /\r/g;
    								var re3 = /\n/g;
    								
    								text = text.replace(re1, "<br />");
    								text = text.replace(re2, "<br />");
    								text = text.replace(re3, "<br />");
    								
    								return text;
    							}
    							,
    							getEvtMemo : function()
    							{
    								var text = this.data.evt_memo;
    								if ( text == null)
    								{
    									text = "";
    								}
									var re1 = /\r\n/g;
									var re2 = /\r/g;
									var re3 = /\n/g;
									
									text = text.replace(re1, "<br />");
									text = text.replace(re2, "<br />");
									text = text.replace(re3, "<br />");

    								return text;
    							}    							
    							,
    							getStoreImage : function()
    							{
    								var image = this.data.s_image;
    								return $config.imgUploadPath + "/" + image;    								
    							}
    							,
    							getClass : function()
    							{
    								var newIcon = this.data.s_new;
    								var showIcon = this.data.s_show;
    								
    								var classStr = "";
    								
    								if ( showIcon == "N")
    								{
    									classStr = "last end";
    								}
    								else
    								{
    									if (newIcon == "Y")
    									{
    										classStr = "store_new on";
    									}
    									else
    									{
    										classStr = "on";
    									}
    								}
    								
    								return classStr;
    								
    							}
    						
    						}).appendTo("#lsmBox");
    						
    						$(".getStoreMyView").unbind("click").on("click", function(){
    							var index = $(this).data("store");
    							getStoreDetail(index);
    						});
    						
    						
            				var isPageCnt =  parseInt( parseInt(data.recordCount) / parseInt(data.pagesize) );
            				var isPageMod =  parseInt( parseInt(data.recordCount) % parseInt(data.pagesize) );
            				var isPageMax =  ( isPageMod > 0 ) ? (isPageCnt + 1 ) : (isPageCnt);
            				
            				console.log(data.recordcount);
            				console.log(data.pagesize);
            				console.log(isPageMax);
            				
            				
            				
            				$(".pager").paging({
            					current     :   $lsmPage		,
            					max		    :	isPageMax		,
            					length		: 	10				,
            					onclick:function(e,page){
            						$lsmPage = page;
            						$.whatsLsm.getLsm($search);
            					}
            				});      						
    						
    					}
    					else
    					{
    						$(".t_total_all").find("span").html("0");
    						$lsmPage = 1
            				$(".pager").paging({
            					current     :   $lsmPage		,
            					max		    :	0				,
            					length		: 	10				,
            					onclick:function(e,page){}
            				});      						
    					}
    					
    					
    				}
    				,
    				function(err)
    				{
    					
    				}
    		);
    				
    						
    		
    	}
    	,
    	setSido : function()
    	{
    		var option_sido 	= '<option value="${sido_cd}">${sido_nm}</option>';
    		$.template( "sidoUiCtrl", option_sido );
    		
    		__ajaxCall("/store/getSidoList.do", {}, true, "json", "post",
    					function(data)
    					{
    						$("#select_a").append('<option value="">시/도</option>');
    						if ( data.list.length > 0)
    						{
    							$.tmpl( "sidoUiCtrl" , data.list, {}).appendTo( "#select_a" );
    						}
    						$("#select_a").trigger("change");
    						$("#select_a").on("change", $.whatsLsm.sidoEvt );
    					}
    					,
    					function()
    					{
    						
    					}
    		);
    		
    	}
    	,
    	sidoEvt : function(e)
    	{
    		var thisVal = $(this).val();
    		if (thisVal == "")
    		{
				$("#select_b").empty();
				$("#select_b").append('<option value="">구/군</option>');
    		}
    		else
    		{
        		var option_gugun 	= '<option value="${gugun_cd}">${gugun_nm}</option>';
        		$.template( "gugunUiCtrl", option_gugun );
        		
        		__ajaxCall("/store/getGugunList.do",{"sido_cd":thisVal}, true, "json", "post",
        					function(data)
        					{
        						$("#select_b").empty();
        						$("#select_b").append('<option value="">구/군</option>');
        						if ( data.list.length > 0)
        						{
        							$.tmpl( "gugunUiCtrl" , data.list, {}).appendTo( "#select_b" );
        						}
        						$("#select_b").trigger("change");
        						//$("#select_a").on("change", $.whatsLsm.sidoEvt );
        					}
        					,
        					function()
        					{
        						
        					}
        		);    		
    			
    		}
    	}
    };
})(jQuery);

function getStoreDetail(biz)
{
	var $viewr = $("#container");//.children("section").eq(0);
	$.storeView.init(biz, function(){}, $viewr);	
}








