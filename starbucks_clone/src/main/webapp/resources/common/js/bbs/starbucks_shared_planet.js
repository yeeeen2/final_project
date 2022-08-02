$(document).ready(function () {
	/*
    $.starbucks_shared_planet = {
    		
    	tmplete : function(){
    	
    		//년도 리스트
    		var tmplete = "";
			
				tmplete = tmplete + '<option value="${$item.active_YEAR()}">${$item.active_YEAR()}</option>';
			
				$.template( "product_yearList", tmplete );
			
			//crs 리스트 
			var html ="";
				
				html += '<tr>' ;
				html += '		<td class="center">${$item.active_QUATER()}/4 분기</td>' ;
				html += '		<td class="brn">' ;
				html += '			<p class="t3"><a href="javascript:void(0);">${$item.title()}</a></p><br/>' ;
				html += '			<div style="display:none"> {{html $item.content()}} </div>' ;
				html += '</td>' ;
				html += '</tr>' ;
	    		
	    		$.template( "product_crsList", html );
	    		
	    		//crs 리스트 
	    		var html2 ="";
	    		
	    		html2 += '<dt>${$item.title()}</dt>' ;
	    		html2 += '<dd>' ;
	    		html2 += '2014년 4/4분기 주요 기여 내용' ;
	    		html2 +=' {{html $item.content()}}';
	    		html2 += '</dd>' ;
	    		
	    		$.template( "product_crsList2", html2 );
	    		
    	}	
    	,
    	yearList : function(){
    		
    		var param = {
    				menu_cd : "STB2706"
    		};
    		
    		__ajaxCall("/responsibility/getYearList.do", param, true, "json", "post",
					function (_response) 
					{
	    				console.log(_response);
	    				
	    				$("#product_info02").empty();
	    				
	    				$.tmpl( "product_yearList", _response.list, {
	    					
	       					active_YEAR : function(){
	       						var active_YEAR = this.data.active_YEAR;
	       						return active_YEAR;
	       					}
        					
        				}).appendTo( "#product_info02" );
	    				
	    				$( "#product_info02").trigger("change");
			        }
					, 
					function(_error)
					{
						alert("다시 시도해주세요.");
					}
	    	);   
    				//년도 셀렉트박스 변경시
    				$("#product_info02").on("change", function(){
    					
    					if($("#product_info02").val() == "2015"){
						$(".respon_result_2013").hide();
						$(".respon_graph2013").hide();
						$(".respon_result_2014").hide();
						$(".respon_graph2014").hide();
						$(".respon_result_2015").show();
						$(".respon_graph2015").show();
				
					} else if($("#product_info02").val() == "2014"){
						$(".respon_result_2013").hide();
						$(".respon_graph2013").hide();
						$(".respon_result_2014").show();
						$(".respon_graph2014").show();
						$(".respon_result_2015").hide();
						$(".respon_graph2015").hide();
				
					} else if($("#product_info02").val() == "2013"){
						$(".respon_result_2013").show();
						$(".respon_graph2013").show();
						$(".respon_result_2014").hide();
						$(".respon_graph2014").hide();
						$(".respon_result_2015").hide();
						$(".respon_graph2015").hide();
				
					} else {
						$(".respon_result_2015").hide();
						$(".respon_result_2014").hide();
						$(".respon_result_2013").hide();
						$(".respon_graph2015").hide();
						$(".respon_graph2014").hide();
						$(".respon_graph2013").hide();
				
					}
    					
    					$("#product_crsListBox").html("");
    					var val =  $(this).val();
    					
    					//보고서 보기 = 2009~2014
    					//연도별 결산 = 2000~2014
    					if(val < 2009){
    						$(".li3").hide();
    					}else{
    						$(".li3").show();
    					}
    					
    					$.starbucks_shared_planet.crsList();

    				});
    				
    				
    				$(".li3").on("click", function(){

    					var val = $("#product_info02").val();
    					if(val == "2012"){
    						val = "2012_02";
    					}
    					var url = "https://www.starbucks.co.kr/img/responsibility/active_report_"+val+".pdf";
    					var objPopup = window.open("", ""); 
    				 
    					if (objPopup == null) { 
    				        alert("차단된 팝업창을 허용해 주십시오."); 
    				    } 
    				    else { 
    				    	objPopup.location.href = url; 
    				    } 
    					
    				});
    				
    		
    	}
    	,
    	crsList : function()
    	{
    		
    		var data = {
					ACTIVE_YEAR : $("#product_info02").val() 
			};
			
			
			__ajaxCall("/responsibility/getCsrList.do", data, true, "json", "post",
				function (data) {
				
					$.tmpl( "product_crsList", data.list, {
    					
						title : function(){
       						var title = this.data.title;
       						return title;
       					},
       					active_QUATER : function(){
							var active_QUATER = this.data.active_QUATER;
							return active_QUATER;
						},
						content : function(){
       						var content = stringToHtml( this.data.content );
       						return content;
       					}
    					
    				}).appendTo( "#product_crsListBox" );
				
					$('.t3').next('br').hide();
					
					$(".t3").on("click", function(){
						var index = $(".t3").index($(this));
						var $selctor = $("#product_crsListBox > tr > td > div");
						
						$selctor.each(function(x,y){
							if ( x == index )
							{
								$(this).toggle();
								$('.t3').toggleClass('on');
							}
							else
							{
								$(this).hide();
								$('.t3').removeClass('on');
							}
						});
						
					});

			}, function(){
			
						
						
			});
    		
    	}
    	
    	    	
    }; */
    
    //$.starbucks_shared_planet.tmplete();
	//$.starbucks_shared_planet.yearList();
    
});

