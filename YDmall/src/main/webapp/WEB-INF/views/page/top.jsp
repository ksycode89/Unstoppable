<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;상의</h1>

	<section class="shop_grid_area section_padding_100">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-4 col-lg-3">
					<div class="shop_sidebar_area">
						<div class="widget catagory mb-50">

							<!--  Side Menu  -->
							<div class="nav-side-menu">
								<h6 class="mb-0">Categories</h6>
								<div class="menu-list">
									<ul id="menu-content2" class="menu-content collapse out">
										<!-- BEST -->
										<li data-toggle="collapse" data-target="#best"
											class="collapsed"><a href="best.yd">BEST</a></li>
										<!-- SALE -->
										<li data-toggle="collapse" data-target="#sale"
											class="collapsed"><a href="sale.yd">SALE</a></li>
										<!-- TOP -->
										<li data-toggle="collapse" data-target="#top"
											class="collapsed"><a href="#">TOP</a>
											<ul class="sub-menu collapse" id="top">
												<li><input type="hidden" id="productMinor"
													name="productMinor" value="SHIRT"> <a href="top.yd">SHIRT</a>
												</li>
												<li><input type="hidden" id="productMinor"
													name="productMinor" value="HOOD"> <a href="top.yd">HOOD</a>
												</li>
												<li><input type="hidden" id="productMinor"
													name="productMinor" value="MTM"> <a href="top.yd">MTM</a>
												</li>
											</ul>
										</li>
										<!-- BOTTOM -->
										<li data-toggle="collapse" data-target="#bottom"
											class="collapsed"><a href="#">BOTTOM</a>
											<ul class="sub-menu collapse" id="bottom">
												<li><a href="bottom.yd">Pants</a></li>
												<li><a href="bottom.yd">Skirt</a></li>
											</ul>
										</li>
										<!-- OUTER -->
										<li data-toggle="collapse" data-target="#outer"
											class="collapsed"><a href="#">OUTER</a>
											<ul class="sub-menu collapse" id="outer">
												<li><a href="outer.yd">JACKET</a></li>
												<li><a href="outer.yd">COAT</a></li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-8 col-lg-9">
					<div class="shop_grid_product_area">
						<div class="row">
							<!-- Single gallery Item -->
							<c:forEach items="${plist }" var="p">
								<c:if test="${p.productDefault eq '1' && p.productMajor eq 'TOP'}">
									<div
										class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig"
										data-wow-delay="0.2s">
										<!-- Product Image -->
										<div class="product-img">
											<img src="./img/product-img/${p.productName }-1.jpg"
												alt="${p.productName }">
											<div class="product-quicview">
												<a href="javascript:selectProduct('${p.productName }');"><i
													class="ti-plus"></i></a>
											</div>
										</div>
										<!-- Product Description -->
										<div class="product-description">
											<h4 class="product-price">￦<fmt:formatNumber value="${p.productPrice }" pattern="#,###" /></h4>
											<p>${p.productName }</p>
										</div>
									</div>
								</c:if>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
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