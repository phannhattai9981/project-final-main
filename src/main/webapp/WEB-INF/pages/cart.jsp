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
      <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
      <link href='<c:url value="/resources/css/main.css" />' rel='stylesheet'>
      <link href='<c:url value="/resources/css/delete.css" />' rel='stylesheet'>
      <script type="text/javascript" src="/resources/js/time.js"></script>
      <link href='<c:url value="/resources/images/logocat.png" />' rel='icon'>

      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="webjars/jquery/3.6.0/jquery.js" />
      </script>
      <script type="text/javascript" src="webjars/popper.js/2.9.3/umd/popper.min.js" />
      </script>
      <title>index</title>
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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
<jsp:include page="header.jsp"/>
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
                         <form action="updateCartItem/${cartItem.id}" method="post">
                            <tr>
                              <td>
                                <div class="media">
                                  <div class="d-col col-lg-3">
                                    <img  class="img-fluid" src="./getProductPhoto/<c:out value='${cartItem.product.id}'/>"/>
                                  </div>
                                  <div class="media-body">
                                   <a href="product/${cartItem.product.id}" style="color: black">
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
                                    type="number"
                                    name="quantity"
                                    min="1"
                                    value="${cartItem.quantity}"
                                    onchange="this.form.submit()"/>
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
                         </form>
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
                                <a class="gray_btn" href="/project-final-main">Chọn Thêm Sản Phẩm Khác</a>

                                    <a class="btn btn-info" style="color: white;" href="#checkOut" class="trigger-btn"
                                        data-toggle="modal">Chọn phương thức thanh toán</a>

                                    <div class="modal fade" id="checkOut">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <!-- Modal Header -->
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Vui lòng điền thông tin</h4>
                                                    <button type="button" class="btn-close" aria-label="Close"
                                                        data-dismiss="modal"></button>
                                                </div>
                                                <!-- Modal body -->
                                                <div class="modal-body">
                                                    <form:form action="checkout" method="POST" modelAttribute="order">
                                                        <div class="form-group">
                                                            <label class="control-label">Tên người đặt (*)</label>
                                                            <input name="customerName" type="text" class="form-control"/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label">Địa chỉ nhận hàng (*)</label>
                                                            <input name="customerAddress" type="text" class="form-control"
                                                                 required="true" />
                                                        </div>
                                                        <div class="form-group" name="paymentid">
                                                            <select name = "payment_method" class="form-control">
                                                                 <option>Phương thức thanh toán</option>
                                                                 <option value='CASH'>Tiền mặt khi nhận hàng</option>
                                                                 <option value='COD'>Thanh toán trước qua ngân hàng</option>
                                                            </select>
                                                        </div>
                                                        <br>
                                                        <div class="footer" style="display:flex; justify-content: center;">
                                                            <button class="btn btn-primary" type="submit" style="width: 100%">Thanh toán</button>
                                                        </div>
                                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
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