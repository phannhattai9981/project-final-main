<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<html>
<head lang="en">
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
  <link rel="stylesheet" href="<c:url value="/resources/css/listProduct.css"/>">


</head>
<body>
  <header class="header_area">
    <div class="main_menu">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light w-100">
          <a class="navbar-brand logo_h" href="/productphone">
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
                    <a class="nav-link" href="/productphone">Trang Chủ</a>
                  </li>

                  <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">Danh Mục</a>
                    <ul class="dropdown-menu">
                      <c:forEach var="category" items="${categoryList}" varStatus="index">
                        <li class="nav-item">
                          <a class="nav-link" href="${category.id}">${category.name}</a>
                        </li>
                      </c:forEach>
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

  <section class="inspired_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="main_title">
                <div class="img-logohome1">
                  <div class="img-logo1">
                    <img src="<c:url value='/resources/css/img/logohome1920x600-060323-min.png'/>"/>
                  </div>
                  <div class="img-logo2">
                    <div class="img-logo2-top">
                      <img src="<c:url value='/resources/css/img/logohome-top.png'/>"/>
                    </div>
                    <div class="ing-logo2-bottom">
                      <img src="<c:url value='/resources/css/img/logohome-bottom.jpg'/>"/>
                    </div>
                  </div>
                </div>
            </div>
          <div class="main_title">
            <h2><span>Danh Sách Sản Phẩm</span></h2>
          </div>
        </div>
      </div>
      <div class="row">
           <c:forEach var="list" items="${List}" varStatus="index">
              <div class="col-lg-3 col-md-6">
                <div class="single-product">
                  <div class="product-img">
                    <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                    <div class="p_icon">
                      <a href="#">
                        <i class="ti-eye"></i>
                      </a>
                      <a href="#">
                        <i class="ti-shopping-cart"></i>
                      </a>
                    </div>
                  </div>
                  <div class="product-btm">
                    <a href="#" class="d-block">
                      <h4>${list.name}</h4>
                    </a>
                    <div class="mt-3">
                      <span class="mr-4"><fmt:formatNumber value="${list.price}" pattern="#,##0" /></span>
                      <del>$35.00</del>
                    </div>
                  </div>
                </div>
              </div>
           </c:forEach>
      </div>
    </div>

  </section>
    <footer style="width: 100%; display: flex; justify-content: center;">
          <nav aria-label="Page navigation example">
                <ul class="pagination">
                <li class="page-item"><a class="page-link" href="categoryid=${category.id}page${previous}">Previous</a></li>
                <c:forEach var='item' begin='1' end='${countPage}'>
                  <li class="page-item"><a class="page-link" href="categoryid=${category.id}page${item}"><c:out value='${item}'/></a></li>
                  </c:forEach>
                 <li class="page-item"><a class="page-link" href="categoryid=${category.id}page${next}">Next</a></li>
                </ul>
          </nav>
    </footer>

</body>

</html>