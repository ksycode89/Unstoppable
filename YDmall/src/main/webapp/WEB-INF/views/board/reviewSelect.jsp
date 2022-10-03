	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
</style>
<body>
	<div align="center">

		<div>
			<h3>Review</h3>
		</div>
		<br>
		<div>
			<table border="1">
				<tr align="center">
					<th width="100">작성자</th>
					<td width="100" >${vo.memberId }</td>
					<th width="100">작성일</th>
					<td width="100" >${vo.boardDate }</td>
					<th width="100">조회수</th>
					<td width="100">${vo.boardHit }</td>
				</tr>


				<tr>
					<th style="text-align: center;">제목</th>
					<td colspan="6">&nbsp;${vo.boardTitle }</td>
				</tr>

				<tr>
					<th style="text-align: center;">내용</th>

					<td colspan="6" height="150"><c:if
							test="${not empty vo.boardAttach}">
							<!-- 첨부파일이 있으면 보이도록 -->
							<p>
								<img src="./img/resources/${vo.boardAttach}" />
							</p>
						</c:if>&nbsp;${vo.boardContent }</td>
				</tr>

				<c:if test="${not empty vo.boardAttach}">
					<!-- 첨부파일이 있으면 보이도록 -->
					<tr>
						<th style="text-align: center;">첨부파일</th>
						<td colspan="6">${vo.boardAttach}</td>
					</tr>
				</c:if>
			</table>
		</div>
		<hr>
		<!-- 구분선 -->

		<div>
			<!-- 덧글 리스트 출력 -->
			<table border="1" width="600px">		
			<thead>
					<tr>
						<th width="100"></th>
						<th></th>
						<th  width="200"></th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty replyList}">
						<tr>
							<td colspan="3" align="center">덧글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty replyList }">
						<c:forEach items="${replyList }" var="r">
							<tr onMouseover="this.style.backgroundColor='yellow';"
								onMouseout="this.style.backgroundColor='white';">
								<td align="center" <c:if test="${r.memberId eq 'admin'}">style="color:blue; font-weight:bold;"</c:if>
								>${r.memberId }</td>
								<td align="center">${r.boardContent }</td>
								<td align="center">${r.boardDate }
								<c:if test="${id eq r.memberId || author eq '관리자'}">
								<button type="button" onclick="replyDelete('${r.memberId}','${r.boardDate}')" style="cursor:pointer">삭제</button>
								</c:if>
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
		
		<c:if test="${empty id}">
		<div>
			<table border="1">
				<tr>
					<th width="600"><span>덧글 등록을 원하시면 로그인 해주세요.</span></th>
				</tr>
				<br>
			</table></div>
		
		</c:if>
		
		<c:if test="${not empty id}">
		<br>
			<div>
				<!-- 덧글 남기기 창 시작 -->
				<table border="1">

					<tr>
						<th width="300"><span>&nbsp;&nbsp;</span>${id}</th>
					</tr>

					<tr>
						<td colspan="3"><input style="width: 600px" type="text"
							id="replyContent" name="replyContent"></td>
					</tr>
				</table>
				
			</div>
		</c:if>

		<hr>
		<!-- 구분선 -->
		<div>
			<!-- 수정 | 삭제 | 목록 | 덧글 입력 |버튼 나열 시작 -->
			<c:if test="${not empty id}">
				<c:if test="${id eq vo.memberId }">
					<button type="button" onclick="subCall('E')" style="cursor:pointer">글 수정</button>&nbsp;&nbsp;
				</c:if>
				<c:if test="${id eq vo.memberId}">
					<button type="button" onclick="realDelete('D')" style="cursor:pointer">글 삭제</button>&nbsp;&nbsp;
				</c:if>
			</c:if>

			<button type="button" onclick="location.href='reviewSelectList.yd'" style="cursor:pointer">뒤로 가기</button>&nbsp;&nbsp;
			<span> </span><button type="button" onclick="insertReply(replyContent.value)" style="cursor:pointer">덧글 등록</button>
		</div>
		<br>

		<div>
			<form id="frm" method="post">
				<input type="hidden" id="bId" name="bId" value="${vo.boardId }">
				<input type="hidden" id="role" name="role" value="${vo.boardRole}">
				<input type="hidden" id="mId" name="mId" value="${id}">
				<input type="hidden" id="reply" name="reply">
				<input type="hidden" id="date" name="date" >
				<input type="hidden" id="rmId" name="rmId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	
		function insertReply(reply) {
			
		if (document.getElementById("replyContent").value != "") {
				document.getElementById("reply").value = reply;
				 frm.action = "boardReplyInsert.yd";
				frm.submit(); 
			} else if(document.getElementById("replyContent").value == "") {
				alert("덧글 내용을 입력해주세요.")
			}
		}

		function realDelete(str) {

			var result = confirm("정말 삭제하시겠습니까?");
			if (result) { /* 예(true)를 누르면 */
				subCall(str)
			} else { /* 아니오(false)를 누르면 */
			}

		}
		function subCall(str) {
			if (str == 'E') {
				frm.action = "boardEditForm.yd"; //수정
			} else if (str == 'D') {
				
				frm.action = "boardDelete.yd"; //삭제
			} 
			frm.submit();
		}
	
		function replyDelete(id, date) {
			document.getElementById("rmId").value = id;
			document.getElementById("date").value = date;
			
			var result = confirm("덧글을 삭제하시겠습니까?");
			if(result){ /* 예(true)를 누르면 */
				frm.action = "replyDelete.yd";
				frm.submit(); 
			}else{ /* 아니오(false)를 누르면 */  
			}
		}
	</script>

</body>
</html>