<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Lời nhắn góp ý từ người dùng | Nalika - Material Admin Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <!-- favicon
		============================================ -->
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="../images/favicon.ico"
    />
    <!-- Google Fonts
		============================================ -->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
      rel="stylesheet"
    />
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <!-- nalika Icon CSS
		============================================ -->
    <link rel="stylesheet" href="../css/nalika-icon.css" />
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="../css/owl.carousel.css" />
    <link rel="stylesheet" href="../css/owl.theme.css" />
    <link rel="stylesheet" href="../css/owl.transitions.css" />
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="../css/animate.css" />
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="../css/normalize.css" />
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="../css/meanmenu.min.css" />
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="../css/main.css" />
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="../css/morrisjs/morris.css" />
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link
      rel="stylesheet"
      href="../css/scrollbar/jquery.mCustomScrollbar.min.css"
    />
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="../css/metisMenu/metisMenu.min.css" />
    <link rel="stylesheet" href="../css/metisMenu/metisMenu-vertical.css" />
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="../css/calendar/fullcalendar.min.css" />
    <link rel="stylesheet" href="../css/calendar/fullcalendar.print.min.css" />
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css" />
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="../css/responsive.css" />
    <!-- modernizr JS
		============================================ -->
    <script src="../js/vendor/modernizr-2.8.3.min.js"></script>
    <script
      src="https://kit.fontawesome.com/2fdd50f686.js"
      crossorigin="anonymous"
    ></script>


    <style>
       Thêm CSS cho phần phân trang
      .pagination {
        display: flex;
        list-style: none;
        padding: 0;
      }

      .pagination button {
        margin: 0 5px;
        padding: 8px 12px;
        cursor: pointer;
      }

      .pagination button.active {
        background-color: #007bff;
        color: #fff;
      }
    </style>

  </head>

  <body>
    <!--[if lt IE 8]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="http://browsehappy.com/">upgrade your browser</a> to improve
        your experience.
      </p>
    <![endif]-->

    <jsp:include page="sidebar.jsp"/>
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="logo-pro">
              <a href="index.html"
                ><img class="main-logo" src="../images/logo/logo.png" alt=""
              /></a>
            </div>
          </div>
        </div>
      </div>
      <div class="header-advance-area">
        <div class="header-top-area">
          <jsp:include page="navbar.jsp"/>
        </div>
        <!-- Mobile Menu start -->
        <div class="mobile-menu-area">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="mobile-menu">
                  <nav id="dropdown">
                    <ul class="mobile-menu-nav">
                      <li>
                        <a data-toggle="collapse" data-target="#Charts" href="#"
                          >Home
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul class="collapse dropdown-header-top">
                          <li><a href="index.html">Dashboard v.1</a></li>
                          <li><a href="index-1.html">Dashboard v.2</a></li>
                          <li><a href="index-3.html">Dashboard v.3</a></li>
                          <li><a href="product-list.jsp">Product List</a></li>
                          <li><a href="product-edit.html">Product Edit</a></li>
                          <li>
                            <a href="product-detail.html">Product Detail</a>
                          </li>
                          <li><a href="product-cart.html">Product Cart</a></li>
                          <li>
                            <a href="product-payment.html">Product Payment</a>
                          </li>
                          <li><a href="analytics.html">Analytics</a></li>
                          <li><a href="widgets.html">Widgets</a></li>
                        </ul>
                      </li>
                      <li>
                        <a data-toggle="collapse" data-target="#demo" href="#"
                          >Mailbox
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul id="demo" class="collapse dropdown-header-top">
                          <li><a href="mailbox.html">Inbox</a></li>
                          <li><a href="mailbox-view.html">View Mail</a></li>
                          <li>
                            <a href="mailbox-compose.html">Compose Mail</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a data-toggle="collapse" data-target="#others" href="#"
                          >Miscellaneous
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul id="others" class="collapse dropdown-header-top">
                          <li><a href="file-manager.html">File Manager</a></li>
                          <li><a href="contacts.html">Contacts Client</a></li>
                          <li><a href="projects.html">Project</a></li>
                          <li>
                            <a href="project-details.html">Project Details</a>
                          </li>
                          <li><a href="blog.html">Blog</a></li>
                          <li><a href="blog-details.html">Blog Details</a></li>
                          <li><a href="404.html">404 Page</a></li>
                          <li><a href="500.html">500 Page</a></li>
                        </ul>
                      </li>
                      <li>
                        <a
                          data-toggle="collapse"
                          data-target="#Miscellaneousmob"
                          href="#"
                          >Interface
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul
                          id="Miscellaneousmob"
                          class="collapse dropdown-header-top"
                        >
                          <li><a href="google-map.html">Google Map</a></li>
                          <li><a href="data-maps.html">Data Maps</a></li>
                          <li><a href="pdf-viewer.html">Pdf Viewer</a></li>
                          <li><a href="x-editable.html">X-Editable</a></li>
                          <li><a href="code-editor.html">Code Editor</a></li>
                          <li><a href="tree-view.html">Tree View</a></li>
                          <li><a href="preloader.html">Preloader</a></li>
                          <li>
                            <a href="images-cropper.html">Images Cropper</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a
                          data-toggle="collapse"
                          data-target="#Chartsmob"
                          href="#"
                          >Charts
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul id="Chartsmob" class="collapse dropdown-header-top">
                          <li><a href="bar-charts.html">Bar Charts</a></li>
                          <li><a href="line-charts.html">Line Charts</a></li>
                          <li><a href="area-charts.html">Area Charts</a></li>
                          <li>
                            <a href="rounded-chart.html">Rounded Charts</a>
                          </li>
                          <li><a href="c3.html">C3 Charts</a></li>
                          <li><a href="sparkline.html">Sparkline Charts</a></li>
                          <li><a href="peity.html">Peity Charts</a></li>
                        </ul>
                      </li>
                      <li>
                        <a
                          data-toggle="collapse"
                          data-target="#Tablesmob"
                          href="#"
                          >Tables
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul id="Tablesmob" class="collapse dropdown-header-top">
                          <li><a href="static-table.html">Static Table</a></li>
                          <li><a href="data-table.html">Data Table</a></li>
                        </ul>
                      </li>
                      <li>
                        <a
                          data-toggle="collapse"
                          data-target="#formsmob"
                          href="#"
                          >Forms
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul id="formsmob" class="collapse dropdown-header-top">
                          <li>
                            <a href="basic-form-element.html"
                              >Basic Form Elements</a
                            >
                          </li>
                          <li>
                            <a href="advance-form-element.html"
                              >Advanced Form Elements</a
                            >
                          </li>
                          <li>
                            <a href="password-meter.html">Password Meter</a>
                          </li>
                          <li><a href="multi-upload.html">Multi Upload</a></li>
                          <li><a href="tinymc.html">Text Editor</a></li>
                          <li>
                            <a href="dual-list-box.html">Dual List Box</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a
                          data-toggle="collapse"
                          data-target="#Appviewsmob"
                          href="#"
                          >App views
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul
                          id="Appviewsmob"
                          class="collapse dropdown-header-top"
                        >
                          <li>
                            <a href="basic-form-element.html"
                              >Basic Form Elements</a
                            >
                          </li>
                          <li>
                            <a href="advance-form-element.html"
                              >Advanced Form Elements</a
                            >
                          </li>
                          <li>
                            <a href="password-meter.html">Password Meter</a>
                          </li>
                          <li><a href="multi-upload.html">Multi Upload</a></li>
                          <li><a href="tinymc.html">Text Editor</a></li>
                          <li>
                            <a href="dual-list-box.html">Dual List Box</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a
                          data-toggle="collapse"
                          data-target="#Pagemob"
                          href="#"
                          >Pages
                          <span
                            class="admin-project-icon nalika-icon nalika-down-arrow"
                          ></span
                        ></a>
                        <ul id="Pagemob" class="collapse dropdown-header-top">
                          <li><a href="login.html">Login</a></li>
                          <li><a href="register.html">Register</a></li>
                          <li><a href="lock.html">Lock</a></li>
                          <li>
                            <a href="password-recovery.html"
                              >Password Recovery</a
                            >
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Mobile Menu end -->
        <div class="breadcome-area">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcome-list">
                  <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="breadcomb-wp">
                        <div class="breadcomb-icon">
                          <i class="fa-solid fa-house"></i>
                        </div>
                        <div class="breadcomb-ctn">
                          <h2>Admin page</h2>
                          <p>
                            Welcome to
                            <span class="bread-ntd">Admin page</span>
                          </p>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <div class="breadcomb-report">
                        <button
                          data-toggle="tooltip"
                          data-placement="left"
                          title="Download Report"
                          class="btn"
                        >
                          <i class="fa-solid fa-download"></i>
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
      <div class="product-status mg-b-30">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <div class="product-status-wrap">
                <h4>Lời nhắn từ người dùng</h4>

                <table>
                  <thead>
                  <tr>
                    <th>Tiêu đề</th>
                    <th>Người gửi</th>
                    <th>Ngày tạo</th>
                    <th>Tùy chọn</th>
                  </tr>
                  </thead>
                  <tbody id="feedbackTableBody" style="background-color: #1b2a47"></tbody>
                </table>

                <!-- Thêm mã HTML cho phân trang -->
                <div class="custom-pagination">
                  <ul class="pagination" id="pagination">
                    <li class="page-item" id="previousPage">
                      <a class="page-link" href="#" aria-label="Previous">
                        Trước
                      </a>
                    </li>
                    <!-- Các liên kết trang sẽ được thêm ở đây bằng jQuery -->
                    <li class="page-item" id="nextPage">
                      <a class="page-link" href="#" aria-label="Next">
                        Tiếp theo
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="modal fade" id="deleteFeedbackModal" tabindex="-1" role="dialog" aria-labelledby="deleteUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteFeedbackModalLabel">Xác nhận xóa Lời nhắn</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              Bạn có chắc chắn muốn xóa lời nhắn này không?
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
              <button type="button" class="btn btn-danger" style="background-color: blue" id="confirmDeleteBtn">Đồng ý</button>
            </div>
          </div>
        </div>
      </div>

      <div class="footer-copyright-area">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <div class="footer-copy-right">
                <p>
                  Copyright © 2018
                  <a href="https://colorlib.com/wp/templates/">Colorlib</a> All
                  rights reserved.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- jquery
		============================================ -->
    <script src="../js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="../js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="../js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="../js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="../js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="../js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="../js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="../js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="../js/metisMenu/metisMenu.min.js"></script>
    <script src="../js/metisMenu/metisMenu-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="../js/sparkline/jquery.sparkline.min.js"></script>
    <script src="../js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="../js/calendar/moment.min.js"></script>
    <script src="../js/calendar/fullcalendar.min.js"></script>
    <script src="../js/calendar/fullcalendar-active.js"></script>
    <!-- float JS
		============================================ -->
    <script src="../js/flot/jquery.flot.js"></script>
    <script src="../js/flot/jquery.flot.resize.js"></script>
    <script src="../js/flot/curvedLines.js"></script>
    <script src="../js/flot/flot-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="../js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="../js/main1.js"></script>

    <script type="text/javascript">


      $(document).ready(function () {
        loadFeedbacks(1);
      });

      function loadFeedbacks(page) {
        $.ajax({
          type: 'GET',
          url: '/ecommerce/adminpage/feedback?page=' + page, // Adjust the URL as needed
          dataType: 'json',
          success: function (data) {
            var tableBody = $('#feedbackTableBody');
            tableBody.empty();

            // Hiển thị 10 tài khoản trên mỗi trang
            var itemsPerPage = 10;
            var startIndex = (page - 1) * itemsPerPage;
            var endIndex = startIndex + itemsPerPage;
            var feedbackToShow = data.slice(startIndex, endIndex);

            $.each(feedbackToShow, function (index, feedback) {
              var formattedDate = formatDate(feedback.dateCreated);

              var editButton = '<button data-toggle="tooltip" title="Edit" class="pd-setting-ed editUser" data-id="' + feedback.id + '">'
                      + 'Xem'
                      + '</button>';

              var trashButton = '<button data-toggle="tooltip" title="Trash" class="pd-setting-ed" onclick="confirmDeleteFeedback(' + feedback.id + ')">' +
                      '<i class="fa fa-trash-o" aria-hidden="true"></i>' +
                      '</button>';




              var row = '<tr>' +
                      '<td>' + feedback.topic + '</td>' +
                      '<td>' + feedback.name + '</td>' +
                      '<td>' + formattedDate + '</td>' +
                      '<td>' + editButton + trashButton + '</td>' +
                      '</tr>';
              tableBody.append(row);
            });

            // Hiển thị phân trang
            var pagination = $('#pagination');
            pagination.empty();

            var totalPages = Math.ceil(data.length / itemsPerPage);
            var currentPage = page;

            // Hiển thị nút "Trước" và thiết lập sự kiện khi nhấp vào
            if (currentPage > 1) {
              pagination.append('<li class="page-item" id="previousPage"><a class="page-link" href="#" onclick="loadFeedbacks(' + (currentPage - 1) + ')">Trước</a></li>');
            }

            // Hiển thị các liên kết trang
            for (var i = 1; i <= totalPages; i++) {
              var pageLink = '<li class="page-item"><a class="page-link" href="#" onclick="loadFeedbacks(' + i + ')">' + i + '</a></li>';
              pagination.append(pageLink);
            }

            // Hiển thị nút "Tiếp theo" và thiết lập sự kiện khi nhấp vào
            if (currentPage < totalPages) {
              pagination.append('<li class="page-item" id="nextPage"><a class="page-link" href="#" onclick="loadFeedbacks(' + (currentPage + 1) + ')">Tiếp theo</a></li>');
            }
          },
          error: function (xhr, status, error) {
            console.error('Error fetching data:', status, error);
          }
        });
      }

      function formatDate(dateString) {
        var date = new Date(dateString);
        var year = date.getFullYear();
        var month = ('0' + (date.getMonth() + 1)).slice(-2); // Thêm 0 phía trước và lấy 2 ký tự cuối
        var day = ('0' + date.getDate()).slice(-2);
        var hours = ('0' + date.getHours()).slice(-2);
        var minutes = ('0' + date.getMinutes()).slice(-2);
        var seconds = ('0' + date.getSeconds()).slice(-2);

        return year + '-' + month + '-' + day + ' ' + hours + ':' + minutes + ':' + seconds;
      }

      function deleteFeedback(feedbackId) {
        $.ajax({
          type: 'DELETE',
          url: '/ecommerce/adminpage/feedback?feedbackId=' + feedbackId,
          success: function (data) {
            // Gọi lại hàm load  loadFeedbacks để cập nhật danh sách sau khi xóa
            loadFeedbacks(1);
          },
          error: function (xhr, status, error) {
            console.error('Error deleting user:', status, error);
          }
        });
      }

      function confirmDeleteFeedback(feedbackId) {
        $('#deleteFeedbackModal').modal('show');

        $('#confirmDeleteBtn').on('click', function () {
          deleteFeedback(feedbackId);
          $('#deleteFeedbackModal').modal('hide');
        });

        // Đặt sự kiện khi đóng modal
        $('#deleteFeedbackModal').on('hidden.bs.modal', function () {
          // Đảm bảo loại bỏ sự kiện click để tránh thực hiện đa lần
          $('#confirmDeleteBtn').off('click');
        });
      }

      $(document).on('click', '.editUser', function () {
        var feedbackId = $(this).data('id');
        window.location.href = 'see-feedback.jsp?feedbackId=' + feedbackId;
      });
    </script>

  </body>
</html>
