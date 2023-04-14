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

	      <link rel="stylesheet" href="<c:url value="/resources/css/layout.css" />">
	       <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>


</head>
<body>
<jsp:include page="header.jsp"/>
<div class="bgded overlay" >
  <div id="pageintro" class="hoc clear">

    		<div class="container">
    			<div class="row">
    				<div class="col-lg-12 mb-4 mb-sm-5">
    					<div class="card card-style1 border-0" style="border-radius: 10px;">
    						<div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
    							<div class="row align-items-center">
    								<div class="col-lg-6 mb-4 mb-lg-0">
    								 <c:if test="${type.equals('update')}">
                                      <div class="text-center" style=" margin-left: 10em;>
                                          <td style="padding-top:15px;"><img class="img-fluid" style="max-width: 300px; margin-left: 5em;"  w-100" src="../getPhotoAccount/<c:out value='${account.id}'/>"/>
                                      </div>
                                    </c:if>
                                    <c:if test="${type.equals('user')}">
                                      <label for="avatar-input" style=" margin-left: 300px;">
                                        <td style="padding-top:15px;"><img class="img-fluid" style="max-width: 150px"  w-100" src="./getPhotoAccount/<c:out value='${account.id}'/>"/>
                                      </label>
                                    <input id="avatar-input" name="photo" style="display: none;" type="file" class="btn button border avatar-input"/>
                                     </c:if>
    								</div>
    								<div class="col-lg-6 px-xl-10">

    									<ul class="list-unstyled mb-1-9">
    									<li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Người dùng:  ${account.fullName}</span></li>

    										<li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Email: ${account.email}</span></li>

    										<li class="display-28"><span class="display-26 text-secondary me-2 font-weight-600">Số Điện Thoại: ${account.phone}</span></li>
    									</ul>

    								</div>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>

    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear">
    <!-- main body -->
    <!-- ################################################################################################ -->
    <section id="introblocks">

      <ul class="nospace group btmspace-80 elements elements-four">
        <li class="one_quarter">
          <article><a href="update/admin/profile${account.id}"><i class="fas fa-hand-rock"></i></a>
            <h6 class="heading">Chỉnh sửa thông tin cá nhân</h6>
            <p>Bạn có thể xem và chỉnh sửa thông tin của chính mình</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="/project-final-main/admin/full_account"><i class="fas fa-dove"></i></a>
            <h6 class="heading">Quản lý tài khoản của người dùng</h6>
            <p>Bạn có thể xem và khóa các tài khoản khả nghi</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="/project-final-main/admin/listFullOrder"><i class="fas fa-history"></i></a>
            <h6 class="heading">Quản lý đơn hàng</h6>
            <p>Hãy xem chúng ta có được bao nhiêu đơn hàng nào</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="/project-final-main/admin/manageproduct1"><i class="fas fa-heartbeat"></i></a>
            <h6 class="heading">Quản lý sản phẩm</h6>
            <p>Bạn có thể xem và chỉnh sửa sản phẩm có trong hệ thống</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="/project-final-main/admin/showCategory"><i class="fas fa-heartbeat"></i></a>
            <h6 class="heading">Quản lý loại sản phẩm </h6>
            <p>Bạn có thể xem và chỉnh sửa loại sản phẩm có trong hệ thống</p>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="/project-final-main/admin/revenue"><i class="fas fa-history"></i></a>
            <h6 class="heading">Quản lý doanh thu </h6>
            <p>Hay xem chúng ta đã bán được bao nhiêu rồi nào </p>
          </article>
        </li>
      </ul>
    </section>
    <!-- ################################################################################################ -->
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
    <script src="<c:url value="/resources/js/admin.js"/>"></script>
<!-- JAVASCRIPTS -->
</body>
</html>