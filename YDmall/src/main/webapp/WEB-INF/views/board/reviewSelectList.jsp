<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Tables</title>

<style type="text/css">
#content-wrapper {
	margin-left: auto;
	margin-right: auto;
}

.button {
	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 2px;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	font-weight:bold;
	padding: .5em 1em .55em;
	margin-left:20px;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em;
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
	text-decoration: none;
}
.button:active {
	position: relative;
	top: 1px;
}

.bigrounded {
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
}
.medium {
	font-size: 12px;
	padding: .4em 1.5em .42em;
}
.small {
	font-size: 11px;
	padding: .2em 1em .275em;
}

/* color styles
---------------------------------------------- */

/* black */
.black {
	color: #d7d7d7;
	border: solid 1px #333;
	background: #333;
	background: -webkit-gradient(linear, left top, left bottom, from(#666), to(#000));
	background: -moz-linear-gradient(top,  #666,  #000);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#666666', endColorstr='#000000');
}
.black:hover {
	background: #000;
	background: -webkit-gradient(linear, left top, left bottom, from(#444), to(#000));
	background: -moz-linear-gradient(top,  #444,  #000);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#444444', endColorstr='#000000');
}
.black:active {
	color: #666;
	background: -webkit-gradient(linear, left top, left bottom, from(#000), to(#444));
	background: -moz-linear-gradient(top,  #000,  #444);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#000000', endColorstr='#666666');
}

/* rosy */
.rosy {
	color: #fae7e9;
	border: solid 1px #b73948;
	background: #da5867;
	background: -webkit-gradient(linear, left top, left bottom, from(#f16c7c), to(#bf404f));
	background: -moz-linear-gradient(top,  #f16c7c,  #bf404f);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f16c7c', endColorstr='#bf404f');
}
.rosy:hover {
	background: #ba4b58;
	background: -webkit-gradient(linear, left top, left bottom, from(#cf5d6a), to(#a53845));
	background: -moz-linear-gradient(top,  #cf5d6a,  #a53845);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#cf5d6a', endColorstr='#a53845');
}
.rosy:active {
	color: #dca4ab;
	background: -webkit-gradient(linear, left top, left bottom, from(#bf404f), to(#f16c7c));
	background: -moz-linear-gradient(top,  #bf404f,  #f16c7c);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#bf404f', endColorstr='#f16c7c');
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
				<h1 class="h3 mb-2 text-gray-800">REVIEW</h1>
				<p class="mb-4">
			

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">리뷰를 남기면 추첨을 통해 포인트 지급!</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<c:if test="${not empty id && author eq '관리자'}">
										<th><input type="checkbox" name="selectAll" value='selectAll' onclick='selectAll(this)'></th>
										</c:if>
										<th>번호</th>
										<th>상품명</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회수</th>

									</tr>
								</thead>

								<tbody>

									<c:if test="${empty list}">
										<tr>
											<td colspan="6" align="center">게시글이 존재하지 않습니다.</td>
										</tr>
									</c:if>
									<c:if test="${not empty list }">
										<c:forEach items="${list }" var="n">
											<tr onMouseover="this.style.backgroundColor='yellow';"
												onMouseout="this.style.backgroundColor='white';"
												>
												
												<c:if test="${not empty id && author eq '관리자'}">
												<td><input type="checkbox" name="chk" value="" onclick='checkSelectAll()'></td>
												</c:if>
												<td align="center">${n.boardId }</td>
												<td width="100px;" 
												onMouseover="this.style.width='200px';"
												onMouseout="this.style.width='100px';"
												
												><img src="img/product-img/product-1.jpg" > </td>
												<td onclick="selectReview('${n.boardId}','${n.boardRole}','${id}')" style="cursor:pointer">${n.boardTitle }</td>
												<td align="center">${n.memberId }</td>
												<td align="center">${n.boardDate }</td>
												<td align="center">${n.boardHit }</td>
											
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
			<div>
			<form id="frm" action="reviewSelect.yd" method="post">
				<input type="hidden" id="bId" name="bId">
				<input type="hidden" id="role" name="role">
				<input type="hidden" id="id" name="id">
				<c:if test="${not empty id && author eq '회원'}">
				<button type="button" class="button rosy" onclick="location.href='reviewWriteForm.yd'" style="float: right;">글쓰기</button>
			 	</c:if> 
			</form>
		</div>
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
		</div></div>
		
		<script type="text/javascript">
	
	function selectReview(bId,role,mId) {
		document.getElementById("bId").value=bId;
		document.getElementById("role").value=role;
		document.getElementById("id").value=mId;
		
		frm.submit();
	}
	
	function checkSelectAll()  {
		  
		// 전체 체크박스
		  const checkboxes 
		    = document.querySelectorAll('input[name="chk"]');
		  
		  // 선택된 체크박스
		  const checked 
		    = document.querySelectorAll('input[name="chk"]:checked');
		 
		  // select all 체크박스
		  const selectAll 
		    = document.querySelector('input[name="selectAll"]');
		  
		  if(checkboxes.length === checked.length) {
		    selectAll.checked = true;}
		  else {selectAll.checked = false;}

		}
	
	function selectAll(selectAll)  {
	const checkboxes = document.getElementsByName('chk');
	checkboxes.forEach((checkbox) => { checkbox.checked = selectAll.checked; })
	}
	</script>
		
		
</body>
</html>