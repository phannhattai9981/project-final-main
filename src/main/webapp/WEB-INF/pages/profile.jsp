<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	 <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap.css"/>">
	  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap.css.map"/>">
	   <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap.min.css"/>">
	    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap.min.css.map"/>">
	     <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap-grid.css"/>">
	     <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap-grid.min.css"/>">
	     <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap-grid.min.css.map"/>">
	     <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap-reboot.css.map"/>">
	     <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap-reboot.min.css"/>">
	     <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap-reboot.min.css.map"/>">
	      <link rel="stylesheet" href="<c:url value="/resources/css/account.css"/>">
	      <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>

</head>

<body style="background-image: url(https://thumbs.dreamstime.com/b/abstract-dna-molecules-structure-science-technology-background-illustration-vector-119136443.jpg);">
<jsp:include page="header.jsp"/>
    <form action="./updateProfile" method="post" encType="multipart/form-data" modelAttribute="editProfile">
        <div class="wrapper bg-white mt-sm-5" >
            <h4 class="pb-4 border-bottom">Cập nhật thông tin cá nhân</h4>

            <div class="py-2">
                <div class="row py-2">
                    <div class="col-md-6">
                        <label for="firstname"> E-Mail</label>
                        <input name="email" value="${account.email}" type="text" class="bg-light form-control" readonly />
                    </div>
                    <div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname"> ID</label>
                        <input name="id" value="${account.id}" class="bg-light form-control" type="number" readonly />
                    </div>
                </div>
                <div class="row py-2">
                    <div class="col-md-6">
                        <label for="email">Họ Tên</label>
                        <input name="fullName" value="${account.fullName}" class="bg-light form-control" type="text">
                    </div>
                    <div class="col-md-6 pt-md-0 pt-3">
                        <label for="phone">Số điện thoại</label>
                        <input type="tel" class="bg-light form-control" name="phone" value="${account.phone}">
                    </div>
                </div>
                <div class="py-3 pb-4 border-bottom">
                     <button type="submit" value="submit" class="btn btn-primary mr-3">Lưu thông tin</button>
                    <button class="btn border button">Cancel</button>
                </div>

            </div>
        </div>
    </form>
</body>




</html>