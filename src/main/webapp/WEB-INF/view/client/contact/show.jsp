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


<!--breadcrumbs area start-->
<div class="breadcrumbs_area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <ul>
                        <li><a href="/">home</a></li>
                        <li>contact us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--breadcrumbs area end-->

<!--contact map start-->
<div class="contact_map mt-60">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="map-area">
                    <div id="googleMap"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--contact map end-->

<!--contact area start-->
<div class="contact_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12">
                <div class="contact_message content">
                    <h3>contact us</h3>
                    <p>
                        Claritas est etiam processus dynamicus, qui
                        sequitur mutationem consuetudium lectorum. Mirum
                        est notare quam littera gothica, quam nunc
                        putamus parum claram anteposuerit litterarum
                        formas human. qui sequitur mutationem
                        consuetudium lectorum. Mirum est notare
                    </p>
                    <ul>
                        <li>
                            <i class="fa fa-fax"></i> Address : No 40
                            Baria Sreet 133/2 NewYork City
                        </li>
                        <li>
                            <i class="fa fa-phone"></i>
                            <a href="#">Infor@roadthemes.com</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope-o"></i> 0(1234) 567
                            890
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="contact_message form">
                    <h3>Tell us your project</h3>
                    <form
                            id="contact-form"
                            method="POST"
                            action="/client/mail.php"
                    >
                        <p>
                            <label> Your Name (required)</label>
                            <input name="name" placeholder="Name *" type="text"/>
                        </p>
                        <p>
                            <label> Your Email (required)</label>
                            <input name="email" placeholder="Email *" type="email"/>
                        </p>
                        <p>
                            <label> Subject</label>
                            <input name="subject" placeholder="Subject *" type="text"/>
                        </p>
                        <div class="contact_textarea">
                            <label> Your Message</label>
                            <textarea
                                    placeholder="Message *"
                                    name="message"
                                    class="form-control2"
                            ></textarea>
                        </div>
                        <button type="submit">Send</button>
                        <p class="form-messege"></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!--contact area end-->



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
