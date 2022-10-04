<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.cart-footer {
    width: 350px;
    height: 60px;
    background-color: white;
    color: black;
    text-align:center;
    font-weight: 1200;
    font-size: 1.5em;
    border:0;
    outline:0;
	margin-left: 130px;    
}
</style>
</head>
<body>
	<div align="center">
		<div>
			<h1>${message}</h1>
		</div>
<!-- 메인 페이지로 돌아가는 버튼 -->
	<div class="cart-footer d-flex mt-30">
		<div class="back-to-shop w-50">
			<a href="main.yd">홈으로 돌아가기</a>
		</div>
	</div>
	</div>
</body>
</html>