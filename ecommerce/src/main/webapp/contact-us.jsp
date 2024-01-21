<%@ page import="com.example.ecommerce.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
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
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
    <style type="text/css">
      label.error {
        display: inline-block;
        color:red;
        width: 200px;
      }
    </style>
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
              <a href="contact-us.html" class="mobile-links__item-link"
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
        <div class="block-map block">
          <div class="block-map__body">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.214525515987!2d106.78918677589934!3d10.871281657435203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRQLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2sus!4v1698662509218!5m2!1svi!2sus" width="1800" height="800" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
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
                    <a href="#"> Liên hệ </a>
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
            <div class="page-header__title"><h1>Liên hệ</h1></div>
          </div>
        </div>
        <div class="block">
          <div class="container">
            <div class="card mb-0">
              <div class="card-body contact-us">
                <div class="contact-us__container">
                  <div class="row">
                    <div class="col-12 col-lg-6 pb-4 pb-lg-0">
                      <h4 class="contact-us__header card-title">Địa chỉ</h4>
                      <div class="contact-us__address" id="contactAddress">
                        <!-- Dữ liệu sẽ được thêm vào đây bằng JavaScript -->
                      </div>
                    </div>
                    <div class="col-12 col-lg-6">
                      <form  id="formFeedback">
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
                      <h4 class="contact-us__header card-title">
                        Để lại tin nhắn cho chúng tôi
                      </h4>
                      <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="form-name">Tên của bạn</label>
                          <input type="text" id="form-name" name="name" class="form-control" placeholder="Họ và tên" />
                        </div>
                        <div class="form-group col-md-6">
                          <label for="form-email">Email</label>
                          <input type="email" id="form-email" name="email" class="form-control" placeholder="Địa chỉ Email" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="form-subject">Chủ đề</label>
                        <input type="text" id="form-subject" name="topic" class="form-control" placeholder="Subject" />
                      </div>
                      <div class="form-group">
                        <label for="form-message">Lời nhắn</label>
                        <textarea id="form-message" name="message" class="form-control" rows="4"></textarea>
                        </div>
                      <button type="submit" class="btn btn-primary" id="submitBtn">Gửi lời nhắn</button>
                        </fieldset>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- site__body / end --> <!-- site__footer -->
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
          var contactAddress = $('#contactAddress');
          contactAddress.empty();
          contactAddress.append('<p> ' + data.address + '<br />Email: ' + data.email + '<br />Số điện thoại: ' + data.phone + '</p>');
          contactAddress.append('<p><strong>Giờ mở cửa</strong><br />Thứ 2 đến thứ sáu: ' + data.workingTimeMF + '<br />Thứ bảy: ' + data.workingTimeSA + '<br />Chủ nhật: ' + data.workingTimeSU + '</p>');
          contactAddress.append('<p><strong>Lời chào</strong><br />' + data.greeting + '</p>');
        },
        error: function (xhr, status, error) {
          console.error('Error fetching contact info:', status, error);
        }
      });

      // // Xử lý sự kiện khi nhấn nút Gửi lời nhắn
      // $('#submitBtn').on('click', function () {
      //   var name = $('#form-name').val();
      //   var email = $('#form-email').val();
      //   var subject = $('#form-subject').val();
      //   var message = $('#form-message').val();
      //   // Gửi dữ liệu về servlet để xử lý và gửi email
      //   $.ajax({
      //     type: 'POST',
      //     url: '/ecommerce/contact-us',
      //     data: {
      //       name: name,
      //       email: email,
      //       subject: subject,
      //       message: message
      //     },
      //     success: function (response) {
      //       alert('Lời nhắn đã được gửi thành công!');
      //     },
      //     error: function (xhr, status, error) {
      //       console.error('Error sending message:', status, error);
      //     }
      //   });
      // });
    });
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      $("#formFeedback").validate({
        rules:{
          name: {
            required:true,
            minlength:2
          },
          email: {
            required:true,
            email:true
          },
          topic: {
            required:true,
            minlength:2
          },
          message: {
            required:true,
            minlength:2
          }
        },
        messages: {
          name: {
            required: "Vui lòng nhập họ tên",
            minlength: "Vui lòng nhập họ tên"
          },
          email: {
            required: "Vui lòng nhập email",
            email: "Vui lòng nhập đúng định dạng email"
          },
          topic: {
            required: "Vui lòng nhập tiêu đề",
            minlength: "Vui lòng nhập tiêu đề"
          },
          message: {
            required: "Vui lòng nhập lời nhắn",
            minlength: "Vui lòng nhập lời nhắn"
          }
        }
      });
    });
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      // ... existing AJAX code ...

      // Handle form submission
      $('#submitBtn').click(function (event) {
        event.preventDefault();

        var formData = {
          name: $('#form-name').val(),
          email: $('#form-email').val(),
          topic: $('#form-subject').val(),
          message: $('#form-message').val()
        };

        $.ajax({
          type: 'POST',
          url: '/ecommerce/contact-us',
          contentType: 'application/json',
          data: JSON.stringify(formData),
          success: function (response) {
            console.log('Feedback submitted successfully:', response);

            // Display a simple alert for success (replace with your preferred notification method)
            alert('Lời nhắn đã được gửi thành công!');

            // Optionally, you can reset the form or redirect the user.
          },
          error: function (xhr, status, error) {
            console.error('Error submitting feedback:', status, error);
          }
        });
      });
    });
  </script>



  </body>
</html>
