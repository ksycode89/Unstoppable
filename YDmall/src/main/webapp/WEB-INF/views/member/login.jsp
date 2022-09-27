<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="checkout_area section_padding_100">
		<div class="container">
			<div class="row">

				<div class="col-12 col-md-6" id="login_001">
					<div class="checkout_details_area mt-50 clearfix">

						<div class="cart-page-heading">
							<h5>Join to MUZhcuk</h5>

						</div>

						<form action="memberLogin.yd"
							method="post">
							<div class="row">
								<div class="col-12 mb-3">
									<label for="memberId">ID</label> <input type="text"
										class="form-control" id="memberId" name="memberId"
										required="required">
								</div>
								<div class="col-12 mb-3">
									<label for="memberPassword">Password</label> <input type="password"
										class="form-control" id="memberPassword" name="memberPassword"
										required="required">
								</div>
							</div>
							<input type="submit" id="join_btn" class="btn karl-checkout-btn" value="Join">&nbsp;&nbsp;&nbsp;
						</form>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>