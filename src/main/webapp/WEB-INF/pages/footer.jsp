<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
  <link rel="stylesheet" href="<c:url value="/resources/css/hearder.css"/>">
  <style>
  		.footer-dark {
    padding:50px 0;
    color:#f0f9ff;
    background-color:#282d32;
  }

  .footer-dark h3 {
    margin-top:0;
    margin-bottom:12px;
    font-weight:bold;
    font-size:16px;
  }

  .footer-dark ul {
    padding:0;
    list-style:none;
    line-height:1.6;
    font-size:14px;
    margin-bottom:0;
  }

  .footer-dark ul a {
    color:inherit;
    text-decoration:none;
    opacity:0.6;
  }

  .footer-dark ul a:hover {
    opacity:0.8;
  }

  @media (max-width:767px) {
    .footer-dark .item:not(.social) {
      text-align:center;
      padding-bottom:20px;
    }
  }

  .footer-dark .item.text {
    margin-bottom:36px;
  }

  @media (max-width:767px) {
    .footer-dark .item.text {
      margin-bottom:0;
    }
  }

  .footer-dark .item.text p {
    opacity:0.6;
    margin-bottom:0;
  }

  .footer-dark .item.social {
    text-align:center;
  }

  @media (max-width:991px) {
    .footer-dark .item.social {
      text-align:center;
      margin-top:20px;
    }
  }

  .footer-dark .item.social > a {
    font-size:20px;
    width:36px;
    height:36px;
    line-height:36px;
    display:inline-block;
    text-align:center;
    border-radius:50%;
    box-shadow:0 0 0 1px rgba(255,255,255,0.4);
    margin:0 8px;
    color:#fff;
    opacity:0.75;
  }

  .footer-dark .item.social > a:hover {
    opacity:0.9;
  }

  .footer-dark .copyright {
    text-align:center;
    padding-top:24px;
    opacity:0.3;
    font-size:13px;
    margin-bottom:0;
  }
  	</style>

</head>
<body>
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Quy đinh và Bảo hành</h3>
						<ul>
							<li>Chính sách bảo hành</li>
							<li>Chính sách vận chuyển</li>
							<li>Hướng dẫn thanh toán</li>
						</ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Liên hệ kỷ thuật và bán hàng</h3>
                        <ul>
                            <li>Liên hệ kỷ thuật : 0901967812</li>
                            <li>Mua hàng : 0901985502</li>

                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>TP TECHNOLOGY</h3>
						<h5>Cam kết về sản phẩm, dịch vụ</h5>
                        <p>
							Mang đến quý khách hàng sản phẩm chính hãng đúng như thông tin của nhà sản xuất công bố, không bán hàng giả hàng nhái, hàng không rõ xuất xứ.

							Cập nhật các thông tin mới về sản phẩm, công nghệ ứng dụng mới nhất từ nhà sản xuất

							Nghiên cứu và đổi mới quy trình dịch vụ thi công để đáp ứng về tiến độ và đảm bảo chất lượng công trình

							Cung cấp rõ ràng, công khai thông tin về sản phẩm, dịch vụ thi công</p>
                    </div>

        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>