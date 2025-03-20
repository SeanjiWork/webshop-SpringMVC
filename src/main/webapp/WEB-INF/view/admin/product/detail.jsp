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
          <li class="breadcrumb-item"><a href="admin/product">Product</a> </li>
          <li class="breadcrumb-item active">Detail product</li>
        </ol><br>

        <div class="row">
          <div class="col-12 mx-auto">
            <div class="d-flex justify-content-between">
              <h3>Product detail is ${id}</h3>
            </div>
            <hr>
            <div class="card"  style="width: 60%">

              <img class="card-img-top" src="/images/product/${product.image}" alt="Card image cap">
              <div class="card-header">
                Product Information
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">ID: ${id}</li>
                <li class="list-group-item">Product name: ${product.name}</li>
                <li class="list-group-item">Price: ${product.price}</li>
                <li class="list-group-item">Short Description: ${product.shortDescription}</li>
                <li class="list-group-item">Detail Description: ${product.detailDescription}</li>
                <li class="list-group-item">Quantity: ${product.quantity}</li>
                <li class="list-group-item">Brand: ${product.brand.name}</li>
                <li class="list-group-item">Category: ${product.category.name}</li>
                <li class="list-group-item">Target: ${product.target.name}</li>
              </ul>

            </div>
            <br>
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