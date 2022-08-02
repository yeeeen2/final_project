/* 이전 이용약관 보기  selectBox */
function setUseTermSelect(elementById, clauseType) {
	var objParam = {
		"clause_type" : clauseType
	};
			
	__ajaxCall("/footer/etc/clause/getClauseLogSeq.do", objParam, true, "json", "post", 
		function(data) {
			if(data.list.length > 0) {
				$.each( data.list, function(x, y) {
					$("#" + elementById).append("<option value='"+y.CLAUSE_SEQ+"'>"+y.STPLT_PREX_DATE_FIXED+"</option>");
				});
			}
							
		}, function(_error) {
		});
}

/* 약관 조회 */
function getClauseLog(elementById, clauseType, clauseSeq) {
	var objParam = {
		"clause_type" : clauseType,
		"clause_seq" : clauseSeq
	};
	__ajaxCall("/footer/etc/clause/getClauseLog.do", objParam, true, "json", "post", 
			function(data) {
				if(data.clause != null) {
					$("#" + elementById).html(data.clause.CONTENTS);
				}
				
			}, function(_error) {
			});
}

/* 약관 세팅 */
function setClause(selectElementId, clauseElementId, clauseType) {
	// 이전 약관 selectBox 세팅
	setUseTermSelect(selectElementId, clauseType);
	
	// 초기 약관 세팅
	getClauseLog(clauseElementId, clauseType, "");
	
	// selectBox 클릭 시 마다 seq에 해당하는 약관 세팅
	$("#" + selectElementId).on('change', function() {
		var selectText = $(this).children('option:selected').text(); 
		$(this).siblings('label').text(selectText);
		
		var selectSeq = $(this).children('option:selected').val();
		var options = {
				"clause_type" : clauseType,
				"clause_seq" : selectSeq
		};
		getClauseLog(clauseElementId, clauseType, selectSeq);
	});
}