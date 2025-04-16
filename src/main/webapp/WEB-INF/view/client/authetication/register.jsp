<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Register - PCShop</title>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link
            rel="shortcut icon"
            type="image/x-icon"
            href="/client/img/favicon.ico"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="/client/css/login_style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

    <jsp:include page="../layout/login-banner.jsp"/>

    <!-- JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

<div class="container">
    <div class="body d-md-flex align-items-center justify-content-between">
        <div class="box-1 mt-md-0 mt-5">
            <img src="/client/img/login-banner/login_banner2.jpg"
                 class="" alt="">
        </div>
        <div class=" box-2 d-flex flex-column h-100">
            <div class="mt-3">
                <p class="mb-3 h-1">Register Account.</p>
                <div class="form-group mb-4 col-12">
                    <form:form method="post" action="/register" modelAttribute="registerUser" class="row">
                        <!-- FirstName input -->
                        <div class="form-outline col-12 col-md-6 mb-2">
                            <c:set var="errorFirstName">
                                <form:errors path="firstName" cssClass="invalid-feedback" />
                            </c:set>
                            <label class="form-label">First name</label>
                            <form:input type="text" class="form-control ${not empty errorFirstName ? 'is-invalid'
                                            : ''}" path="firstName"/>
                            ${errorFirstName}
                        </div>

                        <!-- LastName input -->
                        <div class="form-outline col-12 col-md-6 mb-2">
                            <label class="form-label">Last name</label>
                            <form:input class="form-control" path="lastName"/>
                        </div>

                        <!-- Email input -->
                        <div class="form-outline col-12 mb-2">
                            <c:set var="errorEmail">
                                <form:errors path="email" cssClass="invalid-feedback" />
                            </c:set>
                            <label class="form-label">Email address</label>
                            <form:input type="email" class="form-control  ${not empty errorEmail ? 'is-invalid'
                                            : ''}" path="email"/>
                            ${errorEmail}
                        </div>

                        <!-- Password input -->
                        <div class="form-outline col-12 col-md-6 mb-4">
                            <c:set var="errorPassword">
                                <form:errors path="confirmPassword" cssClass="invalid-feedback" />
                            </c:set>
                            <label class="form-label">Password</label>
                            <form:input type="password" class="form-control  ${not empty errorPassword ? 'is-invalid'
                                            : ''}" path="password"/>
                            ${errorPassword}
                        </div>

                        <!-- Confirm Password input -->
                        <div class="form-outline col-12 col-md-6 mb-4">
                            <c:set var="errorConfirmPassword">
                                <form:errors path="confirmPassword" cssClass="invalid-feedback" />
                            </c:set>
                            <label class="form-label">Confirm Password</label>
                            <form:input type="password" class="form-control  ${not empty errorConfirmPassword ? 'is-invalid'
                                            : ''}" path="confirmPassword"/>
                            ${errorConfirmPassword}
                        </div>

                        <!-- 2 column grid layout for inline styling -->
                        <div class="row mb-3">
                            <div class="text-center">
                                <button class="btn btn-primary mb-3" type="submit">Register</button>
                            </div>
                        </div>
                    </form:form>

                </div>

                <p class="text-muted mb-2">Share your thoughts with the world today.</p>
                    <div class="mt-3">
                        <p class="mb-1 text-muted">Already have an account?</p>
                        <a href="/login">
                            <div class="btn btn-primary">
                                Log in<span class="fas fa-chevron-right ms-1"></span>
                            </div>
                        </a>
                    </div>
            </div>
                <div class="mt-auto">
                    <p class="footer text-muted mb-0 mt-md-0 mt-4">By register you agree with our
                        <span class="p-color me-1">terms and conditions</span>and
                        <span class="p-color ms-1">privacy policy</span>
                    </p>
                </div>
        </div>
    </div>
</div>

</body>
</html>
