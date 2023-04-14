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
	      <link rel="stylesheet" href="<c:url value="/resources/css/account.css"/>">
	      <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>

</head>
<jsp:include page="header.jsp"/>
<body style="background-image: url(https://thumbs.dreamstime.com/b/abstract-dna-molecules-structure-science-technology-background-illustration-vector-119136443.jpg);">

<form action="${action}" method="post" encType="multipart/form-data" modelAttribute="product">
<c:if test="${not empty message}">
    <p style="color: red">${message}</p>
 </c:if>
      <c:if test="${type.equals('update')}">
        <div class="wrapper bg-white mt-sm-5" >
            <h4 class="pb-4 border-bottom">Cập nhật loại sản phẩm</h4>

            <div class="py-2">
                <div class="row py-2">
                    <div class="col-md-6">
                        <label for="firstname">Mã sản phẩm</label>
                    <c:if test="${type.equals('update')}">
                        <label for="name" class="cols-sm-2 control-label">ID (*)</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <input name="id" value="${product.id}" class="form-control" readonly/>

                            </div>
                            <div class="message" id="message_name"></div>
                        </div>
                    </c:if>
                    </div>

                     </c:if>
                    <div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Tên sản phẩm (*)</label>
						<input  name="name" value="${product.name}" type="text" class="form-control"
                        required="true" />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Hình ảnh chính (*)</label>
						 <input name="photo" value="${product.image}" type="file" class="form-control"/>

                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Hình ảnh phụ 1 (*)</label>
						<input   name="photo1" value="${product.image1}" type="file" class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Hình ảnh phụ 2 (*)</label>
						<input name="photo2" value="${product.image2}" type="file" class="form-control"
                         />
                    </div>

					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Mô Tả (*)</label>
						<input  name="description" value="${product.description}" type="text" class="form-control"
                         />
                    </div><div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Giá (*)</label>
						<input  name="price" value="${product.price}" type="number" class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Số lượng (*)</label>
						<input name="quantity" value="${product.quantity}" type="number" min="0" class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Thông tin sản phẩm (*)</label>
						<input name="information" value="${product.productDetails.information}" type="text" class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Dung lượng pin (*)</label>
						<input name="product_batteries" value="${product.productDetails.product_batteries}" type="text" type="number" min="0" class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Chip set (*)</label>
						<input name="product_chip" value="${product.productDetails.product_chip}" type="text"  class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Camera Trước (*)</label>
						<input name="product_frontCamera" value="${product.productDetails.product_frontCamera}" type="text"  class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Camera Sau (*)</label>
						<input name="product_rearCamera" value="${product.productDetails.product_rearCamera}" type="text"  class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Ram (*)</label>
						<input  name="product_ram" value="${product.productDetails.product_ram}" type="text"  class="form-control"
                        />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Kích thước Màn hình (*)</label>
						<input name="product_screen" value="${product.productDetails.product_screen}" type="text"  class="form-control"
                         />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
                        <label for="firstname">Hệ điều hành (*)</label>
						<input   name="product_system" value="${product.productDetails.product_system}" type="text"  class="form-control"
                        />
                    </div>
					<div class="col-md-6 pt-md-0 pt-3">
						<label for="confirm" class="cols-sm-2 control-label">Loại sản phẩm (*)</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"></span>
								<form:select path="product.category.id" class="form-control">
									<form:option value="0" label="--- Select ---" />
									<form:options items="${categoryList}"/>
								</form:select>
								<small style="color: red;">
                                      <c:out value="${messages}" />
                               </small>

							</div>
						</div>
					</div>
                </div>

                <div class="py-3 pb-4 border-bottom">
                     <button type="submit" value="${change}" class="btn btn-primary mr-3">Cập nhật thông tin</button>
                    <button class="btn border button">Hủy bỏ</button>
                </div>

            </div>
        </div>
    </form>
</body>




</html>