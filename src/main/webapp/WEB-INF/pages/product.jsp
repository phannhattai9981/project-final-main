<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="img/favicon.png" type="image/png" />
    <title>Product</title>
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
      <link rel="stylesheet" href="<c:url value="/resources/css/single-product.css"/>">
  </head>

  <body>
  <jsp:include page="header1.jsp"/>

    <!--================Single Product Area =================-->

    <div class="product_image_area">
      <div class="container">

            <div class="row s_product_inner">
              <div class="col-lg-6">
                    <div class="s_product_img">
                      <div
                        id="carouselExampleIndicators"
                        class="carousel slide"
                        data-ride="carousel"
                      >
                        <ol class="carousel-indicators">
                          <li
                            data-target="#carouselExampleIndicators"
                            data-slide-to="0"
                            class="active"
                          >
                            <img
                              class="d-block w-100 h-100"
                              src="getProductPhoto/<c:out value='${single.id}'/>/1"
                              alt=""
                            />
                          </li>
                          <li
                            data-target="#carouselExampleIndicators"
                            data-slide-to="1"
                          >
                            <img
                              class="d-block w-100 h-100"
                              src="getProductPhoto/<c:out value='${single.id}'/>/2"
                              alt=""
                            />
                          </li>
                          <li
                            data-target="#carouselExampleIndicators"
                            data-slide-to="2"
                          >
                          <img
                            class="d-block w-100 h-100"
                            src="getProductPhoto/<c:out value='${single.id}'/>/3"
                            alt=""
                          >
                          </li>
                        </ol>
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img
                              class="d-block w-100"
                              src="getProductPhoto/<c:out value='${single.id}'/>/1"
                              alt="First slide"
                            />
                          </div>
                          <div class="carousel-item">
                            <img
                              class="d-block w-100"
                              src="getProductPhoto/<c:out value='${single.id}'/>/2"
                              alt="Second slide"
                            />
                          </div>
                          <div class="carousel-item">
                            <img
                              class="d-block w-100"
                              src="getProductPhoto/<c:out value='${single.id}'/>/3"
                              alt="Third slide"
                            />
                          </div>
                        </div>
                      </div>
                    </div>

              </div>
              <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                  <h3>${single.name}</h3>

                  <div class="price-product">
                    <h2><fmt:formatNumber value="${single.price}" pattern="#,##0" /><u>đ</u></h2>
                  </div>
                  <p>
                    ${single.description}
                  </p>
                  <c:if test="${single.quantity != 0}">
                  <div class="product_count">
                    <label for="qty">Tồn kho</label>
                      <h3>${single.quantity}</h3>
                  </c:if>
                   <c:if test="${single.quantity == 0}">
                     <div class="product_count">
                        <h3>Hết hàng</h3>
                    </c:if>
                  </div>
                   <c:if test="${single.quantity != 0}">
                        <div class="card_area">
                            <a class="main_btn" href="../addToCart/${single.id}">Thêm Vào Giỏ <i class="fa-solid fa-cart-plus"></i></a>
                        </div>
                    </c:if>
                </div>
              </div>
            </div>
      </div>
    </div>
    <!--================End Single Product Area =================-->

    <!--================Product Description Area =================-->
    <section class="product_description_area">
      <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item">
            <a
              class="nav-link"
              id="home-tab"
              data-toggle="tab"
              href="#home"
              role="tab"
              aria-controls="home"
              aria-selected="true"
              >Mô Tả</a
            >
          </li>
          <li class="nav-item">
            <a
              class="nav-link"
              id="profile-tab"
              data-toggle="tab"
              href="#profile"
              role="tab"
              aria-controls="profile"
              aria-selected="false"
              >Chi tiết</a
            >
        </ul>
        <div class="tab-content" id="myTabContent">
          <div
            class="tab-pane fade"
            id="home"
            role="tabpanel"
            aria-labelledby="home-tab"
          >
            <p>${single.productDetails.information}</p>
          </div>
          <div
            class="tab-pane fade"
            id="profile"
            role="tabpanel"
            aria-labelledby="profile-tab"
          >
            <div class="table-responsive">
              <table class="table">
                <tbody>
                  <tr>
                    <td>
                      <h5>Kích thước màn hình</h5>
                    </td>
                    <td>
                      <h5>${single.productDetails.product_screen}</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Camera sau</h5>
                    </td>
                    <td>
                      <h5>${single.productDetails.product_rearCamera}</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Camera trước</h5>
                    </td>
                    <td>
                      <h5>${single.productDetails.product_frontCamera}</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Chipset</h5>
                    </td>
                    <td>
                      <h5>${single.productDetails.product_chip}</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Hệ điều hành</h5>
                    </td>
                    <td>
                      <h5>${single.productDetails.product_system}</h5>
                    </td>
                  </tr>
                  <tr>
                     <td>
                       <h5>Ram</h5>
                     </td>
                     <td>
                       <h5>${single.productDetails.product_ram}</h5>
                     </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Pin</h5>
                    </td>
                    <td>
                      <h5>${single.productDetails.product_batteries}</h5>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

        <div
                    class="tab-pane fade show active"
                    id="review"
                    role="tabpanel"
                    aria-labelledby="review-tab"
                  >
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="row total_rate">
                          <div class="col-6">
                            <div class="box_total">
                              <h5>Tổng thể</h5>
                              <h4>4.0</h4>
                              <h6>(03 Đánh Giá)</h6>
                            </div>
                          </div>
                          <div class="col-6">
                            <div class="rating_list">
                              <h3>Đánh giá cơ bản</h3>
                              <ul class="list">
                                <li>
                                  <a href="#"
                                    >5 Sao
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i> 01</a
                                  >
                                </li>
                                <li>
                                  <a href="#"
                                    >4 Sao
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i> 01</a
                                  >
                                </li>
                                <li>
                                  <a href="#"
                                    >3 Sao
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i> 01</a
                                  >
                                </li>
                                <li>
                                  <a href="#"
                                    >2 Sao
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i> 01</a
                                  >
                                </li>
                                <li>
                                  <a href="#"
                                    >1 Sao
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i> 01</a
                                  >
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>

                      </div>
                      <div class="col-lg-6">
                        <div class="review_box">
                          <h4>Thêm Giới Thiệu</h4>
                          <p>Đánh Giá:</p>
                          <ul class="list">
                            <li>
                              <a href="#">
                                <i class="fa fa-star"></i>
                              </a>
                            </li>
                            <li>
                              <a href="#">
                                <i class="fa fa-star"></i>
                              </a>
                            </li>
                            <li>
                              <a href="#">
                                <i class="fa fa-star"></i>
                              </a>
                            </li>
                            <li>
                              <a href="#">
                                <i class="fa fa-star"></i>
                              </a>
                            </li>
                            <li>
                              <a href="#">
                                <i class="fa fa-star"></i>
                              </a>
                            </li>
                          </ul>
                          <p>Nổi Bật</p>
                          <form
                            class="row contact_form"
                            action="contact_process.php"
                            method="post"
                            id="contactForm"
                            novalidate="novalidate"
                          >
                            <div class="col-md-12">
                              <div class="form-group">
                                <input
                                  type="text"
                                  class="form-control"
                                  id="name"
                                  name="name"
                                  placeholder="Họ và tên"
                                />
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group">
                                <input
                                  type="email"
                                  class="form-control"
                                  id="email"
                                  name="email"
                                  placeholder="Địa chỉ Email"
                                />
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group">
                                <input
                                  type="text"
                                  class="form-control"
                                  id="number"
                                  name="number"
                                  placeholder="Số Điện Thoại"
                                />
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group">
                                <textarea
                                  class="form-control"
                                  name="message"
                                  id="message"
                                  rows="1"
                                  placeholder="Giới Thiệu"
                                ></textarea>
                              </div>
                            </div>
                            <div class="col-md-12 text-right">
                              <button
                                type="submit"
                                value="submit"
                                class="btn submit_btn"
                              >
                                gửi
                              </button>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
        </div>
      </div>
    </section>
    <jsp:include page="footer.jsp"/>
   <script src="<c:url value="/resources/css/js/jquery-3.2.1.min.js"/>"></script>
    <script src="<c:url value="/resources/css/js/bootstrap.min.js"/>"></script>

  </body>
</html>
