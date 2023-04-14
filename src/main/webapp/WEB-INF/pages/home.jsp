<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="icon" href="img/fev.png" type="image/png"/>
  <title>Home</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<c:url value="/resources/css/css/bootstrap.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/liner/style.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/font-awesome.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/them-icons.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/flat.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/owl-carousel/owl.carousel.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/lightbox/simpleLightbox.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/nice-select/css/nice-select.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/animate-css/animate.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/jquery-ui/jquery-ui.css"/>">
  <!-- main css -->
  <link rel="stylesheet" href="<c:url value="/resources/css/css/style.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/css/responsive.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/font-free-6.1.2-web/css/solid.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/pageHome.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/slidehome.css"/>">


</head>

<body>
<jsp:include page="header1.jsp"/>



    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="single-feature" >
            <a href="categoryid=${1}page1">
            <img width="54px" src="<c:url value='/resources/css/img/logoDT.PNG'/>"/>
              <h3>Điện Thoại</h3>
            </a>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="categoryid=${4}page1">
            <img src="<c:url value='/resources/css/img/logotablet3.PNG'/>"/>
              <h3>Tablet</h3>
            </a>
         </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="categoryid=${2}page1">
            <img style="width: 82px;" src="<c:url value='/resources/css/img/logoLaptop.PNG'/>"/>
              <h3>LapTop&MAC</h3>
            </a>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="categoryid=${3}page1">
            <img style="width: 37px;" src="<c:url value='/resources/css/img/logodongho.PNG'/>"/>
              <h3>Đồng Hồ</h3>
            </a>
          </div>
        </div>
      </div>
    </div>


    <!--------------slide------------->
  <section class="slider">
      <div class="container">
          <div class="slider-content">
              <div class="slider-content-left">
                  <div class="slider-content-left-top-container">
                      <div class="slider-content-left-top">
                          <a href=""><img src="<c:url value='/resources/img/banner/banner-top1.webp'/>" /></a>
                          <a href=""><img src="<c:url value='/resources/img/banner/banner-top2.webp'/>" /></a>
                          <a href=""><img src="<c:url value='/resources/img/banner/banner-top3.webp'/>" /></a>
                          <a href=""><img src="<c:url value='/resources/img/banner/banner-top4.webp'/>" /></a>
                      </div>
                      <div class="slider-content-left-top-btn">
                          <i class="fas fa-chevron-left"></i>
                          <i class="fas fa-chevron-right"></i>
                      </div>
                  </div>
              </div>
              <div class="slider-content-right">
                  <li><a href=""><img src="<c:url value='/resources/img/banner/banner-top3.webp'/>" /></a></li>
                  <li><a href=""><img src="<c:url value='/resources/img/banner/banner-top4.webp'/>" /></a></li>
              </div>
          </div>
      </div>
  </section>
   <section class="inspired_product_area section_gap_bottom_custom">
        <div style="background-color: #fdd2b9; border-radius: 10px; padding-top: 20px; height: 503px" ;
            <div class="container">
                    <div class="img-logohome1">
                        <h2> Sản Phẩm Mới Nhất </h2>
                    </div>
                <div class="row mt-8 justify-content-center">
                    <c:forEach var="product" items="${ListTop4}" varStatus="index">
                        <div style="width: 24%; margin:2 auto" ;class="col-12">
                            <div style="background-color: #ffff; padding: 10px 0px; border-radius: 10px; height: 100%;object-fit: cover;width: 100%"
                                ; class="single-product">
                                <div class="product-img">
                                    <img style="height: 230px" ; class="img-fluid"
                                        src="getProductPhoto/<c:out value='${product.id}'/>/" />
                                    <div class="p_icon">
                                       <a href="product/${product.id}">
                                              <i class="ti-eye"></i>
                                       </a>
                                       <c:if test="${product.quantity != 0}">
                                           <a href="addToCart/${product.id}">
                                                <i class="ti-shopping-cart"></i>
                                           </a>
                                       </c:if>
                                    </div>
                                </div>
                                <div style="height: 130px;object-fit: cover" ; class="product-btm">
                                    <a href="product/${product.id}" class="d-block">
                                        <h4 style="height: 50px" ;>${product.name}</h4>
                                    </a>
                                    <div class="mt-3">
                                        <span class="mr-4">
                                            <fmt:formatNumber value="${product.price}" pattern="#,##0" /><sup>đ</sup>
                                        </span>
                                    </div>
                                    <li style=" color: #FB6E2E"><i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </li>
                                </div>

                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
   </section>
  <section class="inspired_product_area section_gap_bottom_custom">
      <div style="background-color: #3a1369; border-radius: 10px; padding-top: 20px; height: 960px" ;
          <div class="container">
              <div class="main_title">
                  <div class="img-logohome1">
                      <div class="img-logo1">
                          <img src="<c:url value='/resources/img/banner/banner1.webp'/>" />
                      </div>
                  </div>
              </div>
              <div class="row mt-8 justify-content-center">
                  <c:forEach var="product" items="${productListTopPhone}" varStatus="index">
                      <div style="width: 19.7%; margin:2 auto" ;class="col-12">
                          <div style="background-color: #ffff; padding: 10px 0px; border-radius: 10px; height: 90%;object-fit: cover;width: 100%"
                              ; class="single-product">
                              <div class="product-img">
                                  <img style="height: 180px" ; class="img-fluid"
                                      src="getProductPhoto/<c:out value='${product.id}'/>/" />
                                  <div class="p_icon">
                                      <a href="product/${product.id}">
                                          <i class="ti-eye"></i>
                                      </a>
                                      <c:if test="${product.quantity != 0}">
                                         <a href="addToCart/${product.id}">
                                              <i class="ti-shopping-cart"></i>
                                         </a>
                                      </c:if>
                                  </div>
                              </div>
                              <div style="height: 130px;object-fit: cover" ; class="product-btm">
                                  <a href="product/${product.id}" class="d-block">
                                      <h4 style="height: 50px" ;>${product.name}</h4>
                                  </a>
                                  <div class="mt-3">
                                      <span class="mr-4">
                                          <fmt:formatNumber value="${product.price}" pattern="#,##0" /><sup>đ</sup>
                                      </span>
                                      <li><i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                      </li>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </c:forEach>
              </div>
              <div class="main_titles">
                  <a href="categoryid=${1}page1" class="d-block">Xem Tất Cả</a>
              </div>
          </div>
      </div>
  </section>
  <section class="inspired_product_area section_gap_bottom_custom">
      <div style="background-color: #fedd38; border-radius: 10px; padding-top: 20px; height: 960px" ;
          <div class="container">
              <div class="main_title">
                  <div class="img-logohome1">
                      <div class="img-logo1">
                          <img src="<c:url value='/resources/img/banner/banner-tablet.webp'/>" />
                      </div>
                  </div>
              </div>
              <div class="row mt-8 justify-content-center">
                  <c:forEach var="product" items="${productListTopTablet}" varStatus="index">
                      <div style="width: 19.7%; margin:2 auto" ;class="col-12">
                          <div style="background-color: #ffff; padding: 10px 0px; border-radius: 10px; height: 90%;object-fit: cover;width: 100%"
                              ; class="single-product">
                              <div class="product-img">
                                  <img style="height: 180px" ; class="img-fluid"
                                      src="getProductPhoto/<c:out value='${product.id}'/>" />
                                  <div class="p_icon">
                                      <a href="product/${product.id}">
                                           <i class="ti-eye"></i>
                                      </a>
                                      <c:if test="${product.quantity != 0}">
                                         <a href="addToCart/${product.id}">
                                              <i class="ti-shopping-cart"></i>
                                         </a>
                                      </c:if>
                                  </div>
                              </div>
                              <div style="height: 130px;object-fit: cover" ; class="product-btm">
                                  <a href="product/${product.id}" class="d-block">
                                      <h4 style="height: 50px" ;>${product.name}</h4>
                                  </a>
                                  <div class="mt-3">
                                      <span class="mr-4">
                                          <fmt:formatNumber value="${product.price}" pattern="#,##0" /><sup>đ</sup>
                                      </span>
                                      <li><i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                      </li>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </c:forEach>
              </div>
              <div class="main_titles">
                  <a href="categoryid=${2}page1" class="d-block">Xem Tất Cả</a>
              </div>
          </div>
      </div>
  </section>
  <section class="inspired_product_area section_gap_bottom_custom">
      <div style="background-color: #b41011; border-radius: 10px; padding-top: 20px; height: 960px" ;
          <div class="container">
              <div class="main_title">
                  <div class="img-logohome1">
                      <div class="img-logo1">
                          <img style="height: 110px"; src="<c:url value='/resources/img/banner/banner-lap.png'/>" />
                      </div>
                  </div>
              </div>
              <div class="row mt-8 justify-content-center">
                  <c:forEach var="product" items="${productListTopLaptop}" varStatus="index">
                      <div style="width: 19.7%; margin:2 auto" ;class="col-12">
                          <div style="background-color: #ffff; padding: 10px 0px; border-radius: 10px; height: 90%;object-fit: cover;width: 100%"
                              ; class="single-product">
                              <div class="product-img">
                                  <img style="height: 180px" ; class="img-fluid"
                                      src="getProductPhoto/<c:out value='${product.id}'/>" />
                                  <div class="p_icon">
                                      <a href="product/${product.id}">
                                          <i class="ti-eye"></i>
                                      </a>
                                      <c:if test="${product.quantity != 0}">
                                         <a href="addToCart/${product.id}">
                                              <i class="ti-shopping-cart"></i>
                                         </a>
                                      </c:if>
                                  </div>
                              </div>
                              <div style="height: 130px;object-fit: cover" ; class="product-btm">
                                  <a href="product/${product.id}" class="d-block">
                                      <h4 style="height: 50px" ;>${product.name}</h4>
                                  </a>
                                  <div class="mt-3">
                                      <span class="mr-4">
                                          <fmt:formatNumber value="${product.price}" pattern="#,##0" /><sup>đ</sup>
                                      </span>
                                      <li><i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                      </li>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </c:forEach>
              </div>
              <div class="main_titles">
                  <a href="categoryid=${3}page1" class="d-block">Xem Tất Cả</a>
              </div>
          </div>
      </div>
  </section>
  <section class="inspired_product_area section_gap_bottom_custom">
      <div style="background-color: #99c2bf; border-radius: 10px; padding-top: 20px; height: 960px" ;
          <div class="container">
              <div class="main_title">
                  <div class="img-logohome1">
                      <div class="img-logo1">
                          <img style="height: 110px"; src="<c:url value='/resources/img/banner/banner-dong-ho.jpg'/>" />
                      </div>
                  </div>
              </div>
              <div class="row mt-8 justify-content-center">
                  <c:forEach var="product" items="${productListTopDH}" varStatus="index">
                      <div style="width: 19.7%; margin:2 auto" ;class="col-12">
                          <div style="background-color: #ffff; padding: 10px 0px; border-radius: 10px; height: 90%;object-fit: cover;width: 100%"
                              ; class="single-product">
                              <div class="product-img">
                                  <img style="height: 180px" ; class="img-fluid"
                                      src="getProductPhoto/<c:out value='${product.id}'/>" />
                                  <div class="p_icon">
                                      <a href="product/${product.id}">
                                          <i class="ti-eye"></i>
                                      </a>
                                      <c:if test="${product.quantity != 0}">
                                         <a href="addToCart/${product.id}">
                                              <i class="ti-shopping-cart"></i>
                                         </a>
                                      </c:if>
                                  </div>
                              </div>
                              <div style="height: 130px;object-fit: cover" ; class="product-btm">
                                  <a href="product/${product.id}" class="d-block">
                                      <h4 style="height: 50px" ;>${product.name}</h4>
                                  </a>
                                  <div class="mt-3">
                                      <span class="mr-4">
                                          <fmt:formatNumber value="${product.price}" pattern="#,##0" /><sup>đ</sup>
                                      </span>
                                      <li><i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                          <i class="fas fa-star"></i>
                                      </li>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </c:forEach>
              </div>
              <div class="main_titles">
                  <a href="categoryid=${4}page1" class="d-block">Xem Tất Cả</a>
              </div>
          </div>
      </div>
  </section>
    <jsp:include page="footer.jsp"/>
    <script src="<c:url value="/resources/css/js/jquery-3.2.1.min.js"/>"></script>
        <script src="<c:url value="/resources/css/js/popper.js"/>"></script>
        <script src="<c:url value="/resources/css/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/css/js/stellar.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/lightbox/simpleLightbox.min.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/nice-select/js/jquery.nice-select.min.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/isotope/imagesloaded.pkgd.min.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/isotope/isotope-min.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/resources/css/js/jquery.ajaxchimp.min.js"/>"></script>
        <script src="<c:url value="/resources/css/js/mail-script.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/jquery-ui/jquery-ui.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/counter-up/jquery.waypoints.min.js"/>"></script>
        <script src="<c:url value="/resources/css/vendors/counter-up/jquery.counterup.js"/>"></script>
        <script src="<c:url value="/resources/css/js/theme.js"/>"></script>
        <script src="<c:url value="/resources/css/js/slidehome.js"/>"></script>

</body>
</html>