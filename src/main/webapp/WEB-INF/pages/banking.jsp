<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    <link rel="stylesheet" href="<c:url value="/resources/css/banking.css"/>">
<html>
 <jsp:include page="header.jsp"/>
<body>

  <div>
    <form:form action="addBanking" method="POST" modelAttribute="accountBanking">
        <div class="container bg-light d-md-flex align-items-center">
            <div class="card box1 shadow-sm p-md-5 p-md-5 p-4">
                <div class="fw-bolder mb-4"><span class="fas fa-dollar-sign"></span><span class="ps-1">
                        <h3>TP TECHNOLOGY</h3>
                    </span></div>
                <div class="d-flex flex-column">
                    <div class="d-flex align-items-center justify-content-between text"> <span class=""></span>
                        <span class="fas fa-dollar-sign"><span class="ps-1"></span></span>
                    </div>
                    <div class="d-flex align-items-center justify-content-between text mb-4"> <span></span> <span
                            class="fas fa-dollar-sign"><span class="ps-1"></span></span> </div>
                    <div class="border-bottom mb-4"></div>
                    <div class="d-flex flex-column mb-4"> <span class="far fa-file-alt text"><span class="ps-2">
                                <h4>Chào mừng bạn đến với chúng tôi</h4>
                            </span></span> <span class="ps-3"></span> </div>
                    <div class="d-flex flex-column mb-5"> <span class="far fa-calendar-alt text"><span class="ps-3">
                            </span></span> <span class="ps-3">Uy Tín <br> Chất Lượng</span> </div>
                    <div class="d-flex align-items-center justify-content-between text mt-5">
                        <div class="d-flex flex-column text"> <span>Customer Support:</span> <span>24/7</span>
                        </div>
                        <button class="btn btn-primary rounded-circle" type="submit"><span class="fas fa-comment-alt"
                                style="font-size: 10px">Submit</span></button>
                    </div>
                </div>
            </div>
            <div class="card box2 shadow-sm">
                <div class="d-flex align-items-center justify-content-between p-md-5 p-4"> <span
                        class="h5 fw-bold m-0">Phương Thức Thanh Toán</span>
                    <div class="btn btn-primary bar"></div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex flex-column px-md-5 px-4 mb-4"> <span>Số Thẻ</span>
                            <div class="inputWithIcon"> <input name="cardNumber" class="form-control" type="number"
                                    value="5136 1845 5468 3894"> <span class=""> <img
                                        src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png"
                                        alt=""></span> </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex flex-column ps-md-5 px-md-0 px-4 mb-4" style="margin-left: 40px;">
                            <span>Expiration<span class="ps-1">Date</span></span>
                            <div class="inputWithIcon">
                                <form:input path="expired_date" type="date" id="myDate" class="form-control" />
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6" style="max-width: 40%">
                        <div class="d-flex flex-column pe-md-5 px-md-0 px-4 mb-4"> <span>Code CVV</span>
                            <div class="inputWithIcon"> <input name="cvc" type="password" class="form-control"> </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex flex-column px-md-5 px-4 mb-4"> <span>Tên </span>
                            <div class="inputWithIcon"> <input name="fullName" class="form-control text-uppercase" type="text">  </div>
                        </div>
                    </div>
                    <div class="col-12 px-md-5 px-4 mt-3" style="margin-left: 15px"> <span>Số dư</span>
                       <div class="inputWithIcon"> <input name="balance" class="form-control" style="max-width: 96%"
                               type="text">
                           <span style="margin-right: 30px"><h5>$</h5></span>

                       </div>
                   </div>

                </div>
            </div>
    </form:form>
  </div>
</body>

</html>