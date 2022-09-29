<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<style>
input[type=number]::-webkit-inner-spin-button {
	-webkit-appearance: none;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<meta charset="UTF-8">
<title>장바구니 페이지</title>
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
<!-- 전체 선택 체크 박스		 -->
									<th>
										<input type="checkbox" id="checkAll" class="cartCheckbox" onclick="checkAllBtn(this)">
									</th>
<!--상품 전체 삭제 -->
									<th>
										<button>전체 삭제</button>
									</th>
								</tr>
							</thead>
							<tbody id="asdf">
								<c:forEach items="${list}" var="ca">
									<tr>
										<td class="cart_product_img d-flex align-items-center product-id">
											<a href="#">
												<img src="img/product-img/product-9.jpg" alt="Product">
											</a>
											<h6>${ca.productName}</h6>
										</td>
										<td class="price">
<%-- 									&#8361;	<c:out value="${ca.productPrice}"/>원 --%>
										<fmt:formatNumber value="${ca.productPrice}" pattern="#,###"/>원
										</td>
										<td class="qty">
											<div class="quantity">
												<span class="qty-minus" onclick="callNumberMin(this)">
													<i class="fa fa-minus" aria-hidden="true"></i>
												</span>
													<input type="number" class="qty-text" step="1" min="1" max="999" name="quantity" value="1">
												<span class="qty-plus" onclick="callNumberAdd(this)">
													<i class="fa fa-plus" aria-hidden="true"></i>
												</span>
											</div>
										</td>
										<td class="total_price">
<%-- 										<c:out value="${ca.productPrice}"/>원 --%>
											<fmt:formatNumber value="${ca.productPrice}" pattern="#,###"/>원
										</td>
<!-- 개별 선택 체크 박스 -->
										<td class="d-flex align-items-center"><input type="checkbox" name="check" id="check" class="cartCheckbox" onclick="checkBtn(this)">
										</td>
<!--상품 행별 삭제 -->
										<td>
											<form action="/cart/delete" method="post" class="">
												<button class="delete_btn" data-memberid="${ca.memberId}">삭제</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					<div class="cart-footer d-flex mt-30">
						<div class="back-to-shop w-50">
							<a href="main.yd">쇼핑 계속하기</a>
						</div>
<!-- 전체/선택 상품 결제 -->
						<div class="update-checkout w-50 text-right">
							<a href="#" id="buyAll" onclick="allTotal()">전체 상품 주문</a>
							<a href="#" id="butSelect" onclick="subTotal()">선택 상품 주문</a>
						</div>
					</div>
				</div>
			</div>
<!-- 멤버 포인트 사용 -->
			<div class="row">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="coupon-code-area mt-70">
						<div class="cart-page-heading">
							<h5>포인트</h5>
							<p class="userPoint">사용 가능 포인트 :</p>
						</div>
						<form action="#">
							<input type="search" name="search" placeholder="1,000포인트 부터 사용 가능">
							<button type="submit">확인</button>
						</form>
					</div>
				</div>
<!-- 배송 -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="shipping-method-area mt-70">
						<div class="cart-page-heading">
							<h5>배송</h5>
							<p>5만원 이상 구매 시 배송비 무료</p>
						</div>

						<div class="custom-control custom-radio mb-30">
							<input type="radio" id="customRadio2" name="customRadio" class="custom-control-input" checked="checked">
							<label class="custom-control-label d-flex align-items-center justify-content-between" for="customRadio2">
								<span>택배</span><span>2,500원</span>
							</label>
						</div>
					</div>
				</div>
				
<!-- 최종 결제칸 -->
<!-- 선택/전체 상품 결제 합산 금액 -->
				<div class="col-12 col-lg-4">
					<div class="cart-total-area mt-70">
						<div class="cart-page-heading">
							<h5>결제 예정 금액</h5>
						</div>
<!-- 포인트, 배송비 사용 및 선택 결과 -->
						<ul class="cart-total-chart">
							<li><span>상품 가격</span> <span id="productSum"></span></li>
							<li><span>포인트</span> <span><input type="hidden" id="subTotal" name="subTotal">얼마 사용</span></li>
							<li><span>배송비</span> 
<%-- 							<c:if text="${ca.productPrice >= 50000}"> --%>
<!-- 								<span>무료</span> -->
<%-- 							</c:if> --%>
<!-- 								<span>2,500원</span> -->
<%-- 							<c:choose> --%>
<%-- 									<c:when test="${ca.productPrice >= 50000}"> --%>
<!-- 										<span>무료</span> -->
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> --%>
<!-- 										<span>2,500원</span> -->
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
							</li>
<!-- 최종 결제 금액 -->
							<li><span><strong>최종 결제 금액</strong></span> <span><strong class="final_price">배송비, 포인트 사용 후 최종 결제 가격</strong></span></li>
						</ul>
						<a href="checkout.html" class="btn karl-checkout-btn">상품 주문</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Cart Area End ****** -->



	<!-- /.wrapper end -->
	<script type="text/javascript">
	//원화 콤마 표시
			function number_format(num){
	   			return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
			}
			//콤마찍기
			function comma(str) {
			    str = String(str);
			    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
			}
//상품 수 늘릴 때 금액 계산
		function callNumberAdd(a) {
			var numberText = $(a).parent().find(".qty-text");
			var qty = numberText.val();
			if (!isNaN(qty))
				qty++;
			numberText.val(qty);
			var productIdx = $(a).parent().parent().parent().find(".price").text();
			const pi = productIdx.replace(",","").replace("원","");
			total = pi * qty;
			$(a).parent().parent().parent().find(".total_price").text(total+"원");
			return false;
		};
// 상품 수 줄일때 금액계산
		function callNumberMin(a) {
			var numberText = $(a).parent().find(".qty-text");
			var qty = numberText.val();
			if (qty == 1) {
				return false;
			}
			if (!isNaN(qty))
				qty--;
			numberText.val(qty);
			var totalPrice = $(a).parent().parent().parent().find(".total_price").text();
			var productIdx = $(a).parent().parent().parent().find(".price").text();
			
			const pi = productIdx.replace(",","").replace("원","");
			const tp = totalPrice.replace(",","").replace("원","");
			
			var total = tp - pi;

			$(a).parent().parent().parent().find(".total_price").text(total+"원");
			return false;
		};
//텍스트칸에 숫자 입력 시 금액 변경
		let qtys = document.querySelectorAll(".qty-text");
		qtys.forEach((qty) => {
			qty.addEventListener('change', function () {
				if (qty.value < 1) {
					alert('최소 설정 가는 개수는 1개입니다.');
					qty.value = 1;
				}
				const total = qty.parentElement.parentElement.parentElement.children.item(1).textContent.replace(",","").replace("원","");
				
				console.log(qty.parentElement.parentElement.parentElement.children.item(1).textContent);
				qty.parentElement.parentElement.parentElement.children.item(3).textContent = qty.value * total+"원";
			});
		});
//체크박스
		let btns = document.getElementsByClassName("cartCheckbox");
		let checkedNum = 0;
		function checkAllBtn(AllBtn) {
			if (AllBtn.checked) {
				for (let i = 0; i < btns.length; i++) {
					btn = btns.item(i);
					btn.checked = true;
					checkedNum = btns.length - 1;
				}
			} else {
				for (let i = 0; i < btns.length; i++) {
					btn = btns.item(i);
					btn.checked = false;
					checkedNum = 0;
				}
			}
		}
//개별 체크박스 클릭시 전체 체크박스 버튼도 클릭/해제되게 
		function checkBtn(btn) {
			if (btn.checked) {
				checkedNum++;
			} else {
				checkedNum--;
			}
			if (checkedNum == btns.length - 1) {
				document.getElementById("checkAll").checked = true;
			} else {
				document.getElementById("checkAll").checked = false;
			}
		}
//선택 상품 주문
		function subTotal() {
			let sum = 0;
			let a = document.getElementsByClassName('total_price');
			for (let i = 0; i < a.length; i++) {
				if (a[i].parentElement.children[4].firstChild.checked) {
					sum += parseInt(a[i].innerText.replace(",","").replace("원",""));
				}
			}
			
			document.getElementById("productSum").innerText=sum+"원";
			console.log(sum)
			console.log(document.getElementById("productSum"))
			console.log(a[0].parentElement)
		}
//전체 상품 주문
		function allTotal(){
			let sum=0;
			let all = document.getElementsByClassName('total_price');
			for(let i=0; i<all.length; i++){
					sum += parseInt(all[i].innerText.replace(",","").replace("원",""));
			}
				console.log(sum);
			document.getElementById("productSum").innerText=sum+"원";
		}

//최종 결제 가격(배송비, 포인트 사용 후)
		function finalPrice(){
		}
	</script>
</body>

</html>