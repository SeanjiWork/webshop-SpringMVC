<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    const menu = document.querySelector(".categories_menu_toggle");
    const toggleBtn = document.querySelector(".categori_toggle");

    if (window.location.pathname === "/" || window.location.pathname.includes("index.html")) {
      menu.style.display = "block";
    }

    toggleBtn.addEventListener("click", function () {
      menu.style.display = menu.style.display === "block" ? "none" : "block";
    });
  });
</script>

<!--header area start-->
<header class="header_area">
  <!--header top start-->
  <div class="header_top">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-4">
          <div class="welcome_text">
            <p>Welcome to <span>Electronics Store</span></p>
          </div>
        </div>
        <div class="col-lg-8">
          <div class="top_right text-right">
            <ul>
              <li class="currency"><a href="#"><i class="fa fa-dollar"></i> US Dollar <i class="zmdi zmdi-caret-down"></i></a>
                <ul class="dropdown_currency">
                  <li><a href="#">EUR – Euro</a></li>
                  <li><a href="#">GBP – British Pound</a></li>
                  <li><a href="#">INR – India Rupee</a></li>
                </ul>
              </li>
              <li class="language"><a href="#"><i class="zmdi zmdi-dribbble"></i> English1 <i
                        class="zmdi zmdi-caret-down"></i></a>
                <ul class="dropdown_language">
                  <li><a href="#">English</a></li>
                  <li><a href="#">Germany</a></li>
                </ul>
              </li>
              <c:if test="${not empty pageContext.request.userPrincipal}">
                <%--                User <c:out value="${pageContext.request.userPrincipal.name}" />--%>
                <li class="top_links">
                  <a href="#">
                    <i class="zmdi zmdi-account"></i>
                    My account
                    <i class="zmdi zmdi-caret-down"></i>
                  </a>
                  <ul class="dropdown_links">
                    <li><c:out value="${pageContext.request.userPrincipal.name}" /></li>
                    <li><a href="#">My Account </a></li>
                    <li><a href="/checkout">Checkout </a></li>
                    <li><a href="/cart">Shopping Cart</a></li>
                    <li><a href="#">Wishlist</a></li>
                    <li>
                      <form method="post" action="/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <button ></button>
                      </form>
                    </li>
                  </ul>
                </li>
              </c:if>

              <c:if test="${empty pageContext.request.userPrincipal}">
              <li class="top_links">
                <a href="/login">
                  <i class="zmdi zmdi-account"></i>
                  Login
                </a>
                </c:if>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--header top start-->
  <!--header center area start-->
  <div class="header_middle">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-3">
          <div class="logo">
            <a href="/"><img src="client/img/logo/logo.png" alt=""/></a>
          </div>
        </div>
        <div class="col-lg-9">
          <div class="header_middle_inner">
            <div class="search-container">
              <form action="#">
                <div class="hover_category"><select class="select_option" name="select" id="categori">
                  <option selected value="1"> All Categories</option>
                  <option value="2"> Accessories</option>
                  <option value="3"> Accessories & More</option>
                  <option value="4"> Butters & Eggs</option>
                  <option value="5"> Camera & Video</option>
                  <option value="6"> Mornitors</option>
                  <option value="7"> Tablets</option>
                  <option value="8"> Laptops</option>
                  <option value="9"> Handbags</option>
                  <option value="10"> Headphone & Speaker</option>
                  <option value="11"> Herbs & botanicals</option>
                  <option value="12"> Vegetables</option>
                  <option value="13">Shop</option>
                  <option value="14"> Laptops & Desktops</option>
                  <option value="15"> Watchs</option>
                  <option value="16"> Electronic</option>
                </select>
                </div>
                <div class="search_box"><input placeholder="Search product..." type="text"/>
                  <button type="submit"><i class="zmdi zmdi-search"></i></button>
                </div>
              </form>
            </div>
            <div class="mini_cart_wrapper">

              <a href="javascript:void(0)"><i class="zmdi zmdi-shopping-basket"></i>
                <span>2items - $213.00</span>
              </a>
              <!--mini cart-->
              <div class="mini_cart">
                <div class="cart_item">
                  <div class="cart_img">
                    <a href="#"><img src="client/img/s-product/product.jpg" alt=""/></a>
                  </div>
                  <div class="cart_info">
                    <a href="#">Condimentum Watches</a>
                    <span class="quantity">Qty: 1</span> <span class="price_cart">$60.00</span>
                  </div>
                  <div class="cart_remove">
                    <a href="#"><i class="ion-android-close"></i></a></div>
                </div>
                <div class="cart_item">
                  <div class="cart_img">
                    <a href="#"><img src="client/img/s-product/product2.jpg" alt=""/></a></div>
                  <div class="cart_info">
                    <a href="#">Officiis debitis</a> <span class="quantity">Qty: 1</span> <span
                          class="price_cart">$69.00</span></div>
                  <div class="cart_remove">
                    <a href="#"><i class="ion-android-close"></i></a></div>
                </div>
                <div class="mini_cart_table">
                  <div class="cart_total"><span>Subtotal:</span> <span class="price">$138.00</span>
                  </div>
                </div>

                <div class="mini_cart_footer">
                  <div class="cart_button">
                    <a href="/cart">View cart</a>
                    <a href="/checkout">Checkout</a></div>
                </div>
              </div>
              <!--mini cart end-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--header center area end-->

  <!--header middel start-->
  <div class="header_bottom">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-3">
          <div class="categories_menu categori_two">
            <div class="categories_title">
              <h2 class="categori_toggle">Categories</h2>
            </div>
            <div class="categories_menu_toggle" style="display: none">
              <ul>
                <li class="menu_item_children categorie_list">
                  <a href="#"><span><i class="zmdi zmdi-desktop-mac"></i></span>
                    Electronic <i class="fa fa-angle-right"></i>
                  </a>
                  <ul class="categories_mega_menu">
                    <li class="menu_item_children">
                      <a href="#">Wheel Bearings</a>
                      <ul class="categorie_sub_menu">
                        <li><a href="#">Bower</a></li>
                        <li><a href="#">Flipbac</a></li>
                        <li><a href="#">Gary Fong</a></li>
                        <li><a href="#">GigaPan</a></li>
                      </ul>
                    </li>
                    <li class="menu_item_children">
                      <a href="#">Wheel Rim Screws</a>
                      <ul class="categorie_sub_menu">
                        <li><a href="#">Accessories</a></li>
                        <li><a href="#">2-Stroke</a></li>
                        <li><a href="#">Handbag</a></li>
                        <li><a href="#">Clothing</a></li>
                      </ul>
                    </li>
                    <li class="menu_item_children last_child">
                      <a href="#">Wheel Simulators</a>
                      <ul class="categorie_sub_menu">
                        <li><a href="#">Bags & Cases</a></li>
                        <li><a href="#">Binoculars & Scopes</a></li>
                        <li><a href="#">Film Photography</a></li>
                        <li><a href="#">Lighting & Studio</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="menu_item_children">
                  <a href="#"><span><i class="zmdi zmdi-image"></i>
                  </span> Fashion & Beauty <i class="fa fa-angle-right"></i>
                  </a>
                  <ul class="categories_mega_menu column_3">
                    <li class="menu_item_children">
                      <a href="#">Chair</a>
                      <div class="categorie_sub_menu">
                        <ul>
                          <li><a href="#">Dining room</a></li>
                          <li><a href="#">bedroom</a></li>
                          <li><a href="#"> Home & Office</a></li>
                          <li><a href="#">living room</a></li>
                        </ul>
                      </div>
                    </li>
                    <li class="menu_item_children">
                      <a href="#">Lighting</a>
                      <div class="categorie_sub_menu">
                        <ul>
                          <li><a href="#">Ceiling Lighting</a></li>
                          <li><a href="#">Wall Lighting</a></li>
                          <li><a href="#">Outdoor Lighting</a></li>
                          <li><a href="#">Smart Lighting</a></li>
                        </ul>
                      </div>
                    </li>
                    <li class="menu_item_children">
                      <a href="#">Sofa</a>
                      <div class="categorie_sub_menu">
                        <ul>
                          <li><a href="#">Fabric Sofas</a></li>
                          <li><a href="#">Leather Sofas</a></li>
                          <li><a href="#">Corner Sofas</a></li>
                          <li><a href="#">Sofa Beds</a></li>
                        </ul>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="menu_item_children">
                  <a href="#"><span><i class="zmdi zmdi-camera"></i></span> Camera & Photo <i
                          class="fa fa-angle-right"></i></a>
                  <ul class="categories_mega_menu column_2">
                    <li class="menu_item_children">
                      <a href="#">Brake Tools</a>
                      <div class="categorie_sub_menu">
                        <ul>
                          <li><a href="#">Driveshafts</a></li>
                          <li><a href="#">Spools</a></li>
                          <li><a href="#">Diesel </a></li>
                          <li><a href="#">Gasoline</a></li>
                        </ul>
                      </div>
                    </li>
                    <li class="menu_item_children">
                      <a href="#">Emergency Brake</a>
                      <div class="categorie_sub_menu">
                        <ul>
                          <li><a href="#">Dolls for Girls</a></li>
                          <li><a href="#">Girls' Learning Toys</a></li>
                          <li><a href="#">Arts and Crafts for Girls</a></li>
                          <li><a href="#">Video Games for Girls</a></li>
                        </ul>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="menu_item_children">
                  <a href="#"><span><i class="zmdi zmdi-dribbble"></i></span> Sport & Outdoor
                    <i class="fa fa-angle-right"></i>
                  </a>
                  <ul class="categories_mega_menu column_2">
                    <li class="menu_item_children">
                      <a href="#">Check Trousers</a>
                      <div class="categorie_sub_menu">
                        <ul>
                          <li><a href="#">Building</a></li>
                          <li><a href="#">Electronics</a></li>
                          <li><a href="#">action figures </a></li>
                          <li><a href="#">specialty & boutique toy</a></li>
                        </ul>
                      </div>
                    </li>
                    <li class="menu_item_children">
                      <a href="#">Calculators</a>
                      <div class="categorie_sub_menu">
                        <ul>
                          <li><a href="#">Dolls for Girls</a></li>
                          <li><a href="#">Girls' Learning Toys</a></li>
                          <li><a href="#">Arts and Crafts for Girls</a></li>
                          <li><a href="#">Video Games for Girls</a></li>
                        </ul>
                      </div>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="#"><span><i class="zmdi zmdi-tv"></i></span> TV & Audio</a>
                </li>
                <li>
                  <a href="#"><span><i class="zmdi zmdi-tv-list"></i></span> home funiture</a>
                </li>
                <li>
                  <a href="#"><span><i class="zmdi zmdi-cake"></i></span> toys for kids</a>
                </li>
                <li>
                  <a href="#"><span><i class="zmdi zmdi-memory"></i></span> Memory Cards</a>
                </li>
                <li>
                  <a href="#"><span><i class="zmdi zmdi-case-download"></i></span> Living Room</a>
                </li>
                <li class="hidden">
                  <a href="#">New Sofas</a>
                </li>
                <li class="hidden">
                  <a href="#">Sleight Sofas</a>
                </li>
                <li>
                  <a href="#" id="more-btn"><i class="fa fa-plus" aria-hidden="true"></i> More Categories</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <div class="main_menu menu_two header_position">
            <nav>
              <ul>
                <li class="active">
                  <a href="/"><i class="zmdi zmdi-home"></i> home</a>
                </li>
                <li class="mega_items">
                  <a href="shop.html"><i class="zmdi zmdi-shopping-basket"></i> shop <i
                          class="zmdi zmdi-caret-down"></i></a>
                  <div class="mega_menu">
                    <ul class="mega_menu_inner">
                      <li><a href="#">Shop Layouts</a>
                        <ul>
                          <%--here--%>
                          <li><a href="/product/custom-build">Custom build</a></li>
                          <li><a href="#">Full Width list</a></li>
                          <li><a href="#">Right Sidebar </a></li>
                          <li><a href="#"> Right Sidebar list</a>
                          </li>
                          <li><a href="/product/list">List View</a></li>
                        </ul>
                      </li>
                      <li><a href="#">other Pages</a>
                        <ul>
                          <li><a href="/cart">cart</a></li>
                          <li><a href="wishlist.html">Wishlist</a></li>
                          <li><a href="/checkout">Checkout</a></li>
                          <li><a href="my-account.html">my account</a></li>
                          <li><a href="404.html">Error 404</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Product Types</a>
                        <ul>
                          <li><a href="product-details.html">product details</a></li>
                          <li><a href="product-sidebar.html">product sidebar</a></li>
                          <li><a href="product-grouped.html">product grouped</a></li>
                          <li><a href="variable-product.html">product variable</a></li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="blog.html"><i class="zmdi zmdi-collection-music"></i> blog <i
                          class="zmdi zmdi-caret-down"></i></a>
                  <ul class="sub_menu pages">
                    <li>
                      <a href="blog-details.html">blog details</a></li>
                    <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                    <li>
                      <a href="blog-sidebar.html">blog sidebar</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#"><i class="zmdi zmdi-star"></i> pages <i
                          class="zmdi zmdi-caret-down"></i></a>
                  <ul class="sub_menu pages">
                    <li>
                      <a href="/about">About Us</a></li>
                    <li>
                      <a href="services.html">services</a></li>
                    <li>
                      <a href="portfolio.html">portfolio</a></li>
                    <li>
                      <a href="faq.html">Frequently Questions</a></li>
                    <li>
                      <a href="/contact">contact</a></li>
                    <li>
                      <a href="login.html">login</a></li>
                    <li>
                      <a href="wishlist.html">Wishlist</a></li>
                    <li>
                      <a href="404.html">Error 404</a></li>
                  </ul>
                </li>

                <li>
                  <a href="/about"><i class="zmdi zmdi-comments"></i> about Us</a>
                </li>
                <li>
                  <a href="/contact"><i class="zmdi zmdi-account-box-mail"></i> Contact Us</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--header middel end-->
