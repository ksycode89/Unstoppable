<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div><h3>상품 등록</h3></div>
	<form id="frm" action="productManageRegist.yd" method="post">
		<div align="center">
			<table>
				<tr>
					<th>상품 번호</th>
					<td><input type="number" id="productId" name="productId"></td>
				</tr>
				<tr>
					<th>대분류</th>
					<td><input type="text" id="productMajor" name="productMajor" required="required"></td>
				</tr>
				<tr>
					<th>소분류</th>
					<td><input type="text" id="productMinor" name="productMinor" required="required"></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" id="productName" name="productName" required="required"></td>
				</tr>
				<tr>
					<th>상품 사이즈</th>
					<td><input type="text" id="productSize" name="productSize"></td>
				</tr>
				<tr>
					<th>상품 가격</th>
					<td><input type="number" id="productPrice" name="productPrice"></td>
				</tr>
				<tr>
					<th>상품 재고</th>
					<td><input type="number" id="productQuantity" name="productQuantity"></td>
				</tr>
				<tr>
					<th>상품 이벤트 여부</th>
					<td><input type="text" id="productEvent" name="productEvent"></td>
				</tr>
				<tr>
					<th>상품 노출 설정 여부(노출할거면 1)</th>
					<td><input type="text" id="productDefault" name="productDefault"></td>
				</tr>
				<tr>
					<th>상품 설명(default값 1인것만 쓰면됨)</th>
					<td><textarea rows="10" cols="80" id="productExplain" name="productExplain"></textarea></td>
				</tr>
			</table>
		</div><br>
		<div>
			<input type="submit" value="등록">&nbsp;&nbsp;&nbsp;
			<input type="button" value="목록" onclick="location.href='productManageList.yd'">
		</div>
	</form>
</body>
</html>