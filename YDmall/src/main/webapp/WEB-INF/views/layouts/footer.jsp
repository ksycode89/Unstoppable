<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


         <!-- ****** Footer Area Start ****** -->
        <footer class="footer_area" >
            <div class="container">
                <div class="row">
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="single_footer_area">
                            <div class="footer-logo">
                                <img src="img/core-img/logo.png" alt="">
                            </div>
                            <div class="copywrite_text d-flex align-items-center">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://www.erdcloud.com/d/KgsdfLgmSWhGCXo7f" target="_blank">정빈,준형,진희,희원,상영 </a>&amp; distributed by <a href="http://daeguoracle.com" target="_blank">무적이조</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-sm-6 col-md-3 col-lg-2">
                        <div class="single_footer_area">
                            <ul class="footer_widget_menu">
                                <li><a href="main.yd">Main</a></li>
                                <li><a href="https://blog.naver.com/dtj03044">Blog</a></li>
                                <li><a href="best.yd"> BEST</a></li>
                                <li><a href="sale.yd">SALES</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-sm-6 col-md-3 col-lg-2">
                        <div class="single_footer_area">
                            <ul class="footer_widget_menu">
                            
                          

                           		<c:if test="${empty id }">
                           		 <li><a type="button" id="alertStart" style="cursor:wait">My Page</a></li>
                           		</c:if>
                           		
                           		<c:if test="${not empty id }">
                           		 <li><a href="memberMyPage.yd">My Page</a></li>
                           		</c:if>
               
                            	
                                <li><a href="qnaSelectList.yd">Q&A</a></li>
                                <li><a href="noticeSelectList.yd">Notice</a></li>
                                <li><a href="reviewSelectList.yd">Review</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-lg-5">
                        <div class="single_footer_area">
                            <div class="footer_heading mb-30">
                                <h6>Insert to coupon</h6>
                            </div>
                            <div class="subscribtion_form">
                                <form action="#" method="post">
                                    <input type="text" name="coupon" id="pointAdd"" class="mail" placeholder="Your coupon here">
                                    <button type="button" class="submit" onclick="addPoint()">Add to Point</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="line"></div>

                <!-- Footer Bottom Area Start -->
                <div class="footer_bottom_area">
                    <div class="row">
                        <div class="col-12">
                            <div class="footer_social_area text-center">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- ****** Footer Area End ****** -->
       <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


        <script type="text/javascript">
        $().ready(function () {
            $("#alertStart").click(function () {
                Swal.fire({
                    title: '비회원입니다 회원가입 페이지로 &nbsp; 이동하시겠습니까?',
                    text: "회원가입시 각종 해택과 쿠폰이 기다리고 있을지도?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '승인',
                    cancelButtonText: '취소'
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire(
                            '회원가입 페이지로 이동합니다.',
                            '감사합니다!',
                            'success'
                           
                        ).then(function(){
                        	location.href="signUp.yd";                   
                        })
                    }
                })
            });
        });
        
        function addPoint() {
        	let a = document.getElementById('pointAdd').value
        	if(a=='anwjr2wh'){
        		Swal.fire({
                    title: '포인트 입력 완료!',
                    text: "2000P가 입력되었습니다.",
                    icon: 'info',
                    confirmButtonColor: '#3085d6',
                    confirmButtonText: '확인'
           
                })
        	}else{
        		Swal.fire({
                    title: '포인트 입력 실패!',
                    text: "쿠폰번호가 잘못되었습니다. ",
                    icon: 'errpr',
                    confirmButtonColor: '#3085d6',
                    confirmButtonText: '확인'
           
                })
        		
        	}
			
		}
        </script>
</body>
</html>