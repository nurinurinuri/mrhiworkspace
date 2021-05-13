<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사무공간 등록</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(function(){
		
		/* 등록 버튼 클릭 시 */
		$("#spaceInsertBtn").click(function() {
			
			/* 입력값 체크 */
			if (!chkSubmit($('#s_price'), "가격을")) {
				return;
			} else if (!chkPrice($('#s_price'))) {
				return;				
			} else if (!chkSubmit($('#s_exp'), "공간설명을")) {
				return;
			} else if (!chkSubmit($('#file'), "공간사진을")) {
				return;
			} else if (!bbsCheck($('#file'))) {
				return;
			} else if (confirm("현재 작성된 내용으로 등록을 완료할까요?")){
				$('#spaceRegForm').attr({
					"method" : "POST",
					"action" : "/admin/space/privateInsert"
				});
				$('#spaceRegForm').submit();
			}
		});
		
		/* 취소 버튼 클릭 시 */
		$("#spaceCancelBtn").click(function() {

			if (confirm("작성중인 내용을 취소하고 사무공간 리스트로 이동할까요?")) {
				location.href="/admin/space/privateList";
			}
		});
		
	});
	
	/* 입력 필요한 항목 입력했는지 체크 */
	function chkSubmit(item, msg) {
		if (item.val().replace(/\s/g, "") == "") {
			alert(msg + " 입력해주세요.");
			item.val("");
			item.focus();
			return false;
		} else {
			return true;
		}
	}
	
	/* 공간가격 숫자로만 입력했는지 체크 */
	function chkPrice(item) {
		var r = /\D/g; // 숫자(0~9)를 제외한 임의의 문자
		var s_price = item.val();
		var b = false;
		
		for (i = 0; i < s_price.length; i++) {
			var c = s_price.charAt(i);
			if (c.search(r) != -1) { // 입력한 값 중에 숫자(0~9)를 제외한 임의의 문자가 있을 경우
				b = true;
				break;
			}
		}
		
		if (b) {
			alert("공간가격은 숫자만 입력하셔야 합니다.");
			item.val("");
			item.focus();
			return false;
		}
		
		return true;
	}
	
	/* 공간사진 제한 용량 체크 */
	function bbsCheck(item){
		var maxSize = 10 * 1024 * 1024; // 10MB
		if (item.val() != "") {
			var fileSize = document.getElementById("file").files[0].size;
		}
		
		if (fileSize > maxSize) {
			alert("첨부파일은 10MB 이내로 등록 가능합니다.");
			return false;
		}
		
		return true;
	}
</script>

</head>
<body>
	<div class="contentContainer">
		<div class="contentTitle"><h3>사무공간 등록</h3></div>
		
		<div class="contentTable">
			<form id="spaceRegForm" name="spaceRegForm" enctype="multipart/form-data">
			
				<!-- 등록/취소 버튼 시작 -->
				<div class="contentButton">
					<input type="button" value="등록" class="btn" id="spaceInsertBtn">
					<input type="button" value="취소" class="btn" id="spaceCancelBtn">
				</div>
				<!-- 등록/취소 버튼 끝 -->
				
				<!-- 사무공간 정보 입력 시작 -->
				<table>
					<tr>
						<td>공간종류</td>
						<td>
							<input type="text" id="s_pop" name="s_pop" value="사무공간">
						</td>
					</tr>
					<tr>
						<td>공간유형</td>
						<td>
							<select id="s_type" name="s_type">
								<option value="1인 데스크">1인 데스크</option>
								<option value="프라이빗 오피스 1인실">프라이빗 오피스 1인실</option>
								<option value="프라이빗 오피스 2-4인실">프라이빗 오피스 2-4인실</option>
								<option value="프라이빗 오피스 5-7인실">프라이빗 오피스 5-7인실</option>
								<option value="프라이빗 오피스 8-10인실">프라이빗 오피스 8-10인실</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>가격</td>
						<td>
							<input type="text" id="s_price" name="s_price" placeholder="예) 200000">
						</td>
					</tr>
					<tr>
						<td>사용현황</td>
						<td>
							<select id="s_state" name="s_state">
								<option value="사용가능">사용가능</option>
								<option value="사용불가">사용불가</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>공간설명</td>
						<td>
							<textarea id="s_exp" name="s_exp"></textarea>
						</td>
					</tr>
					<tr>
						<td>공간사진</td>
						<td>
							<input type="file" id="file" name="file">
						</td>
					</tr>
					<tr>
						<td>비고</td>
						<td>
							<input type="text" id="s_note" name="s_note">
						</td>
					</tr>
				</table>
				<!-- 공간 정보 입력 끝 -->
			</form>
		</div>
	</div>

</body>
</html>