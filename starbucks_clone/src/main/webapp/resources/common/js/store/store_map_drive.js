/** 스토어 검색 **/

$(document).ready(function(){
	$(window).on("load", function(){
		$.storemap.init(true);
	});
});

function getStoreDetail(param)
{
	var $viewr = $("#wrap");//.children("section").eq(0);
	$.storeView.init(param, function(){}, $viewr);
}
