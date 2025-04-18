<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>${product.name} - PCShop</title>
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
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
  <link rel="stylesheet" href="/client/css/plugins.css" />

  <!-- Main Style CSS -->
  <link rel="stylesheet" href="/client/css/style.css" />

  <!-- Custom CSS -->
  <link rel="stylesheet" href="/client/css/custom_style.css" />
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
            <li>product details</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!--breadcrumbs area end-->

<!--product details start-->
<div class="product_details mt-50 mb-50">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6">
        <div class="product-details-tab">
          <div id="img-1" class="zoomWrapper single-zoom">
            <a href="#">
              <img id="zoom1" src="/images/product/${product.image}"
                      data-zoom-image="/images/product/${product.image}" alt="big-1"/>
            </a>
          </div>
          <div class="single-zoom-thumb">
            <ul class="s-tab-zoom owl-carousel single-product-active" id="gallery_01" >
              <li>
                <a
                        href="#"
                        class="elevatezoom-gallery active"
                        data-update=""
                        data-image="/client/img/product/productbig2.jpg"
                        data-zoom-image="/client/img/product/productbig2.jpg" > <img src="/client/img/product/productbig2.jpg" alt="zo-th-1" />
                </a>
              </li>
              <li>
                <a
                        href="#"
                        class="elevatezoom-gallery active"
                        data-update=""
                        data-image="/client/img/product/productbig3.jpg"
                        data-zoom-image="/client/img/product/productbig3.jpg" > <img src="/client/img/product/productbig3.jpg" alt="zo-th-1" />
                </a>
              </li>
              <li>
                <a
                        href="#"
                        class="elevatezoom-gallery active"
                        data-update=""
                        data-image="/client/img/product/productbig4.jpg"
                        data-zoom-image="/client/img/product/productbig4.jpg" > <img src="/client/img/product/productbig4.jpg" alt="zo-th-1" />
                </a>
              </li>
              <li>
                <a
                        href="#"
                        class="elevatezoom-gallery active"
                        data-update=""
                        data-image="/client/img/product/productbig5.jpg"
                        data-zoom-image="/client/img/product/productbig5.jpg" >
                  <img src="/client/img/product/productbig5.jpg" alt="zo-th-1" />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="product_d_right">
          <form action="#">
            <h1>${product.name}</h1>
            <h4>Status: ${product.status}</h4>
            <div class="product_rating">
              <ul>
                <li> <a href="#" ><i class="zmdi zmdi-star-outline" ></i ></a>
                </li>
                <li> <a href="#" ><i class="zmdi zmdi-star-outline" ></i ></a>
                </li>
                <li> <a href="#" ><i class="zmdi zmdi-star-outline" ></i ></a>
                </li>
                <li> <a href="#" ><i class="zmdi zmdi-star-outline" ></i ></a>
                </li>
                <li> <a href="#" ><i class="zmdi zmdi-star-outline" ></i ></a>
                </li>
              </ul>
            </div>
            <div class="price_box">
               <span style="font-size: 15px" class="current_price">
                       <fmt:formatNumber type="number" value="${product.price}" /> đ
               </span>
              <span style="font-size: 13px" class="old_price">
                      <fmt:formatNumber type="number" value="${product.price}" /> đ
              </span>
            </div>
            <div class="product_desc">
              <p>
                ${product.shortDescription}
              </p>
            </div>
            <div class="product_variant quantity">
              <label>quantity</label>
              <div class="d-flex align-items-center mt-2">
                <div class="d-flex align-items-center">

                  <!-- minus -->
                  <button class="form-control me-1" onclick="minusQuanlity(1)">
                    <i class="fa-solid fa-minus"></i>
                  </button>

                  <input type="text" class="form-control ms-1 me-1 text-center" id="quantity" value="1" min="1"/>

                  <!-- plus -->
                  <button class="form-control ms-1" onclick="plusQuanlity(1)">
                    <i class="fa-solid fa-plus"></i>
                  </button>

                </div>
              </div>

            </div>
            <div class="action_links">
              <ul>
                <li class="add_to_cart">
                  <a href="#" title="add to cart">
                    <i class="zmdi zmdi-shopping-cart-plus"></i>
                    add to cart
                  </a>
                </li>
                <li class="wishlist">
                  <a href="#" title="Add to Wishlist">
                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                  </a>
                </li>
                <li class="compare">
                  <a href="#" title="compare">
                    <i class="zmdi zmdi-swap"></i>
                  </a>
                </li>
              </ul>
            </div>

            <div class="product_meta">
              <span>Category:
                <a href="#">Products</a>
              </span>
            </div>
          </form>
          <div class="priduct_social">
            <ul>
              <li>
                <a class="facebook" href="#" title="facebook" ><i class="fa fa-facebook"></i> Like</a>
              </li>
              <li>
                <a class="twitter" href="#" title="twitter" ><i class="fa fa-twitter"></i> tweet</a>
              </li>
              <li>
                <a class="pinterest" href="#" title="pinterest" ><i class="fa fa-pinterest"></i> save</a>
              </li>
              <li>
                <a class="google-plus" href="#" title="google +" ><i class="fa fa-google-plus"></i> share</a>
              </li>
              <li>
                <a class="linkedin" href="#" title="linkedin" ><i class="fa fa-linkedin"></i> linked</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--product details end-->

