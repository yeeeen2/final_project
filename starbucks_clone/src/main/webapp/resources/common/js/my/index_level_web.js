var $search = {
	 ins_lat : 37.56682
	,ins_lng : 126.97865
};

$(document).ready(function () {
	var itvNearStore = setInterval(function() {
		if (m_jsonRewardSummary != null
				&& m_jsonRewardSummary.msrMemberYn == "N") {
			showStoreInfo();
			clearInterval(itvNearStore);
		}
	}, 150)
});

function showStoreInfo() {
	$search.search_text = "";
	$search.p_sido_cd   = "";
	$search.p_gugun_cd  = "";
	$search.isError     = true;
	$search.in_distance = 0;

	$search.T03=0;
	$search.T01=0;
	$search.T12=0;
	$search.T09=0;
	$search.T06=0;
	$search.T10=0;
	$search.P10=0;
	$search.P50=0;
	$search.P20=0;
	$search.P60=0;
	$search.P30=0;
	$search.P70=0;
	$search.P40=0;
	$search.P80=0;
	$search.new_bool=1;		
	$search.in_biz_cd  = "";
	$search.searchType = "A";
	$search.set_date   = "";
	
	/*$search.T03=1;
	$search.new_bool=0;*/
	
	___ajaxCall("/store/getStore.do", $search, false, "json", "post",
		function (_response) {
			if (_response.list.length > 0) {
				$(".no_store_wrap").hide();
				$(".yes_store_wrap").show();
				
				// 리스트 출력
				$("#storeList").tmpl(_response.list, {
				}).appendTo(".yes_store_wrap");
				
				// 슬라이더 셋팅
				var storeSlider = $('.ms_sstore_slider .yes_store_wrap').bxSlider({
					minSlides:2,
					maxSlides:2,
					slideWidth:133,
					pager:false,
					slideMargin:20
				});
			} else {
				$(".no_store_wrap").show();
				$(".yes_store_wrap").hide();
			}
		}
	);
}