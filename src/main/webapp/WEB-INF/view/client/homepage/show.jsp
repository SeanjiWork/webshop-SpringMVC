<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Pallas - eCommerce Bootstrap 4 Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Favicon -->
    <link
            rel="shortcut icon"
            type="image/x-icon"
            href="client/img/favicon.ico"
    />

    <!-- CSS
========================= -->

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="client/css/plugins.css" />

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="client/css/style.css" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="client/css/custom_style.css" />
</head>
<body>
<%--Header--%>
<jsp:include page="../layout/header.jsp" />

<%--Content - Flash-sale --%>
<jsp:include page="../product-list/flash-sale.jsp" />

<%-- Content - Product-list 1  (Top san pham ban chay)--%>
<jsp:include page="../product-list/product-list1.jsp" />

<%--Content - Product-list 2 (PC Gaming hieu nang cao)--%>
<jsp:include page="../product-list/product-list2.jsp" />

<%--Content - Product-list3 (PC Workstation - 3D Render)--%>
<jsp:include page="../product-list/product-list3.jsp" />

<%--Content - Product-list4 (Linh kien may tinh)--%>
<jsp:include page="../product-list/product-list4.jsp" />

<%--Content - Product-list5 (Other)--%>
<jsp:include page="../product-list/product-list5.jsp" />

<%--Footer--%>
<jsp:include page="../layout/footer.jsp"/>


<!-- JS
============================================ -->

<!-- Plugins JS -->
<script src="client/js/plugins.js"></script>

<!-- Main JS -->
<script src="client/js/main.js"></script>

<!-- JS CUSTOM -->

</body>
</html>