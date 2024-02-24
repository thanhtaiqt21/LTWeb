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
              <a href="blog-classic.html" class="mobile-links__item-link"
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
                    <a href="#">Blog</a>
                    <svg class="breadcrumb-arrow" width="6px" height="9px">
                      <use
                        xlink:href="images/sprite.svg#arrow-rounded-right-6x9"
                      ></use>
                    </svg>
                  </li>
                  <li class="breadcrumb-item active" aria-current="page">

                  </li>
                </ol>
              </nav>
            </div>
            <div class="page-header__title"><h1>Tin mới nhất</h1></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-12 col-lg-8">
              <div class="block">
                <div class="posts-view">
                  <div
                    class="posts-view__list posts-list posts-list--layout--classic"
                  >
                    <div class="posts-list__body">
                      <c:forEach var="b" items="${listB}">
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href=""><img src="${b.imgUrl}" alt="Gạch đá tự nhiên" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="">Vật Liệu Xây Dựng</a>
                            </div>
                            <div class="post-card__name">
                              <a href="">${b.title}</a>
                            </div>
                            <div class="post-card__date">${b.timestamp}</div>
                            <div style="overflow: hidden; height: 50px" class="post-card__content">
                              ${b.content}
                            </div>
                            <div class="post-card__read-more">
                              <a href="blogDetail?bid=${b.id}" class="btn btn-secondary btn-sm" >Đọc thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      </c:forEach>
                    </div>
                  </div>
                  <ul class="pagination justify-content-center">
                    <c:if test="${currentPage != 1}">
                      <li class="page-item">
                        <a class="page-link page-link--with-arrow" href="/ecommerce/blogPage?page=${currentPage - 1}" aria-label="Previous">
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
                            <a class="page-link" href="/ecommerce/blogPage?page=${i}"><c:out value="${i}"/></a>
                          </li>
                        </c:when>
                        <c:otherwise>
                          <li class="page-item">
                            <a class="page-link" href="/ecommerce/blogPage?page=${i}"><c:out value="${i}"/></a>
                          </li>
                        </c:otherwise>
                      </c:choose>
                    </c:forEach>
                    <c:if test="${currentPage lt numOfPage}">
                      <li class="page-item">
                        <a class="page-link page-link--with-arrow" href="/ecommerce/blogPage?page=${currentPage + 1}" aria-label="Next">
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
            <div class="col-12 col-lg-4">
              <div class="block block-sidebar block-sidebar--position--end">
                <div class="block-sidebar__item">
                  <div class="widget-search">
                    <form class="widget-search__body">
                      <input
                        class="widget-search__input"
                        placeholder="Blog search..."
                        type="text"
                        autocomplete="off"
                        spellcheck="false"
                      />
                      <button class="widget-search__button" type="submit">
                        <svg width="20px" height="20px">
                          <use xlink:href="images/sprite.svg#search-20"></use>
                        </svg>
                      </button>
                    </form>
                  </div>
                </div>
                <div class="block-sidebar__item">

                </div>
                <div class="block-sidebar__item">
                  <div
                    class="widget-categories widget-categories--location--blog widget"
                  >
                    <h4 class="widget__title">Thể Loại</h4>
                    <ul
                      class="widget-categories__list"
                      data-collapse
                      data-collapse-opened-class="widget-categories__item--open"
                    >
                      <li class="widget-categories__item" data-collapse-item>
                        <div class="widget-categories__row">
                          <a href="#">Tin mới nhất</a>
                        </div>
                      </li>
                      <li class="widget-categories__item" data-collapse-item>
                        <div class="widget-categories__row">
                          <a href="#"
                            >
                            Vật Liệu Xây dựng </a
                          >
                        </div>

                      </li>
                      <li class="widget-categories__item" data-collapse-item>
                        <div class="widget-categories__row">
                          <a href="#"
                            >
                            Chương trình khuyến mãi</a
                          >
                        </div>
                      </li>
                      <li class="widget-categories__item" data-collapse-item>
                        <div class="widget-categories__row">
                          <a href="#"
                            >
                            Đánh giá</a
                          >
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="block-sidebar__item">

                </div>
                <div class="block-sidebar__item">

                </div>
                <div class="block-sidebar__item">

                </div>
                <div class="block-sidebar__item">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- site__body / end --><!-- site__footer -->
      <jsp:include page="footer.jsp"/>
      <!-- site__footer / end -->
    </div>
    <!-- site / end -->


  </body>
</html>
