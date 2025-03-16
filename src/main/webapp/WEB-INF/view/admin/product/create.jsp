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
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Product Management - SB Admin</title>
  <title>Table Users</title>

  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
  <link href="/admin/css/styles.css" rel="stylesheet"/>
  <link href="/admin/css/custom-style.css" rel="stylesheet"/>
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
          <li class="breadcrumb-item active">Product</li>
          <li class="breadcrumb-item active">Create</li>
        </ol>
        <br>

        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-edit"></i> Create a Product
          </div>

          <div class="card-body">

            <form:form method="post" action="/admin/user/create"
                       modelAttribute="newProduct" class="row"
                       enctype="multipart/form-data">

              <!-- Name -->
              <div class="form-group mb-3 col-12 col-md-6">
                <label class="form-label"><strong>Name Product</strong></label>
                <form:input type="text" class="form-control" path="name"
                            placeholder="Enter your name product"/>
              </div>

              <!-- price -->
              <div class="form-group mb-3 col-12 col-md-6">
                <label class="form-label"><strong>Price</strong></label>
                <form:input type="number" class="form-control" path="price"
                            placeholder="Enter your price"/>
              </div>

              <!-- shortDescription -->
              <div class="form-group mb-3 col-12 col-md-6">
                <label class="form-label"><strong>Short Discription</strong></label>
                <form:input type="text" class="form-control" path="shortDescription"
                            placeholder="Enter your short description"/>
              </div>

              <!-- Quantity -->
              <div class="form-group mb-3 col-12 col-md-6">
                <label class="form-label"><strong>Quantity</strong></label>
                <form:input class="form-control" path="quantity"
                            placeholder="Enter your quantity"/>
              </div>

              <!-- Address -->
              <div class="form-group mb-3 col-12 ">
                <label class="form-label"><strong>Detail Description</strong></label>
                <form:textarea class="form-control" path="detailDescription"
                               rows="4" placeholder="Enter your detail Description"/>
              </div>


              <!-- Brand -->
              <div class="form-group mb-3 col-12 col-md-6">
                <label class="form-label"><strong>Brand</strong></label>
                <select class="form-select" path="role.name" aria-label="Default select example">
                  <option value="ADMIN">Intel</option>
                  <option value="USER">AMD</option>
                </select>
              </div>

              <!-- Target -->
              <div class="form-group mb-3 col-12 col-md-6">
                <label class="form-label"><strong>Target</strong></label>
                <select class="form-select" path="role.name" aria-label="Default select example">
                  <option value="ADMIN">Gaming</option>
                  <option value="USER">Graphic design</option>
                </select>
              </div>

              <!-- preview image -->
              <div class="form-group mb-5 col-12 col-md-6">
                <label class="form-label"><strong>Image</strong></label>
                <div>
                  <div class="d-flex flex-column align-items-start">
                    <!-- show preview image -->
                    <div class="image-preview-container" id="imagePreview">
                      <span class="text-muted">Chưa có ảnh</span>
                    </div>

                    <!-- Button choose image -->
                    <label for="imageUpload" class="btn btn-primary upload-btn">Chọn ảnh</label>
                    <input type="file" id="imageUpload" class="custom-file-input" accept="image/*" onchange="previewImage(event)">
                  </div>
                </div>
              </div>

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
<script src="/admin/js/scripts.js"></script>
<script src="/admin/js/preview.js"></script>
</body>
</html>
