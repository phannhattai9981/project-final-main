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
				  <link rel="stylesheet" href="<c:url value="/resources/css/orderlist.css"/>">
			</head>

			<body>
			<jsp:include page="header.jsp"/>
				<section class="ftco-section">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-md-6 text-center mb-4">
								<h2 class="heading-section">  TP TECHNOLOGY  </h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h3 class="h5 mb-4 text-center">Chi Tiết Đơn Hàng</h3>
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
                                <div class="total_head" style="font-weight: bold;">Total:</div>
                                <div class="total_value" style="margin-left: 102px; font-weight: bold;"><fmt:formatNumber value="${total}" pattern="#,##0" /></div>
                            </div>
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