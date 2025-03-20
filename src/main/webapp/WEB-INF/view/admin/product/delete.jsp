<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Product Management - SB Admin</title>
    <title>Table Users</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<%--Header--%>
<jsp:include page="../layout/header.jsp" />


<div id="layoutSidenav">
    <%--Navbar--%>
    <jsp:include page="../layout/sidebar.jsp" />

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Management</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a> </li>
                    <li class="breadcrumb-item active">Products</li>
                    <li class="breadcrumb-item active">Create new product</li>
                </ol><br>

                <div class="row">
                    <div class="col-12 mx-auto">
                        <div class="d-flex justify-content-between">
                            <h1>Delete the Product with ID: ${id}</h1>
                        </div>

                        <hr/>
                        <div class="alert alert-danger" role="alert">
                            Are you sure about that ?

                        </div>
                        <form:form method="post" action="/admin/product/delete" modelAttribute="deleteProduct">
                            <!-- ID -->
                            <div class="form-group mb-3" style="display: none">
                                <label class="form-label">ID</label>
                                <form:input type="text" class="form-control" path="id"/>
                            </div>
                            <button class="btn btn-outline-danger btn-lg">Confirm</button>
                        </form:form>
                        <a href="/admin/product" class="btn btn-outline-success btn-lg">Back</a>
                    </div>
                </div>

            </div>
        </main>
        <%--Footer--%>
        <jsp:include page="../layout/footer.jsp" />

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/admin/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="/admin/js/datatables-simple-demo.js"></script>
</body>
</html>
