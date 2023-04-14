<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
</head>

<body>

    <h2>TP TECHNOLOGY </h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form id="regForm" name="regForm" th:action="@{/process-login}"
                method="POST">
                 <c:if test="${message != null && message != ''}">
                    <p style="color: red">${message}</p>
                </c:if>
                <h1>ĐĂNG KÍ MỚI</h1>
                <div class="social-container">

                </div>
                <span>vui lòng sửa dụng e-mail để đăng kí</span>
                <input type="fullName" placeholder="Tên" name="fullName" />
                <input type="email" placeholder="E-mail" name="email" />
                <input type="text" placeholder="Số điện thoại" name="phone" />
                <input type="password" placeholder="Mật khẩu" name="password" />
                <input type="password" placeholder="Nhập lại mật khẩu" name="password_two" />
                <button>Đăng Ký</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="<c:url value=" j_spring_security_check" />" method="post">
            <c:if test="${message != null && message != ''}">
                <p style="color: red">${message}</p>
            </c:if>
            <h1>Đăng nhập</h1>
            <div class="social-container">

            </div>
            <input type="email" placeholder="E- mail" name="username"/>
            <input type="password" placeholder="Mật khẩu" name="password" />

            <button  type="submit" value="Sign in" > Đăng Nhập</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Chào mừng trở lại!</h1>
                    <p>Để giữ kết nối với chúng tôi, vui lòng đăng nhập bằng thông tin cá nhân của bạn</p>
                        <button class="ghost" id="signIn">Đăng nhập</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Xin Chào, Bạn của tôi!</h1>
                    <p>Nhập thông tin cá nhân của bạn và bắt đầu hành trình với chúng tôi</p>
                    <button class="ghost" id="signUp">Đăng ký</button>
                </div>
            </div>
        </div>
    </div>

    <footer>

    </footer>
    <script src="<c:url value="/resources/css/login.js"/>"></script>

</body>

</html>