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
                    <a href="#">Blog</a>
                    <svg class="breadcrumb-arrow" width="6px" height="9px">
                      <use
                        xlink:href="images/sprite.svg#arrow-rounded-right-6x9"
                      ></use>
                    </svg>
                  </li>
                  <li class="breadcrumb-item active" aria-current="page">
                    Sản Phẩm Vật Liệu Xây Dựng Được Cải Tiến Mới Nhất
                  </li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-12 col-lg-9 col-xl-8">
              <div class="block post post--layout--full">
                <div class="post__header post-header post-header--layout--full">
                  <div class="post-header__categories">
                    <a href="#">tin mới nhất</a>
                  </div>
                  <h1 class="post-header__title">
                    Sản Phẩm Vật Liệu Xây Dựng Được Cải Tiến Mới Nhất
                  </h1>
                  <div class="post-header__meta">
                    <div class="post-header__meta-item">
                      By <a href="#">Thanh Tài</a>
                    </div>
                    <div class="post-header__meta-item">
                      <a href="#">Ngày 12 Tháng 3, 2023</a>
                    </div>
                    <div class="post-header__meta-item">
                      <a href="#">4 bình luận</a>
                    </div>
                  </div>
                </div>
                <div class="post__featured">
                  <a href="#"
                    ><img src="https://ttpcert.com.vn/wp-content/uploads/2021/03/mau-nha-kinh-theo-phong-cach-chau-au-1-min.png" alt=""
                  /></a>
                </div>
                <div class="post__content typography typography--expanded">
                  <p>
                    Trong thời gian gần đây, ngành công nghiệp vật liệu xây dựng đã chứng kiến sự ra đời của nhiều sản phẩm mới và cải tiến độc đáo. Các sản phẩm này hứa hẹn mang lại sự tiến bộ và hiệu quả lớn trong việc xây dựng và cải thiện chất lượng công trình. Trong bài viết này, chúng ta sẽ tìm hiểu về một số sản phẩm vật liệu xây dựng mới nhất và những cải tiến đáng chú ý.
                  </p>
                  <p>
                    Vật liệu xây dựng bền hơn và nhẹ hơn: Một trong những xu hướng đáng chú ý là phát triển vật liệu xây dựng bền hơn nhưng vẫn nhẹ, giúp giảm tải trọng trên các cấu trúc xây dựng và kéo dài tuổi thọ của chúng. Các loại gạch và bê tông sợi thủy tinh là một ví dụ điển hình, chúng có khả năng chịu nén tốt và giảm khả năng nứt nẻ.
                  </p>

                  <p>
                    Công nghệ xây dựng thông minh: Sự phát triển của công nghệ đã ảnh hưởng đến ngành xây dựng, với việc sử dụng máy móc và thiết bị thông minh để tăng cường hiệu suất và đảm bảo an toàn. Các máy móc xây dựng tự động và các hệ thống quản lý công trình đã trở thành một phần quan trọng của dự án xây dựng.
                  </p>
                  <p>
                    Các loại sơn và chất chống thấm tiên tiến: Sự phát triển trong lĩnh vực sơn và chất chống thấm đã giúp bảo vệ và làm đẹp các công trình xây dựng. Các công nghệ mới giúp sơn bền màu và chống nứt nẻ trong thời gian dài.
                  </p>
                  <p>
                    Vật liệu cách âm và cách nhiệt: Việc sử dụng vật liệu cách âm và cách nhiệt đã trở thành một yếu tố quan trọng để cải thiện sự thoải mái trong các công trình xây dựng. Các sản phẩm mới có khả năng cách âm tốt hơn và giúp tiết kiệm năng lượng.
                  </p>
                  <p>
                    Như vậy, ngành công nghiệp vật liệu xây dựng đang trải qua sự đổi mới và cải tiến liên tục. Các sản phẩm và công nghệ mới giúp cải thiện hiệu suất và bảo vệ môi trường, tạo nên những công trình xây dựng chất lượng và bền vững hơn. Việc theo dõi và áp dụng những cải tiến này trong dự án xây dựng sẽ là lợi ích lớn cho cả ngành và môi trường.
                  </p>

                </div>
                <div class="post__footer">
                  <div class="post__tags-share-links">
                    <div class="post__tags tags">
                      <div class="tags__list">
                        <a href="#">Tin mới nhất</a> <a href="#">Vật liệu xậy dựng</a>

                      </div>
                    </div>
                    <div class="post__share-links share-links">
                      <ul class="share-links__list">
                        <li
                          class="share-links__item share-links__item--type--like"
                        >
                          <a href="#">Thích</a>
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
                <section class="post__section">
                  <h4 class="post__section-title">Bài viết liên quan</h4>
                  <div class="related-posts">
                    <div class="related-posts__list">
                      <div
                        class="related-posts__item post-card post-card--layout--related"
                      >
                        <div class="post-card__image">
                          <a href="#"
                            ><img src="https://hiepthanhvn.com.vn/wp-content/uploads/2021/04/tui-khi-cach-nhiet-dem-lai-hieu-qua-chong-nong-tot-1.jpg" alt=""
                          /></a>
                        </div>
                        <div class="post-card__info">
                          <div class="post-card__name">
                            <a href="#">Mùa Hè Sôi Động: Giảm Giá Lớn Cho Các Sản Phẩm Cách Nhiệt</a>
                          </div>
                          <div class="post-card__date">Ngày 5 Tháng 7, 2023</div>
                        </div>
                      </div>
                      <div
                        class="related-posts__item post-card post-card--layout--related"
                      >
                        <div class="post-card__image">
                          <a href="#"
                            ><img src="https://congtrinhxanhvn.com/wp-content/uploads/2021/06/cac-yeu-to-tao-nen-noi-that-xanh.jpeg" alt=""
                          /></a>
                        </div>
                        <div class="post-card__info">
                          <div class="post-card__name">
                            <a href="#"
                              >Xu Hướng Thiết Kế Nội Thất Xanh Mới Nhất</a>
                          </div>
                          <div class="post-card__date">Ngày 12 Tháng 10, 2023</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </section>
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
