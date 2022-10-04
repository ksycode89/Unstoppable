<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.button {

	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 2px;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em;
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
	
}
.button:hover {
	text-decoration: none;
}
.button:active {
	position: relative;
	top: 1px;
}

.bigrounded {
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
	font-weight:bold;
}
.medium {
	font-size: 13px;
	font-weight:bold;
	padding: .4em 1.2em .42em;
}
.small {
	font-size: 11px;
	padding: .275em .2em .275em;
	margin-right: -15px;
	margin-bottom: 4px;
	font-weight: bold;
}

/* color styles
---------------------------------------------- */

/* black */
.black {
	color: #d7d7d7;
	border: solid 1px #333;
	background: #333;
	background: -webkit-gradient(linear, left top, left bottom, from(#666), to(#000));
	background: -moz-linear-gradient(top,  #666,  #000);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#666666', endColorstr='#000000');
}
.black:hover {
	background: #b61318;
	background: -webkit-gradient(linear, left top, left bottom, from(#c9151b), to(#a11115));
	background: -moz-linear-gradient(top,  #c9151b,  #a11115);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#c9151b', endColorstr='#a11115');
}
.black:active {
	color: #de898c;
	background: -webkit-gradient(linear, left top, left bottom, from(#aa1317), to(#ed1c24));
	background: -moz-linear-gradient(top,  #aa1317,  #ed1c24);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#aa1317', endColorstr='#ed1c24');
}

.cont{
    max-width: 2000px;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-top: 20px;
	margin-left: 40px;
}
.cart{
	margin-bottom: 20px;
	margin-right: 20px;
}
.header-right-side-menu ml-15{
	margin-bottom: 20px;
}
#headerLogo{
	margin-right: 50px;	
}
#headerMenu{
	margin-right: 250px;
}
#headerMypage{
	float: right;
	margin-left: 450px;
}
#headerCart{
	float: right;
	margin-left: 30px;
}

#nav li a:hover{

font-size: 1.5em;

}

</style>
</head>
<body>
	<header>
	<div class="main_header_area">
		<div class="cont h-100">
			<div class="row h-100">
<!-- Logo Area -->
				<div class="col-xs-2" id="headerLogo">
					<div class="top_logo">
						<a href="main.yd"><img src="img/core-img/main-03.png" alt="Logo" style="margin-top: -20px"></a>
					</div>
				</div>
				<div class="col-xs-6" id="headerMenu">
<!-- Menu Area -->
					<div class="main-menu-area">
						<nav class="navbar navbar-expand-lg align-items-start">
							<button class="navbar-toggler" type="button"data-toggle="collapse" data-target="#karl-navbar"aria-controls="karl-navbar" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon">
									<i class="ti-menu"></i>
								</span>
							</button>
							
							<div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar">
								<ul class="navbar-nav animated" id="nav">

	                                 <li class="nav-item active"><a class=" nav-link " href="best.yd" >BEST</a></li>
	                                 <li class="nav-item"><a class="nav-link" href="sale.yd">SALE</a></li>
	                                 <li class="nav-item"><a class="nav-link" href="top.yd"><span class="karl-level">hot</span> TOP</a></li>
	                                 <li class="nav-item"><a class="nav-link" href="bottom.yd">BOTTOM</a></li>
	                                 <li class="nav-item"><a class="nav-link" href="outer.yd">OUTER</a></li>
	                                 <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">board</a>
										<div class="dropdown-menu" aria-labelledby="karlDropdown">
											<a class="dropdown-item" href="noticeSelectList.yd">notice</a>
											<a class="dropdown-item" href="reviewSelectList.yd">review</a>
											<a class="dropdown-item" href="qnaSelectList.yd">q & a</a>
										</div>
									</li>
									<c:if test="${ not empty id }">
										<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" href="memberMyPage.yd" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MyPage</a>

											<div class="dropdown-menu" aria-labelledby="karlDropdown">
												<a class="dropdown-item" href="memberMyPage.yd">정보조회</a> 
												<a class="dropdown-item" href="memberOrder.yd">주문조회</a>
												<a class="dropdown-item" href="memberOrderHistory.yd">구매내역</a>
												<a class="dropdown-item" href="memberDelete.yd">회원탈퇴</a>
											</div>
										</li>
									</c:if>
								</ul>
							</div>
						</nav>
					</div>
				</div>

	
				<div class="col-xs-2" id="headerMypage">
					  <div class="help-line">
				<c:if test="${ empty id }">
								<button class="button black" style="font-weight:bold; margin-top: 10px;" onclick="location.href='login.yd'" >LOGIN</button>
								<button class="button black" style="font-weight:bold;" onclick="location.href='signUp.yd'" >SIGN UP</button>
							</c:if>
							<c:if test="${not empty id }">
							<button class="button black" style="font-weight:bold; margin-top: 10px;" onclick="location.href='logout.yd'">LOGOUT</button>
							</c:if>

							<c:if test="${author eq '관리자'}">
	<button class="button black" style="font-weight:bold;" onclick="location.href='admin.yd'">ADMIN</button>
							</c:if>


					</div>
				</div>
				<div class="col-xs-2" id="headerCart">
					<div class="header-cart-menu d-flex align-items-center ml-auto">
<!-- Cart Area -->
						<div class="cart">

							<a href="cart.yd" id="header-cart-btn" >
								<span class="cart_quantity">!</span><i class="ti-bag"></i>
							</a>
							<!-- Cart List Area Start -->

						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- ****** Header Area End ****** -->
<!-- /.wrapper end -->
</body>
</html>