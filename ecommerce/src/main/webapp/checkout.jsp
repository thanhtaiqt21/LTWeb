<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String error = (String) request.getAttribute("error");
%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.example.ecommerce.service.CartService" %>
<%@ page import="com.example.ecommerce.model.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>


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
    <%
      // Lấy giỏ hàng từ session
      Cart cart = (Cart) session.getAttribute("cart");
      OrderItems orderItemsList = (OrderItems) session.getAttribute("orderItemsList");


      // Hiển thị thông tin sản phẩm
    %>

      <%
            Object obj = session.getAttribute("user");
            User user = null;
            if (obj != null)
                user = (User) obj;
            if (user == null) {
        %>
    <center><h1>Bạn chưa đăng nhập vào hệ thống. Vui lòng quay lại trang chủ!</h1></center>
      <%
        } else {
            String successParam = request.getAttribute("success") + "";
            if (successParam.equals("true")) {
                // Hiển thị thông báo thành công
        %>
    <script>alert('Cập nhật thông tin thành công');</script>
      <%
            // Cập nhật thông tin người dùng trên giao diện
            String fullname = user.getFullname();
            String email = user.getEmail();
            String phone = user.getPhone();
        %>
    <script>
      document.querySelector('input[name="fullname"]').value = '<%=fullname%>';
      document.querySelector('input[name="email"]').value = '<%=email%>';
      document.querySelector('input[name="phone"]').value = '<%=phone%>';
    </script>
      <%
            }
        %>
    <div class="container">
      <% String baoLoi = request.getAttribute("error") + "";
        baoLoi = (baoLoi.equals("null")) ? "" : baoLoi;

        String fullname = user.getFullname();

        String email = user.getEmail();

        String phone = user.getPhone();
      %>

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
          <div class="red" id="error">
            <% if (error != null) { %>
            <div class="alert alert-danger" role="alert">
              <%= error %>
            </div>
            <% } %>
          </div>
        <form action="<%=request.getContextPath()%>/addcheckout" method="POST" class="billing-form" id="formCheckout">
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
                                name="fullname"
                                required
                                value="<%= user.getFullname() %>"
                        />
                      </div>
                      <div class="form-row">
                        <div class="form-group col-md-6">
                          <label>Email</label>
                          <input
                                  type="email"
                                  class="form-control"
                                  placeholder="Nhập email"
                                  name="email"
                                  required
                                  value="<%= user.getEmail() %>"/>
                        </div>
                        <div class="form-group col-md-6">
                          <label>Số điện thoại</label>
                          <input  type="text"
                                  class="form-control"
                                  placeholder="Nhập số điện thoại"
                                  name="phone"
                                  required
                                  value="<%= user.getPhone() %>"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label>Tỉnh/Thành phố</label>
                        <select
                                id="city"
                                class="form-control"
                                aria-label="Default select example"
                                name="city"
                                required

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
                                  name="district"
                                  required
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
                                  name="ward"
                                  required
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
                                name="address"
                                required
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
                                name="note"
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
                          <th>Số lượng</th>
                          <th>Tổng</th>
                        </tr>
                        </thead>
                        <tbody class="checkout__totals-products">
                        <c:forEach items="${cart.getItems()}" var="item">
                        <tr>
                          <td>
                            ${item.product.title}
                          </td>
                          <td>${item.quantity}</td>
                          <td>
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${item.price()}" type="number" currencySymbol="$" />
                          </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                        <tbody class="checkout__totals-subtotals">
                        <tr>
                          <th>Tạm tính</th>
                          <td></td>
                          <td>
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="<%=cart.total()%>" type="currency"/>
                          </td>
                        </tr>
                        <tr>
                          <th>Phí vận chuyển</th>
                          <td></td>
                          <td>
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="<%=cart.total()*0.02%>" type="currency"/>
                          </td>
                        </tr>
                        </tbody>
                        <tfoot class="checkout__totals-footer">
                        <tr>
                          <th>Tổng</th>
                          <td></td>
                          <td>
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${cart.total() + cart.total()*0.02}" type="currency"/>
                          </td>
                        </tr>
                        </tfoot>
                      </table>
                      <div class="checkout__agree form-group">
                        <div class="form-check">
      <span class="form-check-input input-check">
        <span class="input-check__body">
          <input
              class="input-check__input"
              type="checkbox"
              id="checkout-terms"/>
          <span class="input-check__box"></span>
          <svg class="input-check__icon"
                  width="9px"
                  height="7px">
            <use xlink:href="images/sprite.svg#check-9x7"></use>
          </svg> </span></span>
                          <label class="form-check-label" for="checkout-terms">
                            Tôi đã đọc kĩ và đồng ý
                          <a target="_blank" href="terms-and-conditions.html"
                          >với chính sách và điều kiện của website</a
                          >*</label
                        >
                        </div>
                      </div>
                      <div>
                        <button type="submit" class="btn btn-primary btn-xl btn-block" id="orderButton">
                          Đặt hàng
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
      </div>
  </div>
      <%}%>
      <!-- site__body / end --><!-- site__footer -->
      <jsp:include page="footer.jsp"/>

