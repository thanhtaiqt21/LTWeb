<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Order List | Nalika - Material Admin Template</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <script
      src="https://kit.fontawesome.com/2fdd50f686.js"
      crossorigin="anonymous"
    ></script>
    <style>
      .page-item a.page-link {
        background-color: #1d2734; /* Màu nền đen */
        color: white; /* Màu chữ trắng */
        border: none;

      }
      .page-item.active a.page-link {
        background-color: #1d2734; /* Màu nền đen */
        color: blue; /* Màu chữ xanh (blue) cho trang đang ở */
        border: none;
      }

      .page-item.active a.page-link:hover {
        color: blue; /* Màu chữ đen khi di chuột qua */
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
                ><img class="main-logo" src="img/logo/logo.png" alt=""
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
            <div class="col-lg-12">
              <div class="product-status-wrap">
                <h4>Danh sách đơn hàng</h4>
                <table id="ordersTable" class="table" style="table-layout: fixed">
                  <!-- Tiêu đề bảng -->
                  <thead>
                  <tr>
                    <th>Mã đơn hàng</th>
                    <th>Trạng thái</th>
                    <th>Giá</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <th>Tên khách hàng</th>
                    <th>Ngày tạo</th>
                    <th>Hành động</th>
                  </tr>
                  </thead>
                  <!-- Nội dung bảng sẽ được thêm bằng JavaScript -->
                  <tbody></tbody>
                </table>

                <nav>
                  <ul id="pagination" class="pagination"></ul>
                </nav>

              </div>
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

    <script>
      $(document).ready(function() {
        var currentPage = 1;
        var itemsPerPage = 5;

        function loadOrders() {
          $.ajax({
            url: '/ecommerce/adminpage/order-list',
            type: 'GET',
            dataType: 'json',
            success: function(orders) {
              updateOrdersTable(orders, currentPage);
            },
            error: function(error) {
              console.error('Error fetching orders:', error);
            }
          });
        }

        function updateOrdersTable(orders, page) {
          var startIndex = (page - 1) * itemsPerPage;
          var endIndex = startIndex + itemsPerPage;
          var ordersToShow = orders.slice(startIndex, endIndex);

          var tableBody = $('#ordersTable tbody');
          tableBody.empty();

          ordersToShow.forEach(function(order) {
            var statusButton = getStatusButton(order.status);

            function getStatusButton(status) {
              switch(status) {
                case 0:
                  return '<button class="pd-setting status-toggle" data-order-id="' + order.id + '" style="background-color: #b2b24f;width: 130px">Chưa xác nhận</button>';
                case 1:
                  return '<button class="pd-setting status-toggle" data-order-id="' + order.id + '" style=";width: 130px">Đã xác nhận</button>';
                case 2:
                  return '<button class="pd-setting status-toggle" data-order-id="' + order.id + '" style="background-color: #d26969;width: 130px">Hủy</button>'; // Trạng thái "Hủy"
                default:
                  return '<button class="pd-setting status-toggle" data-order-id="' + order.id + '">Không xác định</button>';
              }
            }

            var editButton = '';
            var deleteButton = '';
            if (order.status === 0) {
              editButton = '<button class="pd-setting-ed edit-status" data-order-id="' + order.id + '" data-current-status="' + order.status + '" title="Edit"><i class="fa-solid fa-check" style="color: #4be8b8;"></i></button>';
              deleteButton = '<button data-toggle="tooltip" title="Delete" class="pd-setting-ed delete-status" data-order-id="' + order.id + '" data-current-status="' + order.status + '"><i class="fa-solid fa-xmark" style="color: red;"></i></button>';
            }
            var viewButton = '<button data-toggle="tooltip" title="View" class="pd-setting-ed"><a href="order-details.jsp?orderId=' + order.id + '"><i class="fa-solid fa-eye"></i></a></button>';

            var row = '<tr>' +
                    '<td>#' + order.id + '</td>' +
                    '<td>' + statusButton + '</td>' +
                    '<td>' + formatPrice(order.totalPrice) + '</td>' +
                    '<td style="overflow: hidden;text-overflow: ellipsis;text-wrap: nowrap">' + order.address + '</td>' +
                    '<td>' + order.phone + '</td>' +
                    '<td>' + order.user.fullname + '</td>' +
                    '<td>' + formatDate(order.dayCreate) + '</td>' +
                    '<td style="display: flex">' + editButton + deleteButton + viewButton + '</td>' +
                    '</tr>';
            tableBody.append(row);
          });

          updatePagination(orders.length, itemsPerPage, page);
        }

        $(document).on('click', '.edit-status', function() {
          var orderId = $(this).data('order-id');
          var currentStatus = $(this).data('current-status');

          // Thêm xác nhận trước khi thay đổi trạng thái
          var confirmChange = confirm("Bạn có muốn xác nhận đơn hàng không?");
          if (confirmChange) {
            var newStatus = currentStatus === 0 ? 1 : 0;
            updateOrderStatus(orderId, newStatus);
          }
          // Nếu chọn 'Hủy', không thực hiện gì cả
        });

        $(document).on('click', '.delete-status', function() {
          var orderId = $(this).data('order-id');

          // Thêm xác nhận trước khi xóa
          var confirmDelete = confirm("Bạn có chắc chắn muốn hủy đơn hàng này không?");
          if (confirmDelete) {
            updateOrderStatus(orderId, 2); // Cập nhật trạng thái thành "Hủy" nếu đồng ý
          }
          // Nếu chọn 'Hủy' trên thông báo, không thực hiện gì
        });

        function updateOrderStatus(orderId, newStatus) {
          $.ajax({
            url: '/ecommerce/adminpage/update-order-status',
            type: 'POST',
            data: {orderId: orderId, status: newStatus},
            success: function(response) {
              if (response.success) {
                loadOrders(); // Reload orders to reflect changes
              } else {
                alert('Có lỗi xảy ra khi cập nhật trạng thái đơn hàng.');
              }
            },
            error: function(error) {
              console.error('Error updating order status:', error);
            }
          });
        }


        function updatePagination(totalItems, itemsPerPage, currentPage) {
          var totalPages = Math.ceil(totalItems / itemsPerPage);
          var pagination = $('#pagination');
          pagination.empty();

          if (currentPage > 1) {
            pagination.append('<li class="page-item"><a class="page-link" href="#" data-page="' + (currentPage - 1) + '">Trước</a></li>');
          }

          for (var i = 1; i <= totalPages; i++) {
            pagination.append('<li class="page-item ' + (i === currentPage ? 'active' : '') + '"><a class="page-link" href="#" data-page="' + i + '">' + i + '</a></li>');
          }

          if (currentPage < totalPages) {
            pagination.append('<li class="page-item"><a class="page-link" href="#" data-page="' + (currentPage + 1) + '">Tiếp theo</a></li>');
          }
        }

        $(document).on('click', '#pagination .page-link', function(e) {
          e.preventDefault();
          currentPage = $(this).data('page');
          loadOrders();
        });

        function formatPrice(price) {
          return price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
        }

        function formatDate(timestamp) {
          var date = new Date(timestamp);
          return date.toLocaleDateString();
        }

        loadOrders();
      });
    </script>

  </body>
</html>
