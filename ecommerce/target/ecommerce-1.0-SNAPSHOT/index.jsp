<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <a href="index.html" class="mobile-links__item-link"
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
                      <a href="register.jsp" class="mobile-links__item-link"
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
      <!-- desktop site__header -->
      <jsp:include page="header.jsp"/>
      <!-- desktop site__header / end -->
      <!-- site__body -->
      <div class="site__body">
        <!-- .block-slideshow -->
        <div class="block-slideshow block-slideshow--layout--full block">
          <div class="container">
            <div class="row">
              <div class="col-12">
                <div class="block-slideshow__body">
                  <div class="owl-carousel">
                    <a class="block-slideshow__slide" href="#"
                      ><div
                        class="block-slideshow__slide-image block-slideshow__slide-image--desktop"
                        style="
                          background-image: url('images/slides/slide-1-full.jpg');
                        "
                      ></div>
                      <div
                        class="block-slideshow__slide-image block-slideshow__slide-image--mobile"
                        style="
                          background-image: url('images/slides/slide-1-mobile.jpg');
                        "
                      ></div>
                      <div class="block-slideshow__slide-content">
                        <div class="block-slideshow__slide-title">
                          Nhiều sự lựa chọn<br />về sản phẩm ống nước
                        </div>
                        <div class="block-slideshow__slide-text">
                          Luôn đem lại những sản phẩm<br />tốt nhất dành cho
                          khách hàng.
                        </div>
                        <div class="block-slideshow__slide-button">
                          <span class="btn btn-primary btn-lg"
                            >Đến cửa hàng</span
                          >
                        </div>
                      </div></a
                    ><a class="block-slideshow__slide" href="#"
                      ><div
                        class="block-slideshow__slide-image block-slideshow__slide-image--desktop"
                        style="
                          background-image: url('images/slides/slide-3-full.jpg');
                        "
                      ></div>
                      <div
                        class="block-slideshow__slide-image block-slideshow__slide-image--mobile"
                        style="
                          background-image: url('images/slides/slide-3-mobile.jpg');
                        "
                      ></div>
                      <div class="block-slideshow__slide-content">
                        <div class="block-slideshow__slide-title">
                          Vật liệu xây dựng<br />hàng đầu
                        </div>
                        <div class="block-slideshow__slide-text">
                          Luôn đem lại những sản phẩm<br />tốt nhất dành cho
                          khách hàng.
                        </div>
                        <div class="block-slideshow__slide-button">
                          <span class="btn btn-primary btn-lg"
                            >Đến cửa hàng</span
                          >
                        </div>
                      </div></a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- .block-slideshow / end --><!-- .block-features -->
        <div class="block block-features block-features--layout--boxed">
          <div class="container">
            <div class="block-features__list">
              <div class="block-features__item">
                <div class="block-features__icon">
                  <svg width="48px" height="48px">
                    <use
                      xlink:href="images/sprite.svg#fi-free-delivery-48"
                    ></use>
                  </svg>
                </div>
                <div class="block-features__content">
                  <div class="block-features__title">Miễn phí vận chuyển</div>
                  <div class="block-features__subtitle">Đơn hàng từ 1tr</div>
                </div>
              </div>
              <div class="block-features__divider"></div>
              <div class="block-features__item">
                <div class="block-features__icon">
                  <svg width="48px" height="48px">
                    <use xlink:href="images/sprite.svg#fi-24-hours-48"></use>
                  </svg>
                </div>
                <div class="block-features__content">
                  <div class="block-features__title">Hỗ trợ 24/7</div>
                  <div class="block-features__subtitle">
                    Liên hệ qua số điện thoại
                  </div>
                </div>
              </div>
              <div class="block-features__divider"></div>
              <div class="block-features__item">
                <div class="block-features__icon">
                  <svg width="48px" height="48px">
                    <use
                      xlink:href="images/sprite.svg#fi-payment-security-48"
                    ></use>
                  </svg>
                </div>
                <div class="block-features__content">
                  <div class="block-features__title">100% an toàn</div>
                  <div class="block-features__subtitle">Thanh toán an toàn</div>
                </div>
              </div>
              <div class="block-features__divider"></div>
              <div class="block-features__item">
                <div class="block-features__icon">
                  <svg width="48px" height="48px">
                    <use xlink:href="images/sprite.svg#fi-tag-48"></use>
                  </svg>
                </div>
                <div class="block-features__content">
                  <div class="block-features__title">Ưu đãi tốt</div>
                  <div class="block-features__subtitle">
                    Giảm giá lên tới 90%
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- .block-features / end --><!-- .block-products-carousel -->
        <div class="block block-products-carousel" data-layout="grid-5">
          <div class="container">
            <div class="block-header">
              <h3 class="block-header__title">Sản Phẩm Nổi Bật</h3>
              <div class="block-header__divider"></div>
              <ul class="block-header__groups-list">
                <li>
                  <button
                    type="button"
                    class="block-header__group block-header__group--active"
                  >
                    Tất cả
                  </button>
                </li>
                <li>
                  <button type="button" class="block-header__group">
                    Gạch ngói
                  </button>
                </li>
                <li>
                  <button type="button" class="block-header__group">
                    Bồn nước
                  </button>
                </li>
                <li>
                  <button type="button" class="block-header__group">
                    Vật liệu thô
                  </button>
                </li>
              </ul>
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
                <div class="block-products-carousel__column">
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                          class="product-card__badge product-card__badge--new"
                        >
                          New
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                          ><img
                            src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0227360ngoi-lop-sjvc-xd-11-jpeg.jpg?v=1595666883430"
                            alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                            >Ngói màu Sao Việt Nhật SJVC XD-11</a
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
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">12.500đ</div>
                        <div class="product-card__buttons">
                          <button
                            class="btn btn-primary product-card__addtocart"
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
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                          class="product-card__badge product-card__badge--hot"
                        >
                          Hot
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                          ><img
                            src="https://bizweb.dktcdn.net/thumb/medium/100/387/417/products/ngoi-trang-men-mikado-r15-xanh-reu.jpg?v=1601979547277"
                            alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                            >Ngói tráng men Mikado R15 màu xanh rêu</a
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
                          <div class="product-card__rating-legend">
                            11 Reviews
                          </div>
                        </div>
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">15.200đ</div>
                        <div class="product-card__buttons">
                          <button
                            class="btn btn-primary product-card__addtocart"
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

                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="block-products-carousel__column">
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--new"
                        >
                          New
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0227360ngoi-lop-sjvc-xd-11-jpeg.jpg?v=1595666883430"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói màu Sao Việt Nhật SJVC XD-11</a
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
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">12.500đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--hot"
                        >
                          Hot
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/medium/100/387/417/products/ngoi-trang-men-mikado-r15-xanh-reu.jpg?v=1601979547277"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói tráng men Mikado R15 màu xanh rêu</a
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
                          <div class="product-card__rating-legend">
                            11 Reviews
                          </div>
                        </div>
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">15.200đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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

                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="block-products-carousel__column">
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--new"
                        >
                          New
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0227360ngoi-lop-sjvc-xd-11-jpeg.jpg?v=1595666883430"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói màu Sao Việt Nhật SJVC XD-11</a
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
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">12.500đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--hot"
                        >
                          Hot
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/medium/100/387/417/products/ngoi-trang-men-mikado-r15-xanh-reu.jpg?v=1601979547277"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói tráng men Mikado R15 màu xanh rêu</a
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
                          <div class="product-card__rating-legend">
                            11 Reviews
                          </div>
                        </div>
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">15.200đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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

                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="block-products-carousel__column">
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--new"
                        >
                          New
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0227360ngoi-lop-sjvc-xd-11-jpeg.jpg?v=1595666883430"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói màu Sao Việt Nhật SJVC XD-11</a
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
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">12.500đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--hot"
                        >
                          Hot
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/medium/100/387/417/products/ngoi-trang-men-mikado-r15-xanh-reu.jpg?v=1601979547277"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói tráng men Mikado R15 màu xanh rêu</a
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
                          <div class="product-card__rating-legend">
                            11 Reviews
                          </div>
                        </div>
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">15.200đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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

                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="block-products-carousel__column">
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--new"
                        >
                          New
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0227360ngoi-lop-sjvc-xd-11-jpeg.jpg?v=1595666883430"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói màu Sao Việt Nhật SJVC XD-11</a
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
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">12.500đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--hot"
                        >
                          Hot
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/medium/100/387/417/products/ngoi-trang-men-mikado-r15-xanh-reu.jpg?v=1601979547277"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói tráng men Mikado R15 màu xanh rêu</a
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
                          <div class="product-card__rating-legend">
                            11 Reviews
                          </div>
                        </div>
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">15.200đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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

                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="block-products-carousel__column">
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--new"
                        >
                          New
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0227360ngoi-lop-sjvc-xd-11-jpeg.jpg?v=1595666883430"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói màu Sao Việt Nhật SJVC XD-11</a
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
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">12.500đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="block-products-carousel__cell">
                    <div class="product-card">
                      <div class="product-card__badges-list">
                        <div
                                class="product-card__badge product-card__badge--hot"
                        >
                          Hot
                        </div>
                      </div>
                      <div class="product-card__image">
                        <a href="product.jsp"
                        ><img
                                src="https://bizweb.dktcdn.net/thumb/medium/100/387/417/products/ngoi-trang-men-mikado-r15-xanh-reu.jpg?v=1601979547277"
                                alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="product.jsp"
                          >Ngói tráng men Mikado R15 màu xanh rêu</a
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
                          <div class="product-card__rating-legend">
                            11 Reviews
                          </div>
                        </div>
                      </div>
                      <div class="product-card__actions">
                        <div class="product-card__prices">15.200đ</div>
                        <div class="product-card__buttons">
                          <button
                                  class="btn btn-primary product-card__addtocart"
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

                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
        <!-- .block-products-carousel / end --><!-- .block-banner -->
        <div class="block block-banner">
          <div class="container">
            <a href="#" class="block-banner__body"
              ><div
                class="block-banner__image block-banner__image--desktop"
                style="background-image: url('https://png.pngtree.com/thumb_back/fw800/back_pic/05/15/17/2459aab47adaad7.jpg')"
              ></div>
              <div
                class="block-banner__image block-banner__image--mobile"
                style="
                  background-image: url('https://png.pngtree.com/thumb_back/fw800/back_pic/05/15/17/2459aab47adaad7.jpg');
                "
              ></div>
              <div class="block-banner__title">
                Hàng Trăm<br class="block-banner__mobile-br" /> Vật Liệu Xây Dựng
              </div>
              <div class="block-banner__text">
                Xi măng, Gạch, Ngói, Gạch men, Đá dăm, Cát...
              </div>
              <div class="block-banner__button">
                <span class="btn btn-sm btn-primary">Mua ngay</span>
              </div></a>
          </div>
        </div>
        <!-- .block-banner / end --><!-- .block-products -->
        <div class="block block-products block-products--layout--large-last">
          <div class="container">
            <div class="block-header">
              <h3 class="block-header__title">Bán chạy nhất</h3>
              <div class="block-header__divider"></div>
            </div>
            <div class="block-products__body">
              <div class="block-products__list">
                <div class="block-products__list-item">
                  <div class="product-card">
                    <div class="product-card__badges-list">
                      <div class="product-card__badge product-card__badge--hot">
                        Hot
                      </div>
                    </div>
                    <div class="product-card__image">
                      <a href="product.jsp"
                        ><img
                          src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0636500xi-mang-trang-scg-thai-lan-pcw-50-jpeg.jpg?v=1595666985817"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="product.jsp"
                          >Xi măng trắng SCG Thái Lan PCW50</a
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
                        <div class="product-card__rating-legend">
                          11 Reviews
                        </div>
                      </div>
                    </div>
                    <div class="product-card__actions">
                      <div class="product-card__prices">265.000đ</div>
                      <div class="product-card__buttons">
                        <button
                          class="btn btn-primary product-card__addtocart"
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
                      </div>
                    </div>
                  </div>
                </div>
                <div class="block-products__list-item">
                  <div class="product-card">
                    <div class="product-card__image">
                      <a href="product.jsp"
                        ><img
                          src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/2004305xi-mang-song-gianh-pcb40-jpeg.jpg?v=1595666439197"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="product.jsp">Xi măng Sông Gianh PCB40 </a>
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
                        <div class="product-card__rating-legend">9 Reviews</div>
                      </div>
                    </div>
                    <div class="product-card__actions">
                      <div class="product-card__prices">250.00đ</div>
                      <div class="product-card__buttons">
                        <button
                          class="btn btn-primary product-card__addtocart"
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
                      </div>
                    </div>
                  </div>
                </div>
                <div class="block-products__list-item">
                  <div class="product-card">
                    <div class="product-card__badges-list">
                      <div
                        class="product-card__badge product-card__badge--sale"
                      >
                        Sale
                      </div>
                    </div>
                    <div class="product-card__image">
                      <a href="product.jsp"
                        ><img
                          src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/2547397bon-nuoc-inox-tan-a-6000l-jpeg.jpg?v=1595666934033"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="product.jsp"
                          >Bồn nước inox Tân Á Đại Thành 6000L
                        </a>
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
                        <div class="product-card__rating-legend">7 Reviews</div>
                      </div>
                    </div>
                    <div class="product-card__actions">
                      <div class="product-card__availability">
                        Availability: <span class="text-success">In Stock</span>
                      </div>
                      <div class="product-card__prices">
                        <span class="product-card__new-price">2.100.000đ</span>
                        <span class="product-card__old-price">2.500.000đ</span>
                      </div>
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
                          Add To Cart
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
                      </div>
                    </div>
                  </div>
                </div>
                <div class="block-products__list-item">
                  <div class="product-card">
                    <div class="product-card__badges-list">
                      <div class="product-card__badge product-card__badge--hot">
                        Hot
                      </div>
                    </div>
                    <div class="product-card__image">
                      <a href="product.jsp"
                        ><img
                          src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/0636500xi-mang-trang-scg-thai-lan-pcw-50-jpeg.jpg?v=1595666985817"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="product.jsp"
                          >Xi măng trắng SCG Thái Lan PCW50</a
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
                        <div class="product-card__rating-legend">
                          11 Reviews
                        </div>
                      </div>
                    </div>
                    <div class="product-card__actions">
                      <div class="product-card__prices">265.000đ</div>
                      <div class="product-card__buttons">
                        <button
                          class="btn btn-primary product-card__addtocart"
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
                      </div>
                    </div>
                  </div>
                </div>
                <div class="block-products__list-item">
                  <div class="product-card">
                    <div class="product-card__image">
                      <a href="product.jsp"
                        ><img
                          src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/2004305xi-mang-song-gianh-pcb40-jpeg.jpg?v=1595666439197"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="product.jsp">Xi măng Sông Gianh PCB40 </a>
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
                        <div class="product-card__rating-legend">9 Reviews</div>
                      </div>
                    </div>
                    <div class="product-card__actions">
                      <div class="product-card__prices">250.00đ</div>
                      <div class="product-card__buttons">
                        <button
                          class="btn btn-primary product-card__addtocart"
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
                      </div>
                    </div>
                  </div>
                </div>
                <div class="block-products__list-item">
                  <div class="product-card">
                    <div class="product-card__badges-list">
                      <div
                        class="product-card__badge product-card__badge--sale"
                      >
                        Sale
                      </div>
                    </div>
                    <div class="product-card__image">
                      <a href="product.jsp"
                        ><img
                          src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/2547397bon-nuoc-inox-tan-a-6000l-jpeg.jpg?v=1595666934033"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="product.jsp"
                          >Bồn nước inox Tân Á Đại Thành 6000L
                        </a>
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
                        <div class="product-card__rating-legend">7 Reviews</div>
                      </div>
                    </div>
                    <div class="product-card__actions">
                      <div class="product-card__prices">
                        <span class="product-card__new-price">2.100.000đ</span>
                        <span class="product-card__old-price">2.500.000đ</span>
                      </div>
                      <div class="product-card__buttons">
                        <button
                          class="btn btn-primary product-card__addtocart"
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
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="block-products__featured">
                <div class="block-products__featured-item">
                  <div class="product-card">
                    <div class="product-card__badges-list">
                      <div class="product-card__badge product-card__badge--new">
                        New
                      </div>
                    </div>
                    <div class="product-card__image">
                      <a href="product.jsp"
                        ><img
                          src="https://bizweb.dktcdn.net/thumb/1024x1024/100/387/417/products/3149542binh-nuoc-nong-rossi-saphir-22l-ngang-jpeg.jpg?v=1595667013713"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="product.jsp"
                          >Bình nước nóng Rossi Saphir 22L ngang
                        </a>
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
                        <div class="product-card__rating-legend">9 Reviews</div>
                      </div>
                    </div>
                    <div class="product-card__actions">
                      <div class="product-card__prices">2.200.000đ</div>
                      <div class="product-card__buttons">
                        <button
                          class="btn btn-primary product-card__addtocart"
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
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- .block-products / end -->
        <!-- .block-posts -->
        <div
          class="block block-posts block-posts--layout--grid-nl"
          data-layout="grid-nl"
        >
          <div class="container">
            <div class="block-header">
              <h3 class="block-header__title">Bài viết mới nhất</h3>
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
            <div class="block-posts__slider">
              <div class="owl-carousel">
                <div class="post-card">
                  <div class="post-card__image">
                    <a href="#"><img src="https://www.vn.weber/files/vn/pictures/2021-12/gach-men-lat-nen-nha-dep-22_0.jpg" alt="Gạch lát sàn" /></a>
                  </div>
                  <div class="post-card__info">
                    <div class="post-card__category">
                      <a href="#">Vật Liệu Xây Dựng</a>
                    </div>
                    <div class="post-card__name">
                      <a href="#">Cách Chọn Gạch Lát Sàn Phù Hợp Cho Căn Nhà Mới</a>
                    </div>
                    <div class="post-card__date">Ngày 15 Tháng 9, 2023</div>
                    <div class="post-card__content">
                      Một căn nhà mới cần sự chọn lựa cẩn thận về loại gạch lát sàn. Bài viết này sẽ hướng dẫn bạn cách chọn gạch phù hợp với phong cách và nhu cầu sử dụng của bạn.
                    </div>
                    <div class="post-card__read-more">
                      <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                    </div>
                  </div>
                </div>
                <div class="post-card">
                  <div class="post-card__image">
                    <a href="#"><img src="https://viethanconcrete.com/wp-content/uploads/2018/12/FILE-20170923-0949H7ENCJTVTM6B.jpg" alt="Bê tông trong xây dựng" /></a>
                  </div>
                  <div class="post-card__info">
                    <div class="post-card__category">
                      <a href="#">Vật Liệu Xây Dựng</a>
                    </div>
                    <div class="post-card__name">
                      <a href="#">Ưu Điểm của Sử Dụng Bê Tông Trong Xây Dựng</a>
                    </div>
                    <div class="post-card__date">Ngày 28 Tháng 7, 2023</div>
                    <div class="post-card__content">
                      Bài viết này sẽ phân tích các ưu điểm của việc sử dụng bê tông trong xây dựng, từ độ bền đến tính năng chống cháy và cách nó giúp tiết kiệm năng lượng.
                    </div>
                    <div class="post-card__read-more">
                      <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                    </div>
                  </div>
                </div>
                <div class="post-card">
                  <div class="post-card__image">
                    <a href="#"><img src="https://bizweb.dktcdn.net/100/183/149/files/ximang-vatlieuxanh.jpg?v=1622172800705" alt="Vật liệu xanh" /></a>
                  </div>
                  <div class="post-card__info">
                    <div class="post-card__category">
                      <a href="#">Vật Liệu Xây Dựng</a>
                    </div>
                    <div class="post-card__name">
                      <a href="#">Lợi Ích của Sử Dụng Vật Liệu Xanh trong Xây Dựng</a>
                    </div>
                    <div class="post-card__date">Ngày 5 Tháng 11, 2023</div>
                    <div class="post-card__content">
                      Bài viết này tập trung vào các vật liệu xanh và cách chúng có thể giúp giảm thiểu tác động của xây dựng đối với môi trường.
                    </div>
                    <div class="post-card__read-more">
                      <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                    </div>
                  </div>
                </div>
                <div class="post-card">
                  <div class="post-card__image">
                    <a href="#"><img src="https://www.goxethanh.vn/files/2019/09/go-thong-xe-viet-sht-ha-no.jpg" alt="Bảo quản gỗ" /></a>
                  </div>
                  <div class="post-card__info">
                    <div class="post-card__category">
                      <a href="#">Vật Liệu Xây Dựng</a>
                    </div>
                    <div class="post-card__name">
                      <a href="#">Cách Bảo Quản Gỗ trong Xây Dựng</a>
                    </div>
                    <div class="post-card__date">Ngày 12 Tháng 6, 2023</div>
                    <div class= "post-card__content">
                    Bài viết này giới thiệu các phương pháp bảo quản gỗ trong xây dựng để đảm bảo tính bền vững và chất lượng của công trình.
                  </div>
                  <div class="post-card__read-more">
                    <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                  </div>
                </div>
              </div>
                <div class="post-card">
                  <div class="post-card__image">
                    <a href="#"><img src="https://llumar.com.vn/wp-content/uploads/2023/03/nha-kinh-cuong-luc-1.jpg" alt="Kính cường lực" /></a>
                  </div>
                  <div class="post-card__info">
                    <div class="post-card__category">
                      <a href="#">Vật Liệu Xây Dựng</a>
                    </div>
                    <div class="post-card__name">
                      <a href="#">Sử Dụng Kính Cường Lực Trong Xây Dựng Nhà Kính</a>
                    </div>
                    <div class="post-card__date">Ngày 20 Tháng 4, 2023</div>
                    <div class="post-card__content">
                      Bài viết này nói về ứng dụng của kính cường lực trong việc xây dựng nhà kính và lợi ích của nó trong bảo vệ cây trồng.
                    </div>
                    <div class="post-card__read-more">
                      <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                    </div>
                  </div>
                </div>
                <div class="post-card">
                  <div class="post-card__image">
                    <a href="#"><img src="https://topmatstore.vn/upload_images/images/2021/03/13/v%E1%BA%ADt%20li%E1%BB%87u%20c%C3%A1ch%20%C3%A2m%20t%E1%BB%91t%20nh%E1%BA%A5t.png" alt="Vật liệu cách âm" /></a>
                  </div>
                  <div class="post-card__info">
                    <div class="post-card__category">
                      <a href="#">Vật Liệu Xây Dựng</a>
                    </div>
                    <div class="post-card__name">
                      <a href="#">Tính Năng Của Vật Liệu Cách Âm Trong Xây Dựng</a>
                    </div>
                    <div class="post-card__date">Ngày 8 Tháng 2, 2023</div>
                    <div class="post-card__content">
                      Bài viết này giới thiệu các tính năng quan trọng của vật liệu cách âm và cách chúng giúp cải thiện âm thanh trong các công trình xây dựng.
                    </div>
                    <div class="post-card__read-more">
                      <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
        <!-- .block-posts / end -->
      </div>
      <!-- site__body / end -->

      <!-- site__footer -->
      <jsp:include page="footer.jsp"/>
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
