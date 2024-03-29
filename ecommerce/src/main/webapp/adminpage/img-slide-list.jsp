<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Thêm sản phẩm | Nalika - Material Admin Template</title>
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
    <script src="../js/vendor/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <style type="text/css">
      label.error {
        display: inline-block;
        color:red;
        width: 100%;
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
              <h4>Danh sách slide</h4>
              <div class="add-product">
                <a href="img-slide-add.jsp">Thêm slide mới</a>
              </div>
              <div class="single-product-tab-area mg-b-30">
                <!-- Single pro tab review Start-->
                <div class="single-pro-review-area">
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="review-tab-pro-inner">
                          <div
                                  id="myTabContent"
                                  class="tab-content custom-product-edit"
                          >
                            <div class="product-tab-list tab-pane fade active in" id="reviews">
                              <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                  <div class="review-content-section">
                                    <c:forEach var="img" items="${imgSlides}">
                                      <div class="row img-wrapper">
                                        <div class="col-lg-4">
                                          <div class="pro-edt-img">
                                            <img src="${img.imgUrl}" alt=""/>
                                          </div>
                                        </div>
                                        <div class="col-lg-8">
                                          <div class="product-edt-remove">
                                            <button type="button" class="img_delete btn btn-ctl-bt waves-effect waves-light">
                                              <a class="text-white delete"
                                                 href="/ecommerce/adminpage/img-slide-delete?id=<c:out value="${img.id}"/>"
                                              >
                                                <i class="fa fa-trash-o" aria-hidden="true"></i>
                                              </a>
                                            </button>
                                          </div>
                                        </div>
                                      </div>
                                    </c:forEach>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div
                                    class="product-tab-list tab-pane fade"
                                    id="INFORMATION"
                            >
                              <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                  <div class="review-content-section">
                                    <div class="card-block">
                                      <div class="text-muted f-w-400">
                                        <p>No reviews yet.</p>
                                      </div>
                                      <div class="m-t-10">
                                        <div class="txt-primary f-18 f-w-600">
                                          <p>Your Rating</p>
                                        </div>
                                        <div
                                                class="stars stars-example-css detail-stars"
                                        >
                                          <div class="review-rating">
                                            <fieldset class="rating">
                                              <input
                                                      type="radio"
                                                      id="star5"
                                                      name="rating"
                                                      value="5"
                                              />
                                              <label class="full" for="star5"></label>
                                              <input
                                                      type="radio"
                                                      id="star4half"
                                                      name="rating"
                                                      value="4 and a half"
                                              />
                                              <label
                                                      class="half"
                                                      for="star4half"
                                              ></label>
                                              <input
                                                      type="radio"
                                                      id="star4"
                                                      name="rating"
                                                      value="4"
                                              />
                                              <label class="full" for="star4"></label>
                                              <input
                                                      type="radio"
                                                      id="star3half"
                                                      name="rating"
                                                      value="3 and a half"
                                              />
                                              <label
                                                      class="half"
                                                      for="star3half"
                                              ></label>
                                              <input
                                                      type="radio"
                                                      id="star3"
                                                      name="rating"
                                                      value="3"
                                              />
                                              <label class="full" for="star3"></label>
                                              <input
                                                      type="radio"
                                                      id="star2half"
                                                      name="rating"
                                                      value="2 and a half"
                                              />
                                              <label
                                                      class="half"
                                                      for="star2half"
                                              ></label>
                                              <input
                                                      type="radio"
                                                      id="star2"
                                                      name="rating"
                                                      value="2"
                                              />
                                              <label class="full" for="star2"></label>
                                              <input
                                                      type="radio"
                                                      id="star1half"
                                                      name="rating"
                                                      value="1 and a half"
                                              />
                                              <label
                                                      class="half"
                                                      for="star1half"
                                              ></label>
                                              <input
                                                      type="radio"
                                                      id="star1"
                                                      name="rating"
                                                      value="1"
                                              />
                                              <label class="full" for="star1"></label>
                                              <input
                                                      type="radio"
                                                      id="starhalf"
                                                      name="rating"
                                                      value="half"
                                              />
                                              <label
                                                      class="half"
                                                      for="starhalf"
                                              ></label>
                                            </fieldset>
                                          </div>
                                          <div class="clear"></div>
                                        </div>
                                      </div>
                                      <div class="input-group mg-b-15 mg-t-15">
                                <span class="input-group-addon"
                                ><i
                                        class="icon nalika-user"
                                        aria-hidden="true"
                                ></i
                                ></span>
                                        <input
                                                type="text"
                                                class="form-control"
                                                placeholder="User Name"
                                        />
                                      </div>
                                      <div class="input-group mg-b-15">
                                <span class="input-group-addon"
                                ><i
                                        class="icon nalika-user"
                                        aria-hidden="true"
                                ></i
                                ></span>
                                        <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Last Name"
                                        />
                                      </div>
                                      <div class="input-group mg-b-15">
                                <span class="input-group-addon"
                                ><i
                                        class="icon nalika-mail"
                                        aria-hidden="true"
                                ></i
                                ></span>
                                        <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Email"
                                        />
                                      </div>
                                      <div class="form-group review-pro-edt mg-b-0-pt">
                                        <button
                                                type="submit"
                                                class="btn btn-ctl-bt waves-effect waves-light"
                                        >
                                          Submit
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
                    </div>
                  </div>
                </div>
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
<%--  <body>--%>
<%--    <!--[if lt IE 8]>--%>
<%--      <p class="browserupgrade">--%>
<%--        You are using an <strong>outdated</strong> browser. Please--%>
<%--        <a href="http://browsehappy.com/">upgrade your browser</a> to improve--%>
<%--        your experience.--%>
<%--      </p>--%>
<%--    <![endif]-->--%>

<%--    <div class="left-sidebar-pro">--%>
<%--      <nav id="sidebar" class="">--%>
<%--        <div class="sidebar-header">--%>
<%--          <a href="index.html"--%>
<%--            ><img class="main-logo" src="../images/logo/logo.png" alt=""--%>
<%--          /></a>--%>
<%--          <strong><img src="../images/logo/logosn.png" alt="" /></strong>--%>
<%--        </div>--%>
<%--        <div class="nalika-profile">--%>
<%--          <div class="profile-dtl">--%>
<%--            <a href="#"><img src="../images/notification/4.jpg" alt="" /></a>--%>
<%--            <h2>Lakian <span class="min-dtn">Das</span></h2>--%>
<%--          </div>--%>
<%--          <div class="profile-social-dtl">--%>
<%--            <ul class="dtl-social">--%>
<%--              <li>--%>
<%--                <a href="#"><i class="fa-brands fa-facebook"></i></a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="#"><i class="fa-brands fa-twitter"></i></a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="#"><i class="fa-brands fa-linkedin"></i></a>--%>
<%--              </li>--%>
<%--            </ul>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="left-custom-menu-adp-wrap comment-scrollbar">--%>
<%--          <nav class="sidebar-nav left-sidebar-menu-pro">--%>
<%--            <ul class="metismenu" id="menu1">--%>
<%--              <li class="active">--%>
<%--                <a class="has-arrow" href="index.html">--%>
<%--                  <i class="fa-solid fa-house"></i>--%>
<%--                  <span class="mini-click-non">Ecommerce</span>--%>
<%--                </a>--%>
<%--                <ul class="submenu-angle" aria-expanded="true">--%>
<%--                  <li>--%>
<%--                    <a title="Product List" href="product-list.jsp"--%>
<%--                      ><span class="mini-sub-pro">Sản phẩm</span></a--%>
<%--                    >--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a title="Product List" href="order-list.html"--%>
<%--                      ><span class="mini-sub-pro">Đơn hàng</span></a--%>
<%--                    >--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a title="Product List" href="user-list.jsp"--%>
<%--                      ><span class="mini-sub-pro">Người dùng</span></a--%>
<%--                    >--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a title="Product List" href="category-list.jsp"--%>
<%--                      ><span class="mini-sub-pro">Danh mục sản phẩm</span></a--%>
<%--                    >--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a title="Product List" href="blog-list.jsp"--%>
<%--                      ><span class="mini-sub-pro">Blog</span></a--%>
<%--                    >--%>
<%--                  </li>--%>
<%--                </ul>--%>
<%--              </li>--%>
<%--            </ul>--%>
<%--          </nav>--%>
<%--        </div>--%>
<%--      </nav>--%>
<%--    </div>--%>
<%--    <!-- Start Welcome area -->--%>
<%--    <div class="all-content-wrapper">--%>
<%--      <div class="container-fluid">--%>
<%--        <div class="row">--%>
<%--          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--            <div class="logo-pro">--%>
<%--              <a href="index.html"--%>
<%--                ><img class="main-logo" src="img/logo/logo.png" alt=""--%>
<%--              /></a>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="header-advance-area">--%>
<%--        <div class="header-top-area">--%>
<%--          <div class="container-fluid">--%>
<%--            <div class="row">--%>
<%--              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                <div class="header-top-wraper">--%>
<%--                  <div class="row">--%>
<%--                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">--%>
<%--                      <div class="menu-switcher-pro">--%>
<%--                        <button--%>
<%--                          type="button"--%>
<%--                          id="sidebarCollapse"--%>
<%--                          class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn"--%>
<%--                        >--%>
<%--                          <i class="fa-solid fa-bars"></i>--%>
<%--                        </button>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">--%>
<%--                      <div class="header-top-menu tabl-d-n hd-search-rp">--%>
<%--                        <div class="breadcome-heading">--%>
<%--                          <form role="search" class="">--%>
<%--                            <input--%>
<%--                              type="text"--%>
<%--                              placeholder="Search..."--%>
<%--                              class="form-control"--%>
<%--                            />--%>
<%--                            <a href=""><i class="fa fa-search"></i></a>--%>
<%--                          </form>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">--%>
<%--                      <div class="header-right-info">--%>
<%--                        <ul--%>
<%--                          class="nav navbar-nav mai-top-nav header-right-menu"--%>
<%--                        >--%>
<%--                          <li class="nav-item dropdown">--%>
<%--                            <a--%>
<%--                              href="#"--%>
<%--                              data-toggle="dropdown"--%>
<%--                              role="button"--%>
<%--                              aria-expanded="false"--%>
<%--                              class="nav-link dropdown-toggle"--%>
<%--                              ><i class="fa-solid fa-envelope"></i>--%>
<%--                              <span class="indicator-ms"></span--%>
<%--                            ></a>--%>
<%--                            <div--%>
<%--                              role="menu"--%>
<%--                              class="author-message-top dropdown-menu animated zoomIn"--%>
<%--                            >--%>
<%--                              <div class="message-single-top">--%>
<%--                                <h1>Message</h1>--%>
<%--                              </div>--%>
<%--                              <ul class="message-menu">--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="message-img">--%>
<%--                                      <img--%>
<%--                                        src="../images/contact/1.jpg"--%>
<%--                                        alt=""--%>
<%--                                      />--%>
<%--                                    </div>--%>
<%--                                    <div class="message-content">--%>
<%--                                      <span class="message-date">16 Sept</span>--%>
<%--                                      <h2>Advanda Cro</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="message-img">--%>
<%--                                      <img--%>
<%--                                        src="../images/contact/4.jpg"--%>
<%--                                        alt=""--%>
<%--                                      />--%>
<%--                                    </div>--%>
<%--                                    <div class="message-content">--%>
<%--                                      <span class="message-date">16 Sept</span>--%>
<%--                                      <h2>Sulaiman din</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="message-img">--%>
<%--                                      <img--%>
<%--                                        src="../images/contact/3.jpg"--%>
<%--                                        alt=""--%>
<%--                                      />--%>
<%--                                    </div>--%>
<%--                                    <div class="message-content">--%>
<%--                                      <span class="message-date">16 Sept</span>--%>
<%--                                      <h2>Victor Jara</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="message-img">--%>
<%--                                      <img--%>
<%--                                        src="../images/contact/2.jpg"--%>
<%--                                        alt=""--%>
<%--                                      />--%>
<%--                                    </div>--%>
<%--                                    <div class="message-content">--%>
<%--                                      <span class="message-date">16 Sept</span>--%>
<%--                                      <h2>Victor Jara</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                              </ul>--%>
<%--                              <div class="message-view">--%>
<%--                                <a href="#">View All Messages</a>--%>
<%--                              </div>--%>
<%--                            </div>--%>
<%--                          </li>--%>
<%--                          <li class="nav-item">--%>
<%--                            <a--%>
<%--                              href="#"--%>
<%--                              data-toggle="dropdown"--%>
<%--                              role="button"--%>
<%--                              aria-expanded="false"--%>
<%--                              class="nav-link dropdown-toggle"--%>
<%--                              ><i class="fa-solid fa-bell"></i--%>
<%--                              ><span class="indicator-nt"></span--%>
<%--                            ></a>--%>
<%--                            <div--%>
<%--                              role="menu"--%>
<%--                              class="notification-author dropdown-menu animated zoomIn"--%>
<%--                            >--%>
<%--                              <div class="notification-single-top">--%>
<%--                                <h1>Notifications</h1>--%>
<%--                              </div>--%>
<%--                              <ul class="notification-menu">--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="notification-icon">--%>
<%--                                      <i--%>
<%--                                        class="icon nalika-tick"--%>
<%--                                        aria-hidden="true"--%>
<%--                                      ></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="notification-content">--%>
<%--                                      <span class="notification-date"--%>
<%--                                        >16 Sept</span--%>
<%--                                      >--%>
<%--                                      <h2>Advanda Cro</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="notification-icon">--%>
<%--                                      <i--%>
<%--                                        class="icon nalika-cloud"--%>
<%--                                        aria-hidden="true"--%>
<%--                                      ></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="notification-content">--%>
<%--                                      <span class="notification-date"--%>
<%--                                        >16 Sept</span--%>
<%--                                      >--%>
<%--                                      <h2>Sulaiman din</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="notification-icon">--%>
<%--                                      <i--%>
<%--                                        class="icon nalika-folder"--%>
<%--                                        aria-hidden="true"--%>
<%--                                      ></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="notification-content">--%>
<%--                                      <span class="notification-date"--%>
<%--                                        >16 Sept</span--%>
<%--                                      >--%>
<%--                                      <h2>Victor Jara</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a href="#">--%>
<%--                                    <div class="notification-icon">--%>
<%--                                      <i--%>
<%--                                        class="icon nalika-bar-chart"--%>
<%--                                        aria-hidden="true"--%>
<%--                                      ></i>--%>
<%--                                    </div>--%>
<%--                                    <div class="notification-content">--%>
<%--                                      <span class="notification-date"--%>
<%--                                        >16 Sept</span--%>
<%--                                      >--%>
<%--                                      <h2>Victor Jara</h2>--%>
<%--                                      <p>--%>
<%--                                        Please done this project as soon--%>
<%--                                        possible.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                  </a>--%>
<%--                                </li>--%>
<%--                              </ul>--%>
<%--                              <div class="notification-view">--%>
<%--                                <a href="#">View All Notification</a>--%>
<%--                              </div>--%>
<%--                            </div>--%>
<%--                          </li>--%>
<%--                          <li class="nav-item">--%>
<%--                            <a--%>
<%--                              href="#"--%>
<%--                              data-toggle="dropdown"--%>
<%--                              role="button"--%>
<%--                              aria-expanded="false"--%>
<%--                              class="nav-link dropdown-toggle"--%>
<%--                            >--%>
<%--                              <i class="fa-solid fa-user"></i>--%>
<%--                              <span class="admin-name">Tên người dùng</span>--%>
<%--                              <i class="fa-solid fa-angle-down"></i>--%>
<%--                            </a>--%>
<%--                            <ul--%>
<%--                              role="menu"--%>
<%--                              class="dropdown-header-top author-log dropdown-menu animated zoomIn"--%>
<%--                            >--%>
<%--                              <li>--%>
<%--                                <a href="register.html"--%>
<%--                                  ><span class="fa-solid fa-registered"></span>--%>
<%--                                  Đăng kí</a--%>
<%--                                >--%>
<%--                              </li>--%>
<%--                              <li>--%>
<%--                                <a href="#"--%>
<%--                                  ><span class="fa-solid fa-user"></span> Thông--%>
<%--                                  tin cá nhân</a--%>
<%--                                >--%>
<%--                              </li>--%>

<%--                              <li>--%>
<%--                                <a href="#"--%>
<%--                                  ><span class="fa-solid fa-gear"></span> Cài--%>
<%--                                  đặt</a--%>
<%--                                >--%>
<%--                              </li>--%>
<%--                              <li>--%>
<%--                                <a href="login.html"--%>
<%--                                  ><span--%>
<%--                                    class="fa-solid fa-right-from-bracket"--%>
<%--                                  ></span>--%>
<%--                                  Đăng xuất</a--%>
<%--                                >--%>
<%--                              </li>--%>
<%--                            </ul>--%>
<%--                          </li>--%>
<%--                          <li class="nav-item nav-setting-open">--%>
<%--                            <a--%>
<%--                              href="#"--%>
<%--                              data-toggle="dropdown"--%>
<%--                              role="button"--%>
<%--                              aria-expanded="false"--%>
<%--                              class="nav-link dropdown-toggle"--%>
<%--                              ><i class="fa-solid fa-bars"></i--%>
<%--                            ></a>--%>

<%--                            <div--%>
<%--                              role="menu"--%>
<%--                              class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn"--%>
<%--                            >--%>
<%--                              <ul class="nav nav-tabs custon-set-tab">--%>
<%--                                <li class="active">--%>
<%--                                  <a data-toggle="tab" href="#Notes">News</a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a data-toggle="tab" href="#Projects"--%>
<%--                                    >Activity</a--%>
<%--                                  >--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                  <a data-toggle="tab" href="#Settings"--%>
<%--                                    >Settings</a--%>
<%--                                  >--%>
<%--                                </li>--%>
<%--                              </ul>--%>

<%--                              <div class="tab-content custom-bdr-nt">--%>
<%--                                <div id="Notes" class="tab-pane fade in active">--%>
<%--                                  <div class="notes-area-wrap">--%>
<%--                                    <div class="note-heading-indicate">--%>
<%--                                      <h2>--%>
<%--                                        <i class="icon nalika-chat"></i> Latest--%>
<%--                                        News--%>
<%--                                      </h2>--%>
<%--                                      <p>You have 10 New News.</p>--%>
<%--                                    </div>--%>
<%--                                    <div--%>
<%--                                      class="notes-list-area notes-menu-scrollbar"--%>
<%--                                    >--%>
<%--                                      <ul class="notes-menu-list">--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/4.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/1.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/2.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/3.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/4.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/1.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/2.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/1.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/2.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="notes-list-flow">--%>
<%--                                              <div class="notes-img">--%>
<%--                                                <img--%>
<%--                                                  src="../images/contact/3.jpg"--%>
<%--                                                  alt=""--%>
<%--                                                />--%>
<%--                                              </div>--%>
<%--                                              <div class="notes-content">--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more-or-less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span>Yesterday 2:45 pm</span>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                      </ul>--%>
<%--                                    </div>--%>
<%--                                  </div>--%>
<%--                                </div>--%>
<%--                                <div id="Projects" class="tab-pane fade">--%>
<%--                                  <div class="projects-settings-wrap">--%>
<%--                                    <div class="note-heading-indicate">--%>
<%--                                      <h2>--%>
<%--                                        <i class="icon nalika-happiness"></i>--%>
<%--                                        Recent Activity--%>
<%--                                      </h2>--%>
<%--                                      <p>You have 20 Recent Activity.</p>--%>
<%--                                    </div>--%>
<%--                                    <div--%>
<%--                                      class="project-st-list-area project-st-menu-scrollbar"--%>
<%--                                    >--%>
<%--                                      <ul class="projects-st-menu-list">--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New User Registered</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >1 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New Order Received</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >2 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New Order Received</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >3 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New Order Received</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >4 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New User Registered</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >5 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New Order</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >6 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New User</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >7 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                          <a href="#">--%>
<%--                                            <div class="project-list-flow">--%>
<%--                                              <div class="projects-st-heading">--%>
<%--                                                <h2>New Order</h2>--%>
<%--                                                <p>--%>
<%--                                                  The point of using Lorem Ipsum--%>
<%--                                                  is that it has a more or less--%>
<%--                                                  normal.--%>
<%--                                                </p>--%>
<%--                                                <span class="project-st-time"--%>
<%--                                                  >9 hours ago</span--%>
<%--                                                >--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </a>--%>
<%--                                        </li>--%>
<%--                                      </ul>--%>
<%--                                    </div>--%>
<%--                                  </div>--%>
<%--                                </div>--%>
<%--                                <div id="Settings" class="tab-pane fade">--%>
<%--                                  <div class="setting-panel-area">--%>
<%--                                    <div class="note-heading-indicate">--%>
<%--                                      <h2>--%>
<%--                                        <i class="icon nalika-gear"></i>--%>
<%--                                        Settings Panel--%>
<%--                                      </h2>--%>
<%--                                      <p>--%>
<%--                                        You have 20 Settings. 5 not completed.--%>
<%--                                      </p>--%>
<%--                                    </div>--%>
<%--                                    <ul class="setting-panel-list">--%>
<%--                                      <li>--%>
<%--                                        <div class="checkbox-setting-pro">--%>
<%--                                          <div class="checkbox-title-pro">--%>
<%--                                            <h2>Show notifications</h2>--%>
<%--                                            <div class="ts-custom-check">--%>
<%--                                              <div class="onoffswitch">--%>
<%--                                                <input--%>
<%--                                                  type="checkbox"--%>
<%--                                                  name="collapsemenu"--%>
<%--                                                  class="onoffswitch-checkbox"--%>
<%--                                                  id="example"--%>
<%--                                                />--%>
<%--                                                <label--%>
<%--                                                  class="onoffswitch-label"--%>
<%--                                                  for="example"--%>
<%--                                                >--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-inner"--%>
<%--                                                  ></span>--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-switch"--%>
<%--                                                  ></span>--%>
<%--                                                </label>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </div>--%>
<%--                                        </div>--%>
<%--                                      </li>--%>
<%--                                      <li>--%>
<%--                                        <div class="checkbox-setting-pro">--%>
<%--                                          <div class="checkbox-title-pro">--%>
<%--                                            <h2>Disable Chat</h2>--%>
<%--                                            <div class="ts-custom-check">--%>
<%--                                              <div class="onoffswitch">--%>
<%--                                                <input--%>
<%--                                                  type="checkbox"--%>
<%--                                                  name="collapsemenu"--%>
<%--                                                  class="onoffswitch-checkbox"--%>
<%--                                                  id="example3"--%>
<%--                                                />--%>
<%--                                                <label--%>
<%--                                                  class="onoffswitch-label"--%>
<%--                                                  for="example3"--%>
<%--                                                >--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-inner"--%>
<%--                                                  ></span>--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-switch"--%>
<%--                                                  ></span>--%>
<%--                                                </label>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </div>--%>
<%--                                        </div>--%>
<%--                                      </li>--%>
<%--                                      <li>--%>
<%--                                        <div class="checkbox-setting-pro">--%>
<%--                                          <div class="checkbox-title-pro">--%>
<%--                                            <h2>Enable history</h2>--%>
<%--                                            <div class="ts-custom-check">--%>
<%--                                              <div class="onoffswitch">--%>
<%--                                                <input--%>
<%--                                                  type="checkbox"--%>
<%--                                                  name="collapsemenu"--%>
<%--                                                  class="onoffswitch-checkbox"--%>
<%--                                                  id="example4"--%>
<%--                                                />--%>
<%--                                                <label--%>
<%--                                                  class="onoffswitch-label"--%>
<%--                                                  for="example4"--%>
<%--                                                >--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-inner"--%>
<%--                                                  ></span>--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-switch"--%>
<%--                                                  ></span>--%>
<%--                                                </label>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </div>--%>
<%--                                        </div>--%>
<%--                                      </li>--%>
<%--                                      <li>--%>
<%--                                        <div class="checkbox-setting-pro">--%>
<%--                                          <div class="checkbox-title-pro">--%>
<%--                                            <h2>Show charts</h2>--%>
<%--                                            <div class="ts-custom-check">--%>
<%--                                              <div class="onoffswitch">--%>
<%--                                                <input--%>
<%--                                                  type="checkbox"--%>
<%--                                                  name="collapsemenu"--%>
<%--                                                  class="onoffswitch-checkbox"--%>
<%--                                                  id="example7"--%>
<%--                                                />--%>
<%--                                                <label--%>
<%--                                                  class="onoffswitch-label"--%>
<%--                                                  for="example7"--%>
<%--                                                >--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-inner"--%>
<%--                                                  ></span>--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-switch"--%>
<%--                                                  ></span>--%>
<%--                                                </label>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </div>--%>
<%--                                        </div>--%>
<%--                                      </li>--%>
<%--                                      <li>--%>
<%--                                        <div class="checkbox-setting-pro">--%>
<%--                                          <div class="checkbox-title-pro">--%>
<%--                                            <h2>Update everyday</h2>--%>
<%--                                            <div class="ts-custom-check">--%>
<%--                                              <div class="onoffswitch">--%>
<%--                                                <input--%>
<%--                                                  type="checkbox"--%>
<%--                                                  name="collapsemenu"--%>
<%--                                                  checked=""--%>
<%--                                                  class="onoffswitch-checkbox"--%>
<%--                                                  id="example2"--%>
<%--                                                />--%>
<%--                                                <label--%>
<%--                                                  class="onoffswitch-label"--%>
<%--                                                  for="example2"--%>
<%--                                                >--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-inner"--%>
<%--                                                  ></span>--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-switch"--%>
<%--                                                  ></span>--%>
<%--                                                </label>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </div>--%>
<%--                                        </div>--%>
<%--                                      </li>--%>
<%--                                      <li>--%>
<%--                                        <div class="checkbox-setting-pro">--%>
<%--                                          <div class="checkbox-title-pro">--%>
<%--                                            <h2>Global search</h2>--%>
<%--                                            <div class="ts-custom-check">--%>
<%--                                              <div class="onoffswitch">--%>
<%--                                                <input--%>
<%--                                                  type="checkbox"--%>
<%--                                                  name="collapsemenu"--%>
<%--                                                  checked=""--%>
<%--                                                  class="onoffswitch-checkbox"--%>
<%--                                                  id="example6"--%>
<%--                                                />--%>
<%--                                                <label--%>
<%--                                                  class="onoffswitch-label"--%>
<%--                                                  for="example6"--%>
<%--                                                >--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-inner"--%>
<%--                                                  ></span>--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-switch"--%>
<%--                                                  ></span>--%>
<%--                                                </label>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </div>--%>
<%--                                        </div>--%>
<%--                                      </li>--%>
<%--                                      <li>--%>
<%--                                        <div class="checkbox-setting-pro">--%>
<%--                                          <div class="checkbox-title-pro">--%>
<%--                                            <h2>Offline users</h2>--%>
<%--                                            <div class="ts-custom-check">--%>
<%--                                              <div class="onoffswitch">--%>
<%--                                                <input--%>
<%--                                                  type="checkbox"--%>
<%--                                                  name="collapsemenu"--%>
<%--                                                  checked=""--%>
<%--                                                  class="onoffswitch-checkbox"--%>
<%--                                                  id="example5"--%>
<%--                                                />--%>
<%--                                                <label--%>
<%--                                                  class="onoffswitch-label"--%>
<%--                                                  for="example5"--%>
<%--                                                >--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-inner"--%>
<%--                                                  ></span>--%>
<%--                                                  <span--%>
<%--                                                    class="onoffswitch-switch"--%>
<%--                                                  ></span>--%>
<%--                                                </label>--%>
<%--                                              </div>--%>
<%--                                            </div>--%>
<%--                                          </div>--%>
<%--                                        </div>--%>
<%--                                      </li>--%>
<%--                                    </ul>--%>
<%--                                  </div>--%>
<%--                                </div>--%>
<%--                              </div>--%>
<%--                            </div>--%>
<%--                          </li>--%>
<%--                        </ul>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <!-- Mobile Menu start -->--%>
<%--        <div class="mobile-menu-area">--%>
<%--          <div class="container">--%>
<%--            <div class="row">--%>
<%--              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                <div class="mobile-menu">--%>
<%--                  <nav id="dropdown">--%>
<%--                    <ul class="mobile-menu-nav">--%>
<%--                      <li>--%>
<%--                        <a data-toggle="collapse" data-target="#Charts" href="#"--%>
<%--                          >Home--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul class="collapse dropdown-header-top">--%>
<%--                          <li><a href="index.html">Dashboard v.1</a></li>--%>
<%--                          <li><a href="index-1.html">Dashboard v.2</a></li>--%>
<%--                          <li><a href="index-3.html">Dashboard v.3</a></li>--%>
<%--                          <li><a href="product-list.jsp">Product List</a></li>--%>
<%--                          <li><a href="product-edit.html">Product Edit</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="product-detail.html">Product Detail</a>--%>
<%--                          </li>--%>
<%--                          <li><a href="product-cart.html">Product Cart</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="product-payment.html">Product Payment</a>--%>
<%--                          </li>--%>
<%--                          <li><a href="analytics.html">Analytics</a></li>--%>
<%--                          <li><a href="widgets.html">Widgets</a></li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a data-toggle="collapse" data-target="#demo" href="#"--%>
<%--                          >Mailbox--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul id="demo" class="collapse dropdown-header-top">--%>
<%--                          <li><a href="mailbox.html">Inbox</a></li>--%>
<%--                          <li><a href="mailbox-view.html">View Mail</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="mailbox-compose.html">Compose Mail</a>--%>
<%--                          </li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a data-toggle="collapse" data-target="#others" href="#"--%>
<%--                          >Miscellaneous--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul id="others" class="collapse dropdown-header-top">--%>
<%--                          <li><a href="file-manager.html">File Manager</a></li>--%>
<%--                          <li><a href="contacts.html">Contacts Client</a></li>--%>
<%--                          <li><a href="projects.html">Project</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="project-details.html">Project Details</a>--%>
<%--                          </li>--%>
<%--                          <li><a href="blog.html">Blog</a></li>--%>
<%--                          <li><a href="blog-details.html">Blog Details</a></li>--%>
<%--                          <li><a href="404.html">404 Page</a></li>--%>
<%--                          <li><a href="500.html">500 Page</a></li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a--%>
<%--                          data-toggle="collapse"--%>
<%--                          data-target="#Miscellaneousmob"--%>
<%--                          href="#"--%>
<%--                          >Interface--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul--%>
<%--                          id="Miscellaneousmob"--%>
<%--                          class="collapse dropdown-header-top"--%>
<%--                        >--%>
<%--                          <li><a href="google-map.html">Google Map</a></li>--%>
<%--                          <li><a href="data-maps.html">Data Maps</a></li>--%>
<%--                          <li><a href="pdf-viewer.html">Pdf Viewer</a></li>--%>
<%--                          <li><a href="x-editable.html">X-Editable</a></li>--%>
<%--                          <li><a href="code-editor.html">Code Editor</a></li>--%>
<%--                          <li><a href="tree-view.html">Tree View</a></li>--%>
<%--                          <li><a href="preloader.html">Preloader</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="images-cropper.html">Images Cropper</a>--%>
<%--                          </li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a--%>
<%--                          data-toggle="collapse"--%>
<%--                          data-target="#Chartsmob"--%>
<%--                          href="#"--%>
<%--                          >Charts--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul id="Chartsmob" class="collapse dropdown-header-top">--%>
<%--                          <li><a href="bar-charts.html">Bar Charts</a></li>--%>
<%--                          <li><a href="line-charts.html">Line Charts</a></li>--%>
<%--                          <li><a href="area-charts.html">Area Charts</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="rounded-chart.html">Rounded Charts</a>--%>
<%--                          </li>--%>
<%--                          <li><a href="c3.html">C3 Charts</a></li>--%>
<%--                          <li><a href="sparkline.html">Sparkline Charts</a></li>--%>
<%--                          <li><a href="peity.html">Peity Charts</a></li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a--%>
<%--                          data-toggle="collapse"--%>
<%--                          data-target="#Tablesmob"--%>
<%--                          href="#"--%>
<%--                          >Tables--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul id="Tablesmob" class="collapse dropdown-header-top">--%>
<%--                          <li><a href="static-table.html">Static Table</a></li>--%>
<%--                          <li><a href="data-table.html">Data Table</a></li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a--%>
<%--                          data-toggle="collapse"--%>
<%--                          data-target="#formsmob"--%>
<%--                          href="#"--%>
<%--                          >Forms--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul id="formsmob" class="collapse dropdown-header-top">--%>
<%--                          <li>--%>
<%--                            <a href="basic-form-element.html"--%>
<%--                              >Basic Form Elements</a--%>
<%--                            >--%>
<%--                          </li>--%>
<%--                          <li>--%>
<%--                            <a href="advance-form-element.html"--%>
<%--                              >Advanced Form Elements</a--%>
<%--                            >--%>
<%--                          </li>--%>
<%--                          <li>--%>
<%--                            <a href="password-meter.html">Password Meter</a>--%>
<%--                          </li>--%>
<%--                          <li><a href="multi-upload.html">Multi Upload</a></li>--%>
<%--                          <li><a href="tinymc.html">Text Editor</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="dual-list-box.html">Dual List Box</a>--%>
<%--                          </li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a--%>
<%--                          data-toggle="collapse"--%>
<%--                          data-target="#Appviewsmob"--%>
<%--                          href="#"--%>
<%--                          >App views--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul--%>
<%--                          id="Appviewsmob"--%>
<%--                          class="collapse dropdown-header-top"--%>
<%--                        >--%>
<%--                          <li>--%>
<%--                            <a href="basic-form-element.html"--%>
<%--                              >Basic Form Elements</a--%>
<%--                            >--%>
<%--                          </li>--%>
<%--                          <li>--%>
<%--                            <a href="advance-form-element.html"--%>
<%--                              >Advanced Form Elements</a--%>
<%--                            >--%>
<%--                          </li>--%>
<%--                          <li>--%>
<%--                            <a href="password-meter.html">Password Meter</a>--%>
<%--                          </li>--%>
<%--                          <li><a href="multi-upload.html">Multi Upload</a></li>--%>
<%--                          <li><a href="tinymc.html">Text Editor</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="dual-list-box.html">Dual List Box</a>--%>
<%--                          </li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                      <li>--%>
<%--                        <a--%>
<%--                          data-toggle="collapse"--%>
<%--                          data-target="#Pagemob"--%>
<%--                          href="#"--%>
<%--                          >Pages--%>
<%--                          <span--%>
<%--                            class="admin-project-icon nalika-icon nalika-down-arrow"--%>
<%--                          ></span--%>
<%--                        ></a>--%>
<%--                        <ul id="Pagemob" class="collapse dropdown-header-top">--%>
<%--                          <li><a href="login.html">Login</a></li>--%>
<%--                          <li><a href="register.html">Register</a></li>--%>
<%--                          <li><a href="lock.html">Lock</a></li>--%>
<%--                          <li>--%>
<%--                            <a href="password-recovery.html"--%>
<%--                              >Password Recovery</a--%>
<%--                            >--%>
<%--                          </li>--%>
<%--                        </ul>--%>
<%--                      </li>--%>
<%--                    </ul>--%>
<%--                  </nav>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <!-- Mobile Menu end -->--%>
<%--        <div class="breadcome-area">--%>
<%--          <div class="container-fluid">--%>
<%--            <div class="row">--%>
<%--              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                <div class="breadcome-list">--%>
<%--                  <div class="row">--%>
<%--                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">--%>
<%--                      <div class="breadcomb-wp">--%>
<%--                        <div class="breadcomb-icon">--%>
<%--                          <i class="fa-solid fa-house"></i>--%>
<%--                        </div>--%>
<%--                        <div class="breadcomb-ctn">--%>
<%--                          <h2>Admin page</h2>--%>
<%--                          <p>--%>
<%--                            Welcome to--%>
<%--                            <span class="bread-ntd">Admin page</span>--%>
<%--                          </p>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">--%>
<%--                      <div class="breadcomb-report">--%>
<%--                        <button--%>
<%--                          data-toggle="tooltip"--%>
<%--                          data-placement="left"--%>
<%--                          title="Download Report"--%>
<%--                          class="btn"--%>
<%--                        >--%>
<%--                          <i class="fa-solid fa-download"></i>--%>
<%--                        </button>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <!-- Single pro tab start-->--%>
<%--      <div class="single-product-tab-area mg-b-30">--%>
<%--        <!-- Single pro tab review Start-->--%>
<%--        <div class="single-pro-review-area">--%>
<%--          <div class="container-fluid">--%>
<%--            <div class="row">--%>
<%--              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                <div class="review-tab-pro-inner">--%>
<%--                  <ul id="myTab3" class="tab-review-design">--%>
<%--                    <h4>Danh sách sản phẩm</h4>--%>
<%--&lt;%&ndash;                    <li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                      <a href="#reviews"&ndash;%&gt;--%>
<%--&lt;%&ndash;                      ><i class="fa-solid fa-plus"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        Hình ảnh</a&ndash;%&gt;--%>
<%--&lt;%&ndash;                      >&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </li>&ndash;%&gt;--%>
<%--                  </ul>--%>
<%--                  <div--%>
<%--                    id="myTabContent"--%>
<%--                    class="tab-content custom-product-edit"--%>
<%--                  >--%>
<%--                    <div class="product-tab-list tab-pane fade active in" id="reviews">--%>
<%--                      <div class="row">--%>
<%--                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                          <div class="review-content-section">--%>
<%--                            <c:forEach var="img" items="${imgSlides}">--%>
<%--                              <div class="row img-wrapper">--%>
<%--                                <div class="col-lg-4">--%>
<%--                                  <div class="pro-edt-img">--%>
<%--                                    <img src="${img.imgUrl}" alt=""/>--%>
<%--                                  </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-lg-8">--%>
<%--                                    <div class="product-edt-remove">--%>
<%--                                      <button type="button" class="img_delete btn btn-ctl-bt waves-effect waves-light" style="margin-top: 50px ">--%>
<%--                                        <a class="text-white delete"--%>
<%--                                           href="/ecommerce/adminpage/img-slide-delete?id=<c:out value="${img.id}"/>"--%>
<%--                                        >--%>
<%--                                          <i class="fa fa-trash-o" aria-hidden="true"></i>--%>
<%--                                        </a>--%>
<%--                                      </button>--%>
<%--                                  </div>--%>
<%--                                </div>--%>
<%--                              </div>--%>
<%--                            </c:forEach>--%>
<%--                          </div>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    <div--%>
<%--                      class="product-tab-list tab-pane fade"--%>
<%--                      id="INFORMATION"--%>
<%--                    >--%>
<%--                      <div class="row">--%>
<%--                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                          <div class="review-content-section">--%>
<%--                            <div class="card-block">--%>
<%--                              <div class="text-muted f-w-400">--%>
<%--                                <p>No reviews yet.</p>--%>
<%--                              </div>--%>
<%--                              <div class="m-t-10">--%>
<%--                                <div class="txt-primary f-18 f-w-600">--%>
<%--                                  <p>Your Rating</p>--%>
<%--                                </div>--%>
<%--                                <div--%>
<%--                                  class="stars stars-example-css detail-stars"--%>
<%--                                >--%>
<%--                                  <div class="review-rating">--%>
<%--                                    <fieldset class="rating">--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star5"--%>
<%--                                        name="rating"--%>
<%--                                        value="5"--%>
<%--                                      />--%>
<%--                                      <label class="full" for="star5"></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star4half"--%>
<%--                                        name="rating"--%>
<%--                                        value="4 and a half"--%>
<%--                                      />--%>
<%--                                      <label--%>
<%--                                        class="half"--%>
<%--                                        for="star4half"--%>
<%--                                      ></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star4"--%>
<%--                                        name="rating"--%>
<%--                                        value="4"--%>
<%--                                      />--%>
<%--                                      <label class="full" for="star4"></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star3half"--%>
<%--                                        name="rating"--%>
<%--                                        value="3 and a half"--%>
<%--                                      />--%>
<%--                                      <label--%>
<%--                                        class="half"--%>
<%--                                        for="star3half"--%>
<%--                                      ></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star3"--%>
<%--                                        name="rating"--%>
<%--                                        value="3"--%>
<%--                                      />--%>
<%--                                      <label class="full" for="star3"></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star2half"--%>
<%--                                        name="rating"--%>
<%--                                        value="2 and a half"--%>
<%--                                      />--%>
<%--                                      <label--%>
<%--                                        class="half"--%>
<%--                                        for="star2half"--%>
<%--                                      ></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star2"--%>
<%--                                        name="rating"--%>
<%--                                        value="2"--%>
<%--                                      />--%>
<%--                                      <label class="full" for="star2"></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star1half"--%>
<%--                                        name="rating"--%>
<%--                                        value="1 and a half"--%>
<%--                                      />--%>
<%--                                      <label--%>
<%--                                        class="half"--%>
<%--                                        for="star1half"--%>
<%--                                      ></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="star1"--%>
<%--                                        name="rating"--%>
<%--                                        value="1"--%>
<%--                                      />--%>
<%--                                      <label class="full" for="star1"></label>--%>
<%--                                      <input--%>
<%--                                        type="radio"--%>
<%--                                        id="starhalf"--%>
<%--                                        name="rating"--%>
<%--                                        value="half"--%>
<%--                                      />--%>
<%--                                      <label--%>
<%--                                        class="half"--%>
<%--                                        for="starhalf"--%>
<%--                                      ></label>--%>
<%--                                    </fieldset>--%>
<%--                                  </div>--%>
<%--                                  <div class="clear"></div>--%>
<%--                                </div>--%>
<%--                              </div>--%>
<%--                              <div class="input-group mg-b-15 mg-t-15">--%>
<%--                                <span class="input-group-addon"--%>
<%--                                  ><i--%>
<%--                                    class="icon nalika-user"--%>
<%--                                    aria-hidden="true"--%>
<%--                                  ></i--%>
<%--                                ></span>--%>
<%--                                <input--%>
<%--                                  type="text"--%>
<%--                                  class="form-control"--%>
<%--                                  placeholder="User Name"--%>
<%--                                />--%>
<%--                              </div>--%>
<%--                              <div class="input-group mg-b-15">--%>
<%--                                <span class="input-group-addon"--%>
<%--                                  ><i--%>
<%--                                    class="icon nalika-user"--%>
<%--                                    aria-hidden="true"--%>
<%--                                  ></i--%>
<%--                                ></span>--%>
<%--                                <input--%>
<%--                                  type="text"--%>
<%--                                  class="form-control"--%>
<%--                                  placeholder="Last Name"--%>
<%--                                />--%>
<%--                              </div>--%>
<%--                              <div class="input-group mg-b-15">--%>
<%--                                <span class="input-group-addon"--%>
<%--                                  ><i--%>
<%--                                    class="icon nalika-mail"--%>
<%--                                    aria-hidden="true"--%>
<%--                                  ></i--%>
<%--                                ></span>--%>
<%--                                <input--%>
<%--                                  type="text"--%>
<%--                                  class="form-control"--%>
<%--                                  placeholder="Email"--%>
<%--                                />--%>
<%--                              </div>--%>
<%--                              <div class="form-group review-pro-edt mg-b-0-pt">--%>
<%--                                <button--%>
<%--                                  type="submit"--%>
<%--                                  class="btn btn-ctl-bt waves-effect waves-light"--%>
<%--                                >--%>
<%--                                  Submit--%>
<%--                                </button>--%>
<%--                              </div>--%>
<%--                            </div>--%>
<%--                          </div>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="footer-copyright-area">--%>
<%--        <div class="container-fluid">--%>
<%--          <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--              <div class="footer-copy-right">--%>
<%--                <p>--%>
<%--                  Copyright © 2018--%>
<%--                  <a href="https://colorlib.com/wp/templates/">Colorlib</a> All--%>
<%--                  rights reserved.--%>
<%--                </p>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>

<%--    <!-- jquery--%>
<%--		============================================ -->--%>
<%--&lt;%&ndash;    <script src="../js/vendor/jquery-1.12.4.min.js"></script>&ndash;%&gt;--%>
<%--    <!-- bootstrap JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/bootstrap.min.js"></script>--%>
<%--    <!-- wow JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/wow.min.js"></script>--%>
<%--    <!-- price-slider JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/jquery-price-slider.js"></script>--%>
<%--    <!-- meanmenu JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/jquery.meanmenu.js"></script>--%>
<%--    <!-- owl.carousel JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/owl.carousel.min.js"></script>--%>
<%--    <!-- sticky JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/jquery.sticky.js"></script>--%>
<%--    <!-- scrollUp JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/jquery.scrollUp.min.js"></script>--%>
<%--    <!-- mCustomScrollbar JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>--%>
<%--    <script src="../js/scrollbar/mCustomScrollbar-active.js"></script>--%>
<%--    <!-- metisMenu JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/metisMenu/metisMenu.min.js"></script>--%>
<%--    <script src="../js/metisMenu/metisMenu-active.js"></script>--%>
<%--    <!-- sparkline JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/sparkline/jquery.sparkline.min.js"></script>--%>
<%--    <script src="../js/sparkline/jquery.charts-sparkline.js"></script>--%>
<%--    <!-- calendar JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/calendar/moment.min.js"></script>--%>
<%--    <script src="../js/calendar/fullcalendar.min.js"></script>--%>
<%--    <script src="../js/calendar/fullcalendar-active.js"></script>--%>
<%--    <!-- float JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/flot/jquery.flot.js"></script>--%>
<%--    <script src="../js/flot/jquery.flot.resize.js"></script>--%>
<%--    <script src="../js/flot/curvedLines.js"></script>--%>
<%--    <script src="../js/flot/flot-active.js"></script>--%>
<%--    <!-- plugins JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/plugins.js"></script>--%>
<%--    <!-- main JS--%>
<%--		============================================ -->--%>
<%--    <script src="../js/main1.js"></script>--%>
<%--    <script type="text/javascript">--%>
<%--      $('a.delete').confirm({--%>
<%--        title: 'Xóa?',--%>
<%--        content: 'Bạn có chắc chắn xóa ảnh này không?',--%>
<%--        buttons:{--%>
<%--          delete:{--%>
<%--            text:'Có',--%>
<%--            btnClass: 'btn-blue',--%>
<%--            action: function() {--%>
<%--              location.href = this.$target.attr("href");--%>
<%--            }},--%>
<%--          close: {--%>
<%--            text:'Không',--%>
<%--            action: function() {--%>
<%--            }}--%>
<%--        }--%>
<%--      })--%>
<%--    </script>--%>
<%--  </body>--%>
</html>
