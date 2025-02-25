<%--
  Created by IntelliJ IDEA.
  User: vuminhduc
  Date: 24/2/25
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
  <title>Table Users</title>
  <!-- Latest compiled and minified CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet">
  <!-- Latest compiled JavaScript -->
  <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">

  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>

<div class="container mt-5">
  <div class="row">
    <div class="col-12 mx-auto">
      <div class="d-flex justify-content-between">
        <h3>Table Users</h3>
        <a href="/admin/user/create" class="btn btn-outline-primary">Create a user</a>
      </div>
      <hr>


      <table class="table table-hover">
        <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Email</th>
          <th scope="col">Fullname</th>
          <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td scope="row">${user.id}</td>
                    <td>${user.email}</td>
                    <td>${user.fullname}</td>
                    <td>
                        <a href="/admin/user/${user.id}" class="btn btn-outline-success">View</a>
                        <button type="button" class="btn btn-outline-warning">Update</button>
                        <button type="button" class="btn btn-outline-danger">Delete</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</div>

</body>
</html>
