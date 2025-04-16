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
<%--Header--%>
<div class="container">
    <div class="body d-md-flex align-items-center justify-content-between">
        <div class="box-1 mt-md-0 mt-5">
            <img src="/client/img/login-banner/login_banner2.jpg"
                 class="" alt="">
        </div>
        <div class=" box-2 d-flex flex-column h-100">
            <div class="mt-3">
                <p class="mb-3 h-1">Sign in.</p>
                <div class="form-group mb-4 col-12">
                    <form method="post" action="/login">
                        <c:if test="${param.error != null}">
                            <div class="my-2" style="color: red;">Invalid email or password.</div>
                        </c:if>
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <label class="form-label">Email address</label>
                            <input type="email" class="form-control" name="username"/>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password"/>
                        </div>

                        <div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>

                        <!-- 2 column grid layout for inline styling -->
                        <div class="row mb-3">
                            <div class="col d-flex justify-content-center">
                                <!-- Checkbox -->
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                                    <label class="form-check-label" for="form2Example31"> Remember me </label>
                                </div>
                            </div>

                            <div class="col">
                                <!-- Simple link -->
                                <a href="#!">Forgot password?</a>
                            </div>
                        </div>

                        <!-- Submit button -->
                        <!-- <div class="text-center">
                           <div class="btn btn-primary login-button">Log in<span class="fas fa-chevron-right ms-1"></span></div>

                        </div>
                       <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>-->
                        <div class="text-center">
                            <button class="btn btn-primary mb-3" type="submit">Sign in</button>
                        </div>

                        <!-- Register buttons -->
                        <div class="text-center mb-3">
                            <p>Not a member? <a href="/register">Register</a></p>
                        </div>
                    </form>
                </div>

                <p class="text-muted mb-2">Share your thoughts with the world today.</p>
                <div class="d-flex flex-column">
                    <p class="text-muted mb-2">Continue with...</p>
                    <div class="d-flex align-items-center">
                        <a href="#" class="box me-2 selectio">
                            <span class="fab fa-facebook-f mb-2"></span>
                            <p class="mb-0">Facebook</p>
                        </a>
                        <a href="#" class="box me-2">
                            <span class="fab fa-google mb-2"></span>
                            <p class="mb-0">Google</p>
                        </a>
                        <a href="#" class="box">
                            <span class="far fa-envelope mb-2"></span>
                            <p class="mb-0">Email</p>
                        </a>
                    </div>


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
