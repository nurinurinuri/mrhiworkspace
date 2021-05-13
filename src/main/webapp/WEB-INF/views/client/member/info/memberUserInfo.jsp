<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
</head>
<body>
	<h2>내 정보</h2>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>${memVO.u_id}</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${memVO.u_pw}</td>
		</tr>
		<tr>
			<td>회사명</td>
			<td>${memVO.comp_name}</td>
		</tr>
		<tr>
			<td>사업자 등록번호</td>
			<td>${memVO.comp_num}</td>
		</tr>
		<tr>
			<td>사용인원</td>
			<td>${memVO.u_num}</td>
		</tr>
		<tr>
			<td>담당자 이름</td>
			<td>${memVO.u_name}</td>
		</tr>
		<tr>
			<td>담당자 전화번호</td>
			<td>${memVO.u_phoneNum}</td>
		</tr>
		<tr>
			<td>담당자 이메일</td>
			<td>${memVO.u_email}</td>
		</tr>
	</table>
	<input type="button" value="수정하기" onclick="location.href='/member/memberModify'">
</body>
</html>