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
										<form action="clearCart.yd" method="post" class="update-checkout w-50 text-right">
											<input type="hidden" id="memberId" name="memberId" value="${ca.memberId}">
											<input type="hidden" id="productId" name="productId" value="${ca.productId}">
											<input type="submit" value="전체 삭제">
										</form>
									</th>
								</tr>
							</thead>
							<tbody id="asdf">
                        		<c:forEach items="${list}" var="ca">
                           			<tr>
<!-- 상품 이미지                           			 -->
                            			<td class="cart_product_img d-flex align-items-center">
                                			<a href="#">
                                				<img src="img/product-img/product-9.jpg" alt="IMAGE">
<%--이미지 경로                       				<img src="img/product-img/${ca.productAttach }" alt="IMAGE"> --%>
                                			</a>
<!-- 상품명                                			 -->
                                 			<h6>${ca.productName}</h6>
                             			</td>
<!-- 상품 가격                             			 -->
                              			<td class="price">
                                			<fmt:formatNumber value="${ca.productPrice}" pattern="#,###" />원
                            			</td>
                           				<td class="qty">
                                			<div class="quantity">
                                			   	<span class="qty-minus" onclick="callNumberMin(this)">
													<i class="fa fa-minus" aria-hidden="true"></i>
                                			   	</span>
<!-- 상품 수량 설정                                			   	 -->
                                 			   	<input type="number" class="qty-text" step="1" min="1" max="999" name="quantity" value=${ca.cartQuantity }>
												<span class="qty-plus" onclick="callNumberAdd(this)">
                                       				<i class="fa fa-plus" aria-hidden="true"></i>
                                    			</span>
                                 			</div>
                             			</td>
                           				<td class="total_price">
                               				<fmt:formatNumber value="${ca.productPrice * ca.cartQuantity}" pattern="#,###" />원
                             			</td>
<!-- 개별 선택 체크 박스 -->
										<td class="d-flex align-items-center"><input type="checkbox" name="check" id="check" class="cartCheckbox" onclick="checkBtn(this)">
										</td>
<!--상품 행별 삭제 -->
										<td>
											<form action="cartListDelete.yd" method="post" class="update-checkout w-50 text-right">
												<input type="hidden" id="memberId" name="memberId" value="${ca.memberId}">
												<input type="hidden" id="productId" name="productId" value="${ca.productId}">
												<input type="submit" value="삭제">
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
<!-- 8.전체/7.선택 상품 주문 -->
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
				
<!-- 구매 상품 최종 계산 탭 -->
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
								<span id="deli"></span>
							</li>
<!-- 최종 결제 금액 -->
							<li>
								<span>
									<strong>최종 결제 금액</strong>
								</span>
								<span>
									<strong id="final_price">-원
										<input type="hidden" id="finalPrice">
									</strong>
								</span>
							</li>
						</ul>
						<form action="checkout.yd" method="post" >
							<input type="submit"class="btn karl-checkout-btn" value="상품 주문">
							<input type="hidden" name="" id="">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Cart Area End ****** -->



	<!-- /.wrapper end -->
	<script type="text/javascript">
//1.원화 콤마 표시
		function number_format(num){
	   		 num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
		}
//2.콤마 콜백함수
		function comma(str) {
		    str = String(str);
		    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		}
			
//3.상품 수 늘릴 때 금액 계산
		function callNumberAdd(a) {
			var numberText = $(a).parent().find(".qty-text");
			var qty = numberText.val();
			if (!isNaN(qty))
				qty++;
			numberText.val(qty);
			var productIdx = $(a).parent().parent().parent().find(".price").text();
//3-1.콤마, 원이 붙어있는 가격을 정수로 변환
			const pi = productIdx.replace(",","").replace("원","");
			total = pi * qty;
//3-2.계산 후 콜백함수 이용하여 콤마 붙여줌
			$(a).parent().parent().parent().find(".total_price").text(comma(total)+"원");
			return false;
		};
		
//4.상품 수 줄일때 금액계산
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
//4-1.상품 수 줄일때 금액계산 위해 정수로 변환
			const pi = productIdx.replace(",","").replace("원","");
			const tp = totalPrice.replace(",","").replace("원","");
			var total = tp - pi;
//4-2.계산된 금액에 콜백함수로 콤마 붙여줌
			$(a).parent().parent().parent().find(".total_price").text(comma(total)+"원");
			return false;
		};
		
//5.텍스트칸에 숫자 입력 시 금액 변경
		let qtys = document.querySelectorAll(".qty-text");
		qtys.forEach((qty) => {
			qty.addEventListener('change', function () {
				if (qty.value < 1) {
					alert('최소 설정 가는 개수는 1개입니다.');
					qty.value = 1;
				}
//5-1.총액에 콤마 제거
				const total = qty.parentElement.parentElement.parentElement.children.item(1).textContent.replace(",","").replace("원","");
//5-2.계산 후 콤마 콜백함수 호출하여 다시 붙여줌
				qty.parentElement.parentElement.parentElement.children.item(3).textContent = comma(qty.value * total)+"원";
			});
		});
		
//6.체크박스
		let btns = document.getElementsByClassName("cartCheckbox");
		let checkedNum = 0;
//6-1.전체 체크 클릭 시 하위의 체크박스들 모두 체크
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
//6-2.개별 체크박스 클릭시 최상위의 전체 체크박스 버튼도 클릭/해제되게 
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
		
//7.선택 상품 주문
		function subTotal() {
			let sum = 0;
			let a = document.getElementsByClassName('total_price');
			for (let i = 0; i < a.length; i++) {
				if (a[i].parentElement.children[4].firstChild.checked) {
//7-1.체크된 상품의 가격에 붙어있는 콤마, 원 제거 
					sum += parseInt(a[i].innerText.replace(",","").replace("원",""));
				}
			}
//7-2.합산된 상품 금액에 콤마와 원 붙여줌
			document.getElementById("finalPrice").innerText=sum
			document.getElementById("productSum").innerText=comma(sum)+"원";
		 	document.getElementsByClassName('final_price').innerText;
//7-3.상품 총 구매 금액이 5만원 이상이면 배송비 무료, 미만이면 배송비 2,500원이 포함되어 계산 
			if(sum >= 50000){
				document.getElementById('deli').innerText="무료";
				document.getElementById('final_price').innerText=comma(sum)+"원";
			}else if( sum < 50000){
				document.getElementById('deli').innerText="+ 2,500원";
				document.getElementById('final_price').innerText=comma(sum + 2500)+"원";
			}
		}
		
//8.전체 상품 주문
		function allTotal(){
			let sum=0;
			let all = document.getElementsByClassName('total_price');
			for(let i=0; i<all.length; i++){
//8-1.콤마 제거
				sum += parseInt(all[i].innerText.replace(",","").replace("원",""));
			}
			document.getElementById("finalPrice").innerText=sum
//8-2.계산 후 콤마 붙여줌
			document.getElementById("productSum").innerText=comma(sum)+"원";
//8-3.5만원 이상 무료 배송, 미만은 배송비 2,500원 추가
				if(sum >= 50000){
					document.getElementById('deli').innerText="무료";
					document.getElementById('final_price').innerText=comma(sum)+"원";
				}else if( sum < 50000){
					document.getElementById('deli').innerText="+ 2,500원";
					document.getElementById('final_price').innerText=comma(sum + 2500)+"원";
				}	
		}
//9.장바구니 리스트 행별 삭제 버튼
	function deleteCart(){
	
} 
	</script>
</body>

</html>