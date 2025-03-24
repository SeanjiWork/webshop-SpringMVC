<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--deals product section area start-->
<section class="deals_product_section mb-50">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="section_title">
          <h2>Flash <span>Sale</span></h2>
        </div>
        <div class="deals_product_inner">
          <div class="deals_tab_list deals_tab_two">
            <ul class="nav" role="tablist">
              <li>
                <a
                        class="active"
                        data-bs-toggle="tab"
                        href="#Funiture"
                        role="tab"
                        aria-controls="Funiture"
                        aria-selected="true">
                  <i class="zmdi zmdi-boat"></i>
                  <h3>Funiture</h3>
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#laptop"
                        role="tab"
                        aria-controls="laptop"
                        aria-selected="false">
                  <i class="zmdi zmdi-laptop-mac"></i>
                  <h3>laptop</h3>
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#mobile"
                        role="tab"
                        aria-controls="mobile"
                        aria-selected="false">
                  <i class="zmdi zmdi-smartphone"></i>
                  <h3>mobile</h3>
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#Fridge"
                        role="tab"
                        aria-controls="Fridge"
                        aria-selected="false">
                  <i class="zmdi zmdi-toys"></i>
                  <h3>Fridge</h3>
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#Camera"
                        role="tab"
                        aria-controls="Camera"
                        aria-selected="false">
                  <i class="zmdi zmdi-camera"></i>
                  <h3>Camera</h3>
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#tv"
                        role="tab"
                        aria-controls="tv"
                        aria-selected="false">
                  <i class="zmdi zmdi-tv"></i>
                  <h3>tv</h3>
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#speaker"
                        role="tab"
                        aria-controls="speaker"
                        aria-selected="false">
                  <i
                          class="zmdi zmdi-collection-speaker"
                  ></i>
                  <h3>speaker</h3>
                </a>
              </li>
              <li>
                <a
                        data-bs-toggle="tab"
                        href="#Toys"
                        role="tab"
                        aria-controls="Toys"
                        aria-selected="false">
                  <i class="zmdi zmdi-cutlery"></i>
                  <h3>Toys</h3>
                </a>
              </li>
            </ul>
          </div>
          <div class="deals_product_wrapper">
            <div class="tab-content">
              <div class="tab-pane fade show active" id="Funiture" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                <c:forEach var="product" items="${products}">
                  <div class="single_deals_product">
                    <div class="product_thumb mb-3">
                      <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                      <div class="label_product">
                          <span class="label_sale">sale</span>
                      </div>
                      <div class="quick_button">
                        <a
                                href="#"
                                data-bs-toggle="modal"
                                data-bs-target="#modal_box"
                                title="quick view">
                          <i class="zmdi zmdi-eye"></i
                          ></a>
                      </div>
                      <div class="product_timing">
                        <div class="alarm_icone">
                          <i class="zmdi zmdi-timer"></i>
                        </div>
                        <div data-countdown="2030/12/15"></div>
                      </div>
                    </div>
                    <div class="product_content">
                      <div class="product_name">
                        <h3>
                          <a  href="/product/list/detail/${product.id}">${product.name}</a>
                        </h3>
                      </div>
                      <div class="product_rating">
                        <ul>
                          <li>
                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                          </li>
                          <li>
                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                          </li>
                          <li>
                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                          </li>
                          <li>
                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                          </li>
                          <li>
                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                          </li>
                          <li class="add_to_cart">
                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                              add to cart
                            </a>
                          </li>
                          <li class="compare">
                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </c:forEach>
                </div>
              </div>
              <div class="tab-pane fade" id="laptop" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                    <c:forEach var="product" items="${products}">
                        <div class="single_deals_product">
                            <div class="product_thumb mb-3">
                                <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                                <div class="label_product">
                                    <span class="label_sale">sale</span>
                                </div>
                                <div class="quick_button">
                                    <a
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modal_box"
                                            title="quick view">
                                        <i class="zmdi zmdi-eye"></i
                                        ></a>
                                </div>
                                <div class="product_timing">
                                    <div class="alarm_icone">
                                        <i class="zmdi zmdi-timer"></i>
                                    </div>
                                    <div data-countdown="2030/12/15"></div>
                                </div>
                            </div>
                            <div class="product_content">
                                <div class="product_name">
                                    <h3>
                                        <a  href="/product/list/detail/${product.id}">${product.name}</a>
                                    </h3>
                                </div>
                                <div class="product_rating">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="add_to_cart">
                                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                add to cart
                                            </a>
                                        </li>
                                        <li class="compare">
                                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
              </div>
              <div class="tab-pane fade" id="mobile" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                    <c:forEach var="product" items="${products}">
                        <div class="single_deals_product">
                            <div class="product_thumb mb-3">
                                <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                                <div class="label_product">
                                    <span class="label_sale">sale</span>
                                </div>
                                <div class="quick_button">
                                    <a
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modal_box"
                                            title="quick view">
                                        <i class="zmdi zmdi-eye"></i
                                        ></a>
                                </div>
                                <div class="product_timing">
                                    <div class="alarm_icone">
                                        <i class="zmdi zmdi-timer"></i>
                                    </div>
                                    <div data-countdown="2030/12/15"></div>
                                </div>
                            </div>
                            <div class="product_content">
                                <div class="product_name">
                                    <h3>
                                        <a  href="/product/list/detail/${product.id}">${product.name}</a>
                                    </h3>
                                </div>
                                <div class="product_rating">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="add_to_cart">
                                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                add to cart
                                            </a>
                                        </li>
                                        <li class="compare">
                                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
              </div>
              <div class="tab-pane fade" id="Fridge" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                    <c:forEach var="product" items="${products}">
                        <div class="single_deals_product">
                            <div class="product_thumb mb-3">
                                <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                                <div class="label_product">
                                    <span class="label_sale">sale</span>
                                </div>
                                <div class="quick_button">
                                    <a
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modal_box"
                                            title="quick view">
                                        <i class="zmdi zmdi-eye"></i
                                        ></a>
                                </div>
                                <div class="product_timing">
                                    <div class="alarm_icone">
                                        <i class="zmdi zmdi-timer"></i>
                                    </div>
                                    <div data-countdown="2030/12/15"></div>
                                </div>
                            </div>
                            <div class="product_content">
                                <div class="product_name">
                                    <h3>
                                        <a  href="/product/list/detail/${product.id}">${product.name}</a>
                                    </h3>
                                </div>
                                <div class="product_rating">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="add_to_cart">
                                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                add to cart
                                            </a>
                                        </li>
                                        <li class="compare">
                                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
              </div>
              <div class="tab-pane fade" id="Camera" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                    <c:forEach var="product" items="${products}">
                        <div class="single_deals_product">
                            <div class="product_thumb mb-3">
                                <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                                <div class="label_product">
                                    <span class="label_sale">sale</span>
                                </div>
                                <div class="quick_button">
                                    <a
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modal_box"
                                            title="quick view">
                                        <i class="zmdi zmdi-eye"></i
                                        ></a>
                                </div>
                                <div class="product_timing">
                                    <div class="alarm_icone">
                                        <i class="zmdi zmdi-timer"></i>
                                    </div>
                                    <div data-countdown="2030/12/15"></div>
                                </div>
                            </div>
                            <div class="product_content">
                                <div class="product_name">
                                    <h3>
                                        <a  href="/product/list/detail/${product.id}">${product.name}</a>
                                    </h3>
                                </div>
                                <div class="product_rating">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="add_to_cart">
                                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                add to cart
                                            </a>
                                        </li>
                                        <li class="compare">
                                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
              </div>
              <div class="tab-pane fade" id="tv" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                    <c:forEach var="product" items="${products}">
                        <div class="single_deals_product">
                            <div class="product_thumb mb-3">
                                <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                                <div class="label_product">
                                    <span class="label_sale">sale</span>
                                </div>
                                <div class="quick_button">
                                    <a
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modal_box"
                                            title="quick view">
                                        <i class="zmdi zmdi-eye"></i
                                        ></a>
                                </div>
                                <div class="product_timing">
                                    <div class="alarm_icone">
                                        <i class="zmdi zmdi-timer"></i>
                                    </div>
                                    <div data-countdown="2030/12/15"></div>
                                </div>
                            </div>
                            <div class="product_content">
                                <div class="product_name">
                                    <h3>
                                        <a  href="/product/list/detail/${product.id}">${product.name}</a>
                                    </h3>
                                </div>
                                <div class="product_rating">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="add_to_cart">
                                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                add to cart
                                            </a>
                                        </li>
                                        <li class="compare">
                                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
              </div>
              <div class="tab-pane fade" id="speaker" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                    <c:forEach var="product" items="${products}">
                        <div class="single_deals_product">
                            <div class="product_thumb mb-3">
                                <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                                <div class="label_product">
                                    <span class="label_sale">sale</span>
                                </div>
                                <div class="quick_button">
                                    <a
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modal_box"
                                            title="quick view">
                                        <i class="zmdi zmdi-eye"></i
                                        ></a>
                                </div>
                                <div class="product_timing">
                                    <div class="alarm_icone">
                                        <i class="zmdi zmdi-timer"></i>
                                    </div>
                                    <div data-countdown="2030/12/15"></div>
                                </div>
                            </div>
                            <div class="product_content">
                                <div class="product_name">
                                    <h3>
                                        <a  href="/product/list/detail/${product.id}">${product.name}</a>
                                    </h3>
                                </div>
                                <div class="product_rating">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="add_to_cart">
                                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                add to cart
                                            </a>
                                        </li>
                                        <li class="compare">
                                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
              </div>
              <div class="tab-pane fade" id="Toys" role="tabpanel">
                <div class="deals_product_carousel deals_product_column2 owl-carousel">
                    <c:forEach var="product" items="${products}">
                        <div class="single_deals_product">
                            <div class="product_thumb mb-3">
                                <a href="/product/list/detail/${product.id}"><img src="images/product/${product.image}" alt=""/></a>
                                <div class="label_product">
                                    <span class="label_sale">sale</span>
                                </div>
                                <div class="quick_button">
                                    <a
                                            href="#"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modal_box"
                                            title="quick view">
                                        <i class="zmdi zmdi-eye"></i
                                        ></a>
                                </div>
                                <div class="product_timing">
                                    <div class="alarm_icone">
                                        <i class="zmdi zmdi-timer"></i>
                                    </div>
                                    <div data-countdown="2030/12/15"></div>
                                </div>
                            </div>
                            <div class="product_content">
                                <div class="product_name">
                                    <h3>
                                        <a  href="/product/list/detail/${product.id}">${product.name}</a>
                                    </h3>
                                </div>
                                <div class="product_rating">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
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
                                            <a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="add_to_cart">
                                            <a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                add to cart
                                            </a>
                                        </li>
                                        <li class="compare">
                                            <a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a>
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
    </div>
  </div>
</section>
<!--deals product section area end-->