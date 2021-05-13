<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입주정보 리스트</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(function(){
		$(".noborder").attr("disabled", true);
		$(".noborder").attr("size", "10");
		$(".noborder").css("border", "none");
		$(".noborder").css("background", "white");
		
		/* 갱신신청, 취소신청 값이 'n'일 경우 갱신상태, 취소상태 배경 어둡게 */
		$(".inactivated").css("background", "#d5d5d5");
		
		$("#contUpdateBtn").click(function() {
			/* form 요소들의 value 값을 controller로 전송하기 위해 disabled 속성을 false로 변경 */
			$(".noborder").attr("disabled", false);
			$("#contListForm").attr({
				"method" : "POST",
				"action" : "/admin/contract/contractUpdate"
			});
			$("#contListForm").submit();
		});
		
	});
</script>

</head>
<body>
	<div class="contentContainer">
		<div class="contentTitle"><h3>입주정보 리스트</h3></div>
		
		<!-- 카테고리 / 키워드 조회 시작 -->
		<div id="contractInfoSearch">
			
		</div>
		<!-- 카페고리 / 키워드 조회 끝 -->
		
		<!-- 저장 버튼 시작 -->
		<div>
			<input type="button" value="저장" id="contUpdateBtn">
		</div>
		<!-- 저장 버튼 끝 -->
		
		<!-- 리스트 시작 -->
		<form id="contListForm" name="contListForm">
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>공간명</th>
						<th>회사명</th>
						<th>사업자등록번호</th>
						<th>계약시작일</th>
						<th>계약만료일</th>
						<th>계약개월수</th>
						<th>총금액</th>
						<th>결제방법</th>
						<th>계약상태</th>
						<th>갱신신청</th>
						<th>갱신상태</th>
						<th>취소신청</th>
						<th>취소상태</th>
					</tr>
				</thead>
				
				<!-- 데이터 출력 -->
				<tbody>
					<c:choose>
						<c:when test="${ not empty contList }">
							<c:forEach var="cont" items="${ contList }" varStatus="status">
								<input type="hidden" name="cvoList[${ status.index }].cont_num" value="${ cont.cont_num }" />
								<tr>
									<td>${ status.count }</td>
									<td><input type="text" class="noborder" name="cvoList[${ status.index }].s_name" value="${ cont.s_name }"></td>
									<td><input type="button" name="cvoList[${ status.index }].memberVO.comp_name" value="${ cont.memberVO.comp_name }"></td>
									<td><input type="text" class="noborder" name="cvoList[${ status.index }].memberVO.comp_num" value="${ cont.memberVO.comp_num }"></td>
									<td><input type="text" class="noborder" name="cvoList[${ status.index }].start_date" value="${ cont.start_date }"></td>
									<td><input type="text" class="noborder" name="cvoList[${ status.index }].end_date" value="${ cont.end_date }"></td>
									<td><input type="text" class="noborder" name="cvoList[${ status.index }].cont_months" value="${ cont.cont_months }"></td>
									<td><input type="text" class="noborder" name="cvoList[${ status.index }].total_cost" value="${ cont.total_cost }"></td>
									<td><input type="text" class="noborder" name="cvoList[${ status.index }].payment" value="${ cont.payment }"></td>
									<td>
										<c:choose>
											<c:when test='${ cont.cont_state == "승인대기" }'>
								    			<select name="cvoList[${ status.index }].cont_state">
											    	<option selected="selected" value="승인대기">승인대기</option>
											    	<option value="승인완료">승인완료</option>
											    	<option value="승인반려">승인반려</option>
									    		</select>
								    		</c:when>
								    		<c:when test='${ cont.cont_state == "승인완료" }'>
								    			<select name="cvoList[${ status.index }].cont_state">
											    	<option value="승인대기">승인대기</option>
											    	<option selected="selected" value="승인완료">승인완료</option>
											    	<option value="승인반려">승인반려</option>
									    		</select>
								    		</c:when>
								    		<c:when test='${ cont.cont_state == "승인반려" }'>
								    			<select name="cvoList[${ status.index }].cont_state">
											    	<option value="승인대기">승인대기</option>
											    	<option value="승인완료">승인완료</option>
											    	<option selected="selected" value="">승인반려</option>
									    		</select>
								    		</c:when>
										</c:choose>
								    </td>
								    <td><input type="text" class="noborder" name="cvoList[${ status.index }].r_apply" value="${ cont.r_apply }"></td>
								    <c:choose>
								    	<c:when test='${ cont.r_apply == "n" }'>
								    		<td><input type="button" class="noborder" name="cvoList[${ status.index }].r_state" value="${ cont.r_state }"></td>
								    	</c:when>
								    	<c:when test='${ cont.r_apply == "y" }'>
								    		<td><input type="button" name="cvoList[${ status.index }].r_state" value="${ cont.r_state }"></td>
								    	</c:when>
								    </c:choose>
								    <td><input type="text" class="noborder" name="cvoList[${ status.index }].w_apply" value="${ cont.w_apply }"></td>
								    <c:choose>
								    	<c:when test='${ cont.w_apply == "n" }'>
								    		<td><input type="button" class="noborder" name="cvoList[${ status.index }].w_state" value="${ cont.w_state }"></td>
								    	</c:when>
								    	<c:when test='${ cont.w_apply == "y" }'>
								    		<td><input type="button" name="cvoList[${ status.index }].w_state" value="${ cont.w_state }"></td>
								    	</c:when>
								    </c:choose>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="14">입주 정보가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</form>
		<!-- 리스트 끝 -->
	</div>
</body>
</html>