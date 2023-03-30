<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <html>

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                    crossorigin="anonymous">
            </head>

            <body>
                <div class="container" style="margin-top: 10px;">
                    <h2 style="margin-top: 20px; margin-bottom: 20px;">Order Detaile</h2>

                    <div class="col-xs-12 col-sm-12 col-md-10">

                        <table class="table">
                            <thead class="thead-dark">
                                <tr>

                                    <th scope="col">name product</th>
                                    <th scope="col">quantity</th>
                                    <th scope="col">customerAddress</th>
                                    <th scope="col">price</th>


                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="orderDetails" items="${orderDetails}">
                                    <tr>

                                        <th scope="row" style="padding-top:15px;">${orderDetails.product.name}</th>
                                        <td style="padding-top:15px;">${orderDetails.quantity}</td>
                                        <th scope="row" style="padding-top:15px;">${orderDetails.order.customerAddress}
                                        </th>
                                        <td style="padding-top:15px;">${orderDetails.price}</td>

                                        <td>


                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

            </body>

            </html>