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
                    <h2 style="margin-top: 20px; margin-bottom: 20px;">Order Manager</h2>

                    <div class="col-xs-12 col-sm-12 col-md-10">

                        <table class="table">
                            <thead class="thead-dark">
                                <tr>

                                    <th scope="col">customerAddress</th>
                                    <th scope="col">customerName</th>
                                    <th scope="col">orderDate</th>



                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="ordersList" items="${ordersList}">
                                    <tr>

                                        <th scope="row" style="padding-top:15px;">${ordersList.customerName}</th>
                                        <td style="padding-top:15px;">${ordersList.customerAddress}</td>
                                        <th scope="row" style="padding-top:15px;">${ordersList.orderDate}


                                            <a class="btn btn-sm btn-danger"
                                                onclick="location.href='orderdetaile/${ordersList.id}'"
                                                class="trigger-btn" data-toggle="modal"
                                                data-id="">view</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

            </body>

            </html>