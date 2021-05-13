<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<body>

	<div class="container">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<a class="navbar-brand" href="/">
				<img src="/image/logo_transparent.png" class="img-rounded" width="200" height="130">
				</a>
				<!-- Example single danger button -->
				<ul class="nav nav-pills nav-justified" role="tablist">
				
					<li role="presentation" class="dropdown"><a class="dropdown-toggle btn-lg" data-toggle="dropdown" href="#" role="button" aria-expanded="false">회사소개</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">인사말</a></li>
							<li><a href="#">사용가이드</a></li>
							<li><a href="#">공지사항</a></li>
						</ul>
					<li role="presentation" class="dropdown"><a class="dropdown-toggle btn-lg" data-toggle="dropdown" href="#" role="button" aria-expanded="false">공간조회</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/space/spacePrivateList.do">사무공간입주신청</a></li>
							<li><a href="#">공용공간예약</a></li>
						</ul>
					<li role="presentation" class="dropdown"><a class="dropdown-toggle btn-lg" data-toggle="dropdown" href="#" role="button" aria-expanded="false">마이 페이지</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">내정보</a></li>
							<li><a href="#">입주정보</a></li>
							<li><a href="#">공용공간 예약현황</a></li>
							<li><a href="#">결제수단관리</a></li>
						</ul>
					<li role="presentation" class="dropdown"><a class="dropdown-toggle btn-lg" data-toggle="dropdown" href="#" role="button" aria-expanded="false">고객센터</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">자주묻는질문</a></li>
							<li><a href="#">문의게시판</a></li>
						</ul>
					<li class= "btn-lg"><a href="/login/login.do">로그인</a></li>
					
				</ul>

			</div>
		</nav>
	</div>

</body>
</html>