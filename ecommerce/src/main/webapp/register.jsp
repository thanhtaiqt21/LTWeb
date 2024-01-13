<%@ page import="com.example.ecommerce.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
      referrerpolicy="no-referrer"
    ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
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
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
    <style type="text/css">
      label.error {
        display: inline-block;
        color:red;
        width: 200px;
      }
    </style>
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
  <!-- quickview-modal / end --><!-- mobilemenu -->
  <div class="mobilemenu">
    <div class="mobilemenu__backdrop"></div>
    <div class="mobilemenu__body">
      <div class="mobilemenu__header">
        <div class="mobilemenu__title">Menu</div>
        <button type="button" class="mobilemenu__close">
          <svg width="20px" height="20px">
            <use xlink:href="images/sprite.svg#cross-20"></use>
          </svg>
        </button>
      </div>
      <div class="mobilemenu__content">
        <ul
                class="mobile-links mobile-links--level--0"
                data-collapse
                data-collapse-opened-class="mobile-links__item--open"
        >
          <li class="mobile-links__item" data-collapse-item>
            <div class="mobile-links__item-title">
              <a href="index.jsp" class="mobile-links__item-link"
              >Trang Chủ</a
              >
            </div>
          </li>
          <li class="mobile-links__item" data-collapse-item>
            <div class="mobile-links__item-title">
              <a
                      href="list-product.jsp"
                      class="mobile-links__item-link"
              >Danh Mục Sản Phẩm</a
              >
              <button
                      class="mobile-links__item-toggle"
                      type="button"
                      data-collapse-trigger
              >
                <svg
                        class="mobile-links__item-arrow"
                        width="12px"
                        height="7px"
                >
                  <use
                          xlink:href="images/sprite.svg#arrow-rounded-down-12x7"
                  ></use>
                </svg>
              </button>
            </div>
            <div class="mobile-links__item-sub-links" data-collapse-content>
              <ul class="mobile-links mobile-links--level--1">
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link"
                    >Gạch Block Xi Măng</a
                    >
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link"
                    >Gạch Trang Trí Cao Cấp</a
                    >
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link">Gạch Men</a>
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link"
                    >Thiết Bị Ngành Nước</a
                    >
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link"
                    >Đá Tự Nhiên</a
                    >
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link"
                    >Vật Liệu Thô
                    </a>
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link"
                    >Các Loại VLXD Khác
                    </a>
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link"
                    >Ngói Lợp Nhà
                    </a>
                  </div>
                </li>
              </ul>
            </div>
          </li>
          <li class="mobile-links__item" data-collapse-item>
            <div class="mobile-links__item-title">
              <a
                      href="list-product.jsp"
                      class="mobile-links__item-link"
              >Tài Khoản</a
              >
              <button
                      class="mobile-links__item-toggle"
                      type="button"
                      data-collapse-trigger
              >
                <svg
                        class="mobile-links__item-arrow"
                        width="12px"
                        height="7px"
                >
                  <use
                          xlink:href="images/sprite.svg#arrow-rounded-down-12x7"
                  ></use>
                </svg>
              </button>
            </div>
            <div class="mobile-links__item-sub-links" data-collapse-content>
              <ul class="mobile-links mobile-links--level--1">
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a
                            href="login.jsp"
                            class="mobile-links__item-link"
                    >Đăng Nhập</a
                    >
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="account.html" class="mobile-links__item-link"
                    >Đăng Kí</a
                    >
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="track-order.html" class="mobile-links__item-link"
                    >Đơn Hàng</a
                    >
                  </div>
                </li>
              </ul>
            </div>
          </li>
          <li class="mobile-links__item" data-collapse-item>
            <div class="mobile-links__item-title">
              <a href="blog-classic.jsp" class="mobile-links__item-link"
              >Blog</a
              >
            </div>
          </li>
          <li class="mobile-links__item" data-collapse-item>
            <div class="mobile-links__item-title">
              <a href="contact-us.jsp" class="mobile-links__item-link"
              >Liên Hệ</a
              >
            </div>
          </li>

          <li class="mobile-links__item" data-collapse-item>
            <div class="mobile-links__item-title">
              <a data-collapse-trigger class="mobile-links__item-link"
              >Language</a
              >
              <button
                      class="mobile-links__item-toggle"
                      type="button"
                      data-collapse-trigger
              >
                <svg
                        class="mobile-links__item-arrow"
                        width="12px"
                        height="7px"
                >
                  <use
                          xlink:href="images/sprite.svg#arrow-rounded-down-12x7"
                  ></use>
                </svg>
              </button>
            </div>
            <div class="mobile-links__item-sub-links" data-collapse-content>
              <ul class="mobile-links mobile-links--level--1">
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link">English</a>
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link">French</a>
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link">German</a>
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link">Russian</a>
                  </div>
                </li>
                <li class="mobile-links__item" data-collapse-item>
                  <div class="mobile-links__item-title">
                    <a href="#" class="mobile-links__item-link">Italian</a>
                  </div>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
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
                      <li><a href="account.html">Đăng Kí</a></li>
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
                              <a href="product.jsp"
                              ><img
                                      src="https://cdn.hoasenhome.vn/catalog/product/i/n/indal1001000016-1.jpg"
                                      alt=""
                              /></a>
                            </div>
                            <div class="dropcart__product-info">
                              <div class="dropcart__product-name">
                                <a href="product.jsp"
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
                              <a href="product.jsp"
                              ><img
                                      src="https://cdn.hoasenhome.vn/catalog/product/t/h/thep-cay-viet-my-grade-40.jpg"
                                      alt=""
                              /></a>
                            </div>
                            <div class="dropcart__product-info">
                              <div class="dropcart__product-name">
                                <a href="product.jsp"
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
                              <a href="product.jsp"
                              ><img
                                      src="https://cdn.hoasenhome.vn/catalog/product/n/g/ngoi-trang-men-casa-pro-n_u-cafe.jpg"
                                      alt=""
                              /></a>
                            </div>
                            <div class="dropcart__product-info">
                              <div class="dropcart__product-name">
                                <a href="product.jsp"
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

    <!-- site__body -->
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

                  <li class="breadcrumb-item active" aria-current="page">
                    Đăng kí
                  </li>
                </ol>
              </nav>
            </div>
            <div class="page-header__title"><h1>Tài Khoản</h1></div>
          </div>
        </div>
        <div class="block">
          <div class="container">
            <div
              class="row"
              style="justify-content: center; align-items: center"
            >
              <div class="col-md-6 d-flex mt-4 mt-md-0">
                <div class="card flex-grow-1 mb-0">
                  <div class="card-body">
                    <h3 class="card-title">Đăng Kí</h3>
                    <form action="/ecommerce/doRegister" method="post" id="formRegister">
                      <fieldset>
                        <%
                          if (error != null){
                        %>
                        <div class="alert alert-danger" role="alert">
                          <%= error %>
                        </div>
                        <%
                          }
                        %>
                      <div class="form-group">
                        <label>Họ và Tên</label>
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Nhập họ tên"
                          name="fullname"

                        />
                      </div>
                      <div class="form-group">
                        <label>Tên tài khoản</label>
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Tên tài khoản"
                          name="username"

                        />
                      </div>

                        <div class="form-group">
                          <label>Mật Khẩu</label>
                          <input
                            type="password"
                            class="form-control"
                            placeholder="Nhập Mật Khẩu"
                            name="password"

                          />
                        </div>

                        <div class="form-group">
                          <label>Nhập Lại Mật Khẩu</label>
                          <input
                            type="password"
                            class="form-control"
                            placeholder="Nhập Lại Mật Khẩu"
                            name="confirmPassword"
                            id="password"

                          />
                        </div>
                        <div class="form-group">
                          <label>Email</label>
                          <input
                            type="email"
                            class="form-control"
                            placeholder="Nhập email"
                            name="email"

                          />
                        </div>
                        <div class="form-group">
                          <label>Số điện thoại</label>
                          <input
                            type="text"
                            class="form-control"
                            placeholder="Nhập số điện thoại"
                            name="phone"

                          />
                        </div>
                      <button type="submit" class="btn btn-primary mt-4">
                        Đăng kí Ngay
                      </button>
                      </fieldset>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- site__body / end -->
      <!-- site__footer -->
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
      $("#formRegister").validate({
        rules:{
          username: {
            required:true,
            minlength:6
          },
          password: {
            required:true,
            minlength:8
          },
          confirmPassword: {
            required:true,
            equalTo: "#password",
            minlength:8
          },
          fullname: "required",
          email: {
            required: true,
            email: true
          },
          phone: {
            required:true,
            number:true
          }
        },
        messages: {
          fullname: "Vui lòng nhập họ tên",
          username: {
            required: "Vui lòng nhập tên đăng nhập",
            minlength: "Tên đăng nhập tối thiểu 6 kí tự"
          },
          password: {
            required: "Vui lòng nhập mật khẩu",
            minlength: "Mật khẩu tối thiểu 8 kí tự"
          },
          confirmPassword: {
            required: "Vui lòng nhập mật khẩu",
            minlength: "Mật khẩu tối thiểu 8 kí tự",
            equalTo: "Mật khẩu không trùng khớp"
          },
          email: {
            required: "Vui lòng nhập email",
            email: "Vui lòng nhập đúng định dạng email"
          },
          phone: {
            required: "Vui lòng nhập số điện thoại",
            number: "Vui lòng nhập đúng định dạng"
          }
        }
      });
    });
  </script>

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
<%--  <script>--%>
<%--    const host = "https://provinces.open-api.vn/api/";--%>
<%--    var callAPI = (api) => {--%>
<%--      return axios.get(api).then((response) => {--%>
<%--        renderData(response.data, "city");--%>
<%--      });--%>
<%--    };--%>
<%--    callAPI("https://provinces.open-api.vn/api/?depth=1");--%>
<%--    var callApiDistrict = (api) => {--%>
<%--      return axios.get(api).then((response) => {--%>
<%--        renderData(response.data.districts, "district");--%>
<%--      });--%>
<%--    };--%>
<%--    var callApiWard = (api) => {--%>
<%--      return axios.get(api).then((response) => {--%>
<%--        renderData(response.data.wards, "ward");--%>
<%--      });--%>
<%--    };--%>

