<%@ page import="com.example.ecommerce.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <!-- desktop site__header -->
    <jsp:include page="header.jsp"/>
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
                  <div class="product__prices">
                    <fmt:setLocale value="vi_VN"/>
                    <fmt:formatNumber value="${detail.price - detail.price*detail.discount}" type="currency"/>
                  </div>

                    <div class="form-group product__option">
                      <form action="/ecommerce/addToCart" method="post">
                      <label
                        class="product__option-label"
                        for="product-quantity"
                        >Số lượng</label
                      >
                      <div class="product__actions">
                        <div class="product__actions-item">
                          <div class="input-number product__quantity">
                            <input type="hidden" name="productId" value="${detail.id}"/>
                            <input
                              id="product-quantity"
                              class="input-number__input form-control form-control-lg"
                              type="number"
                              min="1"
                              value="1"
                              max="${detail.quantity}"
                              name="quantity"
                            />
                            <div class="input-number__add"></div>
                            <div class="input-number__sub"></div>
                          </div>
                        </div>
                        <div
                          class="product__actions-item product__actions-item--addtocart"
                        >
                            <button class="btn btn-primary product-card__addtocart" type="submit">
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
                      </form>
                    </div>
                  <!-- .product__options / end -->
                </div>
                <!-- .product__end -->
                <div class="product__footer">
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
                                      <div class="product-card__prices">
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${o.price}" type="currency"/>
                                      </div>
                                    <div class="product-card__buttons">
                                      <form action="addToCart" method="post">
                                        <input type="hidden" name="productId" value="${o.id}"/>
                                        <input type="hidden" name="quantity" value="1"/>
                                      <button class="btn btn-primary product-card__addtocart" type="submit">
                                        Thêm giỏ hàng
                                      </button>
                                      <button class="btn btn-secondary product-card__addtocart product-card__addtocart--list" type="submit">
                                        Thêm giỏ hàng
                                      </button>
                                      <button class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__compare" type="button">
                                        <svg width="16px" height="16px">
                                          <use xlink:href="images/sprite.svg#compare-16"></use>
                                        </svg>
                                        <span class="fake-svg-icon fake-svg-icon--compare-16"></span>
                                      </button>
                                      </form>
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
      <jsp:include page="footer.jsp"/>
      <!-- site__footer / end -->
    </div>
    <!-- site / end -->


  </body>
</html>
