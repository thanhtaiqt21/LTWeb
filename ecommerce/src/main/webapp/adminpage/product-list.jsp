<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Product List | Nalika - Material Admin Template</title>
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
    <script src="../js/vendor/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
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
                          <li><a href="product-list.html">Product List</a></li>
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
                <h4>Danh sách sản phẩm</h4>
                <div class="add-product">
                  <a href="/ecommerce/adminpage/product-add">Thêm sản phẩm</a>
                </div>
                <table style="table-layout: fixed">
                  <tr>
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Mô tả</th>
                    <th>Trạng thái</th>
                    <th>Giá</th>
                    <th>Khuyến mãi</th>
                    <th>Số lượng</th>
                    <th>Đã bán</th>
                    <th>Setting</th>
                  </tr>
                  <c:forEach var="product" items="${products}">
                    <tr>
                      <td>
                        <img src="${product.imgUrl.get(0)}" alt="" />
                      </td>
                      <td>${product.title}</td>
                      <td style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap">${product.description}</td>
                        <c:if test="${product.active == 1}">
                          <td>Hoạt động</td>
                        </c:if>
                        <c:if test="${product.active == 0}">
                          <td>Ngưng hoạt động</td>
                        </c:if>
                      <td>
                        <fmt:setLocale value="vi_VN"/>
                        <fmt:formatNumber value="${product.price}" type="currency"/>
                      </td>
                      <td> <fmt:formatNumber value="${product.discount}" type="percent"/>
                      </td>
                      <td>${product.quantity}</td>
                      <td>${product.sold}</td>
                      <td>
                        <button
                                data-toggle="tooltip"
                                title="Edit"
                                class="pd-setting-ed"
                        >
                          <a href="/ecommerce/adminpage/product-update?id=<c:out value="${product.id}"/>">
                            <i
                                    class="fa fa-pencil-square-o"
                                    aria-hidden="true"
                            ></i>
                          </a>
                        </button>
                        <button
                                data-toggle="tooltip"
                                title="Trash"
                                class="pd-setting-ed"
                        >
                          <a class="text-white delete"
                             href="/ecommerce/adminpage/product-delete?id=<c:out value="${product.id}"/>"
                          >
                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                          </a>
                        </button>
                      </td>
                    </tr>
                  </c:forEach>
                </table>
                <div class="custom-pagination">
                  <ul class="pagination">
                    <c:if test="${currentPage != 1}">
                      <li class="page-item">
                        <a class="page-link" href="/ecommerce/adminpage/product-list?page=${currentPage - 1}">Trước</a>
                      </li>
                    </c:if>
                    <c:forEach begin="1" end="${numOfPage}" var="i">
                      <c:choose>
                        <c:when test="${currentPage eq i}">
                          <li class="page-item">
                            <a style="color: steelblue" class="page-link" href="">${i}</a>
                          </li>
                        </c:when>
                        <c:otherwise>
                          <li class="page-item">
                            <a href="/ecommerce/adminpage/product-list?page=${i}">${i}</a>
                          </li>
                        </c:otherwise>
                      </c:choose>
                    </c:forEach>
                    <c:if test="${currentPage lt numOfPage}">
                      <li class="page-item">
                        <a class="page-link" href="/ecommerce/adminpage/product-list?page=${currentPage + 1}">Tiếp theo</a>
                      </li>
                    </c:if>
                  </ul>
                </div>
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
<%--    <script src="../js/vendor/jquery-1.12.4.min.js"></script>--%>
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
      $('a.delete').confirm({
        title: 'Xóa?',
        content: 'Bạn có chắc chắn xóa sản phẩm này không?',
        buttons:{
          delete:{
            text:'Có',
            btnClass: 'btn-blue',
            action: function() {
              location.href = this.$target.attr("href");
            }},
          close: {
            text:'Không',
            action: function() {
            }}
        }
      })
    </script>
  </body>
</html>
