$(document).ready(function(){
	$(window).on("load", function(){
		$.news_list.tmplete1();
		$.news_list.setOption();		
		$.news_list.getBodoList(page);
		$.news_list.getBbsRolling();
		
	});
});


(function($){
	
	$.news_list = {
			
			tmplete1 : function() {
				
				var optionTmp = "";
				
					optionTmp = optionTmp + '<option value="${$item.cate()}">${$item.cate_nm}</option> ';
				
					$.template("optionListTmp", optionTmp);
			
				var rollringImgList = "";
					
					//rollringImgList = rollringImgList + '<li><img src="/upload/board/${$item.img_nm()}" style="width:100%"/></li>';
					rollringImgList = rollringImgList + '<li><img src="/upload/board/cp_newsList_detail_img2.png" style="width:100%"/></li>';
					
				//	$.template("rollringImgListTmp", rollringImgList);

					
				var tmplete = "";
				
					tmplete = tmplete + '<tr>';
					tmplete = tmplete + '<td>${$item.index()}</td>';
					tmplete = tmplete + '<td>${$item.cate_nm()}</td>';
					tmplete = tmplete + '<td class="tl"><p class="gisa"><a href="javascript:pageView(${$item.seq()});">${$item.title()}</a></p></td>';
					tmplete = tmplete + '<td>${$item.reg_dt()}</td>';
					tmplete = tmplete + '</tr>';
				
					$.template("newsListTmp", tmplete);
					
					var tmplete2 = "";
					
					tmplete2 = tmplete2 + '<li>';
					tmplete2 = tmplete2 + '<dl>';
					tmplete2 = tmplete2 + '<dt>${$item.cate_nm()}</dt>';
					tmplete2 = tmplete2 + '<dd>';
					tmplete2 = tmplete2 + '<p class="article"><a href="javascript:pageView(${$item.seq()});">${$item.title()}</a></p>';
					tmplete2 = tmplete2 + '<p class="date">${$item.reg_dt()}</p>';
					tmplete2 = tmplete2 + '</dd>';
					tmplete2 = tmplete2 + '</dl>';
					tmplete2 = tmplete2 + '</li>';
					
					$.template("newsListTmp2", tmplete2);
					
					
				var rollringTmp = "";
				
					rollringTmp = rollringTmp + '<li>';
					rollringTmp = rollringTmp + 	'<h5><a href="javascript:pageView(${$item.seq()});"><span>[${$item.cate_nm()}]</span>${$item.title()}</a></h5>';
					rollringTmp = rollringTmp + '		<p class="text">';
					rollringTmp = rollringTmp + '			<a href="javascript:pageView(${$item.seq()});">{{html $item.content()}}</a>';
					rollringTmp = rollringTmp + 		'</p>';
					rollringTmp = rollringTmp + '</li>';
					
					$.template("rollringTmp", rollringTmp);
					
			}
	
			, 
			setOption : function()
			{
							
				$("#newsSel").on("change", function(){
					var value = $(this).val();
					cate = value;
					$.news_list.getBodoList(1, value);
				})
			
						
			}
			,
			getBbsRolling : function(){
				
				var param2 = {
						menu_cd : "STB2702"
				};
				
				$("#rollringList").html("");
				__ajaxCall("/bbs/getBbsRollingList.do", param2, true, "json", "post",
						function(data){
							console.log(data);
							

							$.tmpl("rollringTmp", data.list, {
								index : function(){
									key +=1;
									return (data.totCnt - (page - 1) * 10 - key);
								},
								news_dt : function(){
									var news_dt = this.data.news_dt;
									return news_dt;
								},
								title : function(){
									var title = this.data.title;
									return title;
								},
								reg_dt : function(){
									var reg_dt = this.data.reg_dt;
									return reg_dt;
								},
								seq: function(){
									var seq = this.data.seq;
									return seq;
								},
								cate_nm: function(){
									var cate_nm = this.data.cate_nm;
									
									return cate_nm;
								},
								content: function(){
									//var content = this.data.content;
									var content = convert_ohy(this.data.content);
									var $html = $(content);
										  $html.find("img").remove();
									var isNewHtml  = $html.text();
									
									return isNewHtml;
								}
								
							}).appendTo("#rollringList");
							
							$( "#rollingImg1" ).tmpl( data.list ).appendTo("#rollringImgList");

							
							// jsp2 수정 - 20150625 보도 자료 슬라이드 추가
							var nIdx = 1;
							var nNum = $('.cp_article_area li').length;
							$('section.cp_newsList_detail aside span').html('<strong>'+nIdx+'</strong>'+'/'+nNum);

							var cp_slide = $('.cp_newsList_slide').bxSlider({
								// auto: true,
								autoControls: true,
								autoControlsCombine: true,
								pager: true,
								infiniteLoop: false,
								pagerSelector: '.cp_news_pagers',
								autoControlsSelector: '.cp_news_controls',
								onSliderLoad : function(currentIndex)
								{
									var windowWidth = $(window).width();
									console.log("windowWidth :: " + windowWidth);
									console.log("currentIndex :: " + currentIndex);
									
									if ( windowWidth <= 640) //모바일 에서만
									{
										$("#rollringImgList > li").each(function(ix){
											
											if( ix == 0)
											{
												console.log( $(this).find("img").height() );
												
												$(".cp_newsList_detail_img").find(".bx-viewport").height( $(this).find("img").height() );
											}
											
										});
									}
									
								}
								,
								onSlideBefore : function($slideElement, oldIndex, newIndex)
								{
									var windowWidth = $(window).width();
									console.log("windowWidth :: " + windowWidth);
									console.log($slideElement.find("img").height() );
									
									if ( windowWidth <= 640) //모바일 에서만
									{
										$(".cp_newsList_detail_img").find(".bx-viewport").height($slideElement.find("img").height() );
									}
										
								}
								,
								onSlidePrev: function($slideElement, oldIndex, newIndex){
									nIdx--;
									if(nIdx <= nNum){
										$('section.cp_newsList_detail aside span strong').text( nIdx );
										$('ul.cp_article_area li').removeClass('on');
										$('ul.cp_article_area li').eq( nIdx-1 ).addClass('on');
									}
									
									var windowWidth = $(window).width();
									console.log("windowWidth :: " + windowWidth);
									console.log($slideElement.find("img").height() );
									
									if ( windowWidth <= 640) //모바일 에서만
									{
										$(".cp_newsList_detail_img").find(".bx-viewport").height($slideElement.find("img").height() );
									}									
								},
								onSlideNext: function($slideElement, oldIndex, newIndex){
									nIdx++;
									if(nIdx > 1){
										$('section.cp_newsList_detail aside span strong').text( nIdx );
										$('ul.cp_article_area li').removeClass('on');
										$('ul.cp_article_area li').eq( nIdx-1 ).addClass('on');
										
										$('ul.cp_article_area li').eq( nIdx-1 ).find("p.text").dotdotdot();
									}
									
									var windowWidth = $(window).width();
									console.log("windowWidth :: " + windowWidth);
									console.log($slideElement.find("img").height() );
									
									if ( windowWidth <= 640) //모바일 에서만
									{
										$(".cp_newsList_detail_img").find(".bx-viewport").height($slideElement.find("img").height() );
									}									
								}
							});

							$('section.cp_newsList_detail aside p a.back').on('click', function(){
								cp_slide.goToPrevSlide();
								return false;
							});

							$('section.cp_newsList_detail aside p a.forward').on('click', function(){
								cp_slide.goToNextSlide();
								return false;
							});
							// jsp2 수정 - 20150625 보도 자료 슬라이드 추가 end						
							
							$('ul.cp_article_area > li').eq(0).addClass('on');
							
							$('ul.cp_article_area li p.text').dotdotdot();
							

							$(".cp_newsList_slide > li > img").on("error", function () {
								var src = $(this).attr("src");
								$(this).attr("src", "//www.starbucks.co.kr:8000/upload/board" + src.substr(src.lastIndexOf("/")));
							});
							
						},function(){
							
						});
				
				
			}
			,
			getBodoList : function(page, cate){
				
				var param = {
						menu_cd : "STB2702"
					   ,pageIndex: page
					   ,cate : cate
				};
				
				__ajaxCall("/bbs/getBodoList.do", param, true, "json", "post",
					function(data){
						console.log("########");
						console.log(data);
						console.log("########");
					
						var key = -1;
						
						$("#newsListBox").html("");
						$("#m_cp_newsList").html("");
						
							$.tmpl("newsListTmp", data.list, {
								index : function(){
									key +=1;
									return (data.totCnt - (page - 1) * 10 - key);
								},
								news_dt : function(){
									var news_dt = this.data.news_dt;
									return news_dt;
								},
								title : function(){
									var title = this.data.title;
									return title;
								},
								reg_dt : function(){
									var reg_dt = this.data.reg_dt;
									return reg_dt;
								},
								seq: function(){
									var seq = this.data.seq;
									return seq;
								},
								cate_nm: function(){
									var cate_nm = this.data.cate_nm;
									
									console.log(this.data);
									return cate_nm;
								}
								
							}).appendTo("#newsListBox");
						
						
						
						
						$.tmpl("newsListTmp2", data.list, {
							index : function(){
								key +=1;
								return (data.totCnt - (page - 1) * 10 - key);
							},
							news_dt : function(){
								var news_dt = this.data.news_dt;
								return news_dt;
							},
							title : function(){
								var title = this.data.title;
								return title;
							},
							reg_dt : function(){
								var reg_dt = this.data.reg_dt;
								return reg_dt;
							},
							seq: function(){
								var seq = this.data.seq;
								return seq;
							},
							cate_nm: function(){
								var cate_nm = this.data.cate_nm;
								
								console.log(this.data);
								return cate_nm;
							}
							
						}).appendTo("#m_cp_newsList");
		
				
				
						
						//페이징 처리
						var $page = page;
						var $TotalCount = data.totCnt;
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
								$.news_list.getBodoList(page, cate);
							}
						});
						
					}
					,
					function(data){
						
					});
				
			}
	}
	
})(jQuery);

function pageView(seq){
	$("#seq").val(seq);
	
	document.newsFrm.action = "/bbs/getBodoView.do";
	document.newsFrm.submit();
}