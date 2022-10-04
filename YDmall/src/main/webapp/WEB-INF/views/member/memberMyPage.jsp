<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보조회 - 수정버튼 누르면 수정되게</title>

<style type="text/css">
</style>
</head>
<body>

	<div class="checkout_area section_padding_100">
		<div class="container">
			<div class="row">

				<div class="col-12 col-md-6" id="login_001">
					<div class="checkout_details_area mt-50 clearfix">

						<div class="cart-page-heading">
							<h5>${name }님 정보조회</h5>
						</div>

						<div class="row">
							<form action="memberSelect.yd" onsubmit="return formCheck()"
								method="post">

								<div class="col-12 mb-3">
									<label for="memberId">ID</label> <input type="text"
										class="form-control" id="company" name="memberId"
										required="required" value="${id}" readonly="readonly">

								</div>

								<div class="col-12 mb-3">
									<label for="memberPassword"> Passoword</label> <input
										type="password" class="form-control" id="company"
										name="memberPassword" required="required" value="${password }"
										readonly="readonly">
								</div>


								<div class="col-12 mb-3">
									<label for="first_name">Name <span>*</span></label> <input
										type="text" class="form-control" id="first_name"
										name="memberName" value="${name }" readonly="readonly">
								</div>

								<div class="col-12 mb-3">
									<label for="street_address">Gender <span>*</span></label> <input
										type="text" class="form-control mb-3" id="street_address"
										name="memberAddress" value="${gender }">
								</div>

								<!-- 
                                   <div class="col-12 mb-3">
                                        <label for="country">Country <span>*</span></label>
                                        <select class="custom-select d-block w-100" id="country">
                                        <option value="usa">United States</option>
                                        <option value="uk">United Kingdom</option>
                                        <option value="ger">Germany</option>
                                        <option value="fra">France</option>
                                        <option value="ind">India</option>
                                        <option value="aus">Australia</option>
                                        <option value="bra">Brazil</option>
                                        <option value="cana">Canada</option>
                                    </select>
                                    </div>
                                    -->

								<div class="col-12 mb-3">
									<label for="street_address">Address <span>*</span></label> <input
										type="text" class="form-control mb-3" id="street_address"
										value="${address }" readonly="readonly">
								</div>



								<div class="col-12 mb-3">
									<label for="phone_number">Phone Number<span>*</span></label> <input
										type="text" class="form-control" id="phone_number" min="0"
										name="memberTel" value="${tel }" readonly="readonly">
								</div>
								<div class="col-12 mb-4">
									<label for="email_address">Email<span>*</span></label> <input
										type="email" class="form-control" id="email_address"
										name="memberEmail" value="${email }" readonly="readonly">
								</div>
								<br> <input type="hidden" name="memberAuthor" value="회원">
								<br>
							</form>
							<form action="memberEdit.yd"
								style="padding-left: 15px; padding-bottom: 20px;">

								<br>
								<input type="submit" class="btn karl-checkout-btn" value="수정하기">
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>
</html>