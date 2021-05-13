<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>관리자 페이지</title>

<link rel="stylesheet" href="/resources/include/css/admin_main_layout.css">

</head>
<body>
	<div id="wrapper">
		<header>
			<tiles:insertAttribute name="header" ignore="true" />
		</header>

		<div id="main_content">
			<aside>
				<tiles:insertAttribute name="aside" ignore="true"  />
			</aside>
			
			<section>
				<tiles:insertAttribute name="section" ignore="true"  />
			</section>
		</div>
	</div>
</body>
</html>