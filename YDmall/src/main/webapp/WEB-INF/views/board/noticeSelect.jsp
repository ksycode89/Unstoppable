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
.button {
	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 2px;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
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
	font-weight:bold;
}
.medium {
	font-size: 12px;
	padding: .4em 1.5em .42em;
}
.small {
	font-size: 11px;
	padding: .275em .2em .275em;
	margin-bottom: 5px;
	font-weight: bold;
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
<body>
	<div align="center">

		<div><h4>NOTICE</h4></div>
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
				<button type="button" class="button black  bigrounded" onclick="subCall('E')">글 수정</button>&nbsp;&nbsp;
				<button type="button" class="button black  bigrounded" onclick="realDelete('D')">글 삭제</button>&nbsp;&nbsp;
				</c:if>
		
			<button type="button" class="button black bigrounded" onclick="location.href='noticeSelectList.yd'">뒤로 가기</button>
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