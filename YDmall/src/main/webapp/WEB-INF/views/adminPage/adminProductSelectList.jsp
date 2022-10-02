<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<h1 class="h3 mb-2 text-gray-800">상품 관리</h1>
				<p class="mb-4">상품을 추가하려면 아래의 상품 추가 버튼을, 상품을 수정하거나 삭제하려면 목록의 상품을 클릭하세요.</p>
				<p class="mb-4">
					<button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button" onclick="location.href='productManageRegistForm.yd'">상품 추가</button>
				</p>
				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">상품 목록</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>NO</th>
										<th>대분류</th>
										<th>소분류</th>
										<th>상품명</th>
										<th>사이즈</th>
										<th>가격</th>
										<th>재고량</th>
										<th>이벤트</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>NO</th>
										<th>대분류</th>
										<th>소분류</th>
										<th>상품명</th>
										<th>사이즈</th>
										<th>가격</th>
										<th>재고량</th>
										<th>이벤트</th>
									</tr>
								</tfoot>
								<!--  db에서 가져오기 -->
								<tbody>
									<c:forEach items="${list }" var="p">
										<tr onclick="selectProduct('${p.productId}')">
											<!-- ==========요기 값넣기 ================== -->
											<td>${p.productId }</td>
											<td>${p.productMajor }</td>
											<td>${p.productMinor }</td>
											<td>${p.productName }</td>
											<td>${p.productSize }</td>
											<td>${p.productPrice }</td>
											<td>${p.productQuantity }</td>
											<td>${p.productEvent }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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
	<div>
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