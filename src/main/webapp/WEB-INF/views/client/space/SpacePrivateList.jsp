<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalabel=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<!-- <script type="text/javascript" src="/resources/include/js/common.js"></script> -->

<!-- <link rel="stylesheet" type="text/css"
	href="/resources/include/css/lightbox.css" />
<script type="text/javascript"
	src="/resources/include/js/lightbox.min.js"></script> -->
<title>사무공간 리스트</title>

<script type="text/javascript">
	$(function() {
		// 첨부파일 이미지를 보여주기 위한 속성 추가
		var file = "<c:out value='${spacePrivateList.s_photo}' />";
		if (file != "") {
			$("#fileImage").attr({
				src : "/uploadStorage/space/${spacePrivateList.s_photo}",
				width : "200px",
				height : "200px"
			});
		}

	});

	$("#searchBtn").click(function() {
		var search =$('input[name="options"]:checked').val();
		alert(search);
	});
</script>
</head>
<body>
	<div class="container">
		<form id="f_listForm" name="f_listForm" enctype="multipart/form-data">
			<div class="btn-group" id="search" data-toggle="buttons">
				<label class="btn btn-primary active"> <input type="radio"
					name="options" id="option1" autocomplete="off" value="s_type"
					checked> 1인 데스크
				</label> <label class="btn btn-primary"> <input type="radio"
					name="options" id="option2" autocomplete="off" value="s_type">
					프라이빗 오피스(1인실)
				</label> <label class="btn btn-primary"> <input type="radio"
					name="options" id="option3" autocomplete="off" value="s_type">
					프라이빗 오피스(2~4인실)
				</label> <label class="btn btn-primary"> <input type="radio"
					name="options" id="option4" autocomplete="off" value="s_type">
					프라이빗 오피스(5~7인실)
				</label> <label class="btn btn-primary"> <input type="radio"
					name="options" id="option5" autocomplete="off" value="s_type">
					프라이빗 오피스(8~10인실)
				</label>
				<button type="button" name="button" id="searchBtn">검색</button>
			</div>

			<div id="spacePrivateList">
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<a href="#"><img id="fileImage"></a>
						</div>
					</div>
				</div>
			</div>
		</form>



	</div>

</body>
</html>