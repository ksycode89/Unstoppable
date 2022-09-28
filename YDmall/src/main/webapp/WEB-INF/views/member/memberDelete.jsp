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
		<form action="memberDeleteAction.yd" method="post">
			<div class="row">
				<div class="col-12 mb-3">
					<h3>MUZHCUK에서 이용가능한 모든 혜택(웰컴쿠폰 등)을 받을 수 없습니다.</h3>
					<h4>정말 탈퇴하시겠습니까?</h4><br>

					<input type="submit" id="memberId" class="btn karl-checkout-btn"
						style="width: 150px" height="50px" value="탈퇴하기">&nbsp;&nbsp;&nbsp;
					<input type="hidden" name="id" value="${id}">
					<input type="reset" class="btn karl-checkout-btn"
						style="width: 150px" height="50px" value="취소" onclick="location.href='main.yd'">
				</div>
			</div>
		</form>
	</div>

</body>
</html>