$(document).ready(function () {
	m_strTargetUrl = location.pathname;
	
	setEvents();
});

function setEvents() {
	$("li.need_login_btn1 > a").on("click", function () {
		$.loginLib.showLayerLogin();
	});
	$("li.need_login_btn2 > a").on("click", function () {
		location.replace("/mem/join.do");
	});
}