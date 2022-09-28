<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">

		<div><h1>게시글 수정</h1></div>
			
		<div>
		<form id="frm" action="boardEdit.yd" method="post" enctype="multipart/form-data">
		<div>
		<table border="1">
			<tr>
				<th width="100">작성자</th>
				<td width="100" align="center">${vo.memberId }</td>			
				<th width="100">작성일</th>
				<td width="100" align="center">${vo.boardDate }</td>
				<th width="100">조회수</th>
				<td width="100" align="center">${vo.boardHit }</td>	
			</tr>
			
			<tr>
				<th>제목</th>
				<td colspan="5" id="boardTitle">${vo.boardTitle }</td>
				</tr>
				
				<tr>
				<th>내용</th>	
					<td colspan="5">
						<textarea rows="10" cols="80" id="boardContent" name="boardContent">${vo.boardContent}</textarea> 
					</td>
				</tr>
				
				<tr>
					<th>첨부파일</th>
					<td colspan="5">
	
					<input type="file" id="boardAttach" name="boardAttach">
					
					</td>
				</tr>
				
		</table>
	</div><br>
	
	<div>
		<input type="hidden" id="boardId" name="boardId" value="${vo.boardId }">
		<input type="hidden" id="boardRole" name="boardRole" value="${vo.boardRole }">
		<input type="hidden" id="boardAttach" name="boardAttach" value="${vo.boardAttach}">
		<input type="submit" value="수정">&nbsp;&nbsp;
		<input type="button" onclick="location.href='noticeSelectList.yd'" value="목록">
		</div>
		</form>
	</div>
	
</div>
</body>
</html>