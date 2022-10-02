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
th{
	width: 150px;
}
#hiddenTest{
	display: none;
}
</style>
<body>
	<div align="center"><h1>상품 등록</h1></div><br>
	<form id="frm" action="productManageRegist.yd" method="post">
		<div align="center">
			<table>
				<tr id="hiddenTest">
					<th>상품 고유 번호(자동 입력)</th>
					<td><input type="number" id="productId" name="productId" value=1></td>
				</tr>
				<tr>
					<th>대분류</th>
					<td>
						<select class="form-control" id="productMajor" name="productMajor" required="required">
							<option disabled selected>--대분류--</option>
							<option value="TOP">상의(TOP)</option>
							<option value="BOTTOM">하의(BOTTOM)</option>
							<option value="OUTER">외투(OUTER)</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>소분류</th>
					<td><input type="text" class="form-control" id="productMinor" name="productMinor" required="required"></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" class="form-control" id="productName" name="productName" required="required"></td>
				</tr>
				<tr>
					<th>상품 사이즈</th>
					<td><input type="text" class="form-control" id="productSize" name="productSize"></td>
				</tr>
				<tr>
					<th>상품 가격</th>
					<td><input type="number" class="form-control" id="productPrice" name="productPrice"></td>
				</tr>
				<tr>
					<th>상품 재고</th>
					<td><input type="number" class="form-control" id="productQuantity" name="productQuantity"></td>
				</tr>
				<tr>
					<th>상품 이벤트</th>
					<td>
						<select class="form-control" id="productEvent" name="productEvent">
							<option value="-">----</option>
							<option value="BEST">BEST</option>
							<option value="SALE">SALE</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>상품 대표 노출값</th>
					<td>
						<select class="form-control" id="productDefault" name="productDefault">
							<option value="0">설정하지 않음(0)</option>
							<option value="1">대표로 설정(1)</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>상품 설명</th>
					<td><textarea rows="5" cols="60" class="form-control"id="productExplain" name="productExplain" placeholder="대표값으로 설정된 상품에만 적어도 됩니다."></textarea></td>
				</tr>
			</table>
		</div><br>
		<div align="center">
			<input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit" value="등록">&nbsp;&nbsp;&nbsp;
			<input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button" value="목록" onclick="location.href='adminProductSelectList.yd'">
		</div><br>
	</form>
</body>
</html>