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
                    <title>List Banking</title>
                    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
				  <link rel="stylesheet" href="<c:url value="/resources/css/orderlist.css"/>">
				  <link rel="stylesheet" href="<c:url value="/resources/css/css/detele1.css"/>">
			</head>
<jsp:include page="header.jsp"/>
		<body style="background-image: url(https://hanoispiritofplace.com/wp-content/uploads/2017/11/hinh-nen-powerpoint-cong-nghe-1.jpeg);">>


				<section class="ftco-section">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-md-6 text-center mb-4">
								<h2 class="heading-section">  TP TECHNOLOGY  </h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h3 class="h5 mb-4 text-center">Thẻ Của Bạn</h3>



								<div class="table-wrap">
									<table class="table">
										<thead class="thead-primary">
											<tr>
												<th>Tên Chủ Thẻ</th>
												<th>Số Thẻ</th>
												<th>Số Dư</th>
												<th>Tùy Chọn</th>
											</tr>
										</thead>
										<tbody>
                                        <c:forEach var="showAccountBanking" items="${showAccountBanking}">
												<tr class="alert" role="alert">

													<th scope="row" style="padding-top:15px;">${showAccountBanking.fullName}
													</th>
													<td style="padding-top:15px;">${showAccountBanking.cardNumber}</td>
													<th scope="row" style="padding-top:15px;"><fmt:formatNumber value="${showAccountBanking.balance}" pattern="#,##0" />
                                                    <th
                                                     <td>

                                                            <a class="btn btn-sm btn-danger" href="#modalDelete${showAccountBanking.id}"
                                                                class="trigger-btn" data-toggle="modal" data-id="${showAccountBanking.id}?">Xóa Thẻ</a>


                                                      </td>

                                                        <div id="modalDelete${showAccountBanking.id}" class="modal fade">
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
                                                                            "${showAccountBanking.id}" Chắc Chưa ?</p>
                                                                    </div>
                                                                    <div class="modal-footer justify-content-center">
                                                                        <button type="button" class="btn btn-secondary"
                                                                            data-dismiss="modal">Giỡn Đó</button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            onclick="location.href='removeBanking${showAccountBanking.id}'">Chắc Rồi</button>
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