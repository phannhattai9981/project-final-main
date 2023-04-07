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

									<h2 class="heading-section">  Mua hàng thành công  </h2>
									 <div>
                                        <img style="max-width: 50px" src="https://cdn.pixabay.com/photo/2017/04/08/18/17/correct-2214020_960_720.png">
                                    </div>
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
										<h2>Thông Tin Người mua</h2>
                                        <p>Ngày đặt: ${order.orderDate}</p>
                                        <p>Tên người nhận: ${order.customerName}</p>
                                        <p>Địa chỉ: ${order.customerAddress}</p>
                                        <p>Số điện thoại : ${account.phone}</p>
                                      <c:if test="${payment.accountBanking == null}">
                                          <p>Phương thức thanh toán: Tiền mặt</p>
                                      </c:if>
                                      <c:if test="${payment.accountBanking != null}">
                                          <p>Phương thức thanh toán: Thẻ</p>
                                      </c:if>



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

				<script src="/bt/table-06/js/bootstrap.min.js"></script>
				<script src="/bt/table-06/js/popper.js"></script>
				<script src="/bt/table-06/js/jquery.min.js"></script>
				<script src="/bt/table-06/js/main.js"></script>

			</body>

			</html>