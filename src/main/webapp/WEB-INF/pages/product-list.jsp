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
<jsp:include page="header1.jsp"/>

  <section class="inspired_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Danh Sách Sản Phẩm</span></h2>
          </div>
        </div>
      </div>
      <div class="row">
           <c:forEach var="list" items="${List}" varStatus="index">
              <div  class="col-lg-3 col-md-6">
                <div class="single-product">
                  <div class="product-img">
                    <img style="object-fit: cover; width: 100%;height: 70%;" class="img-fluid" src="./getProductPhoto/<c:out value='${list.id}'/>"/>
                    <div class="p_icon">
                      <a href="./product/${list.id}">
                        <i class="ti-eye"></i>
                      </a>
                      <a href="./addToCart/${list.id}">
                        <i class="ti-shopping-cart"></i>
                      </a>
                    </div>
                  </div>
                  <div style="height: 30%"; class="product-btm">
                    <a href="#" class="d-block">
                      <h4>${list.name}</h4>
                    </a>
                    <div class="mt-3">
                      <span class="mr-4"><fmt:formatNumber value="${list.price}" pattern="#,##0" /></span>
                    </div>
                  </div>
                </div>
              </div>
           </c:forEach>
      </div>
    </div>

  </section>
 <footer style="width: 100%; margin-bottom: 50px">
    <div class="blog-pagination justify-content-center d-flex">
          <ul class="pagination">
              <li class="page-item">
                  <a href="categoryid=${category.id}page${previous}" class="page-link" aria-label="Previous">
                      <span aria-hidden="true">
                          <span style="line-height:45px" class="ti-arrow-left"></span>
                      </span>
                  </a>
              </li>
              <c:forEach var='item' begin='1' end='${countPage}'>
                  <li class="page-item">
                       <a href="categoryid=${category.id}page${item}" class="page-link"><c:out value='${item}'/></a>
                  </li>
              </c:forEach>
              <li class="page-item">
                  <a href="categoryid=${category.id}page${next}" class="page-link" aria-label="Next">
                      <span aria-hidden="true">
                          <span style="line-height:45px" class="ti-arrow-right"></span>
                      </span>
                  </a>
              </li>
          </ul>
    </div>
 </footer>


</body>

</html>