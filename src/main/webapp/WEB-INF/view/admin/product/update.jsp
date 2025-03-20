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
                    <li class="breadcrumb-item"><a href="/admin/product">Product</a></li>
                    <li class="breadcrumb-item active">Update product</li>
                </ol>
                <br>

                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-edit"></i> Create a Product
                    </div>

                    <div class="card-body">

                        <form:form action="/admin/product/update" method="post" modelAttribute="updateProduct"
                                   class="row" enctype="multipart/form-data">

                            <!--### Hidden ID ###-->
                            <div class="form-group mb-3" style="display: none">
                                <label class="form-label">ID</label>
                                <form:input type="text" class="form-control" path="id"/>
                            </div>

                            <!-- Name -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <c:set var="errorName">
                                    <form:errors path="name" cssClass="invalid-feedback" />
                                </c:set>
                                <label class="form-label"><strong>Name Product</strong></label>
                                <form:input type="text" class="form-control  ${not empty errorName ? 'is-invalid'
                 : ''}" path="name" placeholder="Enter your name product"/>
                                    ${errorName}
                            </div>

                            <!-- price -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <c:set var="errorPrice">
                                    <form:errors path="price" cssClass="invalid-feedback" />
                                </c:set>
                                <label class="form-label"><strong>Price</strong></label>
                                <form:input type="number" class="form-control ${not empty errorPrice ? 'is-invalid'
                 : ''}" path="price" placeholder="Enter your price"/>
                                    ${errorPrice}
                            </div>

                            <!-- shortDescription -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <c:set var="errorShortDescription">
                                    <form:errors path="shortDescription" cssClass="invalid-feedback" />
                                </c:set>
                                <label class="form-label"><strong>Short Discription</strong></label>
                                <form:input type="text" class="form-control ${not empty errorShortDescription ? 'is-invalid'
                : ''}" path="shortDescription" placeholder="Enter your short description"/>
                                    ${errorShortDescription}
                            </div>

                            <!-- Quantity -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <c:set var="errorQuantity">
                                    <form:errors path="quantity" cssClass="invalid-feedback" />
                                </c:set>
                                <label class="form-label"><strong>Quantity</strong></label>
                                <form:input class="form-control ${not empty errorQuantity ? 'is-invalid'
                : ''}" path="quantity" placeholder="Enter your quantity"/>
                                    ${errorQuantity}
                            </div>

                            <!-- Detail Description -->
                            <div class="form-group mb-3 col-12 ">
                                <c:set var="errorDetailDescription">
                                    <form:errors path="detailDescription" cssClass="invalid-feedback" />
                                </c:set>
                                <label class="form-label"><strong>Detail Description</strong></label>
                                <form:textarea class="form-control ${not empty errorDetailDescription ? 'is-invalid'
                : ''}" path="detailDescription" rows="4" placeholder="Enter your detail Description"/>
                                    ${errorDetailDescription}
                            </div>


                            <!-- Brand -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label"><strong>Brand</strong></label>
                                <form:select class="form-select" path="brand.id" aria-label="Default select example">
                                    <form:option value="1">Intel</form:option>
                                    <form:option value="2">AMD</form:option>
                                </form:select>
                            </div>

                            <!-- Target -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label"><strong>Target</strong></label>
                                <form:select class="form-select" path="target.id" aria-label="Default select example">
                                    <form:option value="1">Gaming PC</form:option>
                                    <form:option value="2">Gaming Gear</form:option>
                                </form:select>
                            </div>

                            <!-- Category -->
                            <div class="form-group mb-3 col-12 col-md-6">
                                <label class="form-label"><strong>Category</strong></label>
                                <form:select class="form-select" path="category.id" aria-label="Default select example">
                                    <form:option value="1">CPU</form:option>
                                    <form:option value="2">VGA</form:option>
                                    <form:option value="3">Mainboard</form:option>
                                    <form:option value="4">Case</form:option>
                                    <form:option value="5">Fan</form:option>
                                    <form:option value="6">RAM</form:option>
                                </form:select>
                            </div>

                            <!-- preview image -->
                            <div class="form-group mb-5 col-12">
                                <label class="form-label"><strong>Image</strong></label>
                                <div>
                                    <div class="d-flex flex-column align-items-start">
                                        <!-- show preview image -->
                                        <div class="image-preview-container" id="imagePreview">
                                            <span class="text-muted">Chưa có ảnh</span>
                                        </div>

                                        <!-- Button choose image -->
                                        <label for="imageUpload" class="btn btn-primary upload-btn">Chọn ảnh</label>
                                        <input type="file" name="imageProductFile" id="imageUpload"
                                               class="custom-file-input" accept="image/*"
                                               onchange="previewImage(event)">
                                    </div>
                                </div>
                            </div>

                            <!-- Buttons -->
                            <div class="form-group text-center col-12 mb-3">
                                <a href="/admin/product" class="btn btn-outline-success btn-lg">Back</a>
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
