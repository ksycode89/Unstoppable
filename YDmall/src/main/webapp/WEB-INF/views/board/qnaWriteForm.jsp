<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#content-wrapper {
	margin-left: auto;
	margin-right: auto;
}

.button {
	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 -10px;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	font-weight:bold;
	padding: .5em 1em .55em;
	margin-left:20px;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em;
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
	text-decoration: none;
}
.button:active {
	position: relative;
	top: 1px;
}

.bigrounded {
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
}
.medium {
	font-size: 12px;
	padding: .4em 1.5em .42em;
}
.small {
	font-size: 11px;
	padding: .2em 1em .275em;
}

/* color styles
---------------------------------------------- */

/* black */
.black {
	color: #d7d7d7;
	border: solid 1px #333;
	background: #333;
	background: -webkit-gradient(linear, left top, left bottom, from(#666), to(#000));
	background: -moz-linear-gradient(top,  #666,  #000);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#666666', endColorstr='#000000');
}
.black:hover {
	background: #000;
	background: -webkit-gradient(linear, left top, left bottom, from(#444), to(#000));
	background: -moz-linear-gradient(top,  #444,  #000);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#444444', endColorstr='#000000');
}
.black:active {
	color: #666;
	background: -webkit-gradient(linear, left top, left bottom, from(#000), to(#444));
	background: -moz-linear-gradient(top,  #000,  #444);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#000000', endColorstr='#666666');
}

/* rosy */
.rosy {
	color: #fae7e9;
	border: solid 1px #b73948;
	background: #da5867;
	background: -webkit-gradient(linear, left top, left bottom, from(#f16c7c), to(#bf404f));
	background: -moz-linear-gradient(top,  #f16c7c,  #bf404f);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f16c7c', endColorstr='#bf404f');
}
.rosy:hover {
	background: #ba4b58;
	background: -webkit-gradient(linear, left top, left bottom, from(#cf5d6a), to(#a53845));
	background: -moz-linear-gradient(top,  #cf5d6a,  #a53845);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#cf5d6a', endColorstr='#a53845');
}
.rosy:active {
	color: #dca4ab;
	background: -webkit-gradient(linear, left top, left bottom, from(#bf404f), to(#f16c7c));
	background: -moz-linear-gradient(top,  #bf404f,  #f16c7c);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#bf404f', endColorstr='#f16c7c');
}
div table{ 
  border: 3px solid #dca4ab; 
  border-radius: 16px;
  box-shadow: inset 0 0 8px #dca4ab;
  border-style: hidden;
  
}
</style>
</head>
<body>

	<div align="center">
	<br><br>
		<div>
			<h4  margin-bottom: 20px;">질문 등록</h4>
		</div>
		<div>
			<!-- 파일 업로드 하니까 어떤 라이브러리를 쓰든 무조건 enctype="multipart/form-data" 써야합니다. -->
			<form id="frm" action="boardInsert.yd" method="post" enctype="multipart/form-data">
			

				<div>


					<table border="1">
						<tr>
							<th width="150" style="text-align: center;">작성자</th>
							<td width="150"><input  style="width:330px" type="text" id="memberId"
								name="memberId" value="${id }" readonly="readonly"></td>
							<!-- ★★★★ value 로그인 가능하게되면 {$memberId} 로 할 예정 -->

						<tr>
							<th style="text-align: center;">제목</th>
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
							<th style="text-align: center;">내용</th>
							<td colspan="3"><textarea  style="width:330px;" rows="10" cols="80"
									id="boardContent" name="boardContent"></textarea></td>
						</tr>

						<tr>
							<th style="text-align: center;">첨부파일</th>
							<td><input type="file" id="file" name="file"></td>
						</tr>
						
					</table>
				</div>
				<br>
				<div align="center">
					<input type="hidden" id="boardRole" name="boardRole" value="R">
					<input type="button" class="button black" value="뒤로가기" onclick="location.href='qnaSelectList.yd'">
					<input type="submit" class="button black" value="등록">&nbsp;&nbsp;&nbsp;
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