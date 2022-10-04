<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
  
  

        

        <!-- ****** Welcome Slides Area Start ****** -->
        <section class="welcome_area">
            <div class="welcome_slides owl-carousel">
                <!-- Single Slide Start -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(img/bg-img/bg-1.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="bounceInDown" data-delay="0" data-duration="500ms">* Only today we offer free shipping</h6>
                                    <h2 data-animation="fadeInUp" data-delay="500ms" data-duration="500ms">Fashion Trends</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInUp" data-delay="1s" data-duration="500ms">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Slide Start -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(img/bg-img/bg-4.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="fadeInDown" data-delay="0" data-duration="500ms">* Good Bye Summer *</h6>
                                    <h2 data-animation="fadeInUp" data-delay="500ms" data-duration="500ms">Off Clothes From Summer</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInLeftBig" data-delay="1s" data-duration="500ms">Check Collection</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Slide Start -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(img/bg-img/bg-2.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="fadeInDown" data-delay="0" data-duration="500ms">* Only This Week we offer free shipping</h6>
                                    <h2 data-animation="bounceInDown" data-delay="500ms" data-duration="500ms">New Autumn ARRIVALS</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInRightBig" data-delay="1s" data-duration="500ms">Check Collection</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ****** Welcome Slides Area End ****** -->

        <!-- ****** Top Catagory Area Start ****** -->
        <section class="top_catagory_area d-md-flex clearfix">
            <!-- Single Catagory -->
            <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(img/bg-img/bg-2.jpg);">
                <div class="catagory-content">
                    <h6>Off Summer Clothes</h6>
                    <h2>Sale 20%</h2>
                    <a href="sale.yd" class="btn karl-btn">SHOP NOW</a>
                </div>
            </div>
            <!-- Single Catagory -->
            <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(img/bg-img/bg-3.jpg);">
                <div class="catagory-content">
                    <h6>in Bags excepting the new collection</h6>
                    <h2>Designer bags</h2>
                    <a href="#" class="btn karl-btn">SHOP NOW</a>
                </div>
            </div>
        </section>
        <!-- ****** Top Catagory Area End ****** -->

        <!-- ****** Quick View Modal Area Start ****** -->
        <c:forEach items="${plist }" var="p">
						<c:if test="${p.productDefault eq '1'}">
        <div class="modal fade" id="quickview${p.productName }" tabindex="-1" role="dialog" aria-labelledby="quickview" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>

                    <div class="modal-body">
                        <div class="quickview_body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12 col-lg-5">
                                        <div class="quickview_pro_img">
                                            <img src="img/product-img/${p.productName }-1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-7">
                                        <div class="quickview_pro_des">
                                            <h4 class="title">${p.productName }</h4>
                                            <div class="top_seller_product_rating mb-15">
											<i class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i> <i
												class="fa fa-star" aria-hidden="true"></i>
											</div>
                                            <h5 class="price">￦<fmt:formatNumber value="${p.productPrice }" pattern="#,###" /></h5>
                                            <p>${p.productExplain }</p>
                                            <a href="javascript:selectProduct('${p.productName }');">View Full Product Details</a>
                                        </div>
                                        <form class="cart" action="cartInsert.yd" method="post">
                                        	<input type="hidden" id="productSize" name="productSize" value="F">
                          	 	            <input type="hidden" id="productName" name="productName" value="${p.productName }">
											<input type="hidden" id="productPrice" name="productPrice" value="${p.productPrice }">
											<input type="hidden" id="productId" name="productId" value="${p.productId }">
										<div class="quantity">
											<span class="qty-minus"
												onclick="var effect = document.getElementById('cartQuantity'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
												class="fa fa-minus" aria-hidden="true"></i></span> <input
												type="number" class="qty-text" id="cartQuantity" step="1" min="1"
												max="12" name="cartQuantity" value="1"> <span
												class="qty-plus"
												onclick="var effect = document.getElementById('cartQuantity'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
												class="fa fa-plus" aria-hidden="true"></i></span>
										</div>
										<button type="submit" name="addtocart"
											class="cart-submit">Add to cart</button>
										<!-- Wishlist -->
										<div class="modal_pro_wishlist">
											<a href="#" target="_blank"><i
												class="ti-heart"></i></a>
										</div>
										<!-- Compare -->
										<div class="modal_pro_compare">
											<a href="#" target="_blank"><i
												class="ti-stats-up"></i></a>
										</div>
									</form>
                                        
                                        <div class="share_wf mt-30">
                                            <p>Share With Friend</p>
                                            <div class="_icon">
                                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                                <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:if></c:forEach>
        <!-- ****** Quick View Modal Area End ****** -->


        <!-- ****** New Arrivals Area Start ****** -->
        <section class="new_arrivals_area section_padding_100_0 clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_heading text-center">
                            <h2>OUR PRODUCT</h2>
                        </div>
                    </div>
                </div>
            </div>

            <div class="karl-projects-menu mb-100">
                <div class="text-center portfolio-menu">
                    <button class="btn active" data-filter="*">ALL</button>
                    <button class="btn" data-filter=".TOP">TOP</button>
                    <button class="btn" data-filter=".BOTTOM">BOTTOM</button>
                    <button class="btn" data-filter=".OUTER">OUTER</button>
                </div>
            </div>

            <div class="container">
                <div class="row karl-new-arrivals">
					
					<c:forEach items="${plist }" var="p">
						<c:if test="${p.productDefault eq '1'}">
							<!-- Single gallery Item Start -->
		                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item ${p.productMajor } wow fadeInUpBig" data-wow-delay="0.2s">
		                        <!-- Product Image -->
		                        <div class="product-img">
		                            <img src="img/product-img/${p.productName }-1.jpg" alt="">
		                            <div class="product-quicview">
		                                <a href="#" data-toggle="modal" data-target="#quickview${p.productName }"><i class="ti-plus"></i></a>
		                            </div>
		                        </div>
		                        <!-- Product Description -->
		                        <div class="product-description">
		                            <h4 class="product-price">￦<fmt:formatNumber value="${p.productPrice }" pattern="#,###" /></h4>
		                            <p>${p.productName }</p>
		                        </div>
		                    </div>
						</c:if>
					</c:forEach>
                    
                </div>
            </div>
        </section>
        <!-- ****** New Arrivals Area End ****** -->

        <!-- ****** Offer Area Start ****** -->

        <!-- ****** Offer Area End ****** -->

        <!-- ****** Popular Brands Area Start ****** -->
        <section class="karl-testimonials-area section_padding_100">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_heading text-center">
                            <h2> 리 뷰 </h2>
                        </div>
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-12 col-md-8">
                        <div class="karl-testimonials-slides owl-carousel">

                        <c:forEach items='${ blist}'  var="boardv2">

                            <!-- Single Testimonial Area -->
                            <div class="single-testimonial-area text-center">
                                <span class="quote">"</span>
                                <h6> ${ boardv2.boardContent} </h6>
                                <div class="testimonial-info d-flex align-items-center justify-content-center">
                                    <div class="tes-thumbnail">
                                        <img src="img/bg-img/tes-1.jpg" alt="">
                                    </div>
                                    <div class="testi-data">
                                        <p>${boardv2.memberId }</p>
                                        <span>${boardv2.boardTitle }</span>
                                    </div>
                                </div>
                            </div>
						</c:forEach>
                            <!-- Single Testimonial Area -->
                           
                        </div>
                    </div>
                </div>

            </div>
            
        <div>
			<form id="frm" action=productDetail.yd method="post">
				<input type="hidden" id="pName" name="pName">
			</form>
		</div>
	</section>
        <!-- ****** Popular Brands Area End ****** -->
        <script type="text/javascript">
		function selectProduct(name) {
			document.getElementById("pName").value = name;
			console.log(name);
			frm.submit();
		}
	</script>
  
</body>
</html>