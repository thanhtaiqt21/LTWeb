<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.ecommerce.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  String error = (String) request.getAttribute("error");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                  <c:forEach items="${imgSlides}" var="item">
                    <a class="block-slideshow__slide" href="#"
                      ><div
                        class="block-slideshow__slide-image block-slideshow__slide-image--desktop"
                        style="
                          background-image: url(${item.imgUrl});
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
                      </div>
                    </a>
                  </c:forEach>
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
              <h3 class="block-header__title">Sản Phẩm Mới nhất</h3>
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
                <c:forEach items="${newProducts}" var="product">
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
                        <a href="detail?pid=${product.id}&cid=${product.categoryId}"
                          ><img
                            src="${product.imgUrl.get(0)}"
                            alt=""
                        /></a>
                      </div>
                      <div class="product-card__info">
                        <div class="product-card__name">
                          <a href="detail?pid=${product.id}&cid=${pproduct.categoryId}"
                            >${product.title}</a
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
                        <c:choose>
                          <c:when test="${product.discount > 0}">
                            <div class="product-card__prices">
                            <span class="product-card__new-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${product.price - product.price * product.discount}" type="currency"/>
                            </span>
                              <span class="product-card__old-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${product.price}" type="currency"/>
                            </span>
                            </div>
                          </c:when>
                          <c:otherwise>
                            <div class="product-card__prices">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${product.price}" type="currency"/>
                            </div>
                          </c:otherwise>
                        </c:choose>
                        <div class="product-card__buttons">
                          <form action="addToCart" method="post">
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <button class="btn btn-primary product-card__addtocart" type="submit">
                              Thêm giỏ hàng
                            </button>
                          </form>
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
                </c:forEach>
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
                <c:forEach items="${bestSellingProducts}" var="product">
                <div class="block-products__list-item">
                  <div class="product-card">
                    <div class="product-card__badges-list">
                      <div class="product-card__badge product-card__badge--hot">
                        Hot
                      </div>
                    </div>
                    <div class="product-card__image">
                      <a href="detail?pid=${product.id}&cid=${product.categoryId}"
                        ><img
                          src="${product.imgUrl.get(0)}"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="detail?pid=${product.id}&cid=${product.categoryId}"
                          >${product.title}</a
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
                      <c:choose>
                        <c:when test="${product.discount > 0}">
                          <div class="product-card__prices">
                            <span class="product-card__new-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${product.price - product.price * product.discount}" type="currency"/>
                            </span>
                            <span class="product-card__old-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${product.price}" type="currency"/>
                            </span>
                          </div>
                        </c:when>
                        <c:otherwise>
                          <div class="product-card__prices">
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${product.price}" type="currency"/>
                          </div>
                        </c:otherwise>
                      </c:choose>
                      <div class="product-card__buttons">
                        <form action="addToCart" method="post">
                          <input type="hidden" name="productId" value="${product.id}"/>
                          <input type="hidden" name="quantity" value="1"/>
                          <button class="btn btn-primary product-card__addtocart" type="submit">
                            Thêm giỏ hàng
                          </button>
                        </form>
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
                </c:forEach>
              </div>
              <div class="block-products__featured">
                <div class="block-products__featured-item">
                  <div class="product-card">
                    <div class="product-card__badges-list">
                      <div class="product-card__badge product-card__badge--hot">
                        Hot
                      </div>
                    </div>
                    <div class="product-card__image">
                      <a href="detail?pid=${product.id}&cid=${product.categoryId}"
                        ><img
                          src="${bestSellingProduct.imgUrl.get(0)}"
                          alt=""
                      /></a>
                    </div>
                    <div class="product-card__info">
                      <div class="product-card__name">
                        <a href="detail?pid=${product.id}&cid=${product.categoryId}"
                          >${bestSellingProduct.title}
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
                      <c:choose>
                        <c:when test="${bestSellingProduct.discount > 0}">
                          <div class="product-card__prices">
                            <span class="product-card__new-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${bestSellingProduct.price - bestSellingProduct.price * bestSellingProduct.discount}" type="currency"/>
                            </span>
                            <span class="product-card__old-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${bestSellingProduct.price}" type="currency"/>
                            </span>
                          </div>
                        </c:when>
                        <c:otherwise>
                          <div class="product-card__prices">
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${bestSellingProduct.price}" type="currency"/>
                          </div>
                        </c:otherwise>
                      </c:choose>
                      <div class="product-card__buttons">
                        <form action="addToCart" method="post">
                          <input type="hidden" name="productId" value="${bestSellingProduct.id}"/>
                          <input type="hidden" name="quantity" value="1"/>
                          <button class="btn btn-primary product-card__addtocart" type="submit">
                            Thêm giỏ hàng
                          </button>
                        </form>
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
                <c:forEach items="${newBlogs}" var="blog">
                  <div class="post-card">
                    <div class="post-card__image">
                      <a href="#"><img src="${blog.imgUrl}" alt="Gạch lát sàn" /></a>
                    </div>
                    <div class="post-card__info">
                      <div class="post-card__category">
                        <a href="#">Vật Liệu Xây Dựng</a>
                      </div>
                      <div class="post-card__name">
                        <a href="#">${blog.title}</a>
                      </div>
                      <div class="post-card__date">
                        <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${blog.timestamp}" />
                      </div>
                      <div class="post-card__content" style="overflow: hidden;text-overflow: ellipsis; height: 70px">
                        ${blog.content}
                      </div>
                      <div class="post-card__read-more">
                        <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                      </div>
                    </div>
                  </div>
                </c:forEach>
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
  </body>
</html>