</header>
<!--header area end-->

<!--Offcanvas menu area start-->

<div class="off_canvars_overlay"></div>
<div class="Offcanvas_menu">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="canvas_open">
          <span>MENU</span>

          <a href="javascript:void(0)"
          ><i class="ion-navicon"></i
          ></a>
        </div>
        <div class="Offcanvas_menu_wrapper">
          <div class="canvas_close">

            <a href="javascript:void(0)"
            ><i class="ion-android-close"></i
            ></a>
          </div>
          <div class="welcome_text">
            <p>Welcome to <span>Electronics Store</span></p>
          </div>

          <div class="top_right">
            <ul>
              <li class="currency"><a href="#"><i class="fa fa-dollar"></i> US Dollar <i class="zmdi zmdi-caret-down"></i></a>
                <ul class="dropdown_currency">
                  <li><a href="#">EUR – Euro</a></li>
                  <li><a href="#">GBP – British Pound</a></li>
                  <li><a href="#">INR – India Rupee</a></li>
                </ul>
              </li>
              <li class="language"><a href="#"><i class="zmdi zmdi-dribbble"></i> English1 <i
                        class="zmdi zmdi-caret-down"></i></a>
                <ul class="dropdown_language">
                  <li><a href="#">English</a></li>
                  <li><a href="#">Germany</a></li>
                </ul>
              </li>
              <c:if test="${not empty pageContext.request.userPrincipal}">
