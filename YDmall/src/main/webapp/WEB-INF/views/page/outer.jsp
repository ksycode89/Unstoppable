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
	<h1>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;외투</h1>

	<section class="shop_grid_area section_padding_100">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-4 col-lg-3">
					<div class="shop_sidebar_area">
						<div class="widget catagory mb-50">

							<!--  Side Menu  -->
							<div class="nav-side-menu">
								<h6 class="mb-0">Catagories</h6>
								<div class="menu-list">
									<ul id="menu-content2" class="menu-content collapse out">
										<!-- Single Item -->
										<li data-toggle="collapse" data-target="#best"
											class="collapsed"><a href="best.yd">BEST</a></li>
										<!-- Single Item -->
										<li data-toggle="collapse" data-target="#sale"
											class="collapsed"><a href="#">SALE</a></li>
										<!-- Single Item -->
										<li data-toggle="collapse" data-target="#top"
											class="collapsed"><a href="#">TOP</a>
											<ul class="sub-menu collapse" id="top">
												<li><a href="#">Children Dresses</a></li>
												<li><a href="#">Mini Dresses</a></li>
											</ul></li>
										<!-- Single Item -->
										<li data-toggle="collapse" data-target="#bottom"
											class="collapsed"><a href="#">BOTTOM</a>
											<ul class="sub-menu collapse" id="bottom">
												<li><a href="#">Bags</a></li>
												<li><a href="#">Purses</a></li>
											</ul></li>
										<!-- Single Item -->
										<li data-toggle="collapse" data-target="#outer"
											class="collapsed"><a href="#">OUTER</a>
											<ul class="sub-menu collapse" id="outer">
												<li><a href="#">Eyewear Style 1</a></li>
												<li><a href="#">Eyewear Style 2</a></li>
												<li><a href="#">Eyewear Style 3</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="widget price mb-50">
							<h6 class="widget-title mb-30">Filter by Price</h6>
							<div class="widget-desc">
								<div class="slider-range">
									<div data-min="0" data-max="100000" data-unit="￦"
										class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
										data-value-min="0" data-value-max="30000"
										data-label-result="가격 :">
										<div class="ui-slider-range ui-widget-header ui-corner-all"></div>
										<span class="ui-slider-handle ui-state-default ui-corner-all"
											tabindex="0"></span> <span
											class="ui-slider-handle ui-state-default ui-corner-all"
											tabindex="0"></span>
									</div>
									<div class="range-price">가격 : ￦0 - ￦30000</div>
								</div>
							</div>
						</div>

						<div class="widget size mb-50">
							<h6 class="widget-title mb-30">Filter by Size</h6>
							<div class="widget-desc">
								<ul class="d-flex justify-content-between">
									<li><a href="#">S</a></li>
									<li><a href="#">M</a></li>
									<li><a href="#">L</a></li>
									<li><a href="#">F</a></li>
								</ul>
							</div>
						</div>


					</div>
				</div>

				<div class="col-12 col-md-8 col-lg-9">
					<div class="shop_grid_product_area">
						<div class="row">
							<!-- Single gallery Item -->
							<c:forEach items="${list }" var="p">
								<c:if test="${p.productDefault eq '1' && p.productMajor eq 'OUTER'}">
									<div
										class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig"
										data-wow-delay="0.2s">
										<!-- Product Image -->
										<div class="product-img">
											<img src="img/product-img/product-1.jpg" alt="${p.productAttach }">
											<div class="product-quicview">
											<form id="frm" action="productDetail.do" method="post">
												<input type="hidden" id="pName" name="pName">
											</form>
												<a href="productDetail.yd" onclick="selectProduct('${p.productName }')"><i class="ti-plus"></i></a>
											</div>
										</div>
										<!-- Product Description -->
										<div class="product-description">
											<h4 class="product-price">￦${p.productPrice }</h4>
											<p>${p.productName }</p>
											<!-- Add to Cart -->
											<a href="cart.yd" class="add-to-cart-btn">ADD TO CART</a>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
<form id="frm" action=productDetail.yd method="post">
				<input type="hidden" id="pName" name="pName">
			</form>
		</div>
	</section>
	<script type="text/javascript">
		function selectProduct(name) {
			document.getElementById("pName").value = name;
			frm.submit();
		}
	</script>
</body>
</html>