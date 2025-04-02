<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Pallas - eCommerce Bootstrap 4 Template</title>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link
            rel="shortcut icon"
            type="image/x-icon"
            href="/client/img/favicon.ico"
    />

    <!-- CSS
  ========================= -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css  ">
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="/client/css/plugins.css"/>

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="/client/css/style.css"/>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/client/css/custom_style.css"/>
</head>
<body>
<%--Header--%>
<jsp:include page="../layout/header.jsp"/>

<h2 class="text-center mt-5 mb-4">Tự chọn cấu hình PC</h2>

<div class="config-container container py-4">
    <div class="row g-3">
        <div class="col-md-12">
            <div class="config-card" data-category="CPU">
                <img src="cpu.png" alt="CPU">
                <h5>CPU</h5>
                <div>
                    <div class="d-flex justify-content-end">
                        <!-- Add -->
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#productModal"
                                onclick="loadProducts('CPU')"><i class="fa-solid fa-circle-plus"></i></button>
                    </div>

                    <div class="d-flex align-items-center mt-2">
                        <div class="d-flex align-items-center">
                            <!-- Minus -->
                            <button class="form-control me-1" onclick="minusQuanlity(1)">
                                <i class="fa-solid fa-minus"></i>
                            </button>

                            <input type="text" class="form-control mr-2 text-center" id="quantity" value="1" min="1"
                                   oninput="changeQuantity('CPU', this.value)">


                            <!-- plus -->
                            <button class="form-control ms-1 me-2" onclick="plusQuanlity(1)">
                                <i class="fa-solid fa-plus"></i>
                            </button>

                        </div>

                        <button class="btn btn-danger" onclick="removeProduct('CPU')">
                            <i class="fa-solid fa-trash-can"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <!-- <div class="col-md-12">
            <div class="config-card" data-category="RAM">
                <img src="ram.png" alt="RAM">
                <h5>RAM</h5>
                <div>
                    <div class="d-flex justify-content-end">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#productModal" onclick="loadProducts('RAM')">Thêm</button>
                    </div>

                    <div class="d-flex align-items-center mt-2">
                        <input type="number" class="form-control me-2" style="width: 60px;" value="1" min="1" oninput="changeQuantity('RAM', this.value)">
                        <button class="btn btn-danger" onclick="removeProduct('RAM')">Xóa</button>
                    </div>
                </div>
            </div>
        </div>

    </div> -->

        <h3 class="mt-4">Danh Sách Sản Phẩm Đã Chọn</h3>
        <div class="table-container border rounded p-3">
            <table class="table table-striped table-bordered mt-4">
                <thead>
                <tr>
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá (VNĐ)</th>
                    <th>Tổng cộng (VNĐ)</th>
                </tr>
                </thead>
                <tbody id="productTable"></tbody>
            </table>
        </div>
    </div>

    <!-- Modal chọn sản phẩm -->
    <div class="modal fade mb-4" id="productModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Chọn Sản Phẩm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <input type="text" id="search" class="form-control mb-3" placeholder="Tìm kiếm sản phẩm...">
                    <div id="productList"></div>
                </div>
            </div>
        </div>
    </div>
</div><br/>

    <%--Footer--%>
    <jsp:include page="../layout/footer.jsp"/>


    <!-- JS
    ============================================ -->


    <!-- Plugins JS -->
    <script src="/client/js/plugins.js"></script>

    <!-- Main JS -->
    <script src="/client/js/main.js"></script>

    <!-- Custom_style JS -->
    <script src="/client/js/custom_style.js"></script>

</body>
</html>
