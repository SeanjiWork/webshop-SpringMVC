<%--
  Created by IntelliJ IDEA.
  User: vuminhduc
  Date: 24/2/25
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List User</title>
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
        <a href="/admin/user/create" class="btn btn-outline-primary">Primary</a>
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
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>
            <button type="button" class="btn btn-outline-success">View</button>
            <button type="button" class="btn btn-outline-warning">Update</button>
            <button type="button" class="btn btn-outline-danger">Delete</button>
          </td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>
            <button type="button" class="btn btn-outline-success">View</button>
            <button type="button" class="btn btn-outline-warning">Update</button>
            <button type="button" class="btn btn-outline-danger">Delete</button>
          </td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Larry the Bird</td>
          <td>Larry the Bird</td>
          <td>
            <button type="button" class="btn btn-outline-success">View</button>
            <button type="button" class="btn btn-outline-warning">Update</button>
            <button type="button" class="btn btn-outline-danger">Delete</button>
          </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

</body>
</html>
