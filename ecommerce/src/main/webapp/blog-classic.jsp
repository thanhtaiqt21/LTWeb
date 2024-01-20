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
            <div class="page-header__title"><h1>Latest News</h1></div>
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
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://hungtuy.com.vn/data/media/1498/images/rsz_amb_rioja_silver_31x56.jpg" alt="Gạch đá tự nhiên" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="#">Vật Liệu Xây Dựng</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Sử Dụng Gạch Đá Tự Nhiên Trong Trang Trí Nhà Cửa</a>
                            </div>
                            <div class="post-card__date">Ngày 10 Tháng 5, 2023</div>
                            <div class="post-card__content">
                              Bài viết này nói về việc sử dụng gạch đá tự nhiên để tạo sự sang trọng và tự nhiên cho ngôi nhà của bạn.
                            </div>
                            <div class="post-card__read-more">
                              <a href="post-without-sidebar.jsp" class="btn btn-secondary btn-sm">Đọc thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://thegioithepvn.com/wp-content/uploads/2021/07/nha-tien-che-the-gioi-thepvn.com_-1024x683.jpg" alt="Khung sắt trong xây dựng" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="#">Vật Liệu Xây Dựng</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Những Ưu Điểm của Sử Dụng Khung Sắt Trong Xây Dựng</a>
                            </div>
                            <div class="post-card__date">Ngày 20 Tháng 9, 2023</div>
                            <div class="post-card__content">
                              Bài viết này phân tích các ưu điểm của việc sử dụng khung sắt trong xây dựng, từ tính năng chống sét đến tính độ bền và đa dạng trong thiết kế.
                            </div>
                            <div class="post-card__read-more">
                              <a href="post-without-sidebar.jsp" class="btn btn-secondary btn-sm">Đọc thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://koreawindow.com.vn/uploads/images/bai-viet/news/maucuadep1.jpg" alt="Cửa nhựa lõi thép" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="#">Vật Liệu Xây Dựng</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Cách Lựa Chọn Cửa Nhựa Lõi Thép Cho Nhà Cửa Của Bạn</a>
                            </div>
                            <div class="post-card__date">Ngày 5 Tháng 7, 2023</div>
                            <div class="post-card__content">
                              Bài viết này hướng dẫn cách chọn cửa nhựa lõi thép phù hợp với thiết kế và an toàn cho ngôi nhà của bạn.
                            </div>
                            <div class="post-card__read-more">
                              <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://bachkhoaec.com/upload/images/Gia%20cuong%20cot%20dam%20san.jpg" alt="Sợi carbon" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="post-without-sidebar.jsp">Vật Liệu Xây Dựng</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Vật Liệu Xây Dựng Hiện Đại: Sợi Carbon</a>
                            </div>
                            <div class="post-card__date">Ngày 12 Tháng 3, 2023</div>
                            <div class="post-card__content">
                              Bài viết này giới thiệu vật liệu xây dựng hiện đại - sợi carbon, và cách nó được ứng dụng trong các công trình xây dựng.
                            </div>
                            <div class="post-card__read-more">
                              <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://ttpcert.com.vn/wp-content/uploads/2021/03/mau-nha-kinh-theo-phong-cach-chau-au-1-min.png" alt="Sản phẩm mới" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="#">Tin Mới Nhất</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Sản Phẩm Vật Liệu Xây Dựng Được Cải Tiến Mới Nhất</a>
                            </div>
                            <div class="post-card__date">Ngày 2 Tháng 11, 2023</div>
                            <div class="post-card__content">
                              Chúng tôi giới thiệu các sản phẩm vật liệu xây dựng mới nhất với công nghệ cải tiến, giúp nâng cao hiệu suất và tiết kiệm năng lượng trong xây dựng.
                            </div>
                            <div class="post-card__read-more">
                              <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://congtrinhxanhvn.com/wp-content/uploads/2021/06/cac-yeu-to-tao-nen-noi-that-xanh.jpeg" alt="Thiết kế nội thất xanh" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="#">Tin Mới Nhất</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Xu Hướng Thiết Kế Nội Thất Xanh Mới Nhất</a>
                            </div>
                            <div class="post-card__date">Ngày 12 Tháng 10, 2023</div>
                            <div class="post-card__content">
                              Bài viết này giới thiệu xu hướng thiết kế nội thất xanh mới nhất, sử dụng vật liệu xây dựng thân thiện với môi trường và năng lượng.
                            </div>
                            <div class="post-card__read-more">
                              <a href="#" class="btn btn-secondary btn-sm">Đọc thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://khatra.com.vn/wp-content/uploads/2022/05/ke-gach-800x800-1.jpg" alt="Khuyến mãi gạch lát sàn" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="#">Chương Trình Khuyến Mãi</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Ưu Đãi Đặc Biệt Cho Các Loại Gạch Lát Sàn</a>
                            </div>
                            <div class="post-card__date">Ngày 20 Tháng 9, 2023</div>
                            <div class="post-card__content">
                              Tham gia chương trình khuyến mãi đặc biệt để nhận giảm giá hấp dẫn cho các loại gạch lát sàn chất lượng cao. Đừng bỏ lỡ cơ hội này!
                            </div>
                            <div class="post-card__read-more">
                              <a href="#" class="btn btn-secondary btn-sm">Xem Thêm</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="posts-list__item">
                        <div class="post-card post-card--layout--grid post-card--size--lg">
                          <div class="post-card__image">
                            <a href="#"><img src="https://hiepthanhvn.com.vn/wp-content/uploads/2021/04/tui-khi-cach-nhiet-dem-lai-hieu-qua-chong-nong-tot-1.jpg" alt="Khuyến mãi cách nhiệt" /></a>
                          </div>
                          <div class="post-card__info">
                            <div class="post-card__category">
                              <a href="#">Chương Trình Khuyến Mãi</a>
                            </div>
                            <div class="post-card__name">
                              <a href="#">Mùa Hè Sôi Động: Giảm Giá Lớn Cho Các Sản Phẩm Cách Nhiệt</a>
                            </div>
                            <div class="post-card__date">Ngày 5 Tháng 7, 2023</div>
                            <div class="post-card__content">
                              Chào đón mùa hè sôi động với ưu đãi giảm giá lớn cho các sản phẩm cách nhiệt. Giúp ngôi nhà của bạn mát mẻ và tiết kiệm năng lượng!
                            </div>
                            <div class="post-card__read-more">
                              <a href="#" class="btn btn-secondary btn-sm">Xem Chi Tiết</a>
                            </div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                  <div class="posts-view__pagination">
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
