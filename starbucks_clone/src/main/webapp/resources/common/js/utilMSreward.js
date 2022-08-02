$(function(){				

	rewardInfo_list();   //rewardInfo_list 설정	( My 리워드및혜택 )

});


function rewardInfo_list(){
	//150709 수정 반영 -구명준
	//셋팅 
	$(".info dd.box").show();
	$('.rewardCard_info dl.info dt.tbox a').text('자세히 보기');
	
	//리워드 및 혜택 페이지 內 섹션별 배경 및 버튼색 반영
	$(".rewardLevel_info:odd").parents('section').addClass('bgW');
	$(".rewardLevel_info:even").parents('section').addClass('bgG');

	
	//웰컴,그린,골드 회원 리워드 및 혜택 페이지 內 각 섹션별 화살표 클릭시 이벤트 발생  
	$(".rewardLevel_info dt.tbox a").click(function(event) {
		var j = $(".rewardLevel_info dt.tbox a").index(this);
		$(".rewardLevel_info dl.info").eq(j).find("dd.box").toggle().prev().toggleClass("on");
	});
	
	//msr 회원이 아닌경우 리워드 및 혜택 페이지 內 각 섹션별 화살표 클릭시 이벤트 발생
	$(".rewardCard_info dt.tbox a").click(function(event) {
		var j = $(".rewardCard_info dt.tbox a").index(this);
		$(".rewardCard_info dl.info").eq(j).find("dd.box").toggle().prev().toggleClass("on");
	});

	$(".rewardCard_info dl.info dt.tbox a").bind("click", function(){				
		if($(this).parents('dt.tbox').hasClass('on')){
			$(this).text('자세히 보기');
		}else{
			$(this).text('닫기');
		}
	});

	/* 150603 - 문진욱 */

	$(".m_regular_dl1 dd, .m_regular_dl2 dd").show();

	$(".mrd1 dt a").bind("click", function(){
		$(".mrd1").find("dd").each(function(){
			if($(this).next("dd")){
				$(this).toggle();			
				$(this).prev().toggleClass("on");				
			}else{
				$(this).hide();					
				$(this).prev().removeClass("on");				
			}
		});
	});

	$(".mrd2 dt a").bind("click", function(){
		$(".mrd2").find("dd").each(function(){
			if($(this).next("dd")){
				$(this).toggle();			
				$(this).prev().toggleClass("on");				
			}else{
				$(this).hide();					
				$(this).prev().removeClass("on");				
			}
		});
	});

	$(".mrd3 dt a").bind("click", function(){
		$(".mrd3").find("dd").each(function(){
			if($(this).next("dd")){
				$(this).toggle();			
				$(this).prev().toggleClass("on");				
			}else{
				$(this).hide();					
				$(this).prev().removeClass("on");				
			}
		});
	});

	$(".mrd4 dt a").bind("click", function(){
		$(".mrd4").find("dd").each(function(){
			if($(this).next("dd")){
				$(this).toggle();			
				$(this).prev().toggleClass("on");				
			}else{
				$(this).hide();					
				$(this).prev().removeClass("on");				
			}
		});
	});

	/* 150603 - 문진욱 end */
	
	/* 150605 - 문진욱 */
	/*
	$(".useguide_type_dl dd").show();

	$(".utd1 dt a").bind("click", function(){
		$(".utd1").find("dd").each(function(){
			if($(this).next("dd")){
				$(this).toggle();			
				$(this).prev().toggleClass("on");				
			}else{
				$(this).hide();					
				$(this).prev().removeClass("on");				
			}
		});
	});
	*/
	$(".useguide_type_dl dd").show();

	$(".useguide_type_dl dt a").bind("click", function(){
		$(this).parent().parent().parent().children('dd').toggle();
		$(this).parent().parent().toggleClass('on');
	});
	/* 150605 - 문진욱 end */
	
}