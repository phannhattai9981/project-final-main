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
  <link rel="stylesheet" href="<c:url value="/resources/css/banking.css"/>">


</head>
<body>
    <jsp:include page="header.jsp" />
    <form:form action="addBanking" method="post" modelAttribute="accountBanking">
        <div class="row">
            <div class="col-lg-6 mx-auto">
                <div class="card">
                    <div class="card-header">
                        <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                            <!-- Credit card form tabs -->
                            <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                                <li class="nav-item">
                                    <a data-toggle="pill" href="#credit-card" class="nav-link active"
                                        style="background-color: red;"> <i class="fas fa-credit-card mr-2"></i> Credit
                                        Card </a>
                                </li>
                        </div>
                        <!-- End -->
                        <!-- Credit card form content -->
                        <div class="tab-content">
                            <!-- credit card info-->
                            <div id="credit-card" class="tab-pane fade show active pt-3">
                                    <div class="form-group">
                                        <label for="username">
                                            <h6>Card Owner</h6>
                                        </label>
                                        <input type="text" name="fullName"
                                            class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="cardNumber">
                                            <h6>Card number</h6>
                                        </label>
                                        <div class="input-group">
                                            <input type="number" name="cardNumber" placeholder="Valid card number"
                                                class="form-control"/>

                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label for="cardNumber">
                                            <h6>Card balance</h6>
                                        </label>

                                        <div class="input-group">
                                            <input type="number" name="balance" placeholder="balance" class="form-control"/>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <div class="form-group">
                                                <label>
                                                    <span class="hidden-xs">
                                                        <h6>Expiration Date</h6>
                                                    </span>
                                                </label>
                                                <div class="input-group"><input type="Date"
                                                        name="expired_date" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group mb-4">
                                                <label data-toggle="tooltip"
                                                    title="Three digit CV code on the back of your card">
                                                    <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                                </label>
                                                <input type="number" name="cvc" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer"><button type="submit"
                                            class="subscribe btn btn-primary btn-block shadow-sm">Confirm
                                            Payment</button></div>
                            </div>
                            <!-- End -->

                            <!-- End -->
                        </div>
                    </div>
                </div>
            </div>
    </form:form>
</body>
</html>