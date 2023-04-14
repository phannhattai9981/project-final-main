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
<jsp:include page="header.jsp"/>
      <section class="banner_area1">
        <div class="container">
          <div class="banner_content d-md-flex justify-content-between align-items-center">
            <div class="mb-3 mb-md-0">
              <h2>Trang Danh Mục</h2>
            </div>
          </div>
          <td>
              <div class="active">
                  <div class="cupon_text">
                  <a class="main_btn" href="./addCategory">Thêm loại sản phẩm</a>
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
                        <th scope="col">Loại sản phẩm</th>
                      </tr>
                    </thead>
                    <c:forEach var="list" items="${categoryList}">
                        <tbody>
                           <tr>
                                <td style="width: 80%";>
                                  <div class="media">
                                    <div class="media-body">
                                      <p>${list.name}</p>
                                    </div>
                                  </div>
                                </td>

                                <td>
                                  <div class="active">
                                      <div class="cupon_text1">
                                          <a class="main_btn" href="./upCategory/${list.id}">Sửa</a>
                                      </div>
                                      <div  class="cupon_text2">
                                          <a style="margin-left: 10px;" class="main_btn" href="./deleteCategory/${list.id}">Xóa</a>
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