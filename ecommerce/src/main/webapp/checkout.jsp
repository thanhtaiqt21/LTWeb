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
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
      referrerpolicy="no-referrer"
    ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
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
                    <a href="#">Giỏ hàng</a>
                    <svg class="breadcrumb-arrow" width="6px" height="9px">
                      <use
                        xlink:href="images/sprite.svg#arrow-rounded-right-6x9"
                      ></use>
                    </svg>
                  </li>
                  <li class="breadcrumb-item active" aria-current="page">
                    Thanh toán
                  </li>
                </ol>
              </nav>
            </div>
            <div class="page-header__title"><h1>Thanh toán</h1></div>
          </div>
        </div>
        <div class="checkout block">
          <div class="container">
            <div class="row">
              <div class="col-12 col-lg-6 col-xl-7">
                <div class="card mb-lg-0">
                  <div class="card-body">
                    <h3 class="card-title">Chi tiết đơn hàng</h3>

                    <div class="form-group">
                      <label>Họ và Tên</label>
                      <input
                        type="text"
                        class="form-control"
                        placeholder="Nhập họ tên"
                      />
                    </div>
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label>Email</label>
                        <input
                          type="email"
                          class="form-control"
                          placeholder="Nhập email"
                        />
                      </div>
                      <div class="form-group col-md-6">
                        <label>Số điện thoại</label>
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Nhập số điện thoại"
                        />
                      </div>
                    </div>
                    <div class="form-group">
                      <label>Tỉnh/Thành phố</label>
                      <select
                        id="city"
                        class="form-control"
                        aria-label="Default select example"
                      >
                        <option selected>--Tỉnh/Thành phố--</option>
                      </select>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label>Quận/Huyện</label>
                        <select
                          id="district"
                          class="form-control"
                          aria-label="Default select example"
                        >
                          <option selected>--Quận/Huyện--</option>
                        </select>
                      </div>
                      <div class="form-group col-md-6">
                        <label>Phường/Xã</label>
                        <select
                          id="ward"
                          class="form-control"
                          aria-label="Default select example"
                        >
                          <option selected>--Phường/Xã--</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label>Địa chỉ cụ thể</label>
                      <input
                        type="text"
                        class="form-control"
                        placeholder="Số nhà,đường..."
                      />
                    </div>
                  </div>
                  <div class="card-divider"></div>
                  <div class="card-body">
                    <h3 class="card-title">Ghi chú</h3>
                    <div class="form-group">
                      <label for="checkout-comment"
                        >Ghi chú đơn hàng
                        <span class="text-muted">(Nếu có)</span></label
                      >
                      <textarea
                        id="checkout-comment"
                        class="form-control"
                        rows="4"
                      ></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-5 mt-4 mt-lg-0">
                <div class="card mb-0">
                  <div class="card-body">
                    <h3 class="card-title">Đơn hàng của bạn</h3>
                    <table class="checkout__totals">
                      <thead class="checkout__totals-header">
                        <tr>
                          <th>Sản phẩm</th>
                          <th>Tổng</th>
                        </tr>
                      </thead>
                      <tbody class="checkout__totals-products">
                        <tr>
                          <td>
                            Electric Planer Brandix KL370090G 300 Watts × 2
                          </td>
                          <td>$1,398.00</td>
                        </tr>
                        <tr>
                          <td>
                            Undefined Tool IRadix DPS3000SY 2700 watts × 1
                          </td>
                          <td>$849.00</td>
                        </tr>
                        <tr>
                          <td>Brandix Router Power Tool 2017ERXPK × 3</td>
                          <td>$3,630.00</td>
                        </tr>
                      </tbody>
                      <tbody class="checkout__totals-subtotals">
                        <tr>
                          <th>Tạm tính</th>
                          <td>$5,877.00</td>
                        </tr>

                        <tr>
                          <th>Phí vận chuyển</th>
                          <td>$25.00</td>
                        </tr>
                      </tbody>
                      <tfoot class="checkout__totals-footer">
                        <tr>
                          <th>Tổng</th>
                          <td>$5,882.00</td>
                        </tr>
                      </tfoot>
                    </table>
                    <div class="checkout__agree form-group">
                      <div class="form-check">
                        <span class="form-check-input input-check"
                          ><span class="input-check__body"
                            ><input
                              class="input-check__input"
                              type="checkbox"
                              id="checkout-terms"
                            />
                            <span class="input-check__box"></span>
                            <svg
                              class="input-check__icon"
                              width="9px"
                              height="7px"
                            >
                              <use
                                xlink:href="images/sprite.svg#check-9x7"
                              ></use>
                            </svg> </span></span
                        ><label class="form-check-label" for="checkout-terms"
                          >Tôi đã đọc kĩ và đồng ý
                          <a target="_blank" href="terms-and-conditions.html"
                            >với chính sách và điều kiện của website</a
                          >*</label
                        >
                      </div>
                    </div>
                    <button
                      type="submit"
                      class="btn btn-primary btn-xl btn-block"
                    >
                      Đặt hàng
                    </button>
                  </div>
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
  <script>
    const host = "https://provinces.open-api.vn/api/";
    var callAPI = (api) => {
      return axios.get(api).then((response) => {
        renderData(response.data, "city");
      });
    };
    callAPI("https://provinces.open-api.vn/api/?depth=1");
    var callApiDistrict = (api) => {
      return axios.get(api).then((response) => {
        renderData(response.data.districts, "district");
      });
    };
    var callApiWard = (api) => {
      return axios.get(api).then((response) => {
        renderData(response.data.wards, "ward");
      });
    };

    var renderData = (array, select) => {
      let row = ' <option disable value="">Chọn</option>';
      array.forEach((element) => {
        row += `<option data-id="${element.code}" value="${element.name}">${element.name}</option>`;
      });
      document.querySelector("#" + select).innerHTML = row;
    };

    $("#city").change(() => {
      callApiDistrict(
        host + "p/" + $("#city").find(":selected").data("id") + "?depth=2"
      );
      printResult();
    });
    $("#district").change(() => {
      callApiWard(
        host + "d/" + $("#district").find(":selected").data("id") + "?depth=2"
      );
      printResult();
    });
    $("#ward").change(() => {
      printResult();
    });

    var printResult = () => {
      if (
        $("#district").find(":selected").data("id") != "" &&
        $("#city").find(":selected").data("id") != "" &&
        $("#ward").find(":selected").data("id") != ""
      ) {
        let result =
          $("#city option:selected").text() +
          " | " +
          $("#district option:selected").text() +
          " | " +
          $("#ward option:selected").text();
        $("#result").text(result);
      }
    };
  </script>



</html>
