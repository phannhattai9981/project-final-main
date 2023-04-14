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
  <title>Home</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>">

</head>
<body>
  <footer style="border-radius: 15px;">
        <div class="footer-main">
            <div class="footer-main-left">
                <ul>
                    <li><a href="">Lịch sử mua hàng</a></li>
                    <li><a href="">Chính Sách Bảo hành</a></li>
                </ul>
            </div>
            <div class="footer-main-mid">
               <ul>
                    <li><a href="">Tuyển dụng</a></li>
                    <li><a href="">Gửi góp ý, khiếu nại</a></li>
               </ul>
            </div>
            <div class="footer-main-right">
                <ul>
                    <li>Tổng đài hỗ trợ (Miễn phí gọi)</li>
                    <li>Gọi mua:<a href=""> 0776575734</a> (7:30 - 22:00)</li>
                    <li>Khiếu nại:<a href=""> 1800.1062</a> (8:00 - 21:30)</li>
                    <li>Bảo hành:<a href=""> 1800.1064</a> (8:00 - 21:30)</li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p class="footer-text m-0 col-lg-8 col-md-12">

                <script>document.write(new Date().getFullYear());</script>
            </p>
        </div>
  </footer>
</body>
</html>