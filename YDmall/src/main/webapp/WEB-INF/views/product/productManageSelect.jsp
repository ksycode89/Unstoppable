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
	width: 100px;
}
#hiddenTest{
	display: none;
}
</style>
<body>
	<div align="center"><h1>상품 정보</h1></div><br>
		<div align="center">
			<table>
				<tr id="hiddenTest">
					<th>상품 고유 번호(자동 입력)</th>
					<td>${detail.productId }</td>
				</tr>
				<tr>
					<th>상품 대분류</th>
					<td><input type="text" class="form-control" id="productMajor" name="productMajor" value="${detail.productMajor}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품 소분류</th>
					<td><input type="text" class="form-control" id="productMinor" name="productMinor" value="${detail.productMinor}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품 사이즈</th>
					<td><input type="text" class="form-control" id="productSize" name="productSize" value="${detail.productSize}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품 가격</th>
					<td><input type="text" class="form-control" id="productPrice" name="productPrice" value="${detail.productPrice }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품 재고</th>
					<td><input type="text" class="form-control" id="productQuantity" name="productQuantity" value="${detail.productQuantity }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품 이벤트</th>
					<td><input type="text" class="form-control" id="productEvent" name="productEvent" value="${detail.productEvent }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품 디폴트</th>
					<td><input type="text" class="form-control" id="productDefault" name="productDefault" value="${detail.productDefault }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품 설명</th>
					<td><textarea class="form-control" rows="10" cols="80">${detail.productExplain }</textarea></td>
				</tr>
			</table>
		</div><br>
		<div align="center">
			<button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button" onclick="subCall('E')">수정</button>&nbsp;&nbsp;&nbsp;
			<button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button" onclick="subCall('R')">삭제</button>&nbsp;&nbsp;&nbsp;
			<button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button" onclick="location.href='adminProductSelectList.yd'">목록</button>
		</div><br>
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="pId" name="pId" value="${detail.productId }">
			</form>
		</div>
	<script>
	function subCall(str){
		if(str == 'E') {
			frm.action = "productManageEditForm.yd"; //수정
		} else if(str=='R') {
			frm.action = "productManageRemove.yd";  //삭제
		}
		
		frm.submit();
	}
	</script>
</body>
</html>