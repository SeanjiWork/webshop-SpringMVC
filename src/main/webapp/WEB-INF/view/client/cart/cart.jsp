<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="x-ua-compatible" content="ie=edge"/>
  <title>Cart - PCShop</title>
  <meta name="description" content=""/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/client/img/favicon.ico"/>

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
            <li>Shopping Cart</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!--breadcrumbs area end-->

<!--shopping cart area start -->
<div class="shopping_cart_area mt-60">
  <div class="container">
    <form action="#">
      <div class="row">
        <div class="col-12">
          <div class="table_desc">
            <div class="cart_page table-responsive">
              <table>
                <thead>
                <tr>
                  <th class="product_remove">
                    Delete
                  </th>
                  <th class="product_thumb">
                    Image
                  </th>
                  <th class="product_name">
                    Product
                  </th>
                  <th class="product-price">
                    Price
                  </th>
                  <th class="product_quantity">
                    Quantity
                  </th>
                  <th class="product_total">
                    Total
                  </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td class="product_remove">
                    <a href="#"><i class="fa fa-trash-o"></i></a>
                  </td>
                  <td class="product_thumb">
                    <a href="#"><img src="/client//img/s-product/product.jpg" alt=""/></a>
                  </td>
                  <td class="product_name">
                    <a href="#">Handbag fringilla</a>
                  </td>
                  <td class="product-price">
                    £65.00
                  </td>
                  <td class="product_quantity">
                    <label>Quantity</label>
                    <input min="1" max="100" value="1" type="number"/>
                  </td>
                  <td class="product_total">
                    £130.00
                  </td>
                </tr>

                <tr>
                  <td class="product_remove">
                    <a href="#"><i class="fa fa-trash-o"></i></a>
                  </td>
                  <td class="product_thumb">
                    <a href="#"><img src="/client//img/s-product/product2.jpg" alt=""/></a>
                  </td>
                  <td class="product_name">
                    <a href="#">Handbags justo</a>
                  </td>
                  <td class="product-price">
                    £90.00
                  </td>
                  <td class="product_quantity">
                    <label>Quantity</label>
                    <input min="1" max="100" value="1" type="number"/>
                  </td>
                  <td class="product_total">
                    £180.00
                  </td>
                </tr>
                <tr>
                  <td class="product_remove">
                    <a href="#"><i class="fa fa-trash-o"></i></a>
                  </td>
                  <td class="product_thumb">
                    <a href="#"><img src="/client//img/s-product/product9.jpg" alt=""/></a>
                  </td>
                  <td class="product_name">
                    <a href="#">Handbag elit</a>
                  </td>
                  <td class="product-price">
                    £80.00
                  </td>
                  <td class="product_quantity">
                    <label>Quantity</label>
                    <input min="1" max="100" value="1" type="number"/>
                  </td>
                  <td class="product_total">
                    £160.00
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
            <div class="cart_submit">
              <button type="submit">update cart</button>
            </div>
          </div>
        </div>
      </div>
      <!--coupon code area start-->
      <div class="coupon_area">
        <div class="row">
          <div class="col-lg-6 col-md-6">
            <div class="coupon_code left">
              <h3>Coupon</h3>
              <div class="coupon_inner">
                <p>
                  Enter your coupon code if you have
                  one.
                </p>
                <input placeholder="Coupon code" type="text"/>
                <button type="submit">
                  Apply coupon
                </button>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div class="coupon_code right">
              <h3>Cart Totals</h3>
              <div class="coupon_inner">
                <div class="cart_subtotal">
                  <p>Subtotal</p>
                  <p class="cart_amount">£215.00</p>
                </div>
                <div class="cart_subtotal">
                  <p>Shipping</p>
                  <p class="cart_amount">
                    <span>Flat Rate:</span> £255.00
                  </p>
                </div>
                <a href="#" style="color: black;">Calculate shipping</a>

                <div class="cart_subtotal">
                  <p>Total</p>
                  <p class="cart_amount">£215.00</p>
                </div>
                <div class="checkout_btn">
                  <a href="#">Proceed to Checkout</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--coupon code area end-->
    </form>
  </div>
</div>
<!--shopping cart area end -->


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
