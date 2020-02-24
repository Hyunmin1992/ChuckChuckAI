<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- 자동완성 스타일시트 -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="assets/js/axios.js"></script>

<!-- Title  -->
<title>척척약사</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="tableAssets/css/style.css">

</head>

<body>
	<!-- Preloader -->
	<div id="preloader">
		<div class="south-load"></div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area">

		<!-- Main Header Area -->
		<div class="main-header-area" id="stickyHeader">
			<div class="classy-nav-container breakpoint-off">
				<!-- Classy Menu -->
				<nav class="classy-navbar justify-content-between" id="southNav">

					<!-- Logo -->
					<a class="nav-brand" href="index"><img
						src="img/core-img/logo.png" align="middle"> 척척약사</a>


					<!-- Navbar Toggler -->
					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>

					<!-- Menu -->
					<div class="classy-menu">

						<!-- close btn -->
						<div class="classycloseIcon">
							<div class="cross-wrap">
								<span class="top"></span><span class="bottom"></span>
							</div>
						</div>

						<!-- Nav Start -->
						<div class="classynav">
							<ul>
								<li><a href="http://192.168.22.59:8000/">텍스트 검색</a></li>
								<li><a href="http://192.168.22.59:5000/">이미지 검색</a></li>
							</ul>

							<!-- Search Form -->
							<div class="south-search-form">
								<form action="#" method="post">
									<input type="search" name="search" id="search"
										placeholder="Search Anything ...">
									<button type="submit">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</form>
							</div>

							<!-- Search Button -->
							<a href="#" class="searchbtn"><i class="fa"
								aria-hidden="true"></i></a>
						</div>
						<!-- Nav End -->
					</div>
				</nav>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->

	<div class="row">
		<div class="col-12">
			<div class="section-heading wow fadeInUp" style="margin-top: 130px;">
				<h2>의약품 식별 검색</h2>
				<p>Suspendisse dictum enim sit amet libero malesuada feugiat.</p>
			</div>
		</div>
	</div>

	<!-- ##### Advance Search Area Start ##### -->
	<div class="south-search-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="advanced-search-form">
						<!-- Search Title -->
						<div class="search-title">
							<p>Search for your pill</p>
						</div>
						<!-- Search Form -->
						<form action="/textresult" id="advanceSearch">
							<div class="row">
								<div class="col-12 col-md-4">
									<div class="form-group">
										<input id="searchInput" autocomplete="on" type="text"
											class="form-control" name="name" placeholder="제품명">
									</div>
								</div>

								<div class="col-12 col-md-4">
									<div class="form-group">
										<input type="text" class="form-control" name="print1"
											placeholder="식별문자 1">
									</div>
								</div>

								<div class="col-12 col-md-4">
									<div class="form-group">
										<input type="text" class="form-control" name="print2"
											placeholder="식별문자 2">
									</div>
								</div>

								<div class="col-12 search-form-second-steps">
									<div class="row">
										<div class="col-12 col-md-4">
											<div class="form-group">
												<select id="social" class="form-control" name="shape">
													<option value="">모양</option>
													<option value="원형">원형</option>
													<option value="타원형">타원형</option>
													<option value="장방형">장방형</option>
													<option value="반원형">반원형</option>
													<option value="삼각형">삼각형</option>
													<option value="사각형">사각형</option>
													<option value="마름모형">마름모형</option>
													<option value="오각형">오각형</option>
													<option value="육각형">육각형</option>
													<option value="팔각형">팔각형</option>
													<option value="기타">기타</option>
												</select>
											</div>
										</div>

										<div class="col-12 col-md-4">
											<div class="form-group">
												<select class="form-control" name="color">
													<option value="">색상</option>
													<option value="하양">하양</option>
													<option value="노랑">노랑</option>
													<option value="주황">주황</option>
													<option value="분홍">분홍</option>
													<option value="빨강">빨강</option>
													<option value="갈색">갈색</option>
													<option value="연두">연두</option>
													<option value="초록">초록</option>
													<option value="청록">청록</option>
													<option value="파랑">파랑</option>
													<option value="남색">남색</option>
													<option value="자주">자주</option>
													<option value="보라">보라</option>
													<option value="회색">회색</option>
													<option value="검정">검정</option>
													<option value="투명">투명</option>
												</select>
											</div>
										</div>

									</div>
								</div>

								<div
									class="col-12 d-flex justify-content-between align-items-end">
									<!-- More Filter -->
									<div class="more-filter">
										<a href="#" id="moreFilter">+ More filters</a>
									</div>
									<!-- Submit -->
									<div class="form-group mb-0">
										<input type="submit" class="btn south-btn" value="검색">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Advance Search Area End ##### -->

	<section class="cart_area padding_top">
		<div class="container">
			<div class="section-heading2 wow fadeInUp">
				<h3>검색결과</h3>

			</div>
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">제품명</th>
								<th scope="col">회사명</th>
								<th scope="col">식별문자</th>
								<th scope="col">모양</th>
								<th scope="col">색깔</th>
							</tr>
						</thead>
						<c:forEach var="pill" items="${pill}">
							<tbody>
								<tr>
									<td>
										<div class="media">
											<div class="d-flex">
												<!-- 제품명 옆 사진 놓는 곳 -->
												<img src="" alt="" />
											</div>
											<div class="media-body">
												<a
													href="https://nedrug.mfds.go.kr/pbp/CCBBB01/getItemDetail?itemSeq=${pill.id}"
													target="_blank" class="site-btn">${pill.itemName} ></a>
											</div>
										</div>
									</td>
									<td>
										<h5>${pill.entpName}</h5>
									</td>
									<td>
										<c:choose>
											<c:when test="${empty pill.printFront}">
												<h5>${pill.printBack}</h5>
											</c:when>
											<c:when test="${empty pill.printBack}">
												<h5>${pill.printFront}</h5>
											</c:when>
											<c:otherwise>
												<h5>${pill.printFront},${pill.printBack}</h5>
											</c:otherwise>
										</c:choose>
									</td>
									<td>
										<h5>${pill.drugShape}</h5>
									</td>
									<td>
										<h5>${pill.colorClass}</h5>
									</td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</section>

	<script>
      var $j = jQuery.noConflict();
         
      $j(function() {    //화면 다 뜨면 시작
           axios.get("http://localhost:8000/json")
              .then(resdata => {
                 console.log(resdata.data)
                 
                 $j("#searchInput").autocomplete({
                 
                    source : function(request, response) {
                         var results = $j.ui.autocomplete.filter(resdata.data, request.term);
                         response(results.slice(0, 10));
                         
                    },
                     select : function(event, ui) {    //아이템 선택시
                      console.log(ui.item);
                  },
                 
                  focus : function(event, ui) {    //포커스 가면
                       return false;//한글 에러 잡기용도로 사용됨
                  },
                  matchContains: true,
                  minLength: 1,
                    autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
                    classes: {    //잘 모르겠음
                       "ui-autocomplete": "highlight"
                    },
            
                    close : function(event){    //자동완성창 닫아질때 호출
                    console.log(event);
                    }})
            });
       });
   </script>

	<!-- ##### Featured Properties Area Start ##### -->
	<section class="featured-properties-area section-padding-100-50">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading wow fadeInUp">
						<h2>Featured Properties</h2>
						<p>Suspendisse dictum enim sit amet libero malesuada feugiat.</p>
					</div>
				</div>
			</div>

			<div class="row">

				<!-- Single Featured Property -->
				<div class="col-12 col-md-6 col-xl-4">
					<div class="single-featured-property mb-50 wow fadeInUp"
						data-wow-delay="100ms">
						<!-- Property Thumbnail -->
						<div class="property-thumb">
							<img src="img/bg-img/feature1.jpg" alt="">

							<div class="tag">
								<span>For Sale</span>
							</div>
							<div class="list-price">
								<p>$945 679</p>
							</div>
						</div>
						<!-- Property Content -->
						<div class="property-content">
							<h5>Villa in Los Angeles</h5>
							<p class="location">
								<img src="img/icons/location.png" alt="">Upper Road 3411,
								no.34 CA
							</p>
							<p>Integer nec bibendum lacus. Suspendisse dictum enim sit
								amet libero malesuada.</p>
							<div
								class="property-meta-data d-flex align-items-end justify-content-between">
								<div class="new-tag">
									<img src="img/icons/new.png" alt="">
								</div>
								<div class="bathroom">
									<img src="img/icons/bathtub.png" alt=""> <span>2</span>
								</div>
								<div class="garage">
									<img src="img/icons/garage.png" alt=""> <span>2</span>
								</div>
								<div class="space">
									<img src="img/icons/space.png" alt=""> <span>120
										sq ft</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Featured Property -->
				<div class="col-12 col-md-6 col-xl-4">
					<div class="single-featured-property mb-50 wow fadeInUp"
						data-wow-delay="200ms">
						<!-- Property Thumbnail -->
						<div class="property-thumb">
							<img src="img/bg-img/feature2.jpg" alt="">

							<div class="tag">
								<span>For Sale</span>
							</div>
							<div class="list-price">
								<p>$945 679</p>
							</div>
						</div>
						<!-- Property Content -->
						<div class="property-content">
							<h5>Town House in Los Angeles</h5>
							<p class="location">
								<img src="img/icons/location.png" alt="">Upper Road 3411,
								no.34 CA
							</p>
							<p>Integer nec bibendum lacus. Suspendisse dictum enim sit
								amet libero malesuada.</p>
							<div
								class="property-meta-data d-flex align-items-end justify-content-between">
								<div class="new-tag">
									<img src="img/icons/new.png" alt="">
								</div>
								<div class="bathroom">
									<img src="img/icons/bathtub.png" alt=""> <span>2</span>
								</div>
								<div class="garage">
									<img src="img/icons/garage.png" alt=""> <span>2</span>
								</div>
								<div class="space">
									<img src="img/icons/space.png" alt=""> <span>120
										sq ft</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Featured Property -->
				<div class="col-12 col-md-6 col-xl-4">
					<div class="single-featured-property mb-50 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Property Thumbnail -->
						<div class="property-thumb">
							<img src="img/bg-img/feature3.jpg" alt="">

							<div class="tag">
								<span>For Sale</span>
							</div>
							<div class="list-price">
								<p>$945 679</p>
							</div>
						</div>
						<!-- Property Content -->
						<div class="property-content">
							<h5>Town House in Los Angeles</h5>
							<p class="location">
								<img src="img/icons/location.png" alt="">Upper Road 3411,
								no.34 CA
							</p>
							<p>Integer nec bibendum lacus. Suspendisse dictum enim sit
								amet libero malesuada.</p>
							<div
								class="property-meta-data d-flex align-items-end justify-content-between">
								<div class="new-tag">
									<img src="img/icons/new.png" alt="">
								</div>
								<div class="bathroom">
									<img src="img/icons/bathtub.png" alt=""> <span>2</span>
								</div>
								<div class="garage">
									<img src="img/icons/garage.png" alt=""> <span>2</span>
								</div>
								<div class="space">
									<img src="img/icons/space.png" alt=""> <span>120
										sq ft</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Featured Property -->
				<div class="col-12 col-md-6 col-xl-4">
					<div class="single-featured-property mb-50 wow fadeInUp"
						data-wow-delay="400ms">
						<!-- Property Thumbnail -->
						<div class="property-thumb">
							<img src="img/bg-img/feature4.jpg" alt="">

							<div class="tag">
								<span>For Sale</span>
							</div>
							<div class="list-price">
								<p>$945 679</p>
							</div>
						</div>
						<!-- Property Content -->
						<div class="property-content">
							<h5>Villa in Los Angeles</h5>
							<p class="location">
								<img src="img/icons/location.png" alt="">Upper Road 3411,
								no.34 CA
							</p>
							<p>Integer nec bibendum lacus. Suspendisse dictum enim sit
								amet libero malesuada.</p>
							<div
								class="property-meta-data d-flex align-items-end justify-content-between">
								<div class="new-tag">
									<img src="img/icons/new.png" alt="">
								</div>
								<div class="bathroom">
									<img src="img/icons/bathtub.png" alt=""> <span>2</span>
								</div>
								<div class="garage">
									<img src="img/icons/garage.png" alt=""> <span>2</span>
								</div>
								<div class="space">
									<img src="img/icons/space.png" alt=""> <span>120
										sq ft</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Featured Property -->
				<div class="col-12 col-md-6 col-xl-4">
					<div class="single-featured-property mb-50 wow fadeInUp"
						data-wow-delay="500ms">
						<!-- Property Thumbnail -->
						<div class="property-thumb">
							<img src="img/bg-img/feature5.jpg" alt="">

							<div class="tag">
								<span>For Sale</span>
							</div>
							<div class="list-price">
								<p>$945 679</p>
							</div>
						</div>
						<!-- Property Content -->
						<div class="property-content">
							<h5>Town House in Los Angeles</h5>
							<p class="location">
								<img src="img/icons/location.png" alt="">Upper Road 3411,
								no.34 CA
							</p>
							<p>Integer nec bibendum lacus. Suspendisse dictum enim sit
								amet libero malesuada.</p>
							<div
								class="property-meta-data d-flex align-items-end justify-content-between">
								<div class="new-tag">
									<img src="img/icons/new.png" alt="">
								</div>
								<div class="bathroom">
									<img src="img/icons/bathtub.png" alt=""> <span>2</span>
								</div>
								<div class="garage">
									<img src="img/icons/garage.png" alt=""> <span>2</span>
								</div>
								<div class="space">
									<img src="img/icons/space.png" alt=""> <span>120
										sq ft</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Featured Property -->
				<div class="col-12 col-md-6 col-xl-4">
					<div class="single-featured-property mb-50 wow fadeInUp"
						data-wow-delay="600ms">
						<!-- Property Thumbnail -->
						<div class="property-thumb">
							<img src="img/bg-img/feature6.jpg" alt="">

							<div class="tag">
								<span>For Sale</span>
							</div>
							<div class="list-price">
								<p>$945 679</p>
							</div>
						</div>
						<!-- Property Content -->
						<div class="property-content">
							<h5>Town House in Los Angeles</h5>
							<p class="location">
								<img src="img/icons/location.png" alt="">Upper Road 3411,
								no.34 CA
							</p>
							<p>Integer nec bibendum lacus. Suspendisse dictum enim sit
								amet libero malesuada.</p>
							<div
								class="property-meta-data d-flex align-items-end justify-content-between">
								<div class="new-tag">
									<img src="img/icons/new.png" alt="">
								</div>
								<div class="bathroom">
									<img src="img/icons/bathtub.png" alt=""> <span>2</span>
								</div>
								<div class="garage">
									<img src="img/icons/garage.png" alt=""> <span>2</span>
								</div>
								<div class="space">
									<img src="img/icons/space.png" alt=""> <span>120
										sq ft</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Featured Properties Area End ##### -->

	<!-- ##### Call To Action Area Start ##### -->
	<section class="call-to-action-area bg-fixed bg-overlay-black"
		style="background-image: url(img/bg-img/cta.jpg)">
		<div class="container h-100">
			<div class="row align-items-center h-100">
				<div class="col-12">
					<div class="cta-content text-center">
						<h2 class="wow fadeInUp" data-wow-delay="300ms">Are you
							looking for a place to rent?</h2>
						<h6 class="wow fadeInUp" data-wow-delay="400ms">Suspendisse
							dictum enim sit amet libero malesuada feugiat.</h6>
						<a href="#" class="btn south-btn mt-50 wow fadeInUp"
							data-wow-delay="500ms">Search</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Call To Action Area End ##### -->

	<!-- ##### Testimonials Area Start ##### -->
	<section class="south-testimonials-area section-padding-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading wow fadeInUp" data-wow-delay="250ms">
						<h2>Client testimonials</h2>
						<p>Suspendisse dictum enim sit amet libero malesuada feugiat.</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="testimonials-slides owl-carousel wow fadeInUp"
						data-wow-delay="500ms">

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide text-center">
							<h5>Perfect Home for me</h5>
							<p>Etiam nec odio vestibulum est mattis effic iturut magna.
								Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum
								est mattis effic iturut magna. Pellentesque sit am et tellus
								blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est
								mat tis effic iturut magna.</p>

							<div class="testimonial-author-info">
								<img src="img/bg-img/feature6.jpg" alt="">
								<p>
									Daiane Smith, <span>Customer</span>
								</p>
							</div>
						</div>

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide text-center">
							<h5>Perfect Home for me</h5>
							<p>Etiam nec odio vestibulum est mattis effic iturut magna.
								Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum
								est mattis effic iturut magna. Pellentesque sit am et tellus
								blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est
								mat tis effic iturut magna.</p>

							<div class="testimonial-author-info">
								<img src="img/bg-img/feature6.jpg" alt="">
								<p>
									Daiane Smith, <span>Customer</span>
								</p>
							</div>
						</div>

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide text-center">
							<h5>Perfect Home for me</h5>
							<p>Etiam nec odio vestibulum est mattis effic iturut magna.
								Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum
								est mattis effic iturut magna. Pellentesque sit am et tellus
								blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est
								mat tis effic iturut magna.</p>

							<div class="testimonial-author-info">
								<img src="img/bg-img/feature6.jpg" alt="">
								<p>
									Daiane Smith, <span>Customer</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Testimonials Area End ##### -->

	<!-- ##### Editor Area Start ##### -->
	<section class="south-editor-area d-flex align-items-center">
		<!-- Editor Content -->
		<div class="editor-content-area">
			<!-- Section Heading -->
			<div class="section-heading wow fadeInUp" data-wow-delay="250ms">
				<img src="img/icons/prize.png" alt="">
				<h2>jeremy Scott</h2>
				<p>Realtor</p>
			</div>
			<p class="wow fadeInUp" data-wow-delay="500ms">Etiam nec odio
				vestibulum est mattis effic iturut magna. Pellentesque sit amet
				tellus blandit. Etiam nec odiomattis effic iturut magna.
				Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.
				Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur
				rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu
				varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id.
				Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna
				vehicula.</p>
			<div class="address wow fadeInUp" data-wow-delay="750ms">
				<h6>
					<img src="img/icons/phone-call.png" alt=""> +45 677 8993000
					223
				</h6>
				<h6>
					<img src="img/icons/envelope.png" alt=""> office@template.com
				</h6>
			</div>
			<div class="signature mt-50 wow fadeInUp" data-wow-delay="1000ms">
				<img src="img/core-img/signature.png" alt="">
			</div>
		</div>

		<!-- Editor Thumbnail -->
		<div class="editor-thumbnail">
			<img src="img/bg-img/editor.jpg" alt="">
		</div>
	</section>
	<!-- ##### Editor Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer
		class="footer-area section-padding-100-0 bg-img gradient-background-overlay"
		style="background-image: url(img/bg-img/cta.jpg);">
		<!-- Main Footer Area -->
		<div class="main-footer-area">
			<div class="container">
				<div class="row">

					<!-- Single Footer Widget -->
					<div class="col-12 col-sm-6 col-xl-3">
						<div class="footer-widget-area mb-100">
							<!-- Widget Title -->
							<div class="widget-title">
								<h6>About Us</h6>
							</div>

							<img src="img/bg-img/footer.jpg" alt="">
							<div class="footer-logo my-4">
								<img src="img/core-img/logo.png" alt="">
							</div>
							<p>Integer nec bibendum lacus. Suspen disse dictum enim sit
								amet libero males uada feugiat. Praesent malesuada.</p>
						</div>
					</div>

					<!-- Single Footer Widget -->
					<div class="col-12 col-sm-6 col-xl-3">
						<div class="footer-widget-area mb-100">
							<!-- Widget Title -->
							<div class="widget-title">
								<h6>Hours</h6>
							</div>
							<!-- Office Hours -->
							<div class="weekly-office-hours">
								<ul>
									<li class="d-flex align-items-center justify-content-between"><span>Monday
											- Friday</span> <span>09 AM - 19 PM</span></li>
									<li class="d-flex align-items-center justify-content-between"><span>Saturday</span>
										<span>09 AM - 14 PM</span></li>
									<li class="d-flex align-items-center justify-content-between"><span>Sunday</span>
										<span>Closed</span></li>
								</ul>
							</div>
							<!-- Address -->
							<div class="address">
								<h6>
									<img src="img/icons/phone-call.png" alt=""> +45 677
									8993000 223
								</h6>
								<h6>
									<img src="img/icons/envelope.png" alt="">
									office@template.com
								</h6>
								<h6>
									<img src="img/icons/location.png" alt=""> Main Str. no
									45-46, b3, 56832, Los Angeles, CA
								</h6>
							</div>
						</div>
					</div>

					<!-- Single Footer Widget -->
					<div class="col-12 col-sm-6 col-xl-3">
						<div class="footer-widget-area mb-100">
							<!-- Widget Title -->
							<div class="widget-title">
								<h6>Useful Links</h6>
							</div>
							<!-- Nav -->
							<ul class="useful-links-nav d-flex align-items-center">
								<li><a href="#">Home</a></li>
								<li><a href="#">About us</a></li>
								<li><a href="#">About us</a></li>
								<li><a href="#">Services</a></li>
								<li><a href="#">Properties</a></li>
								<li><a href="#">Listings</a></li>
								<li><a href="#">Testimonials</a></li>
								<li><a href="#">Properties</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Testimonials</a></li>
								<li><a href="#">Contact</a></li>
								<li><a href="#">Elements</a></li>
								<li><a href="#">FAQ</a></li>
							</ul>
						</div>
					</div>

					<!-- Single Footer Widget -->
					<div class="col-12 col-sm-6 col-xl-3">
						<div class="footer-widget-area mb-100">
							<!-- Widget Title -->
							<div class="widget-title">
								<h6>Featured Properties</h6>
							</div>
							<!-- Featured Properties Slides -->
							<div class="featured-properties-slides owl-carousel">
								<!-- Single Slide -->
								<div class="single-featured-properties-slide">
									<a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
								</div>
								<!-- Single Slide -->
								<div class="single-featured-properties-slide">
									<a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
								</div>
								<!-- Single Slide -->
								<div class="single-featured-properties-slide">
									<a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<!-- Copywrite Text -->
		<div
			class="copywrite-text d-flex align-items-center justify-content-center">
			<p>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				Copyright &copy;
				<script>document.write(new Date().getFullYear());</script>
				All rights reserved | This template is made with <i
					class="fa fa-heart-o" aria-hidden="true"></i> by <a
					href="https://colorlib.com" target="_blank">Colorlib</a>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		</div>
	</footer>
	<!-- ##### Footer Area End ##### -->
	<script src="tableAssets/js/bootstrap.min.js"></script>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.stellar.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/aos.js"></script>
	<script src="assets/js/jquery.animateNumber.min.js"></script>
	<script src="assets/js/bootstrap-datepicker.js"></script>

	<script src="assets/js/scrollax.min.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<script src="js/classy-nav.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>

</body>

</html>