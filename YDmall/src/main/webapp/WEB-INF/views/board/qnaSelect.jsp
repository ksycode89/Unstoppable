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
	font-size: 13px;
	font-weight:bold;
	padding: .4em 1.2em .42em;
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

		<div><h4>Q & A</h4></div>
	<br>
		<div>
			<table border="1">
				<tr align="center">
					<th width="100" >작성자</th>
					<td width="100">${vo.memberId }</td>
					<th width="100">작성일</th>
					<td width="100">${vo.boardDate }</td>
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
				<tr align="center">
					<th style="text-align: center;">첨부파일</th>
					<td colspan="6" style="text-align: left;">${vo.boardAttach}</td>
				</tr>
				</c:if>
			</table>
		</div>
<br>
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
							<tr>
								<td align="center" <c:if test="${r.memberId eq 'admin'}">style="color:blue; font-weight:bold;"</c:if>
								>${r.memberId }</td>
								<td style="text-align:left;">${r.boardContent }</td>
								<td align="center">${r.boardDate } 
								<c:if test="${id eq r.memberId || author eq '관리자'}">
								<button type="button" class="button rosy small" onclick="replyDelete('${r.memberId}','${r.boardDate}')">DEL</button>
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
						<td colspan="3"><input style="width: 600px" type="text"
							id="replyContent" name="replyContent"></td>
					</tr>
				</table>
				
			</div>
		</c:if>

		<br>
		<!-- 구분선 -->
		<div style="margin-left: 515px; margin-top: -15px;">
			<c:if test="${not empty id}">
				<button type="button" class="button black medium"
					onclick="insertReply(replyContent.value)" style="cursor: pointer">덧글
					등록</button>
			</c:if>
		</div>
		<br>
		<div>
			<!-- 수정 | 삭제 | 목록 | 덧글 입력 |버튼 나열 시작 -->
			<c:if test="${not empty id}">
				<c:if test="${id eq vo.memberId }">
					<button type="button" class="button black bigrounded"
						onclick="subCall('E')">글 수정</button>&nbsp;&nbsp;
				</c:if>
				<c:if test="${id eq vo.memberId || author eq '관리자'}">
					<button type="button" class="button black bigrounded"
						onclick="realDelete('D')">글 삭제</button>&nbsp;&nbsp;
				</c:if>
			</c:if>



			<button type="button" class="button black bigrounded"
				onclick="location.href='reviewSelectList.yd'"
				style="cursor: pointer">뒤로 가기</button>
			&nbsp;&nbsp;
		</div>
		<br><br>
	</div>
	
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