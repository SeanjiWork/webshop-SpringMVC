<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

            <form id="formSubmit">
                <!-- Category -->
                <div class="form-group mb-3">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" value=""
                           placeholder="Enter title">
                </div>

                <!-- Title -->
                <div class="form-group mb-3">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" value=""
                           placeholder="Enter title">
                </div>

                <!-- Image -->
                <div class="form-group mb-3">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" name="email" value=""
                           placeholder="Enter your email">
                </div>

                <!-- Short Description -->
                <div class="form-group mb-3">
                    <label for="phone">Phone</label>
                    <input class="form-control" id="phone" name="phone"
                           placeholder="Enter your phonenumber">
                </div>

                <!-- Content -->
                <div class="form-group mb-3">
                    <label for="address">Address</label>
                    <textarea class="form-control" id="address" name="address"
                              rows="4" placeholder="Enter your address"></textarea>
                </div>

                <br>
                <!-- Buttons -->
                <div class="form-group text-center mb-3">
                    <button type="button" class="btn btn-success btn-lg" id="submit">
                        <i class="fas fa-plus"></i> Submit
                    </button>
                </div>
            </form>
        </div>


        <div class="card-footer text-muted">Updated
            yesterday at 11:59 PM
        </div>
    </div>
</div>

</body>
</html>