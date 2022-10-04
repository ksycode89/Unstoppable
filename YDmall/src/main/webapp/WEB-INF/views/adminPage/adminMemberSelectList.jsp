<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



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
				<h1 class="h3 mb-2 text-gray-800">고객관리</h1>
				<p class="mb-4">
					공지공지 <a target="_blank" href="https://google.com"> [누르면 링크]</a>
				</p>
				<form  name=form1 action="adminMemberSearch.yd"  onsubmit="return chekcNull()" method="post">
					<div style="display: inline; margin-left: 15px "> 
							<label for="member_stat">고객 ID 검색 </label>
							<input type="text" id="member_stat" name="memberId">
							<input  class = "d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit" value="검색"  >
					</div>
							</form>

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">고객 리스트</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Id</th>
										<th>Name</th>
										<th>Tel</th>
										<th>addr</th>
										<th>email</th>
										<th>spending</th>
									</tr>
								</thead>
								
								<!--  db에서 가져오기 -->
								<tbody>
									<c:forEach items="${ list }" var="vo">
										<tr onclick="selectMember('${vo.memberId}')"
									onMouseover="this.style.backgroundColor='gainsboro';"
												onMouseout="this.style.backgroundColor='white';"
												
												
									>
									<td> ${vo.memberId}	</td>
									<td> ${vo.memberName}	</td>
									<td> ${vo.memberTel}	</td>
									<td> ${vo.memberAddress}	</td>
									<td> ${vo.memberEmail}	</td>
									<td> ${vo.memberTotalPrice}	</td>
								
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
	
	<form id="frmmm" action="memberManageSelect.yd" method="post">
			<input type="hidden" id="mId" name="mId">
		</form>
<script type="text/javascript">
function chekcNull() {
	let a = document.getElementById('member_stat').value;
	
	if(a == ""){
	
		
		return "";
	}
	return "adminMemberSearch.yd";
}


function selectMember(mid) {
	document.getElementById("mId").value = mid;
	frmmm.submit();
}
</script>
</body>
</html>