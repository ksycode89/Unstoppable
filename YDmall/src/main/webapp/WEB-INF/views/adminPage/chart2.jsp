<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- Sidebar -->


	<!-- Content Wrapper -->


	<!-- Begin Page Content -->
	<div class="container-fluid" style="margin-bottom: 150px">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">통계 차트(년)</h1>
		<p class="mb-4">
			얼마나팔았나요 <a 
				href="monthStatistics.yd">판매내역 (새창)</a>
			<!-- Content Row -->
		<div class="row">

			<div class="col-xl-8 col-lg-7">

				<!-- Area Chart -->
				<div class="card shadow mb-4 ">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">매 출</h6>
					</div>
					<div class="card-body">
						<div class="chart-area">
							<canvas id="myAreaChart2"></canvas>
						</div>
						<hr>
						여긴 년 매출 입니다.
						
					</div>
				</div>


			</div>

			<!-- Donut Chart -->
			<div class="col-xl-4 col-lg-5">
				<div class="card shadow mb-4" style="padding-bottom: 40px">
					<!-- Card Header - Dropdown -->
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">판매 상품</h6>
					</div>
					<!-- Card Body -->
					<div class="card-body">
						<div class="chart-pie pt-4">
							<canvas id="myPieChart2"></canvas>
						</div>
						<hr>
					년 간 판매상품 퍼센트
					</div>
				</div>
			</div>
		</div>
	
	</div>
	<!-- /.container-fluid -->
	<script type="text/javascript">
	function checkbtn() {
		console.log('${list}')
		
	}
	</script>
<!-- Page level custom scripts -->

</body>
</html>