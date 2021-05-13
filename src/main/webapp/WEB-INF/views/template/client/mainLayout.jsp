<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><tiles:getAsString name="title" /></title>

<!-- Bootstrap core CSS -->
<link href="/resources/include/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/include/dist/css/sticky-footer-navbar.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]>
    <script src="/resources/include/dist/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="/resources/include/dist/assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
</head>
<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<tiles:insertAttribute name="header" />
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<a href="/space/spacePrivateList.do"><img src="/image/privateoffice.jpg"
					class="img-rounded" width="80%" height="500px"></a>
				<h3>사무공간둘러보기</h3>
			</div>
			<div class="col-md-6">
				<a href="#"><img src="/image/Conferenceroom1.jpg"
					class="img-rounded" width="80%" height="500px"></a>
				<h3>공용공간둘러보기</h3>
			</div>
		</div>
		<p>조회를 원하시는 공간의 사진을 클릭해 주세요.</p>
	</div>

	<footer class="footer">
		<tiles:insertAttribute name="footer" />
	</footer>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
	<script src="/resources/include/dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="/resources/include/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>