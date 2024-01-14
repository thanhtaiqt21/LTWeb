<%@ page import="com.example.ecommerce.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="format-detection" content="telephone=no" />
    <title>Stroyka</title>
    <link rel="icon" type="image/png" href="images/favicon.png" />
    <!-- fonts -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i"
    />
    <!-- css -->
    <link
      rel="stylesheet"
      href="vendor/bootstrap-4.2.1/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="vendor/owl-carousel-2.3.4/assets/owl.carousel.min.css"
    />
    <link rel="stylesheet" href="css/style.css" />
    <!-- js -->
    <script src="vendor/jquery-3.3.1/jquery.min.js"></script>
    <script src="vendor/bootstrap-4.2.1/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/owl-carousel-2.3.4/owl.carousel.min.js"></script>
    <script src="vendor/nouislider-12.1.0/nouislider.min.js"></script>
    <script src="js/number.js"></script>
    <script src="js/main.js"></script>
    <script src="vendor/svg4everybody-2.1.9/svg4everybody.min.js"></script>
    <script>
      svg4everybody();
    </script>
    <!-- font - fontawesome -->
    <link rel="stylesheet" href="vendor/fontawesome-5.6.1/css/all.min.css" />
    <!-- font - stroyka -->
    <link rel="stylesheet" href="fonts/stroyka/stroyka.css" />
    <script
      async
      src="https://www.googletagmanager.com/gtag/js?id=UA-97489509-6"
    ></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag() {
        dataLayer.push(arguments);
      }
      gtag("js", new Date());
      gtag("config", "UA-97489509-6");
    </script>
  </head>
  <body>
  <!-- quickview-modal -->
  <div
          id="quickview-modal"
          class="modal fade"
          tabindex="-1"
          role="dialog"
          aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered modal-xl">
      <div class="modal-content"></div>
    </div>
  </div>
  <!-- mobilemenu / end --><!-- site -->
  <div class="site">
    <!-- mobile site__header -->
    <header class="site__header d-lg-none">
      <div class="mobile-header mobile-header--sticky mobile-header--stuck">
        <div class="mobile-header__panel">
          <div class="container">
            <div class="mobile-header__body">
              <button class="mobile-header__menu-button">
                <svg width="18px" height="14px">
                  <use xlink:href="images/sprite.svg#menu-18x14"></use>
                </svg>
              </button>
              <a class="mobile-header__logo" href="index.jsp"
              ><svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="120px"
                      height="20px"
              >
                <path
                        d="M118.5,20h-1.1c-0.6,0-1.2-0.4-1.4-1l-1.5-4h-6.1l-1.5,4c-0.2,0.6-0.8,1-1.4,1h-1.1c-1,0-1.8-1-1.4-2l1.1-3
                                 l1.5-4l3.6-10c0.2-0.6,0.8-1,1.4-1h1.6c0.6,0,1.2,0.4,1.4,1l3.6,10l1.5,4l1.1,3C120.3,19,119.5,20,118.5,20z M111.5,6.6l-1.6,4.4
                                 h3.2L111.5,6.6z M99.5,20h-1.4c-0.4,0-0.7-0.2-0.9-0.5L94,14l-2,3.5v1c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                 C88,0.7,88.7,0,89.5,0h1C91.3,0,92,0.7,92,1.5v8L94,6l3.2-5.5C97.4,0.2,97.7,0,98.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3L96.3,10l4.5,7.8
                                 C101.4,18.8,100.7,20,99.5,20z M80.3,11.8L80,12.3v6.2c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-6.2l-0.3-0.5l-5.5-9.5
                                 c-0.6-1,0.2-2.3,1.3-2.3h1.4c0.4,0,0.7,0.2,0.9,0.5L76,4.3l2,3.5l2-3.5l2.2-3.8C82.4,0.2,82.7,0,83.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3
                                 L80.3,11.8z M60,20c-5.5,0-10-4.5-10-10S54.5,0,60,0s10,4.5,10,10S65.5,20,60,20z M60,4c-3.3,0-6,2.7-6,6s2.7,6,6,6s6-2.7,6-6
                                 S63.3,4,60,4z M47.8,17.8c0.6,1-0.2,2.3-1.3,2.3h-2L41,14h-4v4.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                 C33,0.7,33.7,0,34.5,0H41c0.3,0,0.7,0,1,0.1c3.4,0.5,6,3.4,6,6.9c0,2.4-1.2,4.5-3.1,5.8L47.8,17.8z M42,4.2C41.7,4.1,41.3,4,41,4h-3
                                 c-0.6,0-1,0.4-1,1v4c0,0.6,0.4,1,1,1h3c0.3,0,0.7-0.1,1-0.2c0.3-0.1,0.6-0.3,0.9-0.5C43.6,8.8,44,7.9,44,7C44,5.7,43.2,4.6,42,4.2z
                                  M29.5,4H25v14.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5V4h-4.5C15.7,4,15,3.3,15,2.5v-1C15,0.7,15.7,0,16.5,0h13
                                 C30.3,0,31,0.7,31,1.5v1C31,3.3,30.3,4,29.5,4z M6.5,20c-2.8,0-5.5-1.7-6.4-4c-0.4-1,0.3-2,1.3-2h1c0.5,0,0.9,0.3,1.2,0.7
                                 c0.2,0.3,0.4,0.6,0.8,0.8C4.9,15.8,5.8,16,6.5,16c1.5,0,2.8-0.9,2.8-2c0-0.7-0.5-1.3-1.2-1.6C7.4,12,7,11,7.4,10.3l0.4-0.9
                                 c0.4-0.7,1.2-1,1.8-0.6c0.6,0.3,1.2,0.7,1.6,1.2c1,1.1,1.7,2.5,1.7,4C13,17.3,10.1,20,6.5,20z M11.6,6h-1c-0.5,0-0.9-0.3-1.2-0.7
                                 C9.2,4.9,8.9,4.7,8.6,4.5C8.1,4.2,7.2,4,6.5,4C5,4,3.7,4.9,3.7,6c0,0.7,0.5,1.3,1.2,1.6C5.6,8,6,9,5.6,9.7l-0.4,0.9
                                 c-0.4,0.7-1.2,1-1.8,0.6c-0.6-0.3-1.2-0.7-1.6-1.2C0.6,8.9,0,7.5,0,6c0-3.3,2.9-6,6.5-6c2.8,0,5.5,1.7,6.4,4C13.3,4.9,12.6,6,11.6,6
                                 z"
                ></path></svg
              ></a>
              <div class="mobile-header__search">
                <form class="mobile-header__search-form" action="#">
                  <input
                          class="mobile-header__search-input"
                          name="search"
                          placeholder="Search over 10,000 products"
                          aria-label="Site search"
                          type="text"
                          autocomplete="off"
                  />
                  <button
                          class="mobile-header__search-button mobile-header__search-button--submit"
                          type="submit"
                  >
                    <svg width="20px" height="20px">
                      <use xlink:href="images/sprite.svg#search-20"></use>
                    </svg>
                  </button>
                  <button
                          class="mobile-header__search-button mobile-header__search-button--close"
                          type="button"
                  >
                    <svg width="20px" height="20px">
                      <use xlink:href="images/sprite.svg#cross-20"></use>
                    </svg>
                  </button>
                  <div class="mobile-header__search-body"></div>
                </form>
              </div>
              <div class="mobile-header__indicators">
                <div
                        class="indicator indicator--mobile-search indicator--mobile d-sm-none"
                >
                  <button class="indicator__button">
                      <span class="indicator__area"
                      ><svg width="20px" height="20px">
                          <use
                                  xlink:href="images/sprite.svg#search-20"
                          ></use></svg
                      ></span>
                  </button>
                </div>
                <div class="indicator indicator--mobile d-sm-flex d-none">
                  <a href="wishlist.jsp" class="indicator__button"
                  ><span class="indicator__area"
                  ><svg width="20px" height="20px">
                          <use xlink:href="images/sprite.svg#heart-20"></use>
                        </svg>
                        <span class="indicator__value">0</span></span
                  ></a
                  >
                </div>
                <div class="indicator indicator--mobile">
                  <a href="cart.jsp" class="indicator__button"
                  ><span class="indicator__area"
                  ><svg width="20px" height="20px">
                          <use xlink:href="images/sprite.svg#cart-20"></use>
                        </svg>
                        <span class="indicator__value">3</span></span
                  ></a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- mobile site__header / end -->
    <!-- desktop site__header -->
    <header class="site__header d-lg-block d-none">
      <div class="site-header">
        <!-- .topbar -->
        <div class="site-header__topbar topbar">
          <div class="topbar__container container">
            <div class="topbar__row">
              <div class="topbar__item topbar__item--link">
                <a class="topbar-link" href="about-us.jsp">Giới thiệu</a>
              </div>
              <div class="topbar__spring"></div>
              <div class="topbar__item">
                <div class="topbar-dropdown">
                  <button class="topbar-dropdown__btn" type="button">
                    Tài Khoản
                    <svg width="7px" height="5px">
                      <use
                              xlink:href="images/sprite.svg#arrow-rounded-down-7x5"
                      ></use>
                    </svg>
                  </button>
                  <div class="topbar-dropdown__body">
                    <!-- .menu -->
                    <ul class="menu menu--layout--topbar">
                      <li><a href="login.jsp">Đăng Nhập</a></li>
                      <li><a href="register.jsp">Đăng Kí</a></li>
                      <li><a href="orders-history.jsp">Lịch sử đơn Hàng</a></li>
                    </ul>
                    <!-- .menu / end -->
                  </div>
                </div>
              </div>

              <div class="topbar__item">
                <div class="topbar-dropdown">
                  <button class="topbar-dropdown__btn" type="button">
                    Ngôn Ngữ: <span class="topbar__item-value">EN</span>
                    <svg width="7px" height="5px">
                      <use
                              xlink:href="images/sprite.svg#arrow-rounded-down-7x5"
                      ></use>
                    </svg>
                  </button>
                  <div class="topbar-dropdown__body">
                    <!-- .menu -->
                    <ul class="menu menu--layout--topbar menu--with-icons">
                      <li>
                        <a href="#"
                        ><div class="menu__icon">
                          <img
                                  srcset="
                                  images/languages/language-1.png,
                                  images/languages/language-1@2x.png 2x
                                "
                                  src="images/languages/language-1.png"
                                  alt=""
                          />
                        </div>
                          English</a
                        >
                      </li>
                    </ul>
                    <!-- .menu / end -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- .topbar / end -->
        <div class="site-header__nav-panel">
          <div class="nav-panel">
            <div class="nav-panel__container container">
              <div class="nav-panel__row">
                <div class="nav-panel__logo">
                  <a href="index.jsp">
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="120px"
                            height="20px"
                    >
                      <path
                              d="M118.5,20h-1.1c-0.6,0-1.2-0.4-1.4-1l-1.5-4h-6.1l-1.5,4c-0.2,0.6-0.8,1-1.4,1h-1.1c-1,0-1.8-1-1.4-2l1.1-3
                                 l1.5-4l3.6-10c0.2-0.6,0.8-1,1.4-1h1.6c0.6,0,1.2,0.4,1.4,1l3.6,10l1.5,4l1.1,3C120.3,19,119.5,20,118.5,20z M111.5,6.6l-1.6,4.4
                                 h3.2L111.5,6.6z M99.5,20h-1.4c-0.4,0-0.7-0.2-0.9-0.5L94,14l-2,3.5v1c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                 C88,0.7,88.7,0,89.5,0h1C91.3,0,92,0.7,92,1.5v8L94,6l3.2-5.5C97.4,0.2,97.7,0,98.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3L96.3,10l4.5,7.8
                                 C101.4,18.8,100.7,20,99.5,20z M80.3,11.8L80,12.3v6.2c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-6.2l-0.3-0.5l-5.5-9.5
                                 c-0.6-1,0.2-2.3,1.3-2.3h1.4c0.4,0,0.7,0.2,0.9,0.5L76,4.3l2,3.5l2-3.5l2.2-3.8C82.4,0.2,82.7,0,83.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3
                                 L80.3,11.8z M60,20c-5.5,0-10-4.5-10-10S54.5,0,60,0s10,4.5,10,10S65.5,20,60,20z M60,4c-3.3,0-6,2.7-6,6s2.7,6,6,6s6-2.7,6-6
                                 S63.3,4,60,4z M47.8,17.8c0.6,1-0.2,2.3-1.3,2.3h-2L41,14h-4v4.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                 C33,0.7,33.7,0,34.5,0H41c0.3,0,0.7,0,1,0.1c3.4,0.5,6,3.4,6,6.9c0,2.4-1.2,4.5-3.1,5.8L47.8,17.8z M42,4.2C41.7,4.1,41.3,4,41,4h-3
                                 c-0.6,0-1,0.4-1,1v4c0,0.6,0.4,1,1,1h3c0.3,0,0.7-0.1,1-0.2c0.3-0.1,0.6-0.3,0.9-0.5C43.6,8.8,44,7.9,44,7C44,5.7,43.2,4.6,42,4.2z
                                  M29.5,4H25v14.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5V4h-4.5C15.7,4,15,3.3,15,2.5v-1C15,0.7,15.7,0,16.5,0h13
                                 C30.3,0,31,0.7,31,1.5v1C31,3.3,30.3,4,29.5,4z M6.5,20c-2.8,0-5.5-1.7-6.4-4c-0.4-1,0.3-2,1.3-2h1c0.5,0,0.9,0.3,1.2,0.7
                                 c0.2,0.3,0.4,0.6,0.8,0.8C4.9,15.8,5.8,16,6.5,16c1.5,0,2.8-0.9,2.8-2c0-0.7-0.5-1.3-1.2-1.6C7.4,12,7,11,7.4,10.3l0.4-0.9
                                 c0.4-0.7,1.2-1,1.8-0.6c0.6,0.3,1.2,0.7,1.6,1.2c1,1.1,1.7,2.5,1.7,4C13,17.3,10.1,20,6.5,20z M11.6,6h-1c-0.5,0-0.9-0.3-1.2-0.7
                                 C9.2,4.9,8.9,4.7,8.6,4.5C8.1,4.2,7.2,4,6.5,4C5,4,3.7,4.9,3.7,6c0,0.7,0.5,1.3,1.2,1.6C5.6,8,6,9,5.6,9.7l-0.4,0.9
                                 c-0.4,0.7-1.2,1-1.8,0.6c-0.6-0.3-1.2-0.7-1.6-1.2C0.6,8.9,0,7.5,0,6c0-3.3,2.9-6,6.5-6c2.8,0,5.5,1.7,6.4,4C13.3,4.9,12.6,6,11.6,6
                                 z"
                      ></path>
                    </svg>
                  </a>
                </div>
                <!-- .nav-links -->
                <div class="nav-panel__nav-links nav-links">
                  <ul class="nav-links__list">
                    <li class="nav-links__item nav-links__item--with-submenu">
                      <a href="index.jsp"><span>Trang chủ </span></a>
                      <div class="nav-links__menu">
                        <!-- .menu -->

                        <!-- .menu / end -->
                      </div>
                    </li>
                    <li class="nav-links__item nav-links__item--with-submenu">
                      <a href="shop-grid-3-columns-sidebar.html"
                      ><span
                      >Danh mục sản phẩm
                            <svg
                                    class="nav-links__arrow"
                                    width="9px"
                                    height="6px"
                            >
                              <use
                                      xlink:href="images/sprite.svg#arrow-rounded-down-9x6"
                              ></use></svg></span
                      ></a>
                      <div class="nav-links__menu">
                        <!-- .menu -->
                        <ul class="menu menu--layout--classic">
                          <% List<Category> listC = (List<Category>) request.getSession().getAttribute("listC");
                            for (Category category : listC) { %>
                          <li>
                            <a href="category?id=<%= category.getId() %>"><%= category.getName() %></a>
                          </li>
                          <% } %>
                        </ul>
                        <!-- .menu / end -->
                      </div>
                    </li>
                    <li class="nav-links__item nav-links__item--with-submenu">
                      <a href="blog-classic.jsp"><span>Blog </span></a>
                    </li>

                    <li class="nav-links__item">
                      <a href="contact-us.jsp"><span>Liên hệ</span></a>
                    </li>
                  </ul>
                </div>
                <!-- .nav-links / end -->
                <div class="nav-panel__indicators">
                  <div class="indicator indicator--trigger--click">
                    <button type="button" class="indicator__button">
                        <span class="indicator__area"
                        ><svg
                                class="indicator__icon"
                                width="20px"
                                height="20px"
                        >
                            <use xlink:href="images/sprite.svg#search-20"></use>
                          </svg>
                          <svg
                                  class="indicator__icon indicator__icon--open"
                                  width="20px"
                                  height="20px"
                          >
                            <use
                                    xlink:href="images/sprite.svg#cross-20"
                            ></use></svg
                          ></span>
                    </button>
                    <div class="indicator__dropdown">
                      <div class="drop-search">
                        <form action="#" class="drop-search__form">
                          <input
                                  class="drop-search__input"
                                  name="search"
                                  placeholder="Tìm kiếm hơn 10,000 sản phẩm"
                                  aria-label="Site search"
                                  type="text"
                                  autocomplete="off"
                          />
                          <button
                                  class="drop-search__button drop-search__button--submit"
                                  type="submit"
                          >
                            <svg width="20px" height="20px">
                              <use
                                      xlink:href="images/sprite.svg#search-20"
                              ></use>
                            </svg>
                          </button>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="indicator">
                    <a href="wishlist.jsp" class="indicator__button"
                    ><span class="indicator__area"
                    ><svg width="20px" height="20px">
                            <use xlink:href="images/sprite.svg#heart-20"></use>
                          </svg>
                          <span class="indicator__value">0</span></span
                    ></a
                    >
                  </div>
                  <div class="indicator indicator--trigger--click">
                    <a href="cart.jsp" class="indicator__button"
                    ><span class="indicator__area"
                    ><svg width="20px" height="20px">
                            <use xlink:href="images/sprite.svg#cart-20"></use>
                          </svg>
                          <span class="indicator__value">3</span></span
                    ></a
                    >
                    <div class="indicator__dropdown">
                      <!-- .dropcart -->
                      <div class="dropcart">
                        <div class="dropcart__products-list">
                          <div class="dropcart__product">
                            <div class="dropcart__product-image">
                              <a href="product.html"
                              ><img
                                      src="https://cdn.hoasenhome.vn/catalog/product/i/n/indal1001000016-1.jpg"
                                      alt=""
                              /></a>
                            </div>
                            <div class="dropcart__product-info">
                              <div class="dropcart__product-name">
                                <a href="product.html"
                                >Gạch granite LUSTRA INDAL1001000016: 1000mmx1000mm</a
                                >
                              </div>
                              <div class="dropcart__product-meta">
                                  <span class="dropcart__product-quantity"
                                  >2</span
                                  >
                                x
                                <span class="dropcart__product-price"
                                >510.840 ₫</span
                                >
                              </div>
                            </div>
                            <button
                                    type="button"
                                    class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon"
                            >
                              <svg width="10px" height="10px">
                                <use
                                        xlink:href="images/sprite.svg#cross-10"
                                ></use>
                              </svg>
                            </button>
                          </div>
                          <div class="dropcart__product">
                            <div class="dropcart__product-image">
                              <a href="product.html"
                              ><img
                                      src="https://cdn.hoasenhome.vn/catalog/product/t/h/thep-cay-viet-my-grade-40.jpg"
                                      alt=""
                              /></a>
                            </div>
                            <div class="dropcart__product-info">
                              <div class="dropcart__product-name">
                                <a href="product.html"
                                >Thép cây VAS Grade 40</a
                                >
                              </div>
                              <div class="dropcart__product-meta">
                                  <span class="dropcart__product-quantity"
                                  >1</span
                                  >
                                x
                                <span class="dropcart__product-price"
                                >98.003 ₫</span
                                >
                              </div>
                            </div>
                            <button
                                    type="button"
                                    class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon"
                            >
                              <svg width="10px" height="10px">
                                <use
                                        xlink:href="images/sprite.svg#cross-10"
                                ></use>
                              </svg>
                            </button>
                          </div>
                          <div class="dropcart__product">
                            <div class="dropcart__product-image">
                              <a href="product.html"
                              ><img
                                      src="https://cdn.hoasenhome.vn/catalog/product/n/g/ngoi-trang-men-casa-pro-n_u-cafe.jpg"
                                      alt=""
                              /></a>
                            </div>
                            <div class="dropcart__product-info">
                              <div class="dropcart__product-name">
                                <a href="product.html"
                                >Ngói tráng men CASA PRO nâu cafe 009</a
                                >
                              </div>
                              <div class="dropcart__product-meta">
                                  <span class="dropcart__product-quantity"
                                  >100</span
                                  >
                                x
                                <span class="dropcart__product-price"
                                >24.840 ₫</span
                                >
                              </div>
                            </div>
                            <button
                                    type="button"
                                    class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon"
                            >
                              <svg width="10px" height="10px">
                                <use
                                        xlink:href="images/sprite.svg#cross-10"
                                ></use>
                              </svg>
                            </button>
                          </div>
                        </div>
                        <div class="dropcart__totals">
                          <table>
                            <tr>
                              <th>Tạm tính</th>
                              <td>3.603.683 đ</td>
                            </tr>
                            <tr>
                              <th>Phí vận chuyển</th>
                              <td>250.000đ</td>
                            </tr>

                            <tr>
                              <th>Tổng</th>
                              <td>3.853.683 đ</td>
                            </tr>
                          </table>
                        </div>
                        <div class="dropcart__buttons">
                          <a class="btn btn-secondary" href="cart.jsp"
                          >Giỏ hàng</a
                          >
                          <a class="btn btn-primary" href="checkout.jsp"
                          >Thanh toán</a
                          >
                        </div>
                      </div>
                      <!-- .dropcart / end -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- desktop site__header / end -->

    <!-- desktop site__header -->
      <!-- desktop site__header / end --><!-- site__body -->
      <div class="site__body">
        <div class="page-header">
          <div class="page-header__container container">
            <div class="page-header__breadcrumb">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item">
                    <a href="index.jsp">Trang chủ</a>
                    <svg class="breadcrumb-arrow" width="6px" height="9px">
                      <use
                        xlink:href="images/sprite.svg#arrow-rounded-right-6x9"
                      ></use>
                    </svg>
                  </li>
                  <li class="breadcrumb-item">
                    <a href="#">Sản phẩm</a>
                    <svg class="breadcrumb-arrow" width="6px" height="9px">
                      <use
                        xlink:href="images/sprite.svg#arrow-rounded-right-6x9"
                      ></use>
                    </svg>
                  </li>
                  <li class="breadcrumb-item active" aria-current="page">
                    ${detail.title}
                  </li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
        <div class="block">
          <div class="container">
            <div
              class="product product--layout--standard"
              data-layout="standard"
            >
              <div class="product__content">
                <!-- .product__gallery -->
                <div class="product__gallery">
                  <div class="product-gallery">
                    <div class="product-gallery__featured">
                      <div class="owl-carousel" id="product-image">
                        <c:forEach var="imgUrl" items="${detail.imgUrl}">
                          <a href="#" target="_blank">
                            <img src="<c:out value="${imgUrl}" />" alt=""/>
                          </a>
                        </c:forEach>
                      </div>
                    </div>
                    <div class="product-gallery__carousel">
                      <div class="owl-carousel" id="product-carousel">
                        <c:forEach var="imgUrl" items="${detail.imgUrl}">
                          <a href="#" class="product-gallery__carousel-item">
                            <img class="product-gallery__carousel-image" src="${imgUrl}" alt=""/>
                          </a>
                        </c:forEach>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- .product__gallery / end --><!-- .product__info -->
                <div class="product__info">
                  <div class="product__wishlist-compare">
                    <button
                      type="button"
                      class="btn btn-sm btn-light btn-svg-icon"
                      data-toggle="tooltip"
                      data-placement="right"
                      title="Wishlist"
                    >
                      <svg width="16px" height="16px">
                        <use xlink:href="images/sprite.svg#wishlist-16"></use>
                      </svg>
                    </button>
                    <button
                      type="button"
                      class="btn btn-sm btn-light btn-svg-icon"
                      data-toggle="tooltip"
                      data-placement="right"
                      title="Compare"
                    >
                      <svg width="16px" height="16px">
                        <use xlink:href="images/sprite.svg#compare-16"></use>
                      </svg>
                    </button>
                  </div>
                  <h1 class="product__name">
                    ${detail.title}
                  </h1>
                  <div class="product__rating">
                    <div class="product__rating-stars">
                      <div class="rating">
                        <div class="rating__body">
                          <svg
                            class="rating__star rating__star--active"
                            width="13px"
                            height="12px"
                          >
                            <g class="rating__fill">
                              <use
                                xlink:href="images/sprite.svg#star-normal"
                              ></use>
                            </g>
                            <g class="rating__stroke">
                              <use
                                xlink:href="images/sprite.svg#star-normal-stroke"
                              ></use>
                            </g>
                          </svg>
                          <div
                            class="rating__star rating__star--only-edge rating__star--active"
                          >
                            <div class="rating__fill">
                              <div class="fake-svg-icon"></div>
                            </div>
                            <div class="rating__stroke">
                              <div class="fake-svg-icon"></div>
                            </div>
                          </div>
                          <svg
                            class="rating__star rating__star--active"
                            width="13px"
                            height="12px"
                          >
                            <g class="rating__fill">
                              <use
                                xlink:href="images/sprite.svg#star-normal"
                              ></use>
                            </g>
                            <g class="rating__stroke">
                              <use
                                xlink:href="images/sprite.svg#star-normal-stroke"
                              ></use>
                            </g>
                          </svg>
                          <div
                            class="rating__star rating__star--only-edge rating__star--active"
                          >
                            <div class="rating__fill">
                              <div class="fake-svg-icon"></div>
                            </div>
                            <div class="rating__stroke">
                              <div class="fake-svg-icon"></div>
                            </div>
                          </div>
                          <svg
                            class="rating__star rating__star--active"
                            width="13px"
                            height="12px"
                          >
                            <g class="rating__fill">
                              <use
                                xlink:href="images/sprite.svg#star-normal"
                              ></use>
                            </g>
                            <g class="rating__stroke">
                              <use
                                xlink:href="images/sprite.svg#star-normal-stroke"
                              ></use>
                            </g>
                          </svg>
                          <div
                            class="rating__star rating__star--only-edge rating__star--active"
                          >
                            <div class="rating__fill">
                              <div class="fake-svg-icon"></div>
                            </div>
                            <div class="rating__stroke">
                              <div class="fake-svg-icon"></div>
                            </div>
                          </div>
                          <svg
                            class="rating__star rating__star--active"
                            width="13px"
                            height="12px"
                          >
                            <g class="rating__fill">
                              <use
                                xlink:href="images/sprite.svg#star-normal"
                              ></use>
                            </g>
                            <g class="rating__stroke">
                              <use
                                xlink:href="images/sprite.svg#star-normal-stroke"
                              ></use>
                            </g>
                          </svg>
                          <div
                            class="rating__star rating__star--only-edge rating__star--active"
                          >
                            <div class="rating__fill">
                              <div class="fake-svg-icon"></div>
                            </div>
                            <div class="rating__stroke">
                              <div class="fake-svg-icon"></div>
                            </div>
                          </div>
                          <svg
                            class="rating__star rating__star--active"
                            width="13px"
                            height="12px"
                          >
                            <g class="rating__fill">
                              <use
                                xlink:href="images/sprite.svg#star-normal"
                              ></use>
                            </g>
                            <g class="rating__stroke">
                              <use
                                xlink:href="images/sprite.svg#star-normal-stroke"
                              ></use>
                            </g>
                          </svg>
                          <div
                            class="rating__star rating__star--only-edge rating__star--active"
                          >
                            <div class="rating__fill">
                              <div class="fake-svg-icon"></div>
                            </div>
                            <div class="rating__stroke">
                              <div class="fake-svg-icon"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="product__rating-legend">
                      <a href="#">7 nhận xét</a><span>/</span
                      ><a href="#">Viết nhận xét</a>
                    </div>
                  </div>
                  <ul class="product__features">
                    <li>Speed: 750 RPM</li>
                    <li>Power Source: Cordless-Electric</li>
                    <li>Battery Cell Type: Lithium</li>
                    <li>Voltage: 20 Volts</li>
                    <li>Battery Capacity: 2 Ah</li>
                  </ul>
                  <ul class="product__meta">
                    <li class="product__meta-availability">
                      Tình trạng: <%-- Nếu quantity > 0, hiển thị "Còn hàng" --%>
                      <c:if test="${detail.quantity > 0}">
                        <span class="text-success">Còn hàng</span>
                      </c:if>

                      <%-- Nếu quantity <= 0, hiển thị "Hết hàng" --%>
                      <c:if test="${detail.quantity <= 0}">
                        <span class="text-danger">Hết hàng</span>
                      </c:if>
                    </li>
                    <li>Thương hiệu: <a href="#">Wakita</a></li>
                    <li>SKU: 83690/32</li>
                  </ul>
                </div>
                <!-- .product__info / end --><!-- .product__sidebar -->
                <div class="product__sidebar">
                  <div class="product__availability">
                    Availability: <span class="text-success">In Stock</span>
                  </div>
                  <div class="product__prices">${detail.price}đ</div>
                  <!-- .product__options -->
                  <form class="product__options">
                    <!-- <div class="form-group product__option">
                      <label class="product__option-label">Color</label>
                      <div class="input-radio-color">
                        <div class="input-radio-color__list">
                          <label
                            class="input-radio-color__item input-radio-color__item--white"
                            style="color: #fff"
                            data-toggle="tooltip"
                            title="White"
                            ><input type="radio" name="color" /> <span></span
                          ></label>
                          <label
                            class="input-radio-color__item"
                            style="color: #ffd333"
                            data-toggle="tooltip"
                            title="Yellow"
                            ><input type="radio" name="color" /> <span></span
                          ></label>
                          <label
                            class="input-radio-color__item"
                            style="color: #ff4040"
                            data-toggle="tooltip"
                            title="Red"
                            ><input type="radio" name="color" /> <span></span
                          ></label>
                          <label
                            class="input-radio-color__item input-radio-color__item--disabled"
                            style="color: #4080ff"
                            data-toggle="tooltip"
                            title="Blue"
                            ><input
                              type="radio"
                              name="color"
                              disabled="disabled" />
                            <span></span
                          ></label>
                        </div>
                      </div>
                    </div>
                    <div class="form-group product__option">
                      <label class="product__option-label">Material</label>
                      <div class="input-radio-label">
                        <div class="input-radio-label__list">
                          <label
                            ><input type="radio" name="material" />
                            <span>Metal</span></label
                          >
                          <label
                            ><input type="radio" name="material" />
                            <span>Wood</span></label
                          >
                          <label
                            ><input
                              type="radio"
                              name="material"
                              disabled="disabled"
                            />
                            <span>Plastic</span></label
                          >
                        </div>
                      </div>
                    </div> -->
                    <div class="form-group product__option">
                      <label
                        class="product__option-label"
                        for="product-quantity"
                        >Số lượng</label
                      >
                      <div class="product__actions">
                        <div class="product__actions-item">
                          <div class="input-number product__quantity">
                            <input
                              id="product-quantity"
                              class="input-number__input form-control form-control-lg"
                              type="number"
                              min="1"
                              value="1"
                            />
                            <div class="input-number__add"></div>
                            <div class="input-number__sub"></div>
                          </div>
                        </div>
                        <div
                          class="product__actions-item product__actions-item--addtocart"
                        >
                          <button class="btn btn-primary btn-lg">
                            Thêm giỏ hàng
                          </button>
                        </div>
                        <div
                          class="product__actions-item product__actions-item--wishlist"
                        >
                          <button
                            type="button"
                            class="btn btn-secondary btn-svg-icon btn-lg"
                            data-toggle="tooltip"
                            title="Wishlist"
                          >
                            <svg width="16px" height="16px">
                              <use
                                xlink:href="images/sprite.svg#wishlist-16"
                              ></use>
                            </svg>
                          </button>
                        </div>
                        <div
                          class="product__actions-item product__actions-item--compare"
                        >
                          <button
                            type="button"
                            class="btn btn-secondary btn-svg-icon btn-lg"
                            data-toggle="tooltip"
                            title="Compare"
                          >
                            <svg width="16px" height="16px">
                              <use
                                xlink:href="images/sprite.svg#compare-16"
                              ></use>
                            </svg>
                          </button>
                        </div>
                      </div>
                    </div>
                  </form>
                  <!-- .product__options / end -->
                </div>
                <!-- .product__end -->
                <div class="product__footer">
                  <div class="product__tags tags">
                    <div class="tags__list">
                      <a href="#">Ngói</a> <a href="#">Gạch men</a>
                    </div>
                  </div>
                  <div class="product__share-links share-links">
                    <ul class="share-links__list">
                      <li
                        class="share-links__item share-links__item--type--like"
                      >
                        <a href="#">Like</a>
                      </li>
                      <li
                        class="share-links__item share-links__item--type--tweet"
                      >
                        <a href="#">Tweet</a>
                      </li>
                      <li
                        class="share-links__item share-links__item--type--pin"
                      >
                        <a href="#">Pin It</a>
                      </li>
                      <li
                        class="share-links__item share-links__item--type--counter"
                      >
                        <a href="#">4K</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="product-tabs">
              <div class="product-tabs__list">
                <a
                  href="#tab-description"
                  class="product-tabs__item product-tabs__item--active"
                  >Mô tả</a
                >

                <a href="#tab-reviews" class="product-tabs__item">Đánh giá</a>
              </div>
              <div class="product-tabs__content">
                <div
                  class="product-tabs__pane product-tabs__pane--active"
                  id="tab-description"
                >
                  <div class="typography">
                    <h3>Mô tả sản phẩm</h3>
                    <p>
                      ${detail.description}
                    </p>
                  </div>
                </div>
                <div class="product-tabs__pane" id="tab-reviews">
                  <div class="reviews-view">
                    <div class="reviews-view__list">
                      <h3 class="reviews-view__header">Customer Reviews</h3>
                      <div class="reviews-list">
                        <ol class="reviews-list__content">
                          <li class="reviews-list__item">
                            <div class="review">
                              <div class="review__avatar">
                                <img src="images/avatars/avatar-1.jpg" alt="" />
                              </div>
                              <div class="review__content">
                                <div class="review__author">Samantha Smith</div>
                                <div class="review__rating">
                                  <div class="rating">
                                    <div class="rating__body">
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div class="rating__star rating__star--only-edge rating__star--active">
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="review__text">
                                  Phasellus id mattis nulla. Mauris velit nisi,
                                  imperdiet vitae sodales in, maximus ut lectus.
                                  Vivamus commodo scelerisque lacus, at
                                  porttitor dui iaculis id. Curabitur imperdiet
                                  ultrices fermentum.
                                </div>
                                <div class="review__date">27 May, 2018</div>
                              </div>
                            </div>
                          </li>
                          <li class="reviews-list__item">
                            <div class="review">
                              <div class="review__avatar">
                                <img src="images/avatars/avatar-2.jpg" alt="" />
                              </div>
                              <div class="review__content">
                                <div class="review__author">Adam Taylor</div>
                                <div class="review__rating">
                                  <div class="rating">
                                    <div class="rating__body">
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="review__text">
                                  Aenean non lorem nisl. Duis tempor
                                  sollicitudin orci, eget tincidunt ex semper
                                  sit amet. Nullam neque justo, sodales congue
                                  feugiat ac, facilisis a augue. Donec tempor
                                  sapien et fringilla facilisis. Nam maximus
                                  consectetur diam. Nulla ut ex mollis, volutpat
                                  tellus vitae, accumsan ligula.
                                </div>
                                <div class="review__date">12 April, 2018</div>
                              </div>
                            </div>
                          </li>
                          <li class="reviews-list__item">
                            <div class="review">
                              <div class="review__avatar">
                                <img src="images/avatars/avatar-3.jpg" alt="" />
                              </div>
                              <div class="review__content">
                                <div class="review__author">Helena Garcia</div>
                                <div class="review__rating">
                                  <div class="rating">
                                    <div class="rating__body">
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                      <svg
                                        class="rating__star rating__star--active"
                                        width="13px"
                                        height="12px"
                                      >
                                        <g class="rating__fill">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal"
                                          ></use>
                                        </g>
                                        <g class="rating__stroke">
                                          <use
                                            xlink:href="images/sprite.svg#star-normal-stroke"
                                          ></use>
                                        </g>
                                      </svg>
                                      <div
                                        class="rating__star rating__star--only-edge rating__star--active"
                                      >
                                        <div class="rating__fill">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                        <div class="rating__stroke">
                                          <div class="fake-svg-icon"></div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="review__text">
                                  Duis ac lectus scelerisque quam blandit
                                  egestas. Pellentesque hendrerit eros laoreet
                                  suscipit ultrices.
                                </div>
                                <div class="review__date">2 January, 2018</div>
                              </div>
                            </div>
                          </li>
                        </ol>
                        <div class="reviews-list__pagination">
                          <ul class="pagination justify-content-center">
                            <li class="page-item disabled">
                              <a
                                class="page-link page-link--with-arrow"
                                href="#"
                                aria-label="Previous"
                                ><svg
                                  class="page-link__arrow page-link__arrow--left"
                                  aria-hidden="true"
                                  width="8px"
                                  height="13px"
                                >
                                  <use
                                    xlink:href="images/sprite.svg#arrow-rounded-left-8x13"
                                  ></use></svg
                              ></a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item active">
                              <a class="page-link" href="#"
                                >2 <span class="sr-only">(current)</span></a
                              >
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                              <a
                                class="page-link page-link--with-arrow"
                                href="#"
                                aria-label="Next"
                                ><svg
                                  class="page-link__arrow page-link__arrow--right"
                                  aria-hidden="true"
                                  width="8px"
                                  height="13px"
                                >
                                  <use
                                    xlink:href="images/sprite.svg#arrow-rounded-right-8x13"
                                  ></use></svg
                              ></a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <form class="reviews-view__form">
                      <h3 class="reviews-view__header">Write A Review</h3>
                      <div class="row">
                        <div class="col-12 col-lg-9 col-xl-8">
                          <div class="form-row">
                            <div class="form-group col-md-4">
                              <label for="review-stars">Review Stars</label>
                              <select id="review-stars" class="form-control">
                                <option>5 Stars Rating</option>
                                <option>4 Stars Rating</option>
                                <option>3 Stars Rating</option>
                                <option>2 Stars Rating</option>
                                <option>1 Stars Rating</option>
                              </select>
                            </div>
                            <div class="form-group col-md-4">
                              <label for="review-author">Your Name</label>
                              <input
                                type="text"
                                class="form-control"
                                id="review-author"
                                placeholder="Your Name"
                              />
                            </div>
                            <div class="form-group col-md-4">
                              <label for="review-email">Email Address</label>
                              <input
                                type="text"
                                class="form-control"
                                id="review-email"
                                placeholder="Email Address"
                              />
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="review-text">Your Review</label>
                            <textarea
                              class="form-control"
                              id="review-text"
                              rows="6"
                            ></textarea>
                          </div>
                          <div class="form-group mb-0">
                            <button
                              type="submit"
                              class="btn btn-primary btn-lg"
                            >
                              Post Your Review
                            </button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- .block-products-carousel -->
        <div class="block block-products-carousel" data-layout="grid-5">
          <div class="container">
            <div class="block-header">
                <h3 class="block-header__title">Sản phẩm liên quan</h3>
                <div class="block-header__divider"></div>
                <div class="block-header__arrows-list">
                    <button
                            class="block-header__arrow block-header__arrow--left"
                            type="button"
                    >
                        <svg width="7px" height="11px">
                            <use
                                    xlink:href="images/sprite.svg#arrow-rounded-left-7x11"
                            ></use>
                        </svg>
                    </button>
                    <button
                            class="block-header__arrow block-header__arrow--right"
                            type="button"
                    >
                        <svg width="7px" height="11px">
                            <use
                                    xlink:href="images/sprite.svg#arrow-rounded-right-7x11"
                            ></use>
                        </svg>
                    </button>
                </div>
            </div>
              <div class="block-products-carousel__slider">
                  <div class="block-products-carousel__preloader"></div>
                  <div class="owl-carousel">
                    <c:forEach items="${listLP}" var="o">
                      <div class="block-products-carousel__column">
                          <div class="block-products-carousel__cell">
                              <div class="product-card">
                                  <button class="product-card__quickview" type="button">
                                      <svg width="16px" height="16px">
                                          <use
                                                  xlink:href="images/sprite.svg#quickview-16"
                                          ></use>
                                      </svg>
                                      <span class="fake-svg-icon"></span>
                                  </button>
                                  <div class="product-card__badges-list">
                                      <div
                                              class="product-card__badge product-card__badge--new"
                                      >
                                          New
                                      </div>
                                  </div>
                                  <div class="product-card__image">
                                      <a href="detail?pid=${o.id}&cid=${o.categoryId}"
                                      ><img
                                              src="${o.imgUrl.get(0)}"
                                              alt=""
                                      /></a>
                                  </div>
                                  <div class="product-card__info">
                                      <div class="product-card__name">
                                          <a href="detail?pid=${o.id}&cid=${o.categoryId}"
                                          >${o.title}</a
                                          >
                                      </div>
                                      <div class="product-card__rating">
                                          <div class="rating">
                                              <div class="rating__body">
                                                  <svg
                                                          class="rating__star rating__star--active"
                                                          width="13px"
                                                          height="12px"
                                                  >
                                                      <g class="rating__fill">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal"
                                                          ></use>
                                                      </g>
                                                      <g class="rating__stroke">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal-stroke"
                                                          ></use>
                                                      </g>
                                                  </svg>
                                                  <div
                                                          class="rating__star rating__star--only-edge rating__star--active"
                                                  >
                                                      <div class="rating__fill">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                      <div class="rating__stroke">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                  </div>
                                                  <svg
                                                          class="rating__star rating__star--active"
                                                          width="13px"
                                                          height="12px"
                                                  >
                                                      <g class="rating__fill">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal"
                                                          ></use>
                                                      </g>
                                                      <g class="rating__stroke">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal-stroke"
                                                          ></use>
                                                      </g>
                                                  </svg>
                                                  <div
                                                          class="rating__star rating__star--only-edge rating__star--active"
                                                  >
                                                      <div class="rating__fill">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                      <div class="rating__stroke">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                  </div>
                                                  <svg
                                                          class="rating__star rating__star--active"
                                                          width="13px"
                                                          height="12px"
                                                  >
                                                      <g class="rating__fill">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal"
                                                          ></use>
                                                      </g>
                                                      <g class="rating__stroke">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal-stroke"
                                                          ></use>
                                                      </g>
                                                  </svg>
                                                  <div
                                                          class="rating__star rating__star--only-edge rating__star--active"
                                                  >
                                                      <div class="rating__fill">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                      <div class="rating__stroke">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                  </div>
                                                  <svg
                                                          class="rating__star rating__star--active"
                                                          width="13px"
                                                          height="12px"
                                                  >
                                                      <g class="rating__fill">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal"
                                                          ></use>
                                                      </g>
                                                      <g class="rating__stroke">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal-stroke"
                                                          ></use>
                                                      </g>
                                                  </svg>
                                                  <div
                                                          class="rating__star rating__star--only-edge rating__star--active"
                                                  >
                                                      <div class="rating__fill">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                      <div class="rating__stroke">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                  </div>
                                                  <svg
                                                          class="rating__star"
                                                          width="13px"
                                                          height="12px"
                                                  >
                                                      <g class="rating__fill">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal"
                                                          ></use>
                                                      </g>
                                                      <g class="rating__stroke">
                                                          <use
                                                                  xlink:href="images/sprite.svg#star-normal-stroke"
                                                          ></use>
                                                      </g>
                                                  </svg>
                                                  <div class="rating__star rating__star--only-edge">
                                                      <div class="rating__fill">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                      <div class="rating__stroke">
                                                          <div class="fake-svg-icon"></div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="product-card__rating-legend">
                                              9 Reviews
                                          </div>
                                      </div>
                                      <ul class="product-card__features-list">
                                          <li>Speed: 750 RPM</li>
                                          <li>Power Source: Cordless-Electric</li>
                                          <li>Battery Cell Type: Lithium</li>
                                          <li>Voltage: 20 Volts</li>
                                          <li>Battery Capacity: 2 Ah</li>
                                      </ul>
                                  </div>
                                  <div class="product-card__actions">
                                      <div class="product-card__availability">
                                          Availability:
                                          <span class="text-success">In Stock</span>
                                      </div>
                                      <div class="product-card__prices">${o.price}đ</div>
                                      <div class="product-card__buttons">
                                          <button
                                                  class="btn btn-primary product-card__addtocart"
                                                  type="button"
                                          >
                                              Thêm giỏ hàng
                                          </button>
                                          <button
                                                  class="btn btn-secondary product-card__addtocart product-card__addtocart--list"
                                                  type="button"
                                          >
                                              Thêm giỏ hàng
                                          </button>
                                          <button
                                                  class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__wishlist"
                                                  type="button"
                                          >
                                              <svg width="16px" height="16px">
                                                  <use
                                                          xlink:href="images/sprite.svg#wishlist-16"
                                                  ></use>
                                              </svg>
                                              <span
                                                      class="fake-svg-icon fake-svg-icon--wishlist-16"
                                              ></span>
                                          </button>
                                          <button
                                                  class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__compare"
                                                  type="button"
                                          >
                                              <svg width="16px" height="16px">
                                                  <use
                                                          xlink:href="images/sprite.svg#compare-16"
                                                  ></use>
                                              </svg>
                                              <span
                                                      class="fake-svg-icon fake-svg-icon--compare-16"
                                              ></span>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div>
          </div>
        </div>
          <!-- .block-products-carousel / end -->
      </div>
      <!-- site__body / end --><!-- site__footer -->
      <footer class="site__footer">
        <div class="site-footer">
          <div class="container">
            <div class="site-footer__widgets">
              <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                  <div class="site-footer__widget footer-contacts">
                    <h5 class="footer-contacts__title">Liên hệ</h5>
                    <div class="footer-contacts__text">
                      Luôn đem lại cho khách hàng những sản phẩm có chất lượng
                      tốt nhất.
                    </div>
                    <ul class="footer-contacts__contacts" id="contactInfoList">
                      <!-- Dữ liệu sẽ được thêm vào đây bằng JavaScript -->
                    </ul>
                  </div>
                </div>
                <div class="col-6 col-md-3 col-lg-2">
                  <div class="site-footer__widget footer-links">
                    <h5 class="footer-links__title">Thông tin</h5>
                    <ul class="footer-links__list">
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link">Giới thiệu</a>
                      </li>
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link"
                          >Thông tin vận chuyển</a
                        >
                      </li>
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link">Chính sách</a>
                      </li>

                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link">Liên hệ</a>
                      </li>
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link">Hoàn đơn</a>
                      </li>
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link">Vị trị</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="col-6 col-md-3 col-lg-2">
                  <div class="site-footer__widget footer-links">
                    <h5 class="footer-links__title">Tài khoản</h5>
                    <ul class="footer-links__list">
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link"
                          >Lịch sử đặt hàng</a
                        >
                      </li>
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link"
                          >Sản phẩm yêu thích</a
                        >
                      </li>
                      <li class="footer-links__item">
                        <a href="#" class="footer-links__link">Bản tin</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="col-12 col-md-12 col-lg-4">
                  <div class="site-footer__widget footer-newsletter">
                    <h5 class="footer-newsletter__title">Bản tin</h5>
                    <div class="footer-newsletter__text">
                      Theo dõi chúng tôi để nhận thêm nhiều thông tin mới nhất.
                    </div>
                    <form action="#" class="footer-newsletter__form">
                      <label class="sr-only" for="footer-newsletter-address"
                        >Địa chỉ email</label
                      >
                      <input
                        type="text"
                        class="footer-newsletter__form-input form-control"
                        id="footer-newsletter-address"
                        placeholder="Địa chỉ email..."
                      />
                      <button
                        class="footer-newsletter__form-button btn btn-primary"
                      >
                        Subcribe
                      </button>
                    </form>
                    <div
                      class="footer-newsletter__text footer-newsletter__text--social"
                    >
                      Theo dõi chúng tôi trên các nền tảng xã hội
                    </div>
                    <ul class="footer-newsletter__social-links">
                      <li
                        class="footer-newsletter__social-link footer-newsletter__social-link--facebook"
                      >
                        <a
                          href="https://themeforest.net/user/kos9"
                          target="_blank"
                          ><i class="fab fa-facebook-f"></i
                        ></a>
                      </li>
                      <li
                        class="footer-newsletter__social-link footer-newsletter__social-link--twitter"
                      >
                        <a
                          href="https://themeforest.net/user/kos9"
                          target="_blank"
                          ><i class="fab fa-twitter"></i
                        ></a>
                      </li>
                      <li
                        class="footer-newsletter__social-link footer-newsletter__social-link--youtube"
                      >
                        <a
                          href="https://themeforest.net/user/kos9"
                          target="_blank"
                          ><i class="fab fa-youtube"></i
                        ></a>
                      </li>
                      <li
                        class="footer-newsletter__social-link footer-newsletter__social-link--instagram"
                      >
                        <a
                          href="https://themeforest.net/user/kos9"
                          target="_blank"
                          ><i class="fab fa-instagram"></i
                        ></a>
                      </li>
                      <li
                        class="footer-newsletter__social-link footer-newsletter__social-link--rss"
                      >
                        <a
                          href="https://themeforest.net/user/kos9"
                          target="_blank"
                          ><i class="fas fa-rss"></i
                        ></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="site-footer__bottom">
              <div class="site-footer__copyright">
                <a target="_blank" href="https://www.templateshub.net"
                  >Templates Hub</a
                >
              </div>
              <div class="site-footer__payments">
                <img src="images/payments.png" alt="" />
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- site__footer / end -->
    </div>
    <!-- site / end -->

  <script type="text/javascript">
    $(document).ready(function () {
      // Gửi yêu cầu đến servlet khi trang được tải
      $.ajax({
        type: 'GET',
        url: '/ecommerce/contact-us',
        dataType: 'json',
        success: function (data) {
          // Hiển thị thông tin liên hệ trên trang
          var contactInfoList = $('#contactInfoList');
          // Xóa mọi nội dung cũ trong ul
          contactInfoList.empty();
          // Thêm các mục thông tin liên hệ mới
          contactInfoList.append('<li><i class="footer-contacts__icon fas fa-globe-americas"></i>' + data.address + '</li>');
          contactInfoList.append('<li><i class="footer-contacts__icon far fa-envelope"></i>' + data.email + '</li>');
          contactInfoList.append('<li><i class="footer-contacts__icon fas fa-mobile-alt"></i>' + data.phone + '</li>');
          contactInfoList.append('<li>Thứ 2-6<i class="footer-contacts__icon far fa-clock"></i>' + data.workingTimeMF + '</li>');
          contactInfoList.append('<li>Thứ 7<i class="footer-contacts__icon far fa-clock"></i>' + data.workingTimeSA + '</li>');
          contactInfoList.append('<li>Thứ chủ nhật<i class="footer-contacts__icon far fa-clock"></i>' + data.workingTimeSU + '</li>');
        },
        error: function (xhr, status, error) {
          console.error('Error fetching contact info:', status, error);
        }
      });
    });
  </script>

  </body>
</html>
