<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib  uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <header>
    <nav
      class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <!-- Login -->
            <sec:authorize access="isAuthenticated()">
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item">
                    <a href="<c:url value="/myCart" />">Manage Hotel</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_USER')">
                  <li class="nav-item">
                    <a href="<c:url value="/user/account_orderList" />">My Order</a>
                   </li>

                </sec:authorize>
                <li class="nav-item">
                      <a href="<c:url value="user/account_InfoView" />" class="nav-link">
                        <sec:authentication property="principal.username"/>
                      </a>
                 </li>
                <li class="nav-item">
                  <a href="<c:url value="/logout"/>" class="nav-link">LogOut</a>
                </li>
            </sec:authorize>
            <!-- If No login then will show Login Page -->
            <sec:authorize access="!isAuthenticated()">
                <li class="nav-item ">

                 </li>
                <li class="nav-item">
                  <a href="<c:url value="/login" />" class="nav-link">Login</a>
                </li>
                <li class="nav-item">
                   <a href="<c:url value="/signup" />" class="nav-link">SignUp</a>
                 </li>
            </sec:authorize>
          </ul>
        </div>
      </div>
    </nav>

  </header>

