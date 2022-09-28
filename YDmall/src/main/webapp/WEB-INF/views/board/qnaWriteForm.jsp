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
		<div>
			<h2>질문 등록</h2>
		</div>
		<div>
			<!-- 파일 업로드 하니까 어떤 라이브러리를 쓰든 무조건 enctype="multipart/form-data" 써야합니다. -->
			<form id="frm" action="boardInsert.yd" method="post" enctype="multipart/form-data">
				<br>

				<div>


					<table border="1">
						<tr>
							<th width="150">작성자</th>
							<td width="150"><input  style="width:330px" type="text" id="memberId"
								name="memberId" value="손님" readonly="readonly"></td>
							<!-- ★★★★ value 로그인 가능하게되면 {$memberId} 로 할 예정 -->

						<tr>
							<th>제목</th>
							<td colspan="3">
							<input  style="width:330px" type="hidden" id="boardTitle" name="boardTitle" required="required">
								<select name="selectQna" id="selectQna">
								<option value="상품" selected>주문 결제 문의</option>
								<option value="배송">배송 안내 문의</option>
								<option value="교환">교환 및 반품 문의</option>
								<option value="배송">상품 관련 문의</option>
								<option value="기타">기타 문의</option>
								</select>
								</td>
						</tr>

						<tr>
							<th>내용</th>
							<td colspan="3"><textarea  style="width:330px;" rows="10" cols="80"
									id="boardContent" name="boardContent"></textarea></td>
						</tr>

						<tr>
							<th>첨부파일</th>
							<td><input type="file" id="file" name="file"></td>
						</tr>
						
					</table>
				</div>
				<br>
				<div>
					<input type="hidden" id="boardRole" name="boardRole" value="Q">
					<input type="submit" value="등록">&nbsp;&nbsp;&nbsp; <input
						type="reset" value="취소">&nbsp;&nbsp;&nbsp; <input
						type="button" value="목록"
						onclick="location.href='qnaSelectList.yd'">&nbsp;&nbsp;&nbsp;
				</div>
				<br> <br>
			</form>

		</div>
	</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

// 질문 제목 입력방식 선택
$('#selectQna').change(function(){
   $("#selectQna option:selected").each(function () {
			 $("#boardTitle").val($(this).text()); //선택된 값 입력	
   });
});
</script>

</body>
</html>