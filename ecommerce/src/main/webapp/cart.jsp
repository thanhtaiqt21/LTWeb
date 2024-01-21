<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.ecommerce.model.Cart" %>
<%@ page import="com.example.ecommerce.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script
            src="https://kit.fontawesome.com/2fdd50f686.js"
            crossorigin="anonymous"
    ></script>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

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
                  <li class="breadcrumb-item active" aria-current="page">
                    Giỏ hàng
                  </li>
                </ol>
              </nav>
            </div>
            <div class="page-header__title"><h1>Giỏ hàng</h1></div>
          </div>
        </div>
        <div class="cart block">
          <div class="container">
            <table class="cart__table cart-table">
              <thead class="cart-table__head">
                <tr class="cart-table__row">
                  <th class="cart-table__column cart-table__column--image">
                    Hình ảnh
                  </th>
                  <th class="cart-table__column cart-table__column--product">
                    Sản phẩm
                  </th>
                  <th class="cart-table__column cart-table__column--price">
                    Giá
                  </th>
                  <th class="cart-table__column cart-table__column--quantity">
                    Số lượng
                  </th>
                  <th class="cart-table__column cart-table__column--total">
                    Tổng
                  </th>
                  <th
                    class="cart-table__column cart-table__column--remove"
                  ></th>
                  <th class="cart-table__column cart-table__column--remove"
                  ></th>
                </tr>
              </thead>
              <tbody class="cart-table__body">
                <c:forEach items="${cart.getItems()}" var="cartItem">
                  <form action="/ecommerce/cart-update" method="post">
                    <tr class="cart-table__row">
                      <input type="hidden" name="id" value="${cartItem.id}">
                      <td class="cart-table__column cart-table__column--image">
                        <a href="#"><img src="${cartItem.product.imgUrl.get(0)}" alt=""/></a>
                      </td>
                      <td class="cart-table__column cart-table__column--product">
                        <a href="#" class="cart-table__product-name">${cartItem.product.title}</a>
                        <ul class="cart-table__options">
                        </ul>
                      </td>
                      <td class="cart-table__column cart-table__column--price" data-title="Price">
                        <fmt:setLocale value="vi_VN"/>
                        <fmt:formatNumber value="${cartItem.product.price - cartItem.product.price*cartItem.product.discount}" type="currency"/>
                      </td>
                      <td class="cart-table__column cart-table__column--quantity" data-title="Quantity">
                        <div class="input-number">
                          <input
                            class="form-control input-number__input"
                            type="number"
                            min="1"
                            value="${cartItem.quantity}"
                            max="${cartItem.product.quantity}"
                            name="quantity"
                          />
                          <div class="input-number__add"></div>
                          <div class="input-number__sub"></div>
                        </div>
                      </td>
                      <td class="cart-table__column cart-table__column--total" data-title="Total">
                        <span id="">
                          <fmt:setLocale value="vi_VN"/>
                          <fmt:formatNumber value="${cartItem.price()}" type="currency"/>
                        </span>
                      </td>
                      <td class="cart-table__column cart-table__column--remove">
                        <button
                                type="submit"
                                class="btn btn-light btn-sm btn-svg-icon">
                          <svg width="12px" height="12px">
                            <i class="fa-solid fa-arrows-rotate"></i>
                          </svg>
                        </button>
                      </td>
                      <td class="cart-table__column cart-table__column--remove">
                        <button type="button" class="btn btn-light btn-sm btn-svg-icon">
                          <a href="/ecommerce/cart-remove?id=${cartItem.id}" class="remove-cart-item">
                            <svg width="12px" height="12px">
                              <use xlink:href="images/sprite.svg#cross-12"></use>
                            </svg>
                          </a>
                        </button>
                      </td>
                    </tr>
                  </form>
                </c:forEach>
              </tbody>
            </table>
            <div class="cart__actions">
              <div class="cart__buttons">
                <a href="/ecommerce/home" class="btn btn-primary cart__update-button"
                  >Tiếp tục mua hàng</a
                >
              </div>
            </div>
            <%
              Object obj = session.getAttribute("user");
              User user = null;
              if (obj != null)
                user = (User) obj;
            %>
            <div class="row justify-content-end pt-5">
              <div class="col-12 col-md-7 col-lg-6 col-xl-5">
                <div class="card">
                  <div class="card-body">
                    <h3 class="card-title">Tổng giỏ hàng</h3>
                    <table class="cart__totals">
                      <thead class="cart__totals-header">
                      <tr>
                        <th>Tạm tính</th>
                        <td>
                          <fmt:setLocale value="vi_VN"/>
                          <fmt:formatNumber value="${cart.total()}" type="currency"/>
                        </td>
                      </tr>
                      </thead>
                      <tbody class="cart__totals-body">
                      <tr>
                        <th>Phí vận chuyển</th>
                        <td>
                          <fmt:setLocale value="vi_VN"/>
                          <fmt:formatNumber value="${cart.total()*0.02}" type="currency"/>
                        </td>
                      </tr>
                      </tbody>
                      <tfoot class="cart__totals-footer">
                      <tr>
                        <th>Tổng</th>
                        <td>
                          <fmt:setLocale value="vi_VN"/>
                          <fmt:formatNumber value="${cart.total() + cart.total()*0.02}" type="currency"/>
                        </td>
                      </tr>
                      </tfoot>
                    </table>
                    <% if (user != null) { %>
                    <a class="btn btn-primary btn-xl btn-block cart__checkout-button" href="checkout.jsp">Tiến hành thanh toán</a>
                    <% } else { %>
                    <p class="text-danger">Vui lòng đăng nhập để tiến hành thanh toán.</p>
                    <a class="btn btn-primary btn-xl btn-block cart__checkout-button disabled" href="#">Tiến hành thanh toán</a>
                    <% } %>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
  <script>
    $('a.remove-cart-item').confirm({
      title: 'Xóa?',
      content: 'Bạn có muốn xóa sản phẩm này khỏi giỏ hàng không?',
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
