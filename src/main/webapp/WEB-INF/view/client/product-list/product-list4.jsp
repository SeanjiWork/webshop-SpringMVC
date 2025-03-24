<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--home product area start-->
<section class="home_product_area mb-50">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="product_header">
          <div class="section_title">
            <h2>Linh kiện <span> máy tính</span></h2>
          </div>
          <div class="product_tab_button">
            <ul class="nav" role="tablist">
              <li>
                <a
                        class="active"
                        data-bs-toggle="tab"
                        href="#Washing"
                        role="tab"
                        aria-controls="Washing"
                        aria-selected="true"
                >
                  Washing machines
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#Laundry3"
                        role="tab"
                        aria-controls="Laundry3"
                        aria-selected="false"
                >
                  Laundry3
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#Cooking3"
                        role="tab"
                        aria-controls="Cooking3"
                        aria-selected="false"
                >
                  Cooking3
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#Refrigeration"
                        role="tab"
                        aria-controls="Refrigeration"
                        aria-selected="false"
                >
                  Refrigeration
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#Hoods3"
                        role="tab"
                        aria-controls="Hoods3"
                        aria-selected="false"
                >
                  Cooker Hoods
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#monitors3"
                        role="tab"
                        aria-controls="monitors3"
                        aria-selected="false"
                >
                  monitors
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="tab-content">
          <div class="tab-pane fade show active" id="Washing" role="tabpanel">
            <div class="product_carousel product_column4 owl-carousel">

              <c:forEach var="product" items="${products}">
                <div class="single_product">
                  <div class="product_thumb">
                    <a href="/product/list/detail/${id}"><img src="/images/product/${product.image}" alt=""/></a>
                    <div class="label_product">
                      <span class="label_sale">sale</span>
                    </div>
                    <div class="quick_button">
                      <a href="#" data-bs-toggle="modal" data-bs-target="#modal_box" title="quick view">
                        <i class="zmdi zmdi-eye"></i>
                      </a>
                    </div>
                  </div>
                  <div class="product_content">
                    <div class="product_name">
                      <h3>
                        <a href="/product/list/detail/${product.id}">${product.name}</a>
                      </h3>
                    </div>
                    <div class="product_rating">
                      <ul>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i
                          ></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
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
                    <div class="action_links">
                      <ul>
                        <li class="wishlist">
                          <a href="wishlist.html" title="Add to Wishlist">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                          </a>
                        </li>
                        <li class="add_to_cart">
                          <a href="cart.html" title="add to cart">
                            <i class="zmdi zmdi-shopping-cart-plus"></i>
                            add to cart
                          </a>
                        </li>
                        <li class="compare">
                          <a href="#" title="compare">
                            <i class="zmdi zmdi-swap"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </c:forEach>
              
            </div>
          </div>

          <div class="tab-pane fade" id="Laundry3" role="tabpanel">
            <div class="product_carousel product_column4 owl-carousel">

              <c:forEach var="product" items="${products}">
                <div class="single_product">
                  <div class="product_thumb">
                    <a href="/product/list/detail/${id}"><img src="/images/product/${product.image}" alt=""/></a>
                    <div class="label_product">
                      <span class="label_sale">sale</span>
                    </div>
                    <div class="quick_button">
                      <a href="#" data-bs-toggle="modal" data-bs-target="#modal_box" title="quick view">
                        <i class="zmdi zmdi-eye"></i>
                      </a>
                    </div>
                  </div>
                  <div class="product_content">
                    <div class="product_name">
                      <h3>
                        <a href="/product/list/detail/${product.id}">${product.name}</a>
                      </h3>
                    </div>
                    <div class="product_rating">
                      <ul>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i
                          ></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
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
                    <div class="action_links">
                      <ul>
                        <li class="wishlist">
                          <a href="wishlist.html" title="Add to Wishlist">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                          </a>
                        </li>
                        <li class="add_to_cart">
                          <a href="cart.html" title="add to cart">
                            <i class="zmdi zmdi-shopping-cart-plus"></i>
                            add to cart
                          </a>
                        </li>
                        <li class="compare">
                          <a href="#" title="compare">
                            <i class="zmdi zmdi-swap"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </c:forEach>
              
            </div>
          </div>
          <div class="tab-pane fade" id="Cooking3" role="tabpanel">
            <div class="product_carousel product_column4 owl-carousel">

              <c:forEach var="product" items="${products}">
                <div class="single_product">
                  <div class="product_thumb">
                    <a href="/product/list/detail/${id}"><img src="/images/product/${product.image}" alt=""/></a>
                    <div class="label_product">
                      <span class="label_sale">sale</span>
                    </div>
                    <div class="quick_button">
                      <a href="#" data-bs-toggle="modal" data-bs-target="#modal_box" title="quick view">
                        <i class="zmdi zmdi-eye"></i>
                      </a>
                    </div>
                  </div>
                  <div class="product_content">
                    <div class="product_name">
                      <h3>
                        <a href="/product/list/detail/${product.id}">${product.name}</a>
                      </h3>
                    </div>
                    <div class="product_rating">
                      <ul>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i
                          ></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
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
                    <div class="action_links">
                      <ul>
                        <li class="wishlist">
                          <a href="wishlist.html" title="Add to Wishlist">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                          </a>
                        </li>
                        <li class="add_to_cart">
                          <a href="cart.html" title="add to cart">
                            <i class="zmdi zmdi-shopping-cart-plus"></i>
                            add to cart
                          </a>
                        </li>
                        <li class="compare">
                          <a href="#" title="compare">
                            <i class="zmdi zmdi-swap"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </c:forEach>
              
            </div>
          </div>
          <div class="tab-pane fade" id="Refrigeration" role="tabpanel">
            <div class="product_carousel product_column4 owl-carousel">

              <c:forEach var="product" items="${products}">
                <div class="single_product">
                  <div class="product_thumb">
                    <a href="/product/list/detail/${id}"><img src="/images/product/${product.image}" alt=""/></a>
                    <div class="label_product">
                      <span class="label_sale">sale</span>
                    </div>
                    <div class="quick_button">
                      <a href="#" data-bs-toggle="modal" data-bs-target="#modal_box" title="quick view">
                        <i class="zmdi zmdi-eye"></i>
                      </a>
                    </div>
                  </div>
                  <div class="product_content">
                    <div class="product_name">
                      <h3>
                        <a href="/product/list/detail/${product.id}">${product.name}</a>
                      </h3>
                    </div>
                    <div class="product_rating">
                      <ul>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i
                          ></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
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
                    <div class="action_links">
                      <ul>
                        <li class="wishlist">
                          <a href="wishlist.html" title="Add to Wishlist">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                          </a>
                        </li>
                        <li class="add_to_cart">
                          <a href="cart.html" title="add to cart">
                            <i class="zmdi zmdi-shopping-cart-plus"></i>
                            add to cart
                          </a>
                        </li>
                        <li class="compare">
                          <a href="#" title="compare">
                            <i class="zmdi zmdi-swap"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </c:forEach>
              
            </div>
          </div>
          <div class="tab-pane fade" id="Hoods3" role="tabpanel">
            <div class="product_carousel product_column4 owl-carousel">

              <c:forEach var="product" items="${products}">
                <div class="single_product">
                  <div class="product_thumb">
                    <a href="/product/list/detail/${id}"><img src="/images/product/${product.image}" alt=""/></a>
                    <div class="label_product">
                      <span class="label_sale">sale</span>
                    </div>
                    <div class="quick_button">
                      <a href="#" data-bs-toggle="modal" data-bs-target="#modal_box" title="quick view">
                        <i class="zmdi zmdi-eye"></i>
                      </a>
                    </div>
                  </div>
                  <div class="product_content">
                    <div class="product_name">
                      <h3>
                        <a href="/product/list/detail/${product.id}">${product.name}</a>
                      </h3>
                    </div>
                    <div class="product_rating">
                      <ul>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i
                          ></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
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
                    <div class="action_links">
                      <ul>
                        <li class="wishlist">
                          <a href="wishlist.html" title="Add to Wishlist">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                          </a>
                        </li>
                        <li class="add_to_cart">
                          <a href="cart.html" title="add to cart">
                            <i class="zmdi zmdi-shopping-cart-plus"></i>
                            add to cart
                          </a>
                        </li>
                        <li class="compare">
                          <a href="#" title="compare">
                            <i class="zmdi zmdi-swap"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </c:forEach>
              
            </div>
          </div>
          <div class="tab-pane fade" id="monitors3" role="tabpanel">
            <div class="product_carousel product_column4 owl-carousel">

              <c:forEach var="product" items="${products}">
                <div class="single_product">
                  <div class="product_thumb">
                    <a href="/product/list/detail/${id}"><img src="/images/product/${product.image}" alt=""/></a>
                    <div class="label_product">
                      <span class="label_sale">sale</span>
                    </div>
                    <div class="quick_button">
                      <a href="#" data-bs-toggle="modal" data-bs-target="#modal_box" title="quick view">
                        <i class="zmdi zmdi-eye"></i>
                      </a>
                    </div>
                  </div>
                  <div class="product_content">
                    <div class="product_name">
                      <h3>
                        <a href="/product/list/detail/${product.id}">${product.name}</a>
                      </h3>
                    </div>
                    <div class="product_rating">
                      <ul>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline"></i
                          ></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="zmdi zmdi-star-outline" ></i></a>
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
                    <div class="action_links">
                      <ul>
                        <li class="wishlist">
                          <a href="wishlist.html" title="Add to Wishlist">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                          </a>
                        </li>
                        <li class="add_to_cart">
                          <a href="cart.html" title="add to cart">
                            <i class="zmdi zmdi-shopping-cart-plus"></i>
                            add to cart
                          </a>
                        </li>
                        <li class="compare">
                          <a href="#" title="compare">
                            <i class="zmdi zmdi-swap"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </c:forEach>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--home product area end-->

<!--banner area start-->
<div class="banner_area mb-50">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="single_banner">
          <div class="banner_thumb">
            <a href="shop.html"><img
                    src="client/img/bg/banner6.jpg"
                    alt=""
            /></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--banner area end-->