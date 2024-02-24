<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  <!-- Single pro tab start-->
  <div class="single-product-tab-area mg-b-30">
    <!-- Single pro tab review Start-->
    <div class="single-pro-review-area">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="review-tab-pro-inner">
              <ul id="myTab3" class="tab-review-design">
                <li class="active">
                  <a href="#description"
                  ><i class="fa-solid fa-plus"></i>
                    Thông tin đơn hàng</a
                  >
                </li>
              </ul>
              <div
                      id="myTabContent"
                      class="tab-content custom-product-edit"
              >
                <div class="product-tab-list tab-pane fade active in" id="description">
                  <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                      <div class="checkout_infor_wrapper">
                        <h3>Thông tin khách hàng</h3>
                        <div class="checkout_infor">
                    <span class="checkout__infor_title">
                        <i class="fa-solid fa-user"></i>
                        Tên khách hàng:
                    </span>
                          <p id="customer-name">Tên người dùng 1</p>
                        </div>
                        <div class="checkout_infor">
                    <span class="checkout__infor_title">
                        <i class="fa-solid fa-envelope"></i>
                        Địa chỉ email:
                    </span>
                          <p id="customer-email">example@gmail.com</p>
                        </div>
                        <div class="checkout_infor">
                    <span class="checkout__infor_title">
                        <i class="fa-solid fa-phone"></i>
                        Số điện thoại:
                    </span>
                          <p id="customer-phone">0123456789</p>
                        </div>
                        <div class="checkout_infor">
                    <span class="checkout__infor_title">
                        <i class="fa-solid fa-location-dot"></i>
                        Địa chỉ:
                    </span>
                          <p id="customer-address">Linh Trung, Thủ Đức</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                      <div class="">
                        <table class="checkout__totals">
                          <thead class="checkout__totals-header">
                          <tr>
                            <th>Sản phẩm</th>
                            <th></th>
                            <th>Tổng</th>
                          </tr>
                          </thead>
                          <tbody id="product-details" class="checkout__totals-products">
                          <!-- Nội dung sản phẩm sẽ được cập nhật bởi JavaScript -->
                          </tbody>
                          <tbody class="checkout__totals-subtotals">
                          <tr>
                            <th>Tạm tính</th>
                            <td></td>
                            <td id="subtotal"></td>
                          </tr>
                          <tr>
                            <th>Phí vận chuyển</th>
                            <td></td>
                            <td id="shipping-fee"></td>
                          </tr>
                          </tbody>
                          <tfoot class="checkout__totals-footer">
                          <tr>
                            <th>Tổng</th>
                            <td></td>
                            <td id="total-price"></td>
                          </tr>
                          </tfoot>
                        </table>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <div class="text-center custom-pro-edt-ds">
                        <button type="button" class="btn btn-ctl-bt waves-effect waves-light m-r-10" style="margin-top: 10px;">
                          <a style="color: white;" onclick="goBack()">Trở lại</a>
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="product-tab-list tab-pane fade" id="reviews">
                  <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <div class="review-content-section">
                        <div class="row">
                          <div class="col-lg-4">
                            <div class="pro-edt-img">
                              <img
                                      src="img/new-product/5-small.jpg"
                                      alt=""
                              />
                            </div>
                          </div>
                          <div class="col-lg-8">
                            <div class="row">
                              <div class="col-lg-12">
                                <div class="product-edt-pix-wrap">
                                  <div class="input-group">
                                        <span class="input-group-addon"
                                        >TT</span
                                        >
                                    <input
                                            type="text"
                                            class="form-control"
                                            placeholder="Label Name"
                                    />
                                  </div>
                                  <div class="row">
                                    <div class="col-lg-6">
                                      <div class="form-radio">
                                        <form>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i
                                            >Largest Image
                                            </label>
                                          </div>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i>Medium
                                              Image
                                            </label>
                                          </div>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i>Small
                                              Image
                                            </label>
                                          </div>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <div class="product-edt-remove">
                                        <button
                                                type="button"
                                                class="btn btn-ctl-bt waves-effect waves-light"
                                        >
                                          Remove
                                          <i
                                                  class="fa fa-times"
                                                  aria-hidden="true"
                                          ></i>
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-4">
                            <div class="pro-edt-img">
                              <img
                                      src="img/new-product/6-small.jpg"
                                      alt=""
                              />
                            </div>
                          </div>
                          <div class="col-lg-8">
                            <div class="row">
                              <div class="col-lg-12">
                                <div class="product-edt-pix-wrap">
                                  <div class="input-group">
                                        <span class="input-group-addon"
                                        >TT</span
                                        >
                                    <input
                                            type="text"
                                            class="form-control"
                                            placeholder="Label Name"
                                    />
                                  </div>
                                  <div class="row">
                                    <div class="col-lg-6">
                                      <div class="form-radio">
                                        <form>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i
                                            >Largest Image
                                            </label>
                                          </div>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i>Medium
                                              Image
                                            </label>
                                          </div>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i>Small
                                              Image
                                            </label>
                                          </div>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <div class="product-edt-remove">
                                        <button
                                                type="button"
                                                class="btn btn-ctl-bt waves-effect waves-light"
                                        >
                                          Remove
                                          <i
                                                  class="fa fa-times"
                                                  aria-hidden="true"
                                          ></i>
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-4">
                            <div class="pro-edt-img mg-b-0">
                              <img
                                      src="img/new-product/7-small.jpg"
                                      alt=""
                              />
                            </div>
                          </div>
                          <div class="col-lg-8">
                            <div class="row">
                              <div class="col-lg-12">
                                <div class="product-edt-pix-wrap">
                                  <div class="input-group">
                                        <span class="input-group-addon"
                                        >TT</span
                                        >
                                    <input
                                            type="text"
                                            class="form-control"
                                            placeholder="Label Name"
                                    />
                                  </div>
                                  <div class="row">
                                    <div class="col-lg-6">
                                      <div class="form-radio">
                                        <form>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i
                                            >Largest Image
                                            </label>
                                          </div>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i>Medium
                                              Image
                                            </label>
                                          </div>
                                          <div class="radio radiofill">
                                            <label>
                                              <input
                                                      type="radio"
                                                      name="radio"
                                              /><i class="helper"></i>Small
                                              Image
                                            </label>
                                          </div>
                                        </form>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <div class="product-edt-remove">
                                        <button
                                                type="button"
                                                class="btn btn-ctl-bt waves-effect waves-light"
                                        >
                                          Remove
                                          <i
                                                  class="fa fa-times"
                                                  aria-hidden="true"
                                          ></i>
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
  document.addEventListener('DOMContentLoaded', function() {
    var orderId = new URLSearchParams(window.location.search).get('orderId');

    if (orderId) {
      fetchOrderDetails(orderId);
    }

    function fetchOrderDetails(orderId) {
      $.ajax({
        url: '/ecommerce/adminpage/order-details',
        type: 'GET',
        data: {orderId: orderId},
        dataType: 'json',
        success: function(order) {
          updateOrderDetails(order);
        },
        error: function(error) {
          console.error('Error fetching order details:', error);
        }
      });
    }

    function formatPrice(price) {
      return price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    }

    function updateOrderDetails(order) {
      // Cập nhật thông tin khách hàng
      $('.checkout_infor').find('p').eq(0).text(order.user.fullname);
      $('.checkout_infor').find('p').eq(1).text(order.user.email);
      $('.checkout_infor').find('p').eq(2).text(order.user.phone);
      $('.checkout_infor').find('p').eq(3).text(order.address);

      // Cập nhật danh sách sản phẩm
      var productsHtml = '';
      order.orderItemsList.forEach(function(item) {
        productsHtml += '<tr>' +
                '<td class="" style="width: 15%;">' +
                '<img class="img-fluid w-25" src="' + item.product.imgUrl[0] + '" alt="">' +
                '</td>' +
                '<td>' + item.product.title + ' × ' + item.quantity + '</td>' +
                '<td>' + formatPrice(item.totalPrice) + '</td>' +
                '</tr>';
      });
      $('.checkout__totals-products').html(productsHtml);

      // Cập nhật tổng cộng
      $('#subtotal').text(formatPrice(order.totalPrice - order.shippingFee));
      $('#shipping-fee').text(formatPrice(order.shippingFee));
      $('#total-price').text(formatPrice(order.totalPrice));
    }
  });
</script>

<script>
  function goBack() {
    // Use JavaScript to navigate back in history
    window.history.back();
  }
</script>

</body>
</html>