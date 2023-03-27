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
  <link rel="stylesheet" href="<c:url value="/resources/css/manager.css"/>">
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
                                <a class="nav-link" href="product-list/${category.id}">${category.name}</a>
                              </li>
                            </c:forEach>
                        </ul>
                      </li>
                      <li class="nav-item submenu dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                          aria-expanded="false">Trang Quản Lý</a>
                        <ul class="dropdown-menu">
                          <li class="nav-item">
                            <a class="nav-link" href="tracking.html">Danh Mục Quản Lý</a>
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
      <section class="banner_area1">
        <div class="container">
          <div class="banner_content d-md-flex justify-content-between align-items-center">
            <div class="mb-3 mb-md-0">
              <h2>Trang Quản Lý</h2>
            </div>
          </div>
          <td>
              <div class="active">
                  <div class="cupon_text">
                  <a class="main_btn" href="add">Thêm sản phẩm</a>
              </div>
          </td>
        </div>
      </section>

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
                        <th scope="col">Ngày</th>
                      </tr>
                    </thead>
                    <c:forEach var="list" items="${managerList}">
                        <tbody>
                               <tr>
                                    <td>
                                      <div class="media">
                                        <div class="d-flex">

                                          <img width="100" height="100" src="getProductPhoto/<c:out value='${list.id}'/>"/>
                                        </div>
                                        <div class="media-body">
                                          <p>${list.name}</p>
                                        </div>
                                      </div>
                                    </td>
                                    <td>
                                      <h5><h4><fmt:formatNumber value="${list.price}" pattern="#,##0" /></h4></h5>
                                    </td>
                                    <td>
                                     <h5>${list.quantity}</h5>
                                    </td>
                                    <td>
                                      <h5>${list.productDate}</h5>
                                    </td>
                                    <td>
                                      <div class="active">
                                          <div class="cupon_text1">
                                              <a class="main_btn" href="update/${list.id}">Sửa</a>
                                          </div>
                                          <div  class="cupon_text2">
                                              <a style="margin-left: 10px;" class="main_btn" href="delete/${list.id}">Xóa</a>
                                          </div>
                                      </div>
                                    </td>
                               </tr>
                        </tbody>
                    </c:forEach>
                  </table>
            </div>
          </div>
        </div>
      </section>

    </body>
</html>