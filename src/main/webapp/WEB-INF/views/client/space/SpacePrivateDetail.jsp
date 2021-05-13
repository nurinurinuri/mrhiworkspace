<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사무공간 상세페이지</title>
</head>
<body>
	<h3>사무공간 상세페이지</h3>
	<form name="s_data" id="s_data" method="post">
		<input type="hidden" name="s_name" value="${detail.s_name}" />
	</form>
	<table>
		<tbody>
		<tr>
			<td>공간사진</td>
			<td>${detail.s_photo}</td>
		</tr>
		<tr>
			<td>공간설명</td>
			<td>${detail.s_exp}</td>
			<td>가격</td>
			<td>${detail.s_price}</td>
		</tr>
		<tr>
			<td>
				<input type="button" value="입주신청" onclick="location.href='client/member/agreement.jsp'">
			</td>
		</tr>
		</tbody>
	</table>
</body>
</html>