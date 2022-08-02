$(document).ready(function(){

	$.wallpaper.tmplete();
	$.wallpaper.getList(wyear);
});

$("#wp_year").bind("change", function(){
	var wyear = $("#wp_year").val();
	$.wallpaper.getList(wyear);
});

(function($){
	$.wallpaper = {
			tmplete : function(){

				var tmplete = "";
				tmplete = tmplete + '<li><dl>';
				tmplete = tmplete + '<dt><img src="' + $config.imgUploadPath + '/upload/wallpaper/${$item.thumbnail_nm()}" alt="" /></dt>';
				tmplete = tmplete + '<dd><ul>';
				tmplete = tmplete + '{{if $item.seq() > 91 }}';
				tmplete = tmplete + ' <li class="en"><a href="javascript:download2(\'3\', \'${$item.seq()}\', \'${$item.file_nm3()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm2()}" data-size="720x1280"><img alt="" src="//image.istarbucks.co.kr/common/img/whatsnew/icon_m.png"> 720x1280</a></li>';
				tmplete = tmplete + ' <li class="en"><a href="javascript:download2(\'1\', \'${$item.seq()}\', \'${$item.file_nm1()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm3()}" data-size="1920x1080"> 1920x1080</a></li>';
				tmplete = tmplete + ' <li class="en last"><a href="javascript:download2(\'2\', \'${$item.seq()}\', \'${$item.file_nm2()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm1()}" data-size="2560x1440"> 2560x1440</a></li>';
				tmplete = tmplete + '{{else [$item.seq() >= 77] }}';
				tmplete = tmplete + ' <li class="en"><a href="javascript:download2(\'3\', \'${$item.seq()}\', \'${$item.file_nm3()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm2()}" data-size="720x1280"><img alt="" src="//image.istarbucks.co.kr/common/img/whatsnew/icon_m.png"> 720x1280</a></li>';
				tmplete = tmplete + ' <li class="en"><a href="javascript:download2(\'2\', \'${$item.seq()}\', \'${$item.file_nm2()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm1()}" data-size="1280x1024"> 1280x1024</a></li>';
				tmplete = tmplete + ' <li class="en last"><a href="javascript:download2(\'1\', \'${$item.seq()}\', \'${$item.file_nm1()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm3()}" data-size="1920x1080"> 1920x1080</a></li>';
				tmplete = tmplete + '{{else}}<li class="en"><a href="javascript:download2(\'2\', \'${$item.seq()}\', \'${$item.file_nm2()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm1()}" data-size="1280x1024"> 1280x1024</a></li>';
				tmplete = tmplete + ' <li class="en"><a href="javascript:download2(\'3\', \'${$item.seq()}\', \'${$item.file_nm3()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm2()}" data-size="1680x1050"> 1680x1050</a></li>';
				tmplete = tmplete + ' <li class="en last"><a href="javascript:download2(\'1\', \'${$item.seq()}\', \'${$item.file_nm1()}\');" date-seq = "${$item.seq()}" data-imgName="${$item.file_nm3()}" data-size="1920x1080"> 1920x1080</a></li>';
				tmplete = tmplete + '{{/if}}';
				tmplete = tmplete + '</ul></dd>';
				tmplete = tmplete + '</dl></li>';
				$.template( "wallpaperTmp", tmplete );
			}
		,getList : function(wyear){
			var param = {
					wyear : wyear
			};

			__ajaxCall("/whats_new/wallpaperListAjax.do", param, true, "json", "post",
				function(data){
			
					$( "#wallpaperList").html("");
					$.tmpl( "wallpaperTmp", data.list , {
						
						thumbnail_nm : function(){
							var thumbnail_nm = this.data.thumbnail_nm;
							return thumbnail_nm;
	
						}
						,file_nm1 : function(){
							var file_nm1 = this.data.file_nm1;
							return file_nm1;
						}
						,file_nm2 : function(){
							var file_nm2 = this.data.file_nm2;
							return file_nm2;
						}
						,file_nm3 : function(){
							var file_nm3 = this.data.file_nm3;
							return file_nm3;
						}
						,seq : function(){
							var seq = this.data.seq;
							return seq;
						}
					}).appendTo("#wallpaperList");			
					
					for(var i=0; i <= data.list.length -1; i++){
						if((i+1)%3 == 0){
							$("#wallpaperList > li").eq(i).attr("class", "last");
							//$("#wallpaperList > li").eq(i).attr("class", "last");
						}
					}
					
				}
				,function(data){
				
				}
			);
		}
	}
})(jQuery);


//다운로드
function download(){
	location.href='http://screensaver.istarbucks.co.kr/Starbucks_Korea_Live_Screensaver.zip';
}

//다운로드
function download2(type , seq, fileName){
	var file_type = "";
	var seq = seq;
	
	if(type ==1 ){	file_type = "file_nm1";	}
	else if(type ==2){file_type = "file_nm2";}
	else{	file_type = "file_nm3";	}
	
	location.href="/utils/download.do?file_type="+file_type+"&seq=" +seq + "&fileName=" + fileName;
	
	//////////////////////////////////////welpaper이미지//////////////////////////////////////////////////
	//var openNewWindow = window.open("about:blank");
	//openNewWindow.location.href = "https://www.starbucks.co.kr/upload/wallpaper/" + fileName;
	
}
