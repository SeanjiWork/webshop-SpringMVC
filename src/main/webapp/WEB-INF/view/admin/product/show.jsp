<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Product Management - SB Admin</title>
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
        </ol><br>

        <div class="d-flex justify-content-between mb-4">
          <h3>Table Users</h3>
          <a href="/admin/product/create" class="btn btn-outline-primary">Create a product</a>
        </div>

        <div class="card mb-4">
          <div class="card-header">
            <i class="fas fa-table me-1"></i>
            DataTable Products
          </div>

          <div class="card-body">
            <table id="datatablesSimple">
              <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Short Description</th>
                <th>Quantity</th>
                <th>Image</th>
                <th>Action</th>
              </tr>
              </thead>
              <tfoot>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Short Description</th>
                <th>Quantity</th>
                <th>Image</th>
                <th>Action</th>
              </tr>
              </tfoot>
              <tbody>
              <c:forEach var="product" items="${products}">
                <tr>
                  <th scope="row">${product.id}</th>
                  <td>${product.name}</td>
                  <td>${product.price}</td>
                  <td>${product.shortDescription}</td>
                  <td>${product.quantity}</td>
                  <td>${product.image}</td>
                  <td>
                    <a href="/admin/product/${product.id}" class="btn btn-outline-success">View</a>
                    <a href="/admin/product/update/${product.id}" class="btn btn-outline-warning">Update</a>
                    <a href="/admin/product/delete/${product.id}" class="btn btn-outline-danger">Delete</a>
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
<script src="/admin/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="/admin/js/datatables-simple-demo.js"></script>
</body>
</html>

