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
                    <link href='<c:url value="/resources/images/tamlogo.png" />' rel='icon'>
                    <title>Order</title>
                    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
				  <link rel="stylesheet" href="<c:url value="/resources/css/orderlist.css"/>">
				  <link rel="stylesheet" href="<c:url value="/resources/css/css/detele1.css"/>">
			</head>
<jsp:include page="header.jsp"/>
			<body style="background-image: url(https://img4.thuthuatphanmem.vn/uploads/2020/07/05/anh-nen-background-cong-nghe_035953114.jpg);">>

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
											    <th>Mã đơn</th>
												<th>Người nhận</th>
												<th>Địa chỉ</th>
												<th>Ngày đặt</th>
												<th>Số điện thoại</th>
												<th>Trạng thái</th>
												<th>Số tiền phải thanh toán</th>
												<th>Chức năng</th>



											</tr>
										</thead>
										<tbody>
											<c:forEach var="order" items="${orderFullList}">
												<tr class="alert" role="alert">
												    <th scope="row" style="padding-top:15px;">${order.id}
                                                													</th>

													<th scope="row" style="padding-top:15px;">${order.customerName}
													</th>
													<td style="padding-top:15px;">${order.customerAddress}</td>
													<th scope="row" style="padding-top:15px;">${order.orderDate}
													<th scope="row" style="padding-top:15px;">${order.account.phone}

													<th scope="row" style="padding-top:15px;">
                                                        <c:choose>
                                                            <c:when test="${order.status == 'PROCESSING'}">
                                                                Đang xử lý
                                                            </c:when>
                                                            <c:when test="${order.status == 'DELIVERY'}">
                                                                Đang vận chuyển
                                                            </c:when>
                                                            <c:when test="${order.status == 'CANCEL'}">
                                                                Bị hủy
                                                            </c:when>
                                                            <c:when test="${order.status == 'SUCCESSFULL'}">
                                                                Thành công
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${order.status}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </th>
                                                       <th scope="row" style="padding-top:5px;">
                                                        <c:if test="${not empty order.payment.account}">
                                                             Đã thanh toán
                                                         </c:if>
                                                         <c:if test="${empty order.payment.account}">
                                                             <fmt:formatNumber value="${order.payment.amount}" pattern="#,##0" />
                                                         </c:if>
                                                     <th>
                                                       <c:if test="${order.status ne 'PROCESSING'&& order.status ne 'CANCEL' && order.status ne 'SUCCESSFULL' }">
                                                               <button class="btn btn-primary btn-sm"
                                                                 onclick="location.href='successful${order.id}'">Thành công</button>
                                                       </c:if>
                                                      <c:if test="${order.status ne 'DELIVERY' && order.status ne 'CANCEL' && order.status ne 'SUCCESSFULL'}">
                                                            <button class="btn btn-primary btn-sm"
                                                                onclick="location.href='deteleListFullOrder${order.id}'">Đã chuẩn bị xong</button>
                                                      </c:if>
                                                          <button     <button class="btn btn-primary btn-sm"
                                                                 onclick="location.href='orderListDetaile${order.id}'">Chi tiết</button>
                                                        <c:if test="${order.status ne 'DELIVERY' && order.status ne 'CANCEL' && order.status ne 'SUCCESSFULL'}">
                                                            <a class="btn btn-sm btn-danger" href="#modalDelete${order.id}"
                                                                class="trigger-btn" data-toggle="modal" data-id="${order.id}?">Hủy Đơn</a>
                                                        </c:if>

                                                      </th>

                                                        <div id="modalDelete${order.id}" class="modal fade">
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
                                                                        <p>Bạn Muốn Hủy Đơn à?</p>
                                                                    </div>
                                                                    <div class="modal-footer justify-content-center">
                                                                        <button type="button" class="btn btn-secondary"
                                                                            data-dismiss="modal">Không</button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            onclick="location.href='detele1ListFullOrder${order.id}'">Đúng</button>
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