<%--    var renderData = (array, select) => {--%>
<%--      let row = ' <option disable value="">Chọn</option>';--%>
<%--      array.forEach((element) => {--%>
<%--        row += `<option data-id="${element.code}" value="${element.name}">${element.name}</option>`;--%>
<%--      });--%>
<%--      document.querySelector("#" + select).innerHTML = row;--%>
<%--    };--%>

<%--    $("#city").change(() => {--%>
<%--      callApiDistrict(--%>
<%--        host + "p/" + $("#city").find(":selected").data("id") + "?depth=2"--%>
<%--      );--%>
<%--      printResult();--%>
<%--    });--%>
<%--    $("#district").change(() => {--%>
<%--      callApiWard(--%>
<%--        host + "d/" + $("#district").find(":selected").data("id") + "?depth=2"--%>
<%--      );--%>
<%--      printResult();--%>
<%--    });--%>
<%--    $("#ward").change(() => {--%>
<%--      printResult();--%>
<%--    });--%>

<%--    var printResult = () => {--%>
<%--      if (--%>
<%--        $("#district").find(":selected").data("id") != "" &&--%>
<%--        $("#city").find(":selected").data("id") != "" &&--%>
<%--        $("#ward").find(":selected").data("id") != ""--%>
<%--      ) {--%>
<%--        let result =--%>
<%--          $("#city option:selected").text() +--%>
<%--          " | " +--%>
<%--          $("#district option:selected").text() +--%>
<%--          " | " +--%>
<%--          $("#ward option:selected").text();--%>
<%--        $("#result").text(result);--%>
<%--      }--%>
<%--    };--%>
<%--  </script>--%>


</html>
