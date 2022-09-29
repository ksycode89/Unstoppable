<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여긴 회원정보 수정하는 곳 - id제외하기</title>

<style type="text/css">
#terms_of_service {
	width: 550px;
	height: 200px;
}
</style>
</head>
<body>

	<div class="checkout_area section_padding_100">
		<div class="container">
			<div class="row">

				<div class="col-12 col-md-6" id="login_001">
					<div class="checkout_details_area mt-50 clearfix">

						<div class="cart-page-heading">
							<h5>내 정보 수정</h5>
						</div>

						<form action="memberEditAction.yd" method="post">
							<div class="row">
								<div class="col-12 mb-3">
									<label for="memberId">ID</label> <input type="text"
										class="form-control" id="company" name="memberId"
										required="required" value="${id }" readonly="readonly">

								</div>
								<div class="col-12 mb-3">
									<label for="memberPassword"> Passoword</label> <input
										type="password" class="form-control" id="company"
										name="memberPassword" value="${password }">
								</div>
								<div class="col-12 mb-3">
									<label for="memberPassword2">Check Passoword</label> <input
										type="password" class="form-control" id="memberPassword2"
										name="memberPassword2" value="${password }">
								</div>

								<div class="col-md-6 mb-3">
									<label for="first_name">Name <span>*</span></label> <input
										type="text" class="form-control" id="first_name"
										name="memberName" value="${name}" readonly="readonly">
								</div>
								
								
								<div class="col-12 mb-3">
									<label for="street_address">Gender <span>*</span></label> <input
										type="text" class="form-control mb-3" id="street_address"
										name="memberGender" value="${gender }">
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
										name="memberAddress" value="${address }">
								</div>

								<div class="col-12 mb-3">
									<label for="phone_number">Phone Number<span>*</span></label> <input
										type="text" class="form-control" id="phone_number" min="0"
										name="memberTel" value="${tel }">
								</div>
								<div class="col-12 mb-4">
									<label for="email_address">Email<span>*</span></label> <input
										type="email" class="form-control" id="email_address"
										name="memberEmail" value="${email }">
								</div>
								<br> <input type="hidden" name="memberAuthor" value="회원">
							<br> <input type="submit" class="btn karl-checkout-btn"
								value="수정하기">
						</form>
					
					</div>
				</div>
			</div>


		</div>
	</div>

</body>
</html>