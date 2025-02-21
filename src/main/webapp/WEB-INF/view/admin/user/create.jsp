<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></
    script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>

<div class="container mt-5">
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-edit"></i> Create a User
        </div>

        <div class="card-body">

            <form:form method="post" action="/admin/user/create1" modelAttribute="newUser">
                <!-- Email -->
                <div class="form-group mb-3">
                    <label class="form-label">Email</label>
                    <form:input type="email" class="form-control" path="email"
                                placeholder="Enter your email"/>
                </div>

                <!-- Password -->
                <div class="form-group mb-3">
                    <label class="form-label">Password</label>
                    <form:input type="password" class="form-control" path="password"
                                placeholder="Enter your password"/>
                </div>

                <!-- FullName -->
                <div class="form-group mb-3">
                    <label class="form-label">Fullname</label>
                    <form:input type="text" class="form-control" path="fullname"
                                placeholder="Enter your fullname"/>
                </div>

                <!-- Phone -->
                <div class="form-group mb-3">
                    <label class="form-label">Phone</label>
                    <form:input class="form-control" path="phone"
                                placeholder="Enter your phonenumber"/>
                </div>

                <!-- Address -->
                <div class="form-group mb-3">
                    <label class="form-label">Address</label>
                    <form:textarea class="form-control" path="address"
                                   rows="4" placeholder="Enter your address"/>
                </div>

                <br>
                <!-- Buttons -->
                <div class="form-group text-center mb-3">
                    <button type="submit" class="btn btn-success btn-lg" id="submit">
                        <i class="fas fa-plus"></i> Submit
                    </button>
                </div>
            </form:form>
        </div>
        <div class="card-footer text-muted">
        </div>
    </div>
</div>

</body>
</html>