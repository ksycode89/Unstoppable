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





	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<!-- Top Header Area Start -->
		<div class="top_header_area">
			<div class="container h-100">
				<div class="row h-100 align-items-center justify-content-end">

					<div class="col-12 col-lg-7">
						<div class="top_single_area d-flex align-items-center">
							<!-- Logo Area -->
							<div class="top_logo">
								<a href="main.yd"><img src="img/core-img/logo.png" alt=""></a>
							</div>
							<!-- Cart & Menu Area -->
							<div class="header-cart-menu d-flex align-items-center ml-auto">
								<!-- Cart Area -->
								<div class="cart">
									<a href="#" id="header-cart-btn" target="_blank"><span
										class="cart_quantity">2</span> <i class="ti-bag"></i> Your Bag
										$20</a>
									<!-- Cart List Area Start -->
									<ul class="cart-list">
										<li><a href="#" class="image"><img
												src="img/product-img/product-10.jpg" class="cart-thumb"
												alt=""></a>
											<div class="cart-item-desc">
												<h6>
													<a href="#">Women's Fashion</a>
												</h6>
												<p>
													1x - <span class="price">$10</span>
												</p>
											</div> <span class="dropdown-product-remove"><i
												class="icon-cross"></i></span></li>
										<li><a href="#" class="image"><img
												src="img/product-img/product-11.jpg" class="cart-thumb"
												alt=""></a>
											<div class="cart-item-desc">
												<h6>
													<a href="#">Women's Fashion</a>
												</h6>
												<p>
													1x - <span class="price">$10</span>
												</p>
											</div> <span class="dropdown-product-remove"><i
												class="icon-cross"></i></span></li>
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
		</div>

		<!-- Top Header Area End -->
		<div class="main_header_area">
			<div class="container h-100">
				<div class="row h-100">
					<div class="col-12 d-md-flex justify-content-between">
						<!-- Header Social Area -->
						<div class="header-social-area"></div>
						<div class="header-social-area"></div>
						<!-- Menu Area -->
						<div class="main-menu-area">
							<nav class="navbar navbar-expand-lg align-items-start">

								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#karl-navbar"
									aria-controls="karl-navbar" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"><i class="ti-menu"></i></span>
								</button>

								<div class="collapse navbar-collapse align-items-start collapse"
									id="karl-navbar">
									<ul class="navbar-nav animated" id="nav">
										<li class="nav-item active"><a class="nav-link"
											href="best.yd">BEST</a></li>
										<li class="nav-item"><a class="nav-link" href="notice.yd">SALE</a></li>
										<li class="nav-item"><a class="nav-link" href="top.yd"><span
												class="karl-level">hot</span> TOP</a></li>
										<li class="nav-item"><a class="nav-link" href="bottom.yd">BOTTOM</a></li>
										<li class="nav-item"><a class="nav-link" href="outer.yd">OUTER</a></li>
										<li class="nav-item dropdown"><a
											class="nav-link dropdown-toggle" href="#" id="karlDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">board</a>
											<div class="dropdown-menu" aria-labelledby="karlDropdown">
												<a class="dropdown-item" href="notice.yd">notice</a> <a
													class="dropdown-item" href="sale.yd">event</a> <a
													class="dropdown-item" href="shop.yd">review</a> <a
													class="dropdown-item" href="productDetail.yd">Product
													Details</a> <a class="dropdown-item" href="cart.yd">Cart</a> <a
													class="dropdown-item" href="checkout.yd">Checkout</a>
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
						<!-- Help Line -->
						<div class="help-line">
							<c:if test="${ empty id }">
								<a href="login.yd">Login</a>
								<a href="signUp.yd">회원가입</a>

							</c:if>
							<c:if test="${not empty id }">
								<a href="logout.yd">Logout</a>
							</c:if>

							<c:if test="${author eq '관리자'}">
								<a href="admin.yd">Admin Page</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- ****** Header Area End ****** -->

	<section class="top-discount-area d-md-flex align-items-center">
		<!-- Single Discount Area -->
		<div class="single-discount-area">
			<div class="sub_line"></div>
		</div>
		<!-- Single Discount Area -->
		<div class="single-discount-area">
			<div class="sub_line"></div>
		</div>
		<!-- Single Discount Area -->
		<div class="single-discount-area">
			<div class="sub_line"></div>
		</div>
	</section>

	<!-- ****** Welcome Slides Area Start ****** -->



	<!-- /.wrapper end -->
</body>
</html>