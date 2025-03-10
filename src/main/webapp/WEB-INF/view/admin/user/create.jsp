<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Product Management - SB Admin</title>
    <title>Table Users</title>

    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
    <link href="/css/styles.css" rel="stylesheet"/>
    <link href="/css/custom-style.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" crossorigin="anonymous"
    ></script>
</head>
<body class="sb-nav-fixed">
<%--Header--%>
<jsp:include page="../layout/header.jsp"/>


<div id="layoutSidenav">
    <%--Navbar--%>
    <jsp:include page="../layout/sidebar.jsp"/>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Management</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item active">Users</li>
                    <li class="breadcrumb-item active">Create new user</li>
                </ol>
                <br>

                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-edit"></i> Create a User
                    </div>

                    <div class="card-body">

                        <form:form method="post" action="/admin/user/create"
                                   modelAttribute="newUser" class="row"
                                   enctype="multipart/form-data">

                            <!-- Avatar -->
                            <div class="form-group mb-3">
                                <h2 class="heading">Choose Your Avatar</h2>
                                <div class="image-container">
                                    <img id="imgPreview" src="#" alt="Preview Image" class="image-preview">
                                </div>

                                <div class="btn-container">
                                    <input type="file" name="imageFile" id="photo" class="input-file">
                                    <button type="button" id="deleteBtn" class="btn-delete">Delete Image</button>
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label">Email</label>
                                <form:input type="email" class="form-control" path="email"
                                            placeholder="Enter your email"/>
                            </div>

                            <!-- Password -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label">Password</label>
                                <form:input type="password" class="form-control" path="password"
                                            placeholder="Enter your password"/>
                            </div>

                            <!-- FullName -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label">Fullname</label>
                                <form:input type="text" class="form-control" path="fullname"
                                            placeholder="Enter your fullname"/>
                            </div>

                            <!-- Phone -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label">Phone</label>
                                <form:input class="form-control" path="phone"
                                            placeholder="Enter your phonenumber"/>
                            </div>

                            <!-- Role -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label">Roles</label>
                                <form:select class="form-select" path="role.name" aria-label="Default select example">
                                    <form:option value="ADMIN">ADMIN</form:option>
                                    <form:option value="USER">USER</form:option>
                                </form:select>
                            </div>

                            <!-- Address -->
                            <div class="form-group mb-5 col-12 ">
                                <label class="form-label">Address</label>
                                <form:textarea class="form-control" path="address"
                                               rows="4" placeholder="Enter your address"/>
                            </div>
                            <br>

                            <!-- Buttons -->
                            <div class="form-group text-center col-12 mb-3">
                                <a href="/admin/user" class="btn btn-outline-success btn-lg">Back</a>
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
        </main>
        <%--Footer--%>
        <jsp:include page="../layout/footer.jsp"/>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
<script src="/js/preview.js"></script>
</body>
</html>
