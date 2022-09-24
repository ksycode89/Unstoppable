<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ****** Cart Area Start ****** -->
	<div class="cart_area section_padding_100 clearfix" >
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
								</tr>
							</thead>
							<tbody>
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
							<a href="#">clear cart</a> <a href="#">Update cart</a>
						</div>
					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="coupon-code-area mt-70">
						<div class="cart-page-heading">
							<h5>포인트</h5>
							<p>사용할 포인트를 입력해 주세요.</p>
						</div>
						<form action="#">
							<input type="search" name="search" placeholder="#569ab15">
							<button type="submit">Apply</button>
						</form>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="shipping-method-area mt-70">
						<div class="cart-page-heading">
							<h5>Shipping method</h5>
							<p>Select the one you want</p>
						</div>

						<div class="custom-control custom-radio mb-30">
							<input type="radio" id="customRadio1" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio1"><span>Next day delivery</span><span>$4.99</span></label>
						</div>

						<div class="custom-control custom-radio mb-30">
							<input type="radio" id="customRadio2" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio2"><span>Standard delivery</span><span>$1.99</span></label>
						</div>

						<div class="custom-control custom-radio">
							<input type="radio" id="customRadio3" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio3"><span>Personal Pickup</span><span>Free</span></label>
						</div>
					</div>
				</div>
				<div class="col-12 col-lg-4">
					<div class="cart-total-area mt-70">
						<div class="cart-page-heading">
							<h5>Cart total</h5>
							<p>Final info</p>
						</div>

						<ul class="cart-total-chart">
							<li><span>Subtotal</span> <span>$59.90</span></li>
							<li><span>Shipping</span> <span>Free</span></li>
							<li><span><strong>Total</strong></span> <span><strong>$99999.90</strong></span></li>
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
</body>
</html>