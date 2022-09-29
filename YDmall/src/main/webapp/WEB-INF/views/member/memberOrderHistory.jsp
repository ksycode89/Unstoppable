<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="JiniZzang"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>내 구매내역</title>

<style type="text/css">
#content-wrapper {
	margin-left: auto;
	margin-right: auto;
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
			<nav
				class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

				<!-- Sidebar Toggle (Topbar) -->
				<form class="form-inline">
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
				</form>

				<!-- Topbar Search -->


				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">

					<!-- Nav Item - Search Dropdown (Visible Only XS) -->
					<li class="nav-item dropdown no-arrow d-sm-none"><a
						class="nav-link dropdown-toggle" href="#" id="searchDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
					</a> <!-- Dropdown - Messages -->
						<div
							class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
							aria-labelledby="searchDropdown"></div></li>

					<!-- Nav Item - Alerts -->

					<!-- Nav Item - Messages -->




					<!-- Nav Item - User Information -->

				</ul>

			</nav>
			<!-- End of Topbar -->

			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Page Heading -->
				<h1 class="h3 mb-2 text-gray-800">My구매내역</h1>
				<p class="mb-4">
					구매내역 보기<a target="_blank" href="https://google.com"> [누르면 링크]</a>
				</p>

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">${id }님의총
							구매내역입니다.</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>주문번호</th>
										<th>구매수량</th>
										<th>상품명</th>
										<th>총 주문금액</th>
										<th>구매일</th>
										<th>배송상태</th>
										<th>구매확정</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>주문번호</th>
										<th>구매수량</th>
										<th>상품명</th>
										<th>총 주문금액</th>
										<th>구매일</th>
										<th>배송상태</th>
										<th>구매확정</th>

									</tr>
								</tfoot>
								<!-- DB에서 가져오는 곳 -->
								<tbody>
									<JiniZzang:forEach items="${name}" var="merong">
										<tr>
											<td>${ merong.salesId}</td>
											<td>${ merong.salesQuantity}</td>
											<td>${ merong.productName}</td>
											<td>${ merong.salesTotalPrice}</td>
											<td>${ merong.salesDate.substring(0,11)}</td>
											<td>${ merong.salesDeliveryStatus}</td>
											<td><JiniZzang:if
													test="${ merong.salesDeliveryStatus eq '배송완료'}">
													<button>구매확정</button>
												</JiniZzang:if></td>
										</tr>
									</JiniZzang:forEach>
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


</body>
</html>