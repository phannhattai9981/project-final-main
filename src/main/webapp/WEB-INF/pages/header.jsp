<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib  uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

  <link rel="stylesheet" href="<c:url value="/resources/css/header.css"/>">
   <link rel="stylesheet" href="<c:url value="/resources/css/header1.css"/>">


</head>

<header>
	<nav style="height: 50px;" class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a href="/project-final-main" class="nav-link">Trang chủ</a>
				</li>
				<!-- Login -->
				<sec:authorize access="isAuthenticated()">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<td style="padding-top:15px;"><img class="img-fluid1" style="max-width: 20px" w-100"
								src="./getPhotoAccount/<c:out value='${account.id}'/>" />

							<li class="nav-item active">
								<a href="<c:url value=" /project-final-main/admin/admin_InfoView" />" class="nav-link">
								<sec:authentication property="principal.username" />
								</a>
							</li>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_USER')">
						<td style="padding-top:15px;"><img class="img-fluid1" style="max-width: 30px" w-100"
								src="./getPhotoAccount/<c:out value='${account.id}'/>" />

							<a href="<c:url value=" /project-final-main/user/account_InfoView" />" class="nav-link">
							<sec:authentication property="principal.username" />
							</a>
					</sec:authorize>


					<li class="nav-item">
						<a href="<c:url value="/logout" />" class="nav-link">Đăng xuất</a>
					</li>
				</sec:authorize>
				<!-- If No login then will show Login Page -->
				<sec:authorize access="!isAuthenticated()">

					<li class="nav-item">
						<a href="<c:url value="../project-final-main/signup" />" class="nav-link">Bạn đã có tài khoản chưa ?</a>
					</li>
				</sec:authorize>
			</ul>
		</div>
	</nav>

</header>