<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 네이버 로그인 -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>



</head>
<body>
	<div class="checkout_area section_padding_100">
		<div class="container">

			<form action="memberLogin.yd" method="post">

				<div class="row">

					<div class="col-12 col-md-6" id="login_001">
						<div class="checkout_details_area mt-50 clearfix">

							<div class="cart-page-heading">
								<h5>Login to MUZhcuk</h5>
							</div>


							<div class="row">
								<div class="col-12 mb-3">
									<label for="memberId">ID</label> <input type="text"
										class="form-control" id="memberId" name="memberId"
										placeholder="아이디를 입력해주세요." required="required">

								</div>
								<div class="col-12 mb-3">
									<label for="memberPassword">Password</label> <input
										type="password" class="form-control" id="memberPassword"
										name="memberPassword" placeholder="비밀번호를 입력해주세요."
										required="required">
								</div>
							</div>
						</div>
						<input type="submit" id="join_btn" class="btn karl-checkout-btn"
							value="Log In" style="border-radius: 5px; margin-bottom: 10px;">&nbsp;&nbsp;&nbsp;
						<!-- 로그인 기본end -->
						<!-- Checkbox -->
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="form2Example31" checked /> <label class="form-check-label"
								for="form2Example31"> Remember ID </label>
						</div>
						<br>

						<div onclick="kakaoLogin();"
							style="float: left; margin-left: 90px;">
							<a href="javascript:void(0)"> <img alt="카카오로그인이미지"
								src="img/kakao_login_medium_narrow.png">
							</a>
						</div>
						<div>
							<a id="naver_id_login"
								style="margin-left: 30px; width: 183px; height: 45px;"></a>
						</div>



						<!-- <div align="center">
							<p>SNS 간편 로그인</p>
							<button type="button" class="btn btn-link btn-floating mx-1">
								<img alt="" src=""><i class="fab fa-facebook-f"></i>
							</button>

							<button type="button" class="btn btn-link btn-floating mx-1">
								<i class="fab fa-google"></i>
							</button>

							<button type="button" class="btn btn-link btn-floating mx-1">
								<i class="fab fa-twitter"></i>
							</button>

							<button type="button" class="btn btn-link btn-floating mx-1">
								<i class="fab fa-github"></i>
							</button>
						</div> -->


					</div>
				</div>
			</form>
		</div>


	</div>

	<!-- 네이버 로그인 -->
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("YOUR_CLIENT_ID",
				"YOUR_CALLBACK_URL");
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("white", 2, 40);
		naver_id_login.setDomain("YOUR_SERVICE_URL");
		naver_id_login.setState(state);
		naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
	</script>

	<!-- 카카오 로그인 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<!-- 카카오 로그인 -->
	<script type="text/javascript">
		function selectProduct(name) {
			document.getElementById("pName").value = name;
			frm.submit();
		}

		Kakao.init('71076bc0611826d1a0be3f93cf243ec4');

		console.log(Kakao.isInitialized()); // sdk초기화여부판단

		function kakaoLogin() {
			Kakao.Auth.login({
				success : function(response) {
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {
							console.log(response)
							alert('카카오 로그인 완료');
						},
						fail : function(error) {
							console.log(error)
						},
					})
				},
				fail : function(error) {
					console.log(error)
				},
			})
		}
	</script>
</body>
</html>