<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	<div id="logo">
		<a href="/admin/main"><img src="/resources/image/logo_transparent.png"></a>
	</div>
	<div id="header_menu">
		<ul>
			<li class="dropdown"><a href="/admin/space/privateList" class="dropbtn">공간관리</a>
				<div class="dropdown-content">
					<a href="/admin/space/privateList">사무공간 관리</a>
					<a href="/admin/space/publicList">공용공간 관리</a>
				</div>
			</li>
			<li><a href="/admin/contract/contractInfo">입주관리</a></li>
			<li><a href="/admin/contract/reserveInfo">공용공간 예약관리</a></li>
			<li><a href="/admin/member/memberList">회원관리</a></li>
			<li class="dropdown"><a href="/admin/notice/noticeList" class="dropbtn">게시판관리</a>
				<div class="dropdown-content">
					<a href="/admin/notice/noticeList">공지사항</a>
					<a href="/admin/qna/qnaList">자주묻는질문</a>
					<a href="/admin/inquiry/inquiryList">문의게시판</a>
				</div>
			</li>
			<li><a href="#">로그아웃</a></li>
		</ul>
	</div>
</body>
</html>