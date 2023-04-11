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
	      <link rel="stylesheet" href="<c:url value="/resources/css/user.css"/>">
	      <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>

</head>

<style>
    body {
        background: #eee;
    }

    .card {
        border: none;

        position: relative;
        overflow: hidden;
        border-radius: 8px;
        cursor: pointer;
    }

    .card:before {

        content: "";
        position: absolute;
        left: 0;
        top: 0;
        width: 4px;
        height: 100%;
        background-color: #E1BEE7;
        transform: scaleY(1);
        transition: all 0.5s;
        transform-origin: bottom
    }

    .card:after {

        content: "";
        position: absolute;
        left: 0;
        top: 0;
        width: 4px;
        height: 100%;
        background-color: #8E24AA;
        transform: scaleY(0);
        transition: all 0.5s;
        transform-origin: bottom
    }

    .card:hover::after {
        transform: scaleY(1);
    }


    .fonts {
        font-size: 11px;
    }

    .social-list {
        display: flex;
        list-style: none;
        justify-content: center;
        padding: 0;
    }

    .social-list li {
        padding: 10px;
        color: #8E24AA;
        font-size: 19px;
    }


    .buttons button:nth-child(1) {
        border: 1px solid #8E24AA !important;
        color: #8E24AA;
        height: 40px;
    }

    .buttons button:nth-child(1):hover {
        border: 1px solid #8E24AA !important;
        color: #fff;
        height: 40px;
        background-color: #8E24AA;
    }

    .buttons button:nth-child(2) {
        border: 1px solid #8E24AA !important;
        background-color: #8E24AA;
        color: #fff;
        height: 40px;
    }
</style>

<body>
<jsp:include page="header.jsp"/>
    <div class="container mt-5">
        <div class="row d-flex justify-content-center">
            <div class="col-md-7">
                <div class="card p-3 py-4">
                <c:if test="${type.equals('update')}">
                  <div class="text-center">
                      <td style="padding-top:15px;"><img class="img-fluid" style="max-width: 300px;"  w-100" src="../getPhotoAccount/<c:out value='${account.id}'/>"/>
                  </div>
                </c:if>
                <c:if test="${type.equals('user')}">
                  <label for="avatar-input">
                    <td style="padding-top:15px;"><img class="img-fluid" style="max-width: 100px"  w-100" src="./getPhotoAccount/<c:out value='${account.id}'/>"/>
                  </label>
                <input id="avatar-input" name="photo" style="display: none;" type="file" class="btn button border avatar-input"/>
                 </c:if>

                    <div class="text-center mt-3">
                        <h1 class="mt-2 mb-0">${account.fullName}</h1>
                        <div class="px-4 mt-1">
                            <div class="form-group">
                                <label class="form-label">Số Điện Thoại :</label>
                                    <th scope="row" style="padding-top:15px;">${account.phone}                                       													</th>
                            </div>
                            <div class="form-group">
                                <label class="form-label">E-mail : </label>
                                <th scope="row" style="padding-top:15px;">${account.email}
                            </div>
                            <div class="form-group">
                                <label class="form-label">Trạng Thái</label>
                                <th scope="row" style="padding-top:15px;">${account.status}
                            </div>
                        </div>
                          <div class="buttons">
                          <a  href="update/admin/profile${account.id}" href="orderList" class="btn btn-outline-primary px-4">chỉnh sửa</a>
                          <a href="/project-final-main/admin/full_account" class="btn btn-primary px-4 ms-3"> User Manager </a>
                          <a href="/project-final-main/admin/listFullOrder" class="btn btn-primary px-4 ms-3"> Order Manager </a>
                           <a href="/project-final-main/admin/manager" class="btn btn-primary px-4 ms-3"> Product Manager </a>
                         </div>
                    </div>
             </div>
            </div>
        </div>
    </div>




        <script src="<c:url value="/resources/css/bootstrap/js/bootstrap.js"/>"></script>
	     <script src="<c:url value="/resources/css/bootstrap/js/bootstrap.bundle.js"/>"></script>
	    <script src="<c:url value="/resources/css/bootstrap/js/bootstrap.bundle.js.map"/>"></script>
	     <script src="<c:url value="/resources/css/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	        <script src="<c:url value="/resources/css/bootstrap/js/bootstrap.bundle.min.js.map"/>"></script>
	        <script src="<c:url value="/resources/css/bootstrap/js/bootstrap.min.js"/>"></script>
	        <script src="<c:url value="/resources/css/bootstrap/js/bootstrap.min.js.map"/>"></script>
	        <script src="<c:url value="/resources/js/user.js"/>"></script>
</body>




</html>