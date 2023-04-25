<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@taglib  uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
  <link rel="stylesheet" href="<c:url value="/resources/css/header1.css"/>">

</head>
<body>
    <header class="header_area">
        <div class="main_menu">
                <nav>
                   <div class="container">
                        <div class="header-top">
                            <sec:authorize access="isAuthenticated()">
                                <sec:authorize access="hasRole('ROLE_ADMIN')">

                                     <li class="nav-item">
                                       <a href="<c:url value="/admin/admin_InfoView" />" class="nav-link">
                                         <sec:authentication property="principal.username"/>
                                       </a>

                                      </li>
                                  <td style="padding-top:15px;"><img class="img-fluid1" style="max-width: 20px" w-100"
                                	src="./getPhotoAccount/<c:out value='${account.id}'/>" />
                                </sec:authorize>
                                 <sec:authorize access="hasRole('ROLE_USER')">

                                <li class="nav-item">
                                      <a href="<c:url value="/user/account_InfoView" />" class="nav-link">
                                        <sec:authentication property="principal.username"/>
                                      </a>
                                 </li>
                                   <td style="padding-top:15px;"><img class="img-fluid1" style="max-width: 30px" w-100"
                                          src="./getPhotoAccount/<c:out value='${account.id}'/>" />
                                 </sec:authorize>
                                <li class="nav-item">
                                  <a href="<c:url value="/logout" />" class="nav-link">Đăng Xuất</a>
                                </li>
                              </sec:authorize>

                              <!-- If No login then will show Login Page -->
                              <sec:authorize access="!isAuthenticated()">
                                <li class="nav-item">
                                  <a href="<c:url value="../project-final-main/signup" />" class="nav-link">Bạn Đã Có Tài Khoản Chưa ?</a>
                                </li>

                            </sec:authorize>
                        </div>
                       <ul>
                           <li><a href="/project-final-main"><img style="width:120px"; src="<c:url value='/resources/css/img/logo/Logo_tp_white.png'/>"/></a></li>
                            <li><a href="">Danh mục</a>
                              <div class="submenu">
                                <ul>
                                    <c:forEach var="category" items="${categoryList}" varStatus="index">
                                        <li>
                                            <a href="/project-final-main/categoryid=${category.id}page1">${category.name}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                              </div>
                            </li>
                               <form action="search1" method="get">
                                   <li>
                                       <input name="searchInput" type="text" class="form-input" placeholder="Tìm kiếm sản phẩm?"/>
                                       <button type="submit" class="btn-outline-primary"><i class="fas fa-search"></i></button>
                                   </li>
                               </form>
                            <sec:authorize access="hasRole('ROLE_USER')">
                           <li><a href="cart"><button><i class="fas fa-shopping-cart"></i>Giỏ hàng</button></a></li>
                           <li><a href="/project-final-main/user/orderList">Lịch sử <br> đơn hàng</a></li>
                           </sec:authorize>
                           <li><a href="/project-final-main/bh"><span class="btn-content"><span class="btn-top"></span></span> Chính sách bảo hành</a></li>
                           <li><a href="/project-final-main/blog">24h Công nghệ</a></li>


                       </ul>

                   </div>
                </nav>
        </div>
    </header>
</body>
</html>