<<<<<<< HEAD
  </body>
      <!-- site__footer / end -->
    <!-- site / end -->
  //kiểm tra thông báo lỗi
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      $("#formCheckout").validate({
        rules: {
          fullname: "required",
          email: {
            required: true,
            email: true
          },
          phone: {
            required: true,
            number: true
          },
          city: {
            required: true
          },
          district: {
            required: true
          },
          ward: {
            required: true
          },
          address: {
            required: true
          },
          "checkout-terms": {
            required: true
          }
        },
        messages: {
          fullname: "Vui lòng nhập họ tên",
          email: {
            required: "Vui lòng nhập email",
            email: "Vui lòng nhập đúng định dạng email"
          },
          phone: {
            required: "Vui lòng nhập số điện thoại",
            number: "Vui lòng nhập đúng định dạng"
          },
          city: {
            required: "Vui lòng chọn tỉnh/thành phố"
          },
          district: {
            required: "Vui lòng chọn quận/huyện"
          },
          ward: {
            required: "Vui lòng chọn phường/xã"
          },
          address: {
            required: "Vui lòng nhập địa chỉ cụ thể"
          },
          "checkout-terms": {
            required: "Bạn phải đồng ý với chính sách và điều kiện của website"
          }
        },
        errorPlacement: function (error, element) {
          if (element.attr("type") === "checkbox") {
            error.insertAfter(element.parent());
          } else {
            error.insertAfter(element);
          }
        },
        submitHandler: function (form) {
          form.submit();
        }
      });
    });
  </script>
=======

>>>>>>> 958ef5f47751d5b15491cf6c3029680afbccfab7


<%--  // Thông báo khi đặt hàng--%>
<%--  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> <script>--%>
<%--    // Đặt sự kiện click cho nút "Đặt hàng" d--%>
<%--    document.getElementById("orderButton").addEventListener("click", function(event) {--%>
<%--      event.preventDefault(); // Hiển thị hộp thoại xác nhận--%>
<%--    Swal.fire({--%>
<%--      title: 'Xác nhận',--%>
<%--      text: 'Bạn có muốn đặt hàng?',--%>
<%--      icon: 'question', showCancelButton: true,--%>
<%--      confirmButtonText: 'Có',--%>
<%--      cancelButtonText: 'Không',--%>
<%--      confirmButtonClass: 'btn btn-blue',--%>
<%--      cancelButtonClass: 'btn',--%>
<%--      buttonsStyling: false,--%>
<%--      reverseButtons: true--%>
<%--    }).then((result) => { if (result.isConfirmed) {--%>
<%--      // Thực hiện hành động khi người dùng chọn Có--%>
<%--    document.getElementById("formCheckout").submit(); // Gửi form--%>
<%--    } }); });--%>
<%--  </script>--%>

  // Yêu cầu checkbox mới được đặt hàng
<%--  <script>--%>
<%--    // Lấy tham chiếu đến checkbox và nút "Đặt hàng"--%>
<%--    var checkbox = document.getElementById("checkout-terms");--%>
<%--    var orderButton = document.getElementById("orderButton");--%>

<%--    // Đăng ký sự kiện 'change' cho checkbox--%>
<%--    checkbox.addEventListener("change", function() {--%>
<%--      // Kiểm tra trạng thái của checkbox--%>
<%--      if (checkbox.checked) {--%>
<%--        // Nếu checkbox được đánh dấu, kích hoạt nút "Đặt hàng"--%>
<%--        orderButton.removeAttribute("disabled");--%>
<%--      } else {--%>
<%--        // Nếu checkbox không được đánh dấu, ngắt kích hoạt nút "Đặt hàng"--%>
<%--        orderButton.setAttribute("disabled", "disabled");--%>
<%--      }--%>
<%--    });--%>
<%--  </script>--%>



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
          array?.forEach((element) => {
              console.log(element);
              <%--row += `<option data-id="${}" value="${element.name}">${element.name}</option>`;--%>
              row += "<option data-id=" + `"` + element.code + `"` + " value=" + `"` + element.name + `">` + element.name + "</option>";
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
