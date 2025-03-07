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
    <link href="/css/styles.css" rel="stylesheet" />
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
                    <li class="breadcrumb-item active">Users</li>
                </ol><br>

                <div class="d-flex justify-content-between mb-4">
                    <h3>Table Users</h3>
                    <a href="/admin/user/create" class="btn btn-outline-primary">Create a user</a>
                </div>

                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DataTable Example
                    </div>

                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Email</th>
                                <th>Fullname</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Email</th>
                                <th>Fullname</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <th scope="row">${user.id}</th>
                                    <td>${user.email}</td>
                                    <td>${user.fullname}</td>
                                    <td>${user.phone}</td>
                                    <td>${user.status}</td>
                                    <td>
                                        <a href="/admin/user/${user.id}" class="btn btn-outline-success">View</a>
                                        <a href="/admin/user/update/${user.id}" class="btn btn-outline-warning">Update</a>
                                        <a href="/admin/user/delete/${user.id}" class="btn btn-outline-danger">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
        <%--Footer--%>
        <jsp:include page="../layout/footer.jsp" />

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="/js/datatables-simple-demo.js"></script>
</body>
</html>