<%--                User <c:out value="${pageContext.request.userPrincipal.name}" />--%>
                <li class="top_links">
                  <a href="#">
                    <i class="zmdi zmdi-account"></i>
                      My account
                    <i class="zmdi zmdi-caret-down"></i>
                  </a>
                  <ul class="dropdown_links">
                    <li><a href="/checkout">Checkout </a></li>
                    <li><a href="/checkout">Checkout </a></li>
                    <li><a href="#">My Account </a></li>
                    <li><a href="/cart">Shopping Cart</a></li>
                    <li><a href="#">Wishlist</a></li>
                  </ul>
                </li>
              </c:if>

            <c:if test="${empty pageContext.request.userPrincipal}">
              <li class="top_links">
                <a href="/login">
                  <i class="zmdi zmdi-account"></i>
                  Login
                </a>
            </c:if>



            </ul>
          </div>
          <div class="search-container">
            <form action="#">
              <div class="hover_category">
                <select class="select_option" name="select" id="categori2">
                  <option selected value="1"> All Categories</option>
                  <option value="2"> Accessories</option>
                  <option value="3"> Accessories & More</option>
                  <option value="4"> Butters & Eggs</option>
                  <option value="5"> Camera & Video</option>
                  <option value="6">Mornitors</option>
                  <option value="7">Tablets</option>
                  <option value="8">Laptops</option>
                  <option value="9">Handbags</option>
                  <option value="10"> Headphone & Speaker</option>
                  <option value="11"> Herbs & botanicals</option>
                  <option value="12"> Vegetables</option>
                  <option value="13">Shop</option>
                  <option value="14"> Laptops & Desktops</option>
                  <option value="15">Watchs</option>
                  <option value="16"> Electronic</option>
                </select>
              </div>
              <div class="search_box">
                <input placeholder="Search product..." type="text"
                />
                <button type="submit"><i class="zmdi zmdi-search"></i>
                </button>
              </div>
            </form>
          </div>
          <div class="mini_cart_wrapper">

            <a href="javascript:void(0)"
            ><i class="zmdi zmdi-shopping-basket"></i>
              <span>2items - $213.00</span>
            </a>
            <!--mini cart-->
            <div class="mini_cart">
              <div class="cart_item">
                <div class="cart_img">

                  <a href="#">
                    <img src="client/img/s-product/product.jpg" alt=""/>
                  </a>
                </div>
                <div class="cart_info">
                  <a href="#">Condimentum Watches</a>
                  <span class="quantity">Qty: 1</span> <span class="price_cart">$60.00</span>
                </div>
                <div class="cart_remove">
                  <a href="#"><i class="ion-android-close"></i></a>
                </div>
              </div>
              <div class="cart_item">
                <div class="cart_img">
                  <a href="#"><img src="client/img/s-product/product2.jpg" alt=""/></a>
                </div>
                <div class="cart_info">
                  <a href="#">Officiis debitis</a> <span class="quantity">Qty: 1</span> <span
                        class="price_cart">$69.00</span>
                </div>
                <div class="cart_remove">
                  <a href="#"><i class="ion-android-close"></i></a>
                </div>
              </div>
              <div class="mini_cart_table">
                <div class="cart_total"><span>Subtotal:</span> <span class="price">$138.00</span>
                </div>
              </div>

              <div class="mini_cart_footer">
                <div class="cart_button">
                  <a href="cart.html">View cart</a>
                  <a href="/checkout">Checkout</a>
                </div>
              </div>
            </div>
            <!--mini cart end-->
          </div>
          <div id="menu" class="text-left">
            <ul class="offcanvas_main_menu">
              <li class="menu-item-has-children active"><a href="#">Home</a>

              </li>
              <li class="menu-item-has-children"><a href="#">Shop</a>
                <ul class="sub-menu">
                  <li class="menu-item-has-children">
                    <a href="#">Shop Layouts</a>
                    <ul class="sub-menu">
                      <li><a href ="/product/list">Full Width</a></li>
                      <li><a href ="/product/list">Full Width list</a></li>
                      <li><a href ="/product/list">Right Sidebar</a></li>
                      <li><a href ="/product/list"> Right Sidebar list</a></li>
                      <li><a href="/product/list">List View</a></li>
                    </ul>
                  </li>
                  <li class="menu-item-has-children">
                    <a href="#">other Pages</a>
                    <ul class="sub-menu">
                      <li><a href="#">cart</a></li>
                      <li><a href="#">Wishlist</a></li>
                      <li><a href="/checkout">Checkout</a></li>
                      <li><a href ="#">my account</a></li>
                      <li><a href="#">Error 404</a></li>
                    </ul>
                  </li>
                  <li class="menu-item-has-children">
                    <a href="#">Product Types</a>
                    <ul class="sub-menu">
                      <li><a href ="#">product details</a></li>
                      <li><a href ="#">product sidebar</a></li>
                      <li><a href ="#">product grouped</a></li>
                      <li><a href ="#">product variable</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="menu-item-has-children"><a href="#">blog</a>
                <ul class="sub-menu">
                  <li><a href="#">blog</a></li>
                  <li><a href="#">blog details</a></li>
                  <li><a href="#">blog fullwidth</a></li>
                  <li><a href="#">blog sidebar</a></li>
                </ul>
              </li>
              <li class="menu-item-has-children"><a href="#">pages </a>
                <ul class="sub-menu">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#l">services</a></li>
                  <li><a href="#l">portfolio</a></li>
                  <li><a href="#">Frequently Questions</a></li>
                  <li><a href="#">contact</a></li>
                  <li><a href="#">login</a></li>
                  <li><a href="#">Wishlist</a></li>
                  <li><a href="#">Error 404</a></li>
                </ul>
              </li>
              <li class="menu-item-has-children"><a href="#">my account</a>
              </li>
              <li class="menu-item-has-children"><a href="/about">about Us</a>
              </li>
              <li class="menu-item-has-children"><a href="#"> Contact Us</a>
              </li>
            </ul>
          </div>

          <div class="Offcanvas_footer">
            <span>
              <a href="#"><i class="fa fa-envelope-o"></i>info@yourdomain.com</a>
            </span>
            <ul>
              <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a>
              </li>
              <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a>
              </li>
              <li class="pinterest"><a href="#"><i class="fa fa-pinterest-p"></i></a>
              </li>
              <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a>
              </li>
              <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--Offcanvas menu area end-->

