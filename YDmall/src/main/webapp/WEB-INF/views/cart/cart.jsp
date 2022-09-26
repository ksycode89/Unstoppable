<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 페이지</title>
<%
String cartId = session.getId();
DecimalFormat dFormat = new DecimalFormat("###,###");
%>
</head>
<body>
	<!-- ****** Cart Area Start ****** -->
	<div class="cart_area section_padding_100 clearfix">
		<div class="container">
			<div class="row" style="margin: -50px -15px 100px -15px">
				<div class="col-12">
					<div class="cart-table clearfix">
						<table class="table table-responsive">
							<thead>
								<tr>
									<th>상품</th>
									<th>가격</th>
									<th>개수</th>
									<th>총 금액</th>
									<th>선택 삭제</th>
								</tr>
							</thead>
							<tbody>


								<c:forEach items="${list}" var="ca">
									<tr>
										<td class="cart_product_img d-flex align-items-center"><a
											href="#"><img src="img/product-img/product-9.jpg"
												alt="Product"></a>
											<h6>${ca.productName}</h6></td>

										<td>${ca.productPrice }</td>
										<td class="qty">
											<div class="quantity">
												<span class="qty-minus"
													onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
													class="fa fa-minus" aria-hidden="true"></i></span> <input
													type="number" class="qty-text" id="qty" step="1" min="1"
													max="999" name="quantity" value="1"> <span
													class="qty-plus"
													onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
													class="fa fa-plus" aria-hidden="true"></i></span>
											</div>
										</td>
										<td class="total_price"><span>${ca.productPrice}</span></td>
									</tr>
									<!-- 									<td>삭제버튼</td> -->
								</c:forEach>


								<tr>
									<td class="cart_product_img d-flex align-items-center"><a
										href="#"><img src="img/product-img/product-9.jpg"
											alt="Product"></a>
										<h6>Yellow Cocktail Dress</h6></td>

									<!-- 아래 가격이 상품마다 다른 금액을 입력받을 수 있게 만들어야함 -->

									<td class="price"><span>$49.88</span></td>
									<td class="qty">
										<div class="quantity">
											<span class="qty-minus"
												onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
												class="fa fa-minus" aria-hidden="true"></i></span> <input
												type="number" class="qty-text" id="qty" step="1" min="1"
												max="999" name="quantity" value="1"> <span
												class="qty-plus"
												onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
												class="fa fa-plus" aria-hidden="true"></i></span>
										</div>
									</td>
									<td class="total_price"><span>$49.88</span></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="cart-footer d-flex mt-30">
						<div class="back-to-shop w-50">
							<a href="main.yd">쇼핑 계속하기</a>
						</div>
						<div class="update-checkout w-50 text-right">
							<a href="#" id="clearCart">장바구니 비우기</a> <a href="#">전체 상품 주문</a>
							<!-- 							location.href -->
						</div>
					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="coupon-code-area mt-70">
						<div class="cart-page-heading">
							<h5>포인트</h5>
							<p>사용 가능 포인트 :</p>
						</div>
						<form action="#">
							<input type="search" name="search" placeholder="#569ab15">
							<button type="submit">확인</button>
						</form>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="shipping-method-area mt-70">
						<div class="cart-page-heading">
							<h5>배송 옵션 선택</h5>
							<p>원하시는 배송 방법을 선택하세요.</p>
						</div>

						<div class="custom-control custom-radio mb-30">
							<input type="radio" id="customRadio1" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio1"><span>당일 배송</span><span>5,000원</span></label>
						</div>

						<div class="custom-control custom-radio mb-30">
							<input type="radio" id="customRadio2" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio2"><span>일반 배송</span><span>2,500원</span></label>
						</div>

					</div>
				</div>
				<div class="col-12 col-lg-4">
					<div class="cart-total-area mt-70">
						<div class="cart-page-heading">
							<h5>결제 예정 금액</h5>
						</div>

						<ul class="cart-total-chart">
							<li><span>상품 가격</span> <span>50,000원</span></li>
							<li><span>배송비</span> <span>+ 2,500원</span></li>
							<li><span><strong>최종 결제 금액</strong></span> <span><strong>52,500원</strong></span></li>
						</ul>
						<a href="checkout.html" class="btn karl-checkout-btn">Proceed
							to checkout</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Cart Area End ****** -->



	<!-- /.wrapper end -->

	<script type="text/javascript">
		
	</script>
</body>
</html>