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
            <li><a href="index.html">home</a></li>
            <li>about us</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!--breadcrumbs area end-->
<!--about section area -->
<div class="about_section mt-60">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-12">
        <div class="about_thumb">
          <img src="/client/img/about/about1.jpg" alt="" />
        </div>
      </div>
      <div class="col-lg-6 col-md-12">
        <div class="about_content">
          <h1>Welcome To Pallas Store!</h1>
          <p>
            Lorem ipsum dolor sit amet, consectetur
            adipisicing elit. Soluta impedit velit maiores
            nemo perferendis facere a assumenda in sint illo
            provident pariatur ullam voluptates id eveniet
            optio neque perspiciatis dolores quod, quisquam!
            Repellendus alias laudantium nesciunt nostrum
            magnam debitis quidem aut temporibus expedita
            accusantium, illum ipsam eos, eveniet explicabo
            assumenda, laboriosam modi fugiat dolores dolor
            sit.
          </p>
          <div class="view__work">
            <a href="#">view work </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--about section end-->

<!--counterup area -->
<div class="counterup_section">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="single_counterup">
          <div class="counter_img">
            <img src="/client/img/about/count.png" alt="" />
          </div>
          <div class="counter_info">
            <h2 class="counter_number">2170</h2>
            <p>happy customers</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="single_counterup count-two">
          <div class="counter_img">
            <img src="/client/img/about/count2.png" alt="" />
          </div>
          <div class="counter_info">
            <h2 class="counter_number">8080</h2>
            <p>AWARDS won</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="single_counterup">
          <div class="counter_img">
            <img src="/client/img/about/count3.png" alt="" />
          </div>
          <div class="counter_info">
            <h2 class="counter_number">2150</h2>
            <p>HOURS WORKED</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="single_counterup count-two">
          <div class="counter_img">
            <img src="/client/img/about/count4.png" alt="" />
          </div>
          <div class="counter_info">
            <h2 class="counter_number">2170</h2>
            <p>COMPLETE PROJECTS</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--counterup end-->

<!--about progress bar -->
<div class="about_progressbar">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6 col-md-6">
        <div class="progressbar_inner">
          <h2>We have Skills to show</h2>
          <div class="progress_skill one">
            <div class="progress">
              <div
                      class="progress-bar about_prog wow fadeInLeft"
                      data-wow-duration="0.8s"
                      data-wow-delay=".3s"
                      role="progressbar"
                      aria-valuenow="25"
                      aria-valuemin="0"
                      aria-valuemax="100"
              >
                                        <span class="progress_persent"
                                        >html/css</span
                                        >
              </div>
            </div>
            <span class="progress_discount">60%</span>
          </div>
          <div class="progress_skill two">
            <div class="progress">
              <div
                      class="progress-bar about_prog wow fadeInLeft"
                      data-wow-duration="0.8s"
                      data-wow-delay=".5s"
                      role="progressbar"
                      aria-valuenow="25"
                      aria-valuemin="0"
                      aria-valuemax="100"
              >
                                        <span class="progress_persent"
                                        >ecommerce theme
                                        </span>
              </div>
            </div>
            <span class="progress_discount">90%</span>
          </div>
          <div class="progress_skill three">
            <div class="progress">
              <div
                      class="progress-bar about_prog wow fadeInLeft"
                      data-wow-duration="0.8s"
                      data-wow-delay=".7s"
                      role="progressbar"
                      aria-valuenow="25"
                      aria-valuemin="0"
                      aria-valuemax="100"
              >
                                        <span class="progress_persent"
                                        >Typhography
                                        </span>
              </div>
            </div>
            <span class="progress_discount">70%</span>
          </div>
          <div class="progress_skill four">
            <div class="progress">
              <div
                      class="progress-bar about_prog wow fadeInLeft"
                      data-wow-duration="0.8s"
                      data-wow-delay=".7s"
                      role="progressbar"
                      aria-valuenow="25"
                      aria-valuemin="0"
                      aria-valuemax="100"
              >
                                        <span class="progress_persent"
                                        >Branding
                                        </span>
              </div>
            </div>
            <span class="progress_discount">80%</span>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="about__img">
          <img src="/client/img/about/about2.jpg" alt="" />
        </div>
      </div>
    </div>
  </div>
</div>
<!--about progress bar end -->



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
