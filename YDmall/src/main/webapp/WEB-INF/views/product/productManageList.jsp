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
			<h1>상품 목록</h1>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>NO</th>
						<th>대분류</th>
						<th>소분류</th>
						<th>상품명</th>
						<th>가격</th>
						<th>설명</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="p">
						<tr onclick="selectProduct('${p.productId}')">
							<td>${p.productId }</td>
							<td>${p.productMajor }</td>
							<td>${p.productMinor }</td>
							<td>${p.productName }</td>
							<td>${p.productSize }</td>
							<td>${p.productPrice }</td>
							<td>${p.productDefault }</td>
							<td>${p.productExplain }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<button type="button"
				onclick="location.href='productManageRegistForm.yd'">추가</button>
		</div>
		<form id="frm" action=productManageSelect.yd method="post">
			<input type="hidden" id="pId" name="pId">
		</form>
	</div>
	<script type="text/javascript">
		function selectProduct(id) {
			document.getElementById("pId").value = id;
			frm.submit();
		}
	</script>
</body>
</html>