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
<jsp:include page="header1.jsp"/>
			<body>
			<div id="price">

            		<!--price tab-->
            		<div class="plan basic">
            		  <div class="plan-inner">
            			<div class="hot">hot</div>
            			<div class="entry-title">
            			  <h3>Mua hàng thành công</h3>
            			  <div class="price">$<span>/PER CAR</span>
            			  </div>
            			</div>
            			<div class="entry-content">
                        <h4>Thông Tin Người mua</h4>

                        <p>Tên người nhận: ${order.customerName}</p>
                        <p>Địa chỉ: ${order.customerAddress}</p>
                        <p>Số điện thoại : ${account.phone}</p>
                     <p>Loại thanh toán: ${payment_method_display}</p>

                         </div>
            		  </div>
            		</div>
                   <h3>Chi tiết đơn hàng</h3>
            		<section class="ftco-section">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-md-6 text-center mb-4">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">

                                <div class="table-wrap">
                                    <table class="table">
                                        <thead class="thead-primary">
                                            <tr>
                                                <th>Tên Sản Phẩm </th>
                                                <th>Số Lượng Sản Phẩm</th>
                                                <th>Giá Sản Phẩm </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach var="orderDetails" items="${orderDetails}">
                                                <tr class="alert" role="alert">

                                                    <th scope="row" style="padding-top:15px;">${orderDetails.product.name}
                                                    </th>
                                                    <td
                                                     style="padding-top:15px;">${orderDetails.quantity}
                                                    </td>
                                                    <th
                                                    scope="row" style="padding-top:15px;"><fmt:formatNumber value="${orderDetails.price}" pattern="#,##0" />
                                                    </th>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                            <div class="total" style="display: flex; flex-direction: row; padding-left: 56%;">
                                <div class="total_head" style="font-weight: bold;">Tổng tiền:</div>
                                <div class="total_value" style="margin-left: 102px; font-weight: bold;"><fmt:formatNumber value="${total}" pattern="#,##0" /></div>
                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            	  </div>
            	    <script src="<c:url value="/resources/css/js/susscess.js"/>"></script>
			</body>

			</html>