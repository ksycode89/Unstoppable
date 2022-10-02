<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.cont{
    max-width: 2000px;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-top: 20px;
	margin-left: 40px;
}
.cart{
	margin-bottom: 20px;
	margin-right: 20px;
}
.header-right-side-menu ml-15{
	margin-bottom: 20px;
}
#headerLogo{
	margin-right: 50px;	
}
#headerMenu{
	margin-right: 250px;
}
#headerMypage{
	float: right;
}
#headerCart{
	float: right;
	margin-left: 30px;
}
</style>
</head>
<body>
	<header>
	<div class="main_header_area">
		<div class="cont h-100">
			<div class="row h-100">
			
				<!-- Logo Area -->
				<div class="col-xs-2" id="headerLogo">
					<div class="top_logo">
						<a href="main.yd"><img src="img/core-img/logo.png" alt="Logo"></a>
					</div>
				</div>
				
				<div class="col-xs-6" id="headerMenu">
				
					<!-- Menu Area -->
					<div class="main-menu-area">
						<nav class="navbar navbar-expand-lg align-items-start">
						
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#karl-navbar"
								aria-controls="karl-navbar" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"><i class="ti-menu"></i></span>
							</button>

							<div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar">
								<ul class="navbar-nav animated" id="nav">
                                            <li class="nav-item active"><a class="nav-link" href="best.yd">BEST</a></li>
                                            <li class="nav-item"><a class="nav-link" href="sale.yd">SALE</a></li>
                                            <li class="nav-item"><a class="nav-link" href="top.yd"><span class="karl-level">hot</span> TOP</a></li>
                                            <li class="nav-item"><a class="nav-link" href="bottom.yd">BOTTOM</a></li>
                                            <li class="nav-item"><a class="nav-link" href="outer.yd">OUTER</a></li>
                                            <li class="nav-item dropdown"><a
											class="nav-link dropdown-toggle" href="#" id="karlDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">board</a>
											<div class="dropdown-menu" aria-labelledby="karlDropdown">

												<a class="dropdown-item" href="noticeSelectList.yd">notice</a>
												<a class="dropdown-item" href="reviewSelectList.yd">review</a>
												<a class="dropdown-item" href="qnaSelectList.yd">q & a</a>

											</div></li>
											<c:if test="${ not empty id }">
											<li class="nav-item dropdown"><a
												class="nav-link dropdown-toggle" href="memberMyPage.yd"
												id="karlDropdown" role="button" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false">MyPage</a>
												<div class="dropdown-menu" aria-labelledby="karlDropdown">
													<a class="dropdown-item" href="memberMyPage.yd">정보조회</a> 
													<a class="dropdown-item" href="memberOrder.yd">주문조회</a>
														<a class="dropdown-item" href="memberOrderHistory.yd">구매내역</a>
													<a class="dropdown-item" href="memberDelete.yd">회원탈퇴</a>
												</div></li>
										</c:if>
											
                                        </ul>
							</div>
							
						</nav>
					</div>
					
				</div>
				
				<div class="col-xs-2" id="headerMypage">
					  <div class="help-line">
				<c:if test="${ empty id }">
								<a href="login.yd">Login</a>
								<a href="signUp.yd">회원가입</a>

							</c:if>
							<c:if test="${not empty id }">
								<a href="#">${id}등장</a>
								<a href="logout.yd">Logout</a>
							</c:if>
<a href="admin.yd">Admin</a>
							<c:if test="${author eq '관리자'}">
							</c:if>


					</div>
				</div>
				
				<div class="col-xs-2" id="headerCart">
					<div class="header-cart-menu d-flex align-items-center ml-auto">
						<!-- Cart Area -->
						<div class="cart">
							<a href="#" id="header-cart-btn" target="_blank"><span
								class="cart_quantity">2</span> <i class="ti-bag"></i></a>
							<!-- Cart List Area Start -->
							<ul class="cart-list">
								
								<li class="total"><span class="pull-right">Total:
										$20.00</span> <a href="cart.yd" class="btn btn-sm btn-cart">Cart</a>
									<a href="chekout.yd" class="btn btn-sm btn-checkout">Checkout</a>
								</li>
							</ul>
						</div>
						<div class="header-right-side-menu ml-15">
							<a href="#" id="sideMenuBtn"><i class="ti-menu"
								aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!-- ****** Header Area End ****** -->

	<!-- /.wrapper end -->
</body>
</html>