<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
				  <link rel="stylesheet" href="<c:url value="/resources/css/fail.css"/>">

			</head>

			<body style="background-image: url(https://thumbs.dreamstime.com/b/abstract-dna-molecules-structure-science-technology-background-illustration-vector-119136443.jpg);">
<jsp:include page="header1.jsp"/>

            	<div id="price">

                		<!--price tab-->
                		<div class="plan ultimite" >
                		  <div class="plan-inner">
                			<div class="entry-title">
                			  <h3>Thất bại</h3>
                			  <div class="price">X<span></span>
                			  </div>
                			</div>
                			<div class="entry-content">
                			  <ul>
                				<li>Thanh toán thất bại do số dư không đủ</li>
                			  </ul>
                			</div>
                			<div class="btn">
                				<p>Số dư hiện tại của bạn</p>
                				<c:forEach var="accountBanking" items="${accountBanking}">
                					<td>${accountBanking.balance}</td>

                				  <td>
                				</c:forEach>
                			</div>
                		  </div>
                		</div>
                		<!-- end of price tab-->
                	  </div>

                	</div>
            </body>

			</html>