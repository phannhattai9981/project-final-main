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
  <link rel="stylesheet" href="<c:url value="/resources/css/cart.css"/>">


</head>
  <body>

    <header class="header_area">
      <div class="main_menu">
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-light w-100">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand logo_h" href="/project-final-main">
               <img src="<c:url value='/resources/css/img/logo/Logo1_tp_icon.png'/>"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
              <div class="row w-100 mr-0">
                <div class="col-lg-7 pr-0">
                  <ul class="nav navbar-nav center_nav pull-right">
                    <li class="nav-item active">
                      <a class="nav-link" href="index.html">Trang Chủ</a>
                    </li>

                    <li class="nav-item submenu dropdown">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false">Danh Mục</a>
                      <ul class="dropdown-menu">
                        <li class="nav-item">
                          <a class="nav-link" href="blog.html">Điện Thoại</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="single-blog.html">Tablet</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="single-blog.html">LapTop</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="single-blog.html">Đồng Hồ</a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item submenu dropdown">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false">Pages</a>
                      <ul class="dropdown-menu">
                        <li class="nav-item">
                          <a class="nav-link" href="tracking.html">Tracking</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="elements.html">Elements</a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="contact.html">Contact</a>
                    </li>
                  </ul>

                  <!--==============search================-->
                  <!-- <form:form action="search" method="get">
                      <div class="input-group">
                        <input name="searchInput" type="text" class="form-control rounded" placeholder="Sản Phẩm Cần Tìm?" aria-label="Search"
                              aria-describedby="search-addon" />
                        <button type="submit" class="btn btn-outline-primary">Tìm Kiếm</button>
                      </div>
                  </form:form> -->
                </div>

                <div class="col-lg-5 pr-0">
                  <ul class="nav navbar-nav navbar-right right_nav pull-right">

                    <li class="nav-item">
                      <a href="#" class="icons">
                        <i class="ti-shopping-cart">Giỏ Hàng</i>
                      </a>
                    </li>

                    <li class="nav-items">
                        <li><a style="color: black;" href="#"><i class="fa fa-user"></i> Đăng Nhập</a></li>
                      </a>
                    </li>

                    <li class="nav-items">
                        <li><a style="color: black;" href="#"><i class="fa fa-user"></i> Đăng Ký</a></li>
                      </a>
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

    <section class="banner_area1">
      <div class="container">
        <div class="banner_content d-md-flex justify-content-between align-items-center">
          <div class="mb-3 mb-md-0">
            <h2>Giỏ Hàng</h2>
            <p>${msg}</p>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Cart Area =================-->
    <section class="cart_areas">
      <div class="container">
        <div class="cart_inner">
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Sản Phẩm</th>
                  <th scope="col">Giá</th>
                  <th scope="col">Số Lượng</th>
                  <th scope="col">Tổng</th>
                </tr>
              </thead>
                  <tbody>
                      <c:forEach var="cartItem" items="${cartItem}" varStatus="index">
                        <tr>
                          <td>
                            <div class="media">
                              <div class="d-flex">
                                <img class="img-fluid" src="getProductPhoto/<c:out value='${cartItem.id}'/>"/>
                              </div>
                              <div class="media-body">
                               <a href="product/${cartItem.product.id}">
                                <p>${cartItem.product.name}</p>
                               </a>
                              </div>
                            </div>
                          </td>
                          <td>
                            <h5><fmt:formatNumber value="${cartItem.product.price}" pattern="#,##0" /></h5>
                          </td>
                          <td>
                            <div class="product_count">
                              <input
                                type="text"
                                name="qty"
                                id="sst"
                                maxlength="4"
                                value="${cartItem.quantity}"
                                title="Quantity:"
                                class="input-text qty"
                              />
                              <button
                                onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                class="increase items-count"
                                type="button"
                              >
                                <i class="lnr lnr-chevron-up"></i>
                              </button>
                              <button
                                onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 1 ) result.value--;return false;"
                                class="reduced items-count"
                                type="button"
                              >
                                <i class="lnr lnr-chevron-down"></i>
                              </button>
                            </div>
                          </td>
                          <td>
                            <h5><fmt:formatNumber value="${cartItem.product.price*cartItem.quantity}" pattern="#,##0" /></h2></h5>
                          </td>
                          <td>
                            <div class="cupon_text">
                                <a class="main_btn" href="delete/${cartItem.id}">Loại bỏ</a>
                            </div>
                          </td>
                        </tr>
                      </c:forEach>
                        <tr>
                          <td></td>
                          <td></td>
                          <td>
                            <h5>Tổng đơn</h5>
                          </td>
                          <td>
                            <h5><fmt:formatNumber value="${total}" pattern="#,##0" /> <u>đ</u></h2></h5>
                          </td>
                        </tr>
                        <tr class="out_button_area">
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>
                            <div class="checkout_btn_inner">
                              <div class="continuer">
                                <a class="gray_btn" href="#">Chọn Thêm Sản Phẩm Khác</a>
                              </div>
                              <div class="buy">
                                <a class="main_btn" href="checkout">Thanh Toán</a>
                              </div>
                            </div>
                          </td>
                        </tr>
                  </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
    <!--================End Cart Area =================-->


  </body>
</html>
