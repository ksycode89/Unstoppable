<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">

		<div><h3>NOTICE</h3></div>
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
		
					<td colspan="6" height="150">
					<c:if test="${not empty vo.boardAttach}"> <!-- 첨부파일이 있으면 보이도록 -->
					<p><img src="./img/resources/${vo.boardAttach}"/></p>
					</c:if>
					&nbsp;${vo.boardContent }</td>
				</tr>
				
					<c:if test="${not empty vo.boardAttach}"> <!-- 첨부파일이 있으면 보이도록 -->
				<tr>
					<th style="text-align: center;">첨부파일</th>
					<td colspan="6">${vo.boardAttach}</td>
				</tr>
				</c:if>
			</table>
		</div>
		<br>

		<div>
				<c:if test="${not empty id && author eq '관리자' }">
				<button type="button" onclick="subCall('E')">글 수정</button>&nbsp;&nbsp;
				<button type="button" onclick="realDelete('D')">글 삭제</button>&nbsp;&nbsp;
				</c:if>
			
			<button type="button" onclick="location.href='noticeSelectList.yd'">뒤로 가기</button>
		</div>
<br>
	</div>
	<div>
		<form id="frm" method="post">
			<input type="hidden" id="id" name="id" value="${vo.boardId }">
			<input type="hidden" id="role" name="role" value="${vo.boardRole}">
		</form>
	</div>

	<script type="text/javascript">
	
	function realDelete(str) {
		
		var result = confirm("정말 삭제하시겠습니까?");
		if(result){ /* 예(true)를 누르면 */
			subCall(str)
		}else{ /* 아니오(false)를 누르면 */  
		}
		
	}
	
		function subCall(str) {
			if (str == 'E') {
				frm.action = "boardEditForm.yd"; //수정
			} else if (str == 'D'){
				frm.action = "boardDelete.yd"; //삭제
			}
			frm.submit();
		}
	</script>

</body>
</html>