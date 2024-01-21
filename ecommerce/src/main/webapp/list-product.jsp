<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <a href="index.jsp" class="mobile-links__item-link"
              >Trang Chủ</a
              >
            </div>
          </li>
          <li class="mobile-links__item" data-collapse-item>
            <div class="mobile-links__item-title">
              <a
                      href="shop-grid-4-columns-full.html"
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
                      href="shop-grid-4-columns-full.html"
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
                    <a href="#">Danh mục sản phẩm</a>
<!--                    <svg class="breadcrumb-arrow" width="6px" height="9px">-->
<!--                      <use-->
<!--                        xlink:href="images/sprite.svg#arrow-rounded-right-6x9"-->
<!--                      ></use>-->
<!--                    </svg>-->
                  </li>
<!--                  <li class="breadcrumb-item active" aria-current="page">-->
<!--                    Screwdrivers-->
<!--                  </li>-->
                </ol>
              </nav>
            </div>
            <div class="page-header__title"><h1>Danh mục sản phẩm</h1></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="block">
                <div class="products-view">
                  <div class="products-view__options">
                    <div class="view-options">
                      <div class="view-options__legend">
                        Hiển thị 12 trong tổng sản phẩm
                      </div>
                      <div class="view-options__divider">
                        <form action="search">
                        <div class="view-options__control search-control">
                          <label for="search-input">Tìm kiếm</label>
                          <div class="search-input-container">
                            <input value="${txtS}" class="form-control form-control-sm" type="text" name="txt" id="search-input" placeholder="Nhập từ khóa">
                            <button type="submit"><i class="fa fa-search"></i></button>
                          </div>
                        </div>
                        </form>
                        </div>
                      <style>
                        .view-options__control {
                          display: flex;
                          align-items: center;
                          justify-content: flex-end;
                        }

                        .search-control {
                          text-align: right;
                        }

                        .view-options__control label {
                          margin-right: 10px;
                        }

                        .view-options__control .search-input-container {
                          display: flex;
                          align-items: center;
                        }

                        .view-options__control input {
                          width: 200px;
                          padding: 5px;
                          margin-right: 5px;
                        }

                        .view-options__control button {
                          padding: 5px 10px;
                          background-color: #f0f0f0;
                          border: none;
                          cursor: pointer;
                        }

                        .view-options__control button i {
                          font-size: 14px;
                        }
                      </style>
                    </div>
                    </div>
                  </div>
                  <div class="products-view__list products-list" data-layout="grid-4-full" data-with-features="false">
                    <div class="products-list__body">
                      <c:forEach items="${listP}" var="o">
                        <div class="products-list__item">
                          <div class="product-card">
                            <button class="product-card__quickview" type="button">
                              <svg width="16px" height="16px">
                                <use xlink:href="images/sprite.svg#quickview-16"></use>
                              </svg>
                              <span class="fake-svg-icon"></span>
                            </button>
                            <div class="product-card__badges-list">
                              <div class="product-card__badge product-card__badge--new">
                                New
                              </div>
                            </div>
                            <div class="product-card__image">
                              <a href="detail?pid=${o.id}&cid=${o.categoryId}">
                                <img src="${o.imgUrl.get(0)}" alt="" width="240px" height="245px"/>
                              </a>
                            </div>
                            <div class="product-card__info">
                              <div class="product-card__name">
                                <a href="detail?pid=${o.id}">${o.title}</a>
                              </div>
                              <div class="product-card__rating">
                                <div class="rating">
                                  <div class="rating__body">
                                    <svg class="rating__star rating__star--active" width="13px" height="12px">
                                      <g class="rating__fill">
                                        <use xlink:href="images/sprite.svg#star-normal"></use>
                                      </g>
                                      <g class="rating__stroke">
                                        <use xlink:href="images/sprite.svg#star-normal-stroke"></use>
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
                                    <!-- Repeat the above code for the remaining rating stars -->
                                  </div>
                                </div>
                                <div class="product-card__rating-legend">
                                  9 Reviews
                                </div>
                              </div>
                            </div>
                            <div class="product-card__actions">
                              <c:choose>
                                <c:when test="${o.discount > 0}">
                                  <div class="product-card__prices">
                            <span class="product-card__new-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${o.price * o.discount}" type="currency"/>
                            </span>
                                    <span class="product-card__old-price">
                              <fmt:setLocale value="vi_VN"/>
                              <fmt:formatNumber value="${o.price}" type="currency"/>
                            </span>
                                  </div>
                                </c:when>
                                <c:otherwise>
                                  <div class="product-card__prices">
                                    <fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${o.price}" type="currency"/>
                                  </div>
                                </c:otherwise>
                              </c:choose>
                              <div class="product-card__buttons">
                                <form action="addToCart" method="post">
                                  <input type="hidden" name="productId" value="${o.id}"/>
                                  <input type="hidden" name="quantity" value="1"/>
                                  <button class="btn btn-primary product-card__addtocart" type="submit">
                                    Thêm giỏ hàng
                                  </button>
                                </form>
                                <button class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__wishlist" type="button">
                                  <svg width="16px" height="16px">
                                    <use xlink:href="images/sprite.svg#wishlist-16"></use>
                                  </svg>
                                  <span class="fake-svg-icon fake-svg-icon--wishlist-16"></span>
                                </button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </c:forEach>
                  </div>
                    <div class="products-view__pagination">
                      <ul class="pagination justify-content-center">
                        <c:if test="${currentPage != 1}">
                        <li class="page-item">
                            <a class="page-link page-link--with-arrow" href="/ecommerce/pagination?page=${currentPage - 1}&cId=${cId}" aria-label="Previous">
                            <svg class="page-link__arrow page-link__arrow--left" aria-hidden="true" width="8px" height="13px">
                              <use xlink:href="images/sprite.svg#arrow-rounded-left-8x13"></use>
                            </svg>
                          </a>
                        </li>
                        </c:if>
                        <c:forEach begin="1" end="${numOfPage}" var="i">
                          <c:choose>
                            <c:when test="${currentPage eq i}">
                              <li class="page-item active">
                                <a class="page-link" href="/ecommerce/pagination?page=${i}&cId=${cId}"><c:out value="${i}"/></a>
                              </li>
                            </c:when>
                            <c:otherwise>
                              <li class="page-item">
                                <a class="page-link" href="/ecommerce/pagination?page=${i}&cId=${cId}"><c:out value="${i}"/></a>
                              </li>
                            </c:otherwise>
                          </c:choose>
                        </c:forEach>
                        <c:if test="${currentPage lt numOfPage}">
                        <li class="page-item">
                          <a class="page-link page-link--with-arrow" href="/ecommerce/pagination?page=${currentPage + 1}&cId=${cId}" aria-label="Next">
                            <svg class="page-link__arrow page-link__arrow--right" aria-hidden="true" width="8px" height="13px">
                              <use xlink:href="images/sprite.svg#arrow-rounded-right-8x13"></use>
                            </svg>
                          </a>
                        </li>
                        </c:if>
                      </ul>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- site__body / end -->
    <!-- site__footer -->
    <jsp:include page="footer.jsp"/>
    <!-- site__footer / end -->
    </div>
    <!-- site / end -->

  </body>
</html>
