<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.hidden-data{
}
</style>

</head>
<body id="page-top">

	<!-- Page Wrapper -->




	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column"
		style="width: 1200px">

		<!-- Main Content -->
		<div id="content">

			<!-- Topbar -->
			
			<!-- End of Topbar -->

			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Page Heading -->
				<h1 class="h3 mb-2 text-gray-800">고객관리</h1>
				<p class="mb-4">
					공지공지 <a target="_blank" href="https://google.com"> [누르면 링크]</a>
				</p>

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">공지일지도</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
			
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Sales ID</th>
										<th>Member ID</th>
										<th>Product Name</th>
										<th>Sales Quantity</th>
										<th>Sales Total Price</th>
										<th>Sales Date</th>
									</tr>
								</thead>
								<!--  db에서 가져오기 -->
								
								<tbody class="tbody-test">
								<c:set var="price_sum" value="0" />
									<c:forEach items="${ list }" var="vo">
									<tr>
									<td> ${vo.salesId}	</td>
									<td> ${vo.memberId}	</td>
									<td> ${vo.productName}	</td>
									<td> ${vo.salesQuantity}	</td>
									<td class="total-money" > ${vo.salesTotalPrice }</td>
								<c:set var="price_sum" value="${price_sum + vo.salesTotalPrice}" />
									<td > ${vo.salesDate.substring(0	,10)} </td>
									
									</tr>
									</c:forEach>
									


								</tbody>
								<tfoot>
						
								</tfoot>
							</table>
							<br><br>
							<div style="display: inline; margin-left: 50px"> 
							<label for="member_stat">고객통계 - </label>
							<input type="text" id="member_stat" name="memberId">
								<button onclick="searchMem()"> 검색</button>
							</div>
							
							<div  style="display: inline; margin-left: 250px">
							<label for="member_stat">상품 통계 - </label>
							<input type="text" id="product_stat" name="productName">
								<button onclick="tt()"> 검색</button>
							</div>
							<br><br><br>
							
							
						</div>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->

		<!-- Footer -->

		<!-- End of Footer -->

	</div>
	<!-- End of Content Wrapper -->


	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	function  searchMem() {
		let id = document.getElementById("member_stat").value

		fetch('ajaxMemberStat.yd?id='+id)
		.then(result => result.text())
		.then(data => {
			dataforEach(element => {
				
			});
		})
	}

	

	
	
	</script>
</body>
</html>