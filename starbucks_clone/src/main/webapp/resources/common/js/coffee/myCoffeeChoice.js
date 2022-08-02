var li = '\
		<li>\
			<a href="javascript:void(0);">\
				<dl>\
					<dt><img src="${img_UPLOAD_PATH}${file_PATH}" alt="${product_NM}"  prCd="${product_CD}" ></dt>\
					<dd>${product_NM}</dd>\
				</dl>\
			</a>\
		</li>\
	';
		
var fir = '\
	<div class="cf_productFinder_pic">\
		<p><img src="${img_UPLOAD_PATH}${file_PATH}" alt="${product_NM}"  prCd="${product_CD}" ></p>\
	</div>\
	<div class="cf_productFinder_ditail">\
		<h3>${product_NM}<br><span>${product_ENNM}</span></h3>\
		<div class="m_cf_productFinder_pic">\
	<p><img src="${img_UPLOAD_PATH}${file_PATH}" alt="${product_NM}"  prCd="${product_CD}" ></p>\
		</div>\
		<p class="title">${recommend}</p>\
		<p class="text">${content}</p>\
	</div>\
'; 
$.template( "fir", fir );
$.template( "body", li );

if(pa.COFFEE_TASTE1 != '' && pa.COFFEE_FEEL != '' && pa.COFFEE_INTEN != ''){
	var ctx = getContextPath();
	function getContextPath() {
		 return sessionStorage.getItem("contextpath");
	}
	var storeInterfaceUrl = ctx + '/coffee/getCoffeeChoice';
	__ajaxCall(storeInterfaceUrl, pa, true, "JSON", "POST", function(data) {
		if(data.my.length > 0) {
			var f;
			var m = new Array();
			
			for (var i = 0;i <  data.my.length; i++) {
				if( i == 0){
					f = data.my[i];
				}else{
					m.push(data.my[i]);  
				}
			}
			$.tmpl( "fir", f).appendTo(".cf_productFinder_inner");
			$.tmpl( "body", m).appendTo(".cf_pf_list");
			
			$('.cf_productFinder_inner img, .cf_pf_list img').unbind('click').on('click', function() {
        		prCd = $(this).attr('prCd');
        		
        		if(prCd != "") {
        			form = document.pForm;
        			form.PRODUCT_CD.value = prCd;
        			form.action = "product_view";
        			form.submit();
        		}
			});
		}	
	},function(data) {
		alert("다시 확인해 주세요 ");
		history.back();
		return;	
	});
}else{
	alert("다시 확인해 주세요 ");
	location.href = "productFinder";
}