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
  <link rel="stylesheet" href="<c:url value="/resources/css/header.css"/>">


</head>

  <header>
    <nav style="height: 40px;"
      class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                     <a href="/project-final-main" class="nav-link">Trang chủ</a>
                </li>
            <!-- Login -->
                <sec:authorize access="isAuthenticated()">
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                         <td style="padding-top:15px;"><img class="img-fluid" style="max-width: 30px"  w-100" src="./getPhotoAccount/<c:out value='${account.id}'/>"/>

                                <li class="nav-item active">
                                    <a href="<c:url value="/admin/admin_InfoView" />" class="nav-link">
                                        <sec:authentication property="principal.username"/>
                                    </a>
                                </li>
                            </sec:authorize>
                             <sec:authorize access="hasRole('ROLE_USER')">
                              <td style="padding-top:15px;"><img class="img-fluid" style="max-width: 30px"  w-100" src="./getPhotoAccount/<c:out value='${account.id}'/>"/>

                                        <a href="<c:url value="/user/account_InfoView" />" class="nav-link">
                                            <sec:authentication property="principal.username"/>
                                        </a>
                             </sec:authorize>






                    <li class="nav-item">
                      <a href="<c:url value="/logout" />" class="nav-link">Đăng xuất</a>
                    </li>
                </sec:authorize>
            <!-- If No login then will show Login Page -->
            <sec:authorize access="!isAuthenticated()">

                <li class="nav-item">
                  <a href="<c:url value="/signup" />" class="nav-link">Bạn đã có tài khoản chưa ?</a>
                </li>
            </sec:authorize>
          </ul>
        </div>
      </div>
    </nav>

  </header>

