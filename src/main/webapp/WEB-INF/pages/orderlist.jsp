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
								<h2 class="heading-section">  TP TECHNOLOGY  </h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h3 class="h5 mb-4 text-center">Đơn Hàng Của Bạn</h3>
								<div class="table-wrap">
									<table class="table">
										<thead class="thead-primary">
											<tr>
												<th>Người Đặt</th>
												<th>Địa Chỉ Nhận Hàng</th>
												<th>Ngày Đặt</th>
												<th>Số Điện Thoại</th>
												<th>Trang Thái Đơn Hàng</th>
												<th>Số tiền phải thanh toán</th>
												<th>Tùy Chọn</th>



											</tr>
										</thead>
										<tbody>
											<c:forEach var="ordersList" items="${ordersList}">
												<tr class="alert" role="alert">

													<th scope="row" style="padding-top:15px;">${ordersList.customerName}
													</th>
													<td style="padding-top:5px;">${ordersList.customerAddress}</td>
													<th scope="row" style="padding-top:5px;">${ordersList.orderDate}
													<th scope="row" style="padding-top:5px;">${account.phone}
															<th scope="row" style="padding-top:15px;">
                                                                <c:choose>
                                                                    <c:when test="${ordersList.status == 'PROCESSING'}">
                                                                        Đang xử lý
                                                                    </c:when>
                                                                    <c:when test="${ordersList.status == 'DELIVERY'}">
                                                                        Đang vận chuyển
                                                                    </c:when>
                                                                    <c:when test="${ordersList.status == 'CANCEL'}">
                                                                        Bị hủy
                                                                    </c:when>
                                                                    <c:when test="${ordersList.status == 'SUCCESSFULL'}">
                                                                        Thành công
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        ${ordersList.status}
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </th>
                                                    <th scope="row" style="padding-top:5px;">
                                                     <c:if test="${ empty ordersList.payment.account}">
                                                      <fmt:formatNumber value="${ordersList.payment.amount}" pattern="#,##0" />
                                                     </c:if>
                                                 <c:if test="${not empty ordersList.payment.account}">
                                                   Đã thanh toán
                                                 </c:if>
                                                     <td>
                                                            <button class="btn btn-sm btn-primary"
                                                                onclick="location.href='orderdetaile/${ordersList.id}'">Chi Tiết Đơn Hàng</button>
                                                    <c:if test="${ordersList.status ne 'CANCEL'}">
                                                            <a class="btn btn-sm btn-danger" href="#modalDelete${ordersList.id}"
                                                                class="trigger-btn" data-toggle="modal" data-id="${ordersList.id}?">Hủy Đơn</a>
                                                     </c:if>

                                                      </td>

                                                        <div id="modalDelete${ordersList.id}" class="modal fade">
                                                            <div class="modal-dialog modal-confirm">
                                                                <div class="modal-content">
                                                                    <div class="modal-header flex-column">
                                                                        <div class="icon-box">
                                                                            <i class="fal fa-times">&#128557;</i>
                                                                        </div>
                                                                            <h4 class="modal-title w-100">Hủy Đơn ?</h4>
                                                                        <button type="button" class="close" data-dismiss="modal"
                                                                            aria-hidden="true">&times;</button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <p>Bạn Muốn Hủy Đơn à
                                                                            "${ordersList.customerName}" Chắc Chưa ?</p>
                                                                    </div>
                                                                    <div class="modal-footer justify-content-center">
                                                                        <button type="button" class="btn btn-secondary"
                                                                            data-dismiss="modal">Giỡn Đó</button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            onclick="location.href='removeOrder${ordersList.id}'">Chắc Rồi</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </th>
												</tr>
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