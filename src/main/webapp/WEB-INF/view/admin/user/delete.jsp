
<%--
  Created by IntelliJ IDEA.
  User: vuminhduc
  Date: 25/2/25
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Delete user ${id}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-12 mx-auto">
            <div class="d-flex justify-content-between">
                <h1>Delete the user with ID: ${id}</h1>
            </div>

            <hr/>
            <div class="alert alert-danger" role="alert">
                Are you sure about that ?

            </div>
            <form:form method="post" action="/admin/user/delete" modelAttribute="deleteUser">
                <!-- ID -->
                <div class="form-group mb-3" style="display: none">
                    <label class="form-label">ID</label>
                    <form:input type="text" class="form-control" path="id"/>
                </div>
                <button class="btn btn-outline-danger">Confirm</button>
            </form:form>
            <a href="/admin/user" class="btn btn-outline-success">Back</a>
        </div>
    </div>
</div>

</body>
</html>