<!--product info start-->
<div class="product_d_info">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="product_d_inner">
          <div class="product_info_button">
            <ul class="nav" role="tablist">
              <li>
                <a class="active"
                        data-bs-toggle="tab" href="#info"
                        role="tab"
                        aria-controls="info"
                        aria-selected="false" >Description</a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab" href="#sheet"
                        role="tab"
                        aria-controls="sheet"
                        aria-selected="false" >Specification</a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab" href="#reviews"
                        role="tab"
                        aria-controls="reviews"
                        aria-selected="false" >Reviews (1)</a>
              </li>
            </ul>
          </div>
          <div class="tab-content">
            <div
                    class="tab-pane fade show active" id="info"
                    role="tabpanel" >
              <div class="product_info_content">
                <p> ${product.shortDescription}</p>
                <p> ${product.detailDescription}</p>
              </div>
            </div>
            <div
                    class="tab-pane fade" id="sheet"
                    role="tabpanel" >
              <div class="product_d_table">
                <form action="#">
                  <table>
                    <tbody>
                    <tr>
                      <td class="first_child">Target</td>
                      <td>${product.target.name}</td>
                    </tr>
                    <tr>
                      <td class="first_child">Category</td>
                      <td>${product.category.name}</td>
                    </tr>
                    <tr>
                      <td class="first_child">Brand</td>
                      <td>${product.brand.name}</td>
                    </tr>
                    </tbody>
                  </table>
                </form>
              </div>
              <div class="product_info_content">
                <p> Fashion has been creating
                  well-designed collections since
                  2010. The brand offers feminine
                  designs delivering stylish separates
                  and statement dresses which have
                  since evolved into a full
                  ready-to-wear collection in which
                  every item is a vital part of a
                  woman's wardrobe. The result? Cool,
                  easy, chic looks with youthful
                  elegance and unmistakable signature
                  style. All the beautiful pieces are
                  made in Italy and manufactured with
                  the greatest attention. Now Fashion
                  extends to a range of accessories
                  including shoes, hats, belts and
                  more!
                </p>
              </div>
            </div>

            <div
                    class="tab-pane fade" id="reviews"
                    role="tabpanel" >
              <div class="reviews_wrapper">
                <h2>1 review for Donec eu furniture</h2>
                <div class="reviews_comment_box"> <div class="comment_thmb">
                  <img src="/client/img/blog/comment2.jpg" alt=""/>
                    </div> <div class="comment_text">   <div class="reviews_meta">
                      <div class="star_rating">
                        <ul>
                          <li><a href="#" ><i class="ion-ios-star" ></i></a></li>
                          <li><a href="#" ><i class="ion-ios-star" ></i></a></li>
                          <li><a href="#" ><i class="ion-ios-star" ></i></a></li>
                          <li><a href="#" ><i class="ion-ios-star" ></i></a></li>
                          <li><a href="#" ><i class="ion-ios-star" ></i></a></li>
                        </ul>
                      </div>
                        <p><strong>admin </strong>- September 12, 2018</p>
                        <span>roadthemes</span>
                </div>
                </div>
                </div>
                <div class="comment_title"> <h2>Add a review</h2>
                  <p>   Your email address will not be
                    published. Required fields are
                    marked
                  </p>
                </div>
                <div class="product_ratting mb-10"> <h3>Your rating</h3> <ul>
                  <li><a href="#"><i class="fa fa-star"></i></a></li>
                  <li><a href="#"><i class="fa fa-star"></i></a></li>
                  <li><a href="#"><i class="fa fa-star"></i></a></li>
                  <li><a href="#"><i class="fa fa-star"></i></a></li>
                  <li><a href="#"><i class="fa fa-star"></i></a></li>
                </ul>
                </div>
                <div class="product_review_form">
                  <form action="#">
                    <div class="row">
                      <div class="col-12">
                        <label for="review_comment">Your review</label>
                        <textarea name="comment" id="review_comment"></textarea>
                      </div>
                      <div class="col-lg-6 col-md-6">
                        <label for="author">Name</label>
                        <input id="author" type="text"/>
                      </div>
                      <div class="col-lg-6 col-md-6">
                        <label for="email">Email</label>
                        <input id="email" type="text"/>
                      </div>
                    </div>
                    <button type="submit">Submit</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--product info end-->

<%-- Related Product list --%>
<jsp:include page="../product-list/related-product-list.jsp"/>


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
<script>
    function plusQuanlity(id) {
        let quantity = document.getElementById("quantity");
        let value = parseInt(quantity.value);
        quantity.value = value + 1;
    }

    function minusQuanlity(id) {
        let quantity = document.getElementById("quantity");
        let value = parseInt(quantity.value);
        if (value > 1) {
            quantity.value = value - 1;
        }
    }