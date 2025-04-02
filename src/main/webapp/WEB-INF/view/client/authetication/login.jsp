<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Login now - PCShop</title>
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

<!--breadcrumbs area start-->
<div class="breadcrumbs_area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <ul>
                        <li><a href="index.html">home</a></li>
                        <li>login</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--breadcrumbs area end-->

<!-- customer login start -->
<div class="customer_login mt-60">
    <div class="container">
        <div class="row">

            <!--register area start-->
            <div class="col-lg-12 col-md-12 mb-5">
                <div class="account_form register">
                    <h2>Login</h2>
                    <form action="#" class="row">
                        <div class="form-group mb-3 col-12 col-md-12">
                            <p>
                                <label>Email <span>*</span></label>
                                <input type="text"/>
                            </p>
                        </div>

                        <div class="form-group mb-3 col-12 col-md-12">
                            <p>
                                <label>Password <span>*</span></label>
                                <input type="password"/>
                            </p>
                        </div>

                        <div class="login_submit mb-1">
                            <a href="#">Lost your password?</a>
                            <label for="remember">
                                <input id="remember" type="checkbox"/>
                                Remember me
                            </label>
                            <button type="submit">Login</button>
                        </div>
                        <div class="login_submit">
                            <p>
                                <a href="/register">Not a member? Register</a>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
            <!--register area end-->
        </div>
    </div>
</div>
<!-- customer login end -->


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
