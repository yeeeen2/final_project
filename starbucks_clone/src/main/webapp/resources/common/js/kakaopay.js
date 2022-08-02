$(function(){
	$('#send').click(function(){
		$.ajax({
			url:'kakaoPay',
			dataType:'json',
			success:function(data){
				alert("성공");
				var box = data.nect_redirect_pc_url;
				window.open(box);
			},
			error:function(error){
				console.log(error)
			}
		});
	});
});	