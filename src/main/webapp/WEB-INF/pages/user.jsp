<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" href="<c:url value="/resources/css/css/bootstrap.css"/>">
</head>


<body>

	<link href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<div class="container bootdey flex-grow-1 container-p-y"/>

            <div class="media align-items-center py-3 mb-3">
              <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="d-block ui-w-100 rounded-circle">
              <div class="media-body ml-4">
                <h4 class="font-weight-bold mb-0">John Doe <span class="text-muted font-weight-normal">@johndoe</span></h4>
                <div class="text-muted mb-2">ID: 3425433</div>
                <a href="javascript:void(0)" class="btn btn-primary btn-sm">Edit</a>&nbsp;
                <a href="javascript:void(0)" class="btn btn-default btn-sm">Profile</a>&nbsp;
                <a href="javascript:void(0)" class="btn btn-default btn-sm icon-btn"><i class="fa fa-mail"></i></a>
              </div>
            </div>

            <div class="card mb-4">
              <div class="card-body">
                <table class="table user-view-table m-0">
                  <tbody>
                    <tr>
                      <td>Registered:</td>
                      <td>01/23/2017</td>
                    </tr>
                    <tr>
                      <td>Latest activity:</td>
                      <td>01/23/2018 (14 days ago)</td>
                    </tr>
                    <tr>
                      <td>Verified:</td>
                      <td><span class="fa fa-check text-primary"></span>&nbsp; Yes</td>
                    </tr>
                    <tr>
                      <td>Role:</td>
                      <td>User</td>
                    </tr>
                    <tr>
                      <td>Status:</td>
                      <td><span class="badge badge-outline-success">Active</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <hr class="border-light m-0">
              <div class="table-responsive">
                <table class="table card-table m-0">
                  <tbody>
                    <tr>
                      <th>Module Permission</th>
                      <th>Read</th>
                      <th>Write</th>
                      <th>Create</th>
                      <th>Delete</th>
                    </tr>
                    <tr>
                      <td>Users</td>
                      <td><span class="fa fa-check text-primary"></span></td>
                      <td><span class="fa fa-times text-light"></span></td>
                      <td><span class="fa fa-times text-light"></span></td>
                      <td><span class="fa fa-times text-light"></span></td>
                    </tr>
                    <tr>
                      <td>Articles</td>
                      <td><span class="fa fa-check text-primary"></span></td>
                      <td><span class="fa fa-check text-primary"></span></td>
                      <td><span class="fa fa-check text-primary"></span></td>
                      <td><span class="fa fa-times text-light"></span></td>
                    </tr>
                    <tr>
                      <td>Staff</td>
                      <td><span class="fa fa-times text-light"></span></td>
                      <td><span class="fa fa-times text-light"></span></td>
                      <td><span class="fa fa-times text-light"></span></td>
                      <td><span class="fa fa-times text-light"></span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>



          </div>
</body>

</html>