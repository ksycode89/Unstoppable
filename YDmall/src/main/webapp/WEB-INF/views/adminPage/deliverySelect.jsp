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
	<div align="center"><h1>배송 정보</h1></div><br>
		<div align="center">
			<table>
				
				<tr>
					<th>배송 번호</th>
					<td><input type="text" class="form-control" id="productMajor" name="productMajor" value="${vo.salesId}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>고객 아이디</th>
					<td><input type="text" class="form-control" id="productMinor" name="productMinor" value="${vo.memberId}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>제품 이름</th>
					<td><input type="text" class="form-control" id="productSize" name="productSize" value="${vo.productName}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>구매 수량</th>
					<td><input type="text" class="form-control" id="productPrice" name="productPrice" value="${vo.salesQuantity }" readonly="readonly"></td>
				</tr>
				
				<tr>
					<th>구매 총가격</th>
					<td><input type="text" class="form-control" id="productEvent" name="productEvent" value="${ vo.salesTotalPrice}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>상품사이즈</th>
					<td><input type="text" class="form-control" id="productDefault" name="productDefault" value="${vo.productSize }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>구매일</th>
					<td><input type="text" class="form-control" id="productDefault" name="productDefault" value="${vo.salesDate }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>배송상태</th>
					<td><input type="text" class="form-control" id="productDefault" name="productDefault" value="${vo.salesDeliveryStatus }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>배송번호</th>
					<td><input type="text" class="form-control" id="productDefault" name="productDefault" value="${vo.salesDeliveryId }" readonly="readonly"></td>
				</tr>
				
			</table>
		</div><br>
		<div align="center">
			<button id="confirmStart2" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button">삭제</button>&nbsp;&nbsp;&nbsp;
			<button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button" onclick="location.href='adminMemberSelectList.yd'">목록</button>
		</div><br>
	<form id="frmDel" method="post">
				<input type="hidden" id="mId2" name="mId2" value="${vo.memberId }">
			</form>
			
	       <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script>
/* 	function subCall(str){
		
		frmDel.action = "memberManageRemove.yd";  //삭제
		
		
		frmDel.submit();
	} */
	
	 $().ready(function () {
         $("#confirmStart2").click(function () {
        	 Swal.fire({
                 title: '정말로 ${vo.memberId}의 정보를 삭제 하시겠습니까?',
                 text: "다시 되돌릴 수 없습니다. 신중하세요.",
                 icon: 'warning',
                 showCancelButton: true,
                 confirmButtonColor: '#3085d6',
                 cancelButtonColor: '#d33',
                 confirmButtonText: '승인',
                 cancelButtonText: '취소'
             }).then((result) => {
                 if (result.isConfirmed) {
                     Swal.fire(
                    		 '삭제승인이 완료되었습니다.',
                         '${vo.memberId}의 탈퇴처가 완료되었습니다.',
                         'success'
                        
                     ).then(function(){
                    	 frmDel.action = "memberManageRemove.yd";  //삭제
                 		frmDel.submit();            
                     })
                 }
             })
         });
     });
	</script>
</body>
</html>