<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사무공간 리스트</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(function(){
		
		/* 공간등록 버튼 클릭 시 */
		$("#spaceRegBtn").click(function() {
			location.href="/admin/space/privateReg";
		});
		
	});
</script>

</head>
<body>
	<div class="contentButton">
		<input type="button" value="공간등록" id="spaceRegBtn">
	</div>
</body>
</html>