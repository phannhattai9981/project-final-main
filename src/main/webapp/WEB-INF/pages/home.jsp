<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
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


</head>

<body>
<jsp:include page="header.jsp" />
  <header class="header_area">
    <div class="main_menu">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light w-100">

          <a class="navbar-brand logo_h" href="/project-final-main">
            <img src="<c:url value='/resources/css/img/logo/Logo1_tp_icon.png'/>"/>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
            <div class="row w-100 mr-0">
              <div class="col-lg-7 pr-0">
                <ul class="nav navbar-nav center_nav pull-right">
                  <li class="nav-item active">
                    <a class="nav-link" href="/productphone">Trang Chủ</a>
                  </li>

                  <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">Danh Mục</a>
                    <ul class="dropdown-menu">
                        <c:forEach var="category" items="${categoryList}" varStatus="index">
                          <li class="nav-item">
                            <a class="nav-link" href="product-list/categoryid=${category.id}page1">${category.name}</a>
                          </li>
                        </c:forEach>
                    </ul>
                  </li>
                  <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">Trang Quản Lý</a>
                    <ul class="dropdown-menu">
                      <li class="nav-item">
                        <a class="nav-link" href="manager">Danh Mục Quản Lý</a>
                      </li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="contact.html">Contact</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </header>
  <div class="search">
    <form:form action="search" method="get">
      <div class="input-group">
          <input name="searchInput" type="text" class="form-control rounded" placeholder="Sản Phẩm Cần Tìm?" aria-label="Search"
              aria-describedby="search-addon" />
          <button type="submit" class="btn btn-outline-primary">Tìm Kiếm</button>
      </div>
    </form:form>
  </div>
  <section class="feature-area section_gap_bottom_custom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#">
            <img width="54px" src="<c:url value='/resources/css/img/logoDT.PNG'/>"/>
              <h3>Điện Thoại</h3>
            </a>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false"></a>
              <ul class="dropdown-menu">
                <li class="nav-item">
                  <a class="nav-link" href="#">iPhone 14 Pro Max</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="single-product.html">iPhone 14 Plus</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="checkout.html">iPhone 13 Pro Max</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="cart.html">iPhone SE 2022</a>
                </li>
              </ul>

          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <img src="<c:url value='/resources/css/img/logotablet3.PNG'/>"/>
              <h3>Tablet</h3>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false"></a>
              <ul class="dropdown-menu">
                <li class="nav-item">
                  <a class="nav-link" href="#">iPad Pro</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="single-product.html">iPad Gen</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="checkout.html">Galaxy Tab</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="cart.html">Oppo Tab</a>
                </li>
              </ul>

          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <img style="width: 82px;" src="<c:url value='/resources/css/img/logoLaptop.PNG'/>"/>
              <h3>LapTop&MAC</h3>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false"></a>
            <ul class="dropdown-menu">
              <li class="nav-item">
                <a class="nav-link" href="#">Macbook Pro</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="single-product.html">Macbook Air</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="checkout.html">Dell</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="cart.html">LG</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <img style="width: 37px;" src="<c:url value='/resources/css/img/logodongho.PNG'/>"/>
              <h3>Đồng Hồ</h3>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false"></a>
            <ul class="dropdown-menu">
              <li class="nav-item">
                <a class="nav-link" href="#">Apple Wacth Series 7</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="single-product.html">Apple Wacth Series 8</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="checkout.html">Apple Wacth SE 2022</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="cart.html">Apple Wacth Ultra</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="new_product_area section_gap_top section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Sản Phẩm Mới</span></h2>
            <p>Bring called seed first of third give itself now ment</p>
          </div>
        </div>
      </div>

        <div class="row">
          <c:forEach var="top1" items="${ListTop1}" varStatus="index">
            <div class="col-lg-6">
              <div class="new_product">
                <h3 class="text-uppercase">${top1.name}</h3>
                <div class="product-img">
                    <a href="product/${top1.id}">
                      <img class="img-fluid" src="getProductPhoto/<c:out value='${top1.id}'/>"/>
                    </a>
                </div>
                <h4><fmt:formatNumber value="${top1.price}" pattern="#,##0" /></h4>
                <a href="addToCart/${top1.id}" class="main_btn">Thêm Vào Giỏ</a>

              </div>
            </div>
          </c:forEach>
            <div class="col-lg-6 mt-5 mt-lg-0">

                  <div class="row">
                      <c:forEach var="top4" items="${ListTop4}" varStatus="index">
                        <div class="col-lg-6 col-md-6">
                          <div class="single-product">
                            <div class="product-img">
                              <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/new-product/n1.jpg'/>"/>
                              <div class="p_icon">
                                <a href="product/${top4.id}">
                                  <i class="ti-eye"></i>
                                </a>
                                <a href="addToCart/${top4.id}">
                                  <i class="ti-shopping-cart"></i>
                                </a>
                              </div>
                            </div>
                            <div class="product-btm">
                              <a href="product/${top4.id}" class="d-block">
                                <h4>${top4.name}</h4>
                              </a>
                              <div class="mt-3">
                                <span class="mr-4"><fmt:formatNumber value="${top4.price}" pattern="#,##0" /></span>
                                <del>$35.00</del>
                              </div>
                            </div>
                          </div>
                        </div>
                      </c:forEach>
                  </div>
            </div>

      </div>
    </div>
  </section>

  <section class="inspired_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Điện Thoại</span></h2>
          </div>
        </div>
      </div>

      <div class="row">
          <c:forEach var="product" items="${productListTopPhone}" varStatus="index">
            <div class="col-lg-3 col-md-6">
              <div class="single-product">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                  <div class="p_icon">
                    <a href="product/${product.id}">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="addToCart/${product.id}">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm">
                  <a href="product/${product.id}" class="d-block">
                    <h4>${product.name}</h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                    <del>$35.00</del>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>
      </div>
    </div>
  </section>

  <section class="inspired_product_area section_gap_bottom_custom">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="main_title">
              <h2><span>Tablet</span></h2>
            </div>
          </div>
        </div>

            <div class="row">
                <c:forEach var="product" items="${showTopTapLet}" varStatus="index">
                  <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                      <div class="product-img">
                        <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                        <div class="p_icon">
                          <a href="product/${product.id}">
                            <i class="ti-eye"></i>
                          </a>
                          <a href="addToCart/${product.id}">
                            <i class="ti-shopping-cart"></i>
                          </a>
                        </div>
                      </div>
                      <div class="product-btm">
                        <a href="product/${product.id}" class="d-block">
                          <h4>${product.name}</h4>
                        </a>
                        <div class="mt-3">
                          <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                          <del>$35.00</del>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
            </div>
      </div>
    </section>

    <section class="inspired_product_area section_gap_bottom_custom">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-12">
                <div class="main_title">
                  <h2><span>LapTop&Mac</span></h2>
                </div>
              </div>
            </div>

                <div class="row">
                    <c:forEach var="product" items="${productListTopLaptop}" varStatus="index">
                      <div class="col-lg-3 col-md-6">
                        <div class="single-product">
                          <div class="product-img">
                            <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                            <div class="p_icon">
                              <a href="product/${product.id}">
                                <i class="ti-eye"></i>
                              </a>
                              <a href="addToCart/${product.id}">
                                <i class="ti-shopping-cart"></i>
                              </a>
                            </div>
                          </div>
                          <div class="product-btm">
                            <a href="product/${product.id}" class="d-block">
                              <h4>${product.name}</h4>
                            </a>
                            <div class="mt-3">
                              <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                              <del>$35.00</del>
                            </div>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                </div>
          </div>
    </section>

    <section class="inspired_product_area section_gap_bottom_custom">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-12">
                <div class="main_title">
                  <h2><span>Đồng Hồ</span></h2>
                </div>
              </div>
            </div>

                <div class="row">
                    <c:forEach var="product" items="${productListDH}" varStatus="index">
                      <div class="col-lg-3 col-md-6">
                        <div class="single-product">
                          <div class="product-img">
                            <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                            <div class="p_icon">
                              <a href="product/${product.id}">
                                <i class="ti-eye"></i>
                              </a>
                              <a href="addToCart/${product.id}">
                                <i class="ti-shopping-cart"></i>
                              </a>
                            </div>
                          </div>
                          <div class="product-btm">
                            <a href="product/${product.id}" class="d-block">
                              <h4>${product.name}</h4>
                            </a>
                            <div class="mt-3">
                              <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                              <del>$35.00</del>
                            </div>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                </div>
          </div>
    </section>

</body>
</html>