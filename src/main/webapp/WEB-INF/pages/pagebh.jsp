<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="icon" href="img/fev.png" type="image/png"/>
  <title>Home</title>
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
  <!-- main css -->
  <link rel="stylesheet" href="<c:url value="/resources/css/css/style.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/css/responsive.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/font-free-6.1.2-web/css/solid.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/pageHome.css"/>">




</head>

<body>
<jsp:include page="header1.jsp"/>
     <div id="main">
            <div class="container-fluid">

                <div class="fshop-mainbox">


                    <div class="col-xs-12 col-sm-9">
                        <style>
                            .policy-container ul>li {
                                display: block;
                                padding: 0 15px
                            }

                            .policy-special ul li a {
                                color: #0435e6
                            }

                            .policy-special .policy-title {
                                font-size: 17px;
                                font-weight: bold;
                                color: #e20d0d
                            }

                            .policy-special p {
                                font-style: italic
                            }

                            .policy-special p a {
                                font-style: unset;
                                color: #0435e6
                            }

                            .policy-list a,
                            .policy-container a {
                                font-style: unset;
                                color: #0435e6
                            }

                            .cs-apple .shop-cs-maintitle {
                                font-size: 17px;
                                color: #de0b0b;
                                font-weight: bold
                            }

                            .policy-container a.tel-g {
                                color: #000;
                                font-weight: bold
                            }

                            .box-cs {
                                background: #fffcfc;
                                border: 1px solid #ebebeb;
                                border-radius: 5px;
                                padding: 10px 20px;
                                margin: 20px 0 10px;
                                max-width: 850px
                            }

                            .csbh-scroll ul.expand {
                                height: auto
                            }
                        </style>
                        <div class="shop-cs-mainbox policy-title" data-catecomment="5">
                            <h3 style="margin-top: 30px"; class="shop-cs-maintitle">Chính sách bảo hành tại TP Shop</h3>
                            <div class="policy-container">
                                <div class="policy-special">
                                    <em class="orange"><strong>Đầu tiên, xin chân thành cảm ơn Quý khách đã tin
                                            tưởng và lựa chọn mua sắm tại TPShop.</strong></em>
                                    <ul>
                                        <li>Với phương châm “Quyền lợi của Khách hàng là quan trọng nhất”, tất cả
                                            các sản phẩm mua tại Hệ thống TPShop trên toàn quốc đều <strong>được áp dụng chính
                                                sách bảo hành theo đúng quy định của Hãng.</strong> </li>
                                        <li>ĐẶC BIỆT, đối với sản phẩm là Điện thoại di động, Máy tính bảng, Máy
                                            tính xách tay, Đồng hồ, Máy in và 1 số phụ kiện có điện khác, Khách hàng
                                            được hưởng <strong>chính sách riêng của TPShop:</strong></li>
                                    </ul>
                                    <div class="policy-title" style="text-align: center;">“MIỄN PHÍ 1 ĐỔI 1 NẾU CÓ
                                        LỖI PHẦN CỨNG TRONG VÒNG 30 NGÀY ĐẦU TIÊN MUA HÀNG”.</div>
                                </div>
                                <div class="policy-list">
                                    <h3 class="shop-cs-maintitle">Quý khách vui lòng lưu ý 1 số nội dung sau:</h3>
                                    <ul>
                                        <li>1. Chương trình bảo hành bắt đầu có hiệu lực từ thời điểm TPShop xuất
                                            hóa đơn cho Quý khách.</li>
                                        <li>2. Với mỗi dòng sản phẩm khác nhau sẽ có chính sách bảo hành khác nhau
                                            tùy theo chính sách của Hãng/Nhà cung cấp.</li>
                                    </ul>
                                </div>
                                <div>
                                    <h3 class="shop-cs-maintitle">Các trường hợp nằm ngoài chính sách bảo hành:</h3>
                                    <em><strong>Những trường hợp dưới đây sẽ không nằm trong chính sách bảo hành
                                            miễn phí của Nhà sản xuất:</strong></em>
                                    <ul>
                                        <li>• Sản phẩm đã bị thay đổi, sửa chữa không thuộc các Trung Tâm Bảo Hành
                                            Ủy Quyền của Hãng.</li>
                                        <li>
                                            • Sản phẩm lắp đặt, bảo trì, sử dụng không đúng theo hướng dẫn của Nhà
                                            sản xuất gây ra hư hỏng.
                                        </li>
                                        <li>
                                            • Sản phẩm trong tình trạng bị khóa tài khoản cá nhân như: Tài khoản
                                            khóa máy/màn hình, khóa tài khoản trực tuyến Gmail, iCloud...
                                        </li>
                                        <li>• Khách hàng sử dụng phần mềm, ứng dụng không chính Hãng, không bản
                                            quyền.</li>
                                        <li>• Màn hình có bốn (04) điểm chết trở xuống.</li>
                                    </ul>
                                    <em><strong>Ngoài ra, cơ chế bảo hành cũng không có hiệu lực đối với các lỗi
                                            thường thấy nhưng không đến từ nhà sản xuất như:</strong></em>
                                    <ul>
                                        <li>• Sản phẩm lỗi <strong>do ngấm nước, chất lỏng và bụi bẩn.</strong> Quy
                                            định này áp dụng cho cả những thiết bị đạt chứng nhận chống bụi/chống
                                            nước cao nhất là IP68.</li>
                                        <li>• Sản phẩm bị biến dạng, nứt vỡ, cấn móp, trầy xước nặng do tác động
                                            nhiệt, tác động bên ngoài.</li>
                                        <li>• Sản phẩm có vết mốc, rỉ sét hoặc bị ăn mòn, oxy hóa bởi hóa chất.</li>
                                        <li>• Sản phẩm bị hư hại do thiên tai, hỏa hoạn, lụt lội, sét đánh, côn
                                            trùng, động vật vào.</li>
                                    </ul>
                                </div>
                                <div>
                                    <h3 class="shop-cs-maintitle">Một số lưu ý trước khi bảo hành</h3>
                                    <ul>
                                        <li>• Trong quá trình thực hiện dịch vụ bảo hành, các nội dung lưu trữ trên
                                            sản phẩm của Quý khách sẽ bị xóa và định dạng lại. Do đó, Quý khách vui
                                            lòng tự sao lưu toàn bộ dữ liệu trong sản phẩm, đồng thời gỡ bỏ tất cả
                                            các thông tin cá nhân mà Quý khách muốn bảo mật. TP Shop không chịu
                                            trách nhiệm đối với bất kỳ mất mát nào liên quan tới các chương trình
                                            phần mềm, dữ liệu hoặc thông tin nào khác lưu trữ trên sản phẩm bảo
                                            hành.</li>
                                        <li>• Vui lòng tắt tất cả các mật khẩu bảo vệ, TP Shop sẽ từ chối tiếp nhận
                                            bảo hành nếu thiết bị của bạn bị khóa bởi bất cứ phương pháp nào.</li>
                                    </ul>
                                </div>
                                <div class="cs-apple">
                                    <h3 class="shop-cs-maintitle">Chính Sách Bảo Hành Apple</h3>
                                    <p>Sản phẩm có lỗi phần cứng thuộc phạm vi bảo hành sẽ được hưởng chính sách 1
                                        đổi 1 trong vòng 01 tháng kể từ ngày mua máy; từ tháng thứ 02 đến tháng thứ
                                        12, sản phẩm sẽ được bảo hành theo đúng chính sách của Hãng Apple</p>
                                    <div class="box-cs">
                                        <div>
                                            <em><strong>Lưu ý các trường hợp bảo hành Apple Watch:</strong></em>
                                            <ul>
                                                <li>• Các bộ phận được bảo hành gồm: Thân máy, phụ kiện kèm bên
                                                    trong hộp máy, dây đeo (tùy tình trạng thực tế)</li>
                                                <li>• Khi mua Apple Watch tại nước bán nhưng đến nước chưa được phép
                                                    bán Apple Watch thì sẽ không được hưởng chế độ bảo hành Apple
                                                    Watch.</li>
                                                <li>• Việt Nam không được bảo hành Apple Watch Edition.</li>
                                                <li>• Tham khảo thêm về vấn đề da nhạy cảm với dây đeo Apple Watch
                                                    tại đây.</li>
                                            </ul>
                                        </div>
                                        <div>
                                            <em><strong>Ngoài ra, Quý khách lưu ý các trường hợp dưới đây sẽ không
                                                    được bảo hành về lỗi thẩm mỹ:</strong></em>
                                            <ul>
                                                <li>• Dây đeo bị biến dạng (cong, gãy, nứt) tại vị trí chốt, khoá.
                                                </li>
                                                <li>• Dây đeo bị giãn, nở tại vị trí chốt, khóa.</li>
                                                <li>• Dây bị trầy, xước, cạ, cấn.</li>
                                                <li>• Dây da thấm nước, chất lỏng bị biến dạng.</li>
                                            </ul>
                                        </div>
                                        <div>
                                            <em><strong>Các trường hợp lỗi chất liệu và lỗi gia công dưới đây sẽ chỉ
                                                    được bảo hành khi:</strong></em>
                                            <ul>
                                                <li>• Dây đeo thể thao bị bong tróc mà không bị biến dạng, rách, …
                                                </li>
                                                <li>• Dây đeo Da có nam châm (Leather Loop) bị tróc, hở viền.</li>
                                                <li>• Dây kim loại khoá màu xám (Black Link Bracelet) bị đổi màu,
                                                    oxy hoá.</li>
                                            </ul>
                                        </div>
                                        <div>
                                            <p>
                                                Ngoài ra, chương trình bảo hành không áp dụng cho trường hợp gãy
                                                khoá dây black Link Bracelet, tuy nhiên sẽ hỗ trợ dịch vụ đổi bù phí
                                                cho Quý khách hàng.<br>
                                                Hệ thống sẽ từ chối bảo hành và từ chối dịch vụ đổi bù phí với tất
                                                cả các trường hợp dưới đây:
                                            </p>
                                            <ul>
                                                <li>• Sản phẩm đã bị thay thế linh kiện không chính hãng.</li>
                                                <li>• Sản phẩm đã bị thay thế linh kiện không chính hãng.</li>
                                                <li>• Sản phẩm bị tháo rời hoặc thiếu linh kiện bên trong.</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</body>
</html>