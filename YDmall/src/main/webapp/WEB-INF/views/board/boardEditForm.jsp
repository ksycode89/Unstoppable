<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">


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

body{
font-family: 'Noto Serif KR', serif;
}

h4 {
 font-family: 'Noto Serif KR', serif;"
}
</style>
</head>

<body>
<div align="center">

		<div><h4>══════•°• 게시글 수정 •°•══════</h4></div>
			
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