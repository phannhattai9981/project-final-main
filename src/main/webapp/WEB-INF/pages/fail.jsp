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
				    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
                    <link href='<c:url value="/resources/css/main.css" />' rel='stylesheet'>

                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
                    <script type="text/javascript" src="webjars/jquery/3.6.0/jquery.js" />
                    </script>
                    <script type="text/javascript" src="webjars/popper.js/2.9.3/umd/popper.min.js" />
                    </script>

                    <title>Order</title>
                    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
				  <link rel="stylesheet" href="<c:url value="/resources/css/orderlist.css"/>">
				  <link rel="stylesheet" href="<c:url value="/resources/css/css/detele1.css"/>">
			</head>

			<body>
			<jsp:include page="header.jsp"/>
				<section class="ftco-section">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-md-6 text-center mb-4">
								<h2 class="heading-section"> Mua hàng không thành công </h2>
                                    <h5>Do số dư trong tài khoản của quý khách không đủ  </h5>
                                     <h5>vui lòng kiểm tra lại ! </h5>
                                     <div>
                                         <img style="max-width: 50px" src="https://cdn.pixabay.com/photo/2017/02/12/21/29/false-2061132_1280.png">
                                     </div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-12">
								<h3 class="h5 mb-4 text-center">Thông tin khách hàng</h3>
								<div class="table-wrap">
									<table class="table">
										<thead class="thead-primary">
											<tr>
												<th>Khách hàng  </th>
												<th>Số điện thoại</th>
												<th>Số dư</th>
												<th>Số thẻ</th>

											</tr>
										</thead>
										<tbody>
										    <td>${account.fullName}</td>
										    <td>${account.phone}</td>
											 <c:forEach var="accountBanking" items="${accountBanking}">
                                                    <td>${accountBanking.balance}</td>
                                                     <td><fmt:formatNumber value="${accountBanking.cardNumber}" pattern="#,##0" /></td>
                                                  <td>
                                                </c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</section>

				<script src="/bt/table-06/js/bootstrap.min.js"></script>
				<script src="/bt/table-06/js/popper.js"></script>
				<script src="/bt/table-06/js/jquery.min.js"></script>
				<script src="/bt/table-06/js/main.js"></script>

			</body>

			</html>