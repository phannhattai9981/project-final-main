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
    <!--================Header Menu Area =================-->
    <header class="header_area">
      <div class="main_menu">
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-light w-100">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand logo_h" href="index.html">
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
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
          <div
            class="banner_content d-md-flex justify-content-between align-items-center"
          >
            <div class="mb-3 mb-md-0">
              <h2>Chi Tiết Sản Phẩm</h2>
              <p>Very us move be blessed multiply night</p>
            </div>

          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

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
                              src="img/product1.webp"
                              alt=""
                            />
                          </li>
                          <li
                            data-target="#carouselExampleIndicators"
                            data-slide-to="1"
                          >
                            <img
                              src="img/product2.webp"
                              alt=""
                            />
                          </li>
                          <li
                            data-target="#carouselExampleIndicators"
                            data-slide-to="2"
                          >
                          <img class="img-fluid" src="getProductPhoto/<c:out value='${single.id}'/>"/>
                          </li>
                        </ol>
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img
                              class="d-block w-100"
                              src="img/product_dt_Home1.webp"
                              alt="First slide"
                            />
                          </div>
                          <div class="carousel-item">
                            <img
                              class="d-block w-100"
                              src="img/product_dt_Home2.webp"
                              alt="Second slide"
                            />
                          </div>
                          <div class="carousel-item">
                            <img
                              class="d-block w-100"
                              src="img/product_dt_Home3.webp"
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
                  <del>43.990.000 <u>đ</u></del>
                  </div>
                  <p>
                    ${single.description}
                  </p>
                  <div class="product_count">
                    <label for="qty">Số Lượng:</label>
                    <input
                      type="text"
                      name="qty"
                      id="sst"
                      maxlength="12"
                      value="1"
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
                      onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                      class="reduced items-count"
                      type="button"
                    >
                      <i class="lnr lnr-chevron-down"></i>
                    </button>
                  </div>
                  <div class="card_area">
                    <a class="main_btn" href="#">Thêm Vào Giỏ <i class="fa-solid fa-cart-plus"></i></a>
                    <div class="checkout">
                      <a class="main_btn" href="#">Mua Ngay</a>
                    </div>
                  </div>

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
          </li>
          <li class="nav-item">
            <a
              class="nav-link"
              id="contact-tab"
              data-toggle="tab"
              href="#contact"
              role="tab"
              aria-controls="contact"
              aria-selected="false"
              >Bình Luận</a
            >
          </li>
        </ul>
        <div class="tab-content" id="myTabContent">
          <div
            class="tab-pane fade"
            id="home"
            role="tabpanel"
            aria-labelledby="home-tab"
          >
            <p>
              ĐẶC ĐIỂM NỔI BẬT
Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display
Cấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic
Làm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động
Pin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến
            </p>
            <p>
              iPhone 14 Pro Max có sự cải thiện lớn màn hình so với iPhone 13 Pro Max. Sự khác biệt giữ phiên bản iPhone 14 Pro Max 512GB
               và bản tiêu chuẩn 128GB chỉ là bộ nhớ trong. Dưới đây là một số cải tiến nổi bật trên iPhone 14 Pro Max mà có thể bạn chưa biết!
            </p>
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
                      <h5>6.7 inches</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Công nghệ màn hình</h5>
                    </td>
                    <td>
                      <h5>OLED</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Camera sau</h5>
                    </td>
                    <td>
                      <h5>Camera chính: 48 MP, f/1.8, 24mm, OIS
                        Camera góc siêu rộng: 12 MP, f/2.2, 13mm, 120˚
                        Camera tele: 12 MP, f/2.8, 77mm, OIS, 3x optical zoom
                        Cảm biến độ sâu TOF 3D LiDAR</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Camera trước</h5>
                    </td>
                    <td>
                      <h5>Camera selfie: 12 MP, f/1.9, 23mm, PDAF</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Chipset</h5>
                    </td>
                    <td>
                      <h5>Apple A16 Bionic 6-core</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Bộ nhớ trong</h5>
                    </td>
                    <td>
                      <h5>2 SIM (nano‑SIM và eSIM)</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Hệ điều hành</h5>
                    </td>
                    <td>
                      <h5>iOS</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Độ phân giải màn hình</h5>
                    </td>
                    <td>
                      <h5>2796 x 1290-pixel</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>Tính năng màn hình</h5>
                    </td>
                    <td>
                      <h5>120Hz, Always-On display, HDR, True Tone, Haptic Touch, 2,000,000:1, 2000 nits</h5>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div
            class="tab-pane fade"
            id="contact"
            role="tabpanel"
            aria-labelledby="contact-tab"
          >
            <div class="row">
              <div class="col-lg-6">
                <div class="comment_list">
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/avatar-tai.PNG"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Tài</h4>
                        <h5>3-08-2023 12:05</h5>
                        <a class="reply_btn" href="#">Trả Lời</a>
                      </div>
                    </div>
                    <p>
                      Bia độc hơn rượu, bằng chứng trên thế giới chỉ có ”mộ bia” mà không có ”mộ rượu".
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img class="img-fluid" src="getProductPhoto/<c:out value='${single.id}'/>"/>
                      </div>
                      <div class="media-body">
                        <h4>Ngô Thanh Tâm</h4>
                        <h5>3-08-2023 12:13</h5>
                        <a class="reply_btn" href="#">Trả Lời</a>
                      </div>
                    </div>
                    <p>
                      Ai bảo chăn trâu là khổ, tôi nay chăn nàng còn khổ hơn chăn trâu.
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/avatar-thien.PNG"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Thiện</h4>
                        <h5>3-08-2023 12:20</h5>
                        <a class="reply_btn" href="#">Trả Lời</a>
                      </div>
                    </div>
                    <p>
                      Mày ơi thương lấy tao cùng
                      Tuy rằng khác chỗ nhưng chung 1 đề
                      Mày cho tao chép tí đê
                      Kẻo mai tao rớt mặt mày bầm đen
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="review_box">
                  <h4>Bình Luận</h4>
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
                          placeholder="Nội Dung"
                        ></textarea>
                      </div>
                    </div>
                    <div class="col-md-12 text-right">
                      <button
                        type="submit"
                        value="submit"
                        class="btn submit_btn"
                      >
                        Gửi
                      </button>
                    </div>
                  </form>
                </div>
              </div>
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
                <div class="review_list">
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/avatar-tai.PNG"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Tài</h4>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div>
                    </div>
                    <p>
                      Bia độc hơn rượu, bằng chứng trên thế giới chỉ có ”mộ bia” mà không có ”mộ rượu".
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/avatar-tam.PNG"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Ngô Thanh Tâm</h4>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div>
                    </div>
                    <p>
                      Ai bảo chăn trâu là khổ, tôi nay chăn nàng còn khổ hơn chăn trâu.
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/avatar-thien.PNG"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Thiện</h4>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div>
                    </div>
                    <p>
                      Mày ơi thương lấy tao cùng
                      Tuy rằng khác chỗ nhưng chung 1 đề
                      Mày cho tao chép tí đê
                      Kẻo mai tao rớt mặt mày bầm đen
                    </p>
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
    <!--================End Product Description Area =================-->

    <!--================ start footer Area  =================-->
    <footer class="footer-area section_gap">
      <div class="container">
        <div class="row">
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Top Products</h4>
            <ul>
              <li><a href="#">Managed Website</a></li>
              <li><a href="#">Manage Reputation</a></li>
              <li><a href="#">Power Tools</a></li>
              <li><a href="#">Marketing Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Quick Links</h4>
            <ul>
              <li><a href="#">Jobs</a></li>
              <li><a href="#">Brand Assets</a></li>
              <li><a href="#">Investor Relations</a></li>
              <li><a href="#">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Features</h4>
            <ul>
              <li><a href="#">Jobs</a></li>
              <li><a href="#">Brand Assets</a></li>
              <li><a href="#">Investor Relations</a></li>
              <li><a href="#">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Resources</h4>
            <ul>
              <li><a href="#">Guides</a></li>
              <li><a href="#">Research</a></li>
              <li><a href="#">Experts</a></li>
              <li><a href="#">Agencies</a></li>
            </ul>
          </div>
          <div class="col-lg-4 col-md-6 single-footer-widget">
            <h4>Newsletter</h4>
            <p>You can trust us. we only send promo offers,</p>
            <div class="form-wrap" id="mc_embed_signup">
              <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                method="get" class="form-inline">
                <input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''"
                  onblur="this.placeholder = 'Your Email Address '" required="" type="email">
                <button class="click-btn btn btn-default">Subscribe</button>
                <div style="position: absolute; left: -5000px;">
                  <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                </div>

                <div class="info"></div>
              </form>
            </div>
          </div>
        </div>
        <div class="footer-bottom row align-items-center">
          <p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          <div class="col-lg-4 col-md-12 footer-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-behance"></i></a>
          </div>
        </div>
      </div>
    </footer>
    <!--================ End footer Area  =================-->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/stellar.js"></script>
    <script src="vendors/lightbox/simpleLightbox.min.js"></script>
    <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
    <script src="vendors/isotope/isotope-min.js"></script>
    <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="vendors/jquery-ui/jquery-ui.js"></script>
    <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendors/counter-up/jquery.counterup.js"></script>
    <script src="js/theme.js"></script>
  </body>
</html>
