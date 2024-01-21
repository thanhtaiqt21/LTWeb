<%@ page import="com.example.ecommerce.model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    User user = null;
    if (request.getSession().getAttribute("user") != null) {
        user = (User) request.getSession().getAttribute("user");
    }
%>
<header class="site__header d-lg-block d-none">
    <div class="site-header">
        <!-- .topbar -->
        <div class="site-header__topbar topbar">
            <div class="topbar__container container">
                <div class="topbar__row">
                    <div class="topbar__item topbar__item--link">
                        <a class="topbar-link" href="about-us.jsp">Giới thiệu</a>
                    </div>
                    <div class="topbar__spring"></div>
                    <div class="topbar__item">
                        <div class="topbar-dropdown">
                            <%if (user != null) {%>
                                <button class="topbar-dropdown__btn" type="button">
                                    <%=user.getFullname()%>
                                    <svg width="7px" height="5px">
                                        <use xlink:href="images/sprite.svg#arrow-rounded-down-7x5"></use>
                                    </svg>
                                </button>
                                <div class="topbar-dropdown__body">
                                    <!-- .menu -->
                                    <ul class="menu menu--layout--topbar">
                                        <li><a href="changePass.jsp">Thay đổi mật khẩu</a></li>
                                        <li><a href="update_profile.jsp">Thay đổi thông tin cá nhân</a></li>
                                        <li><a href="orders-history.jsp">Lịch sử đơn hàng</a></li>
                                        <li><a href="/ecommerce/logout">Đăng xuất</a></li>
                                    </ul>
                                    <!-- .menu / end -->
                                </div>
                            <%} else {%>
                                <button class="topbar-dropdown__btn" type="button">
                                    Tài Khoản
                                    <svg width="7px" height="5px">
                                        <use xlink:href="images/sprite.svg#arrow-rounded-down-7x5"></use>
                                    </svg>
                                </button>
                                <div class="topbar-dropdown__body">
                                    <!-- .menu -->
                                    <ul class="menu menu--layout--topbar">
                                        <li><a href="login.jsp">Đăng Nhập</a></li>
                                        <li><a href="register.jsp">Đăng Kí</a></li>
                                    </ul>
                                    <!-- .menu / end -->
                                </div>
                            <%}%>
                        </div>
                    </div>
                    <%if (user!= null && user.getRole().equals("ADMIN")) {%>
                        <div class="topbar__item">
                            <div class="topbar-dropdown">
                                <button class="topbar-dropdown__btn" type="button">
                                   <a href="/ecommerce/adminpage/home">Đến trang admin</a>
                                </button>
                            </div>
                        </div>
                    <%}%>
                </div>
            </div>
        </div>
        <!-- .topbar / end -->
        <div class="site-header__nav-panel">
            <div class="nav-panel">
                <div class="nav-panel__container container">
                    <div class="nav-panel__row">
                        <div class="nav-panel__logo">
                            <a href="/ecommerce/home">
                                <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="120px"
                                        height="20px"
                                >
                                    <path
                                            d="M118.5,20h-1.1c-0.6,0-1.2-0.4-1.4-1l-1.5-4h-6.1l-1.5,4c-0.2,0.6-0.8,1-1.4,1h-1.1c-1,0-1.8-1-1.4-2l1.1-3
                                 l1.5-4l3.6-10c0.2-0.6,0.8-1,1.4-1h1.6c0.6,0,1.2,0.4,1.4,1l3.6,10l1.5,4l1.1,3C120.3,19,119.5,20,118.5,20z M111.5,6.6l-1.6,4.4
                                 h3.2L111.5,6.6z M99.5,20h-1.4c-0.4,0-0.7-0.2-0.9-0.5L94,14l-2,3.5v1c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                 C88,0.7,88.7,0,89.5,0h1C91.3,0,92,0.7,92,1.5v8L94,6l3.2-5.5C97.4,0.2,97.7,0,98.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3L96.3,10l4.5,7.8
                                 C101.4,18.8,100.7,20,99.5,20z M80.3,11.8L80,12.3v6.2c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-6.2l-0.3-0.5l-5.5-9.5
                                 c-0.6-1,0.2-2.3,1.3-2.3h1.4c0.4,0,0.7,0.2,0.9,0.5L76,4.3l2,3.5l2-3.5l2.2-3.8C82.4,0.2,82.7,0,83.1,0h1.4c1.2,0,1.9,1.3,1.3,2.3
                                 L80.3,11.8z M60,20c-5.5,0-10-4.5-10-10S54.5,0,60,0s10,4.5,10,10S65.5,20,60,20z M60,4c-3.3,0-6,2.7-6,6s2.7,6,6,6s6-2.7,6-6
                                 S63.3,4,60,4z M47.8,17.8c0.6,1-0.2,2.3-1.3,2.3h-2L41,14h-4v4.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5v-17
                                 C33,0.7,33.7,0,34.5,0H41c0.3,0,0.7,0,1,0.1c3.4,0.5,6,3.4,6,6.9c0,2.4-1.2,4.5-3.1,5.8L47.8,17.8z M42,4.2C41.7,4.1,41.3,4,41,4h-3
                                 c-0.6,0-1,0.4-1,1v4c0,0.6,0.4,1,1,1h3c0.3,0,0.7-0.1,1-0.2c0.3-0.1,0.6-0.3,0.9-0.5C43.6,8.8,44,7.9,44,7C44,5.7,43.2,4.6,42,4.2z
                                  M29.5,4H25v14.5c0,0.8-0.7,1.5-1.5,1.5h-1c-0.8,0-1.5-0.7-1.5-1.5V4h-4.5C15.7,4,15,3.3,15,2.5v-1C15,0.7,15.7,0,16.5,0h13
                                 C30.3,0,31,0.7,31,1.5v1C31,3.3,30.3,4,29.5,4z M6.5,20c-2.8,0-5.5-1.7-6.4-4c-0.4-1,0.3-2,1.3-2h1c0.5,0,0.9,0.3,1.2,0.7
                                 c0.2,0.3,0.4,0.6,0.8,0.8C4.9,15.8,5.8,16,6.5,16c1.5,0,2.8-0.9,2.8-2c0-0.7-0.5-1.3-1.2-1.6C7.4,12,7,11,7.4,10.3l0.4-0.9
                                 c0.4-0.7,1.2-1,1.8-0.6c0.6,0.3,1.2,0.7,1.6,1.2c1,1.1,1.7,2.5,1.7,4C13,17.3,10.1,20,6.5,20z M11.6,6h-1c-0.5,0-0.9-0.3-1.2-0.7
                                 C9.2,4.9,8.9,4.7,8.6,4.5C8.1,4.2,7.2,4,6.5,4C5,4,3.7,4.9,3.7,6c0,0.7,0.5,1.3,1.2,1.6C5.6,8,6,9,5.6,9.7l-0.4,0.9
                                 c-0.4,0.7-1.2,1-1.8,0.6c-0.6-0.3-1.2-0.7-1.6-1.2C0.6,8.9,0,7.5,0,6c0-3.3,2.9-6,6.5-6c2.8,0,5.5,1.7,6.4,4C13.3,4.9,12.6,6,11.6,6
                                 z"
                                    ></path>
                                </svg>
                            </a>
                        </div>
                        <!-- .nav-links -->
                        <div class="nav-panel__nav-links nav-links">
                            <ul class="nav-links__list">
                                <li class="nav-links__item nav-links__item--with-submenu">
                                    <a href="/ecommerce/home"><span>Trang chủ </span></a>
                                    <div class="nav-links__menu">
                                    </div>
                                </li>
                                <li class="nav-links__item nav-links__item--with-submenu">
                                    <a href="#"
                                    ><span
                                    >Danh mục sản phẩm
                            <svg
                                    class="nav-links__arrow"
                                    width="9px"
                                    height="6px">
                              <use
                                      xlink:href="images/sprite.svg#arrow-rounded-down-9x6"
                              ></use></svg></span
                                    ></a>
                                    <div class="nav-links__menu">
                                        <!-- .menu -->
                                        <ul class="menu menu--layout--classic">
                                            <c:forEach items="${categories}" var="category">
                                                <li>
                                                    <a href="pagination?cId=${category.id}">${category.name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                        <!-- .menu / end -->
                                    </div>
                                </li>
                                <li class="nav-links__item nav-links__item--with-submenu">
                                    <a href="/ecommerce/blogPage"><span>Blog </span></a>
                                </li>

                                <li class="nav-links__item">
                                    <a href="/ecommerce/contact-us"><span>Liên hệ</span></a>
                                </li>
                            </ul>
                        </div>
                        <!-- .nav-links / end -->
                        <div class="nav-panel__indicators">
                            <div class="indicator">
                                <a href="wishlist.jsp" class="indicator__button"
                                ><span class="indicator__area"
                                ><svg width="20px" height="20px">
                                    <use xlink:href="images/sprite.svg#heart-20"></use>
                                </svg><span class="indicator__value">0</span></span></a>
                            </div>
                            <c:choose>
                                <c:when test="${(not empty cart) && (cart.getItems().size() > 0)}">
                                    <div class="indicator indicator--trigger--click">
                                        <a href="cart.jsp" class="indicator__button">
                                            <span class="indicator__area">
                                                <svg width="20px" height="20px">
                                                    <use xlink:href="images/sprite.svg#cart-20"></use>
                                                </svg>
                                                <span class="indicator__value">${cart.getItems().size()}</span>
                                            </span>
                                        </a>
                                        <div class="indicator__dropdown">
                                            <!-- .dropcart -->
                                            <c:forEach items="${cart.getItems()}" var="item">
                                                <div class="dropcart">
                                                    <div class="dropcart__products-list">
                                                        <div class="dropcart__product">
                                                            <div class="dropcart__product-image">
                                                                <a href="product.jsp">
                                                                    <img src="${item.product.imgUrl.get(0)}" alt=""/>
                                                                </a>
                                                        </div>
                                                        <div class="dropcart__product-info">
                                                            <div class="dropcart__product-name">
                                                                <a href="product.jsp">${item.product.title}</a>
                                                            </div>
                                                            <div class="dropcart__product-meta">
                                                                <span class="dropcart__product-quantity">${item.quantity}</span>
                                                                <span class="dropcart__product-price">
                                                                    <fmt:setLocale value="vi_VN"/>
                                                                    <fmt:formatNumber value="${item.price()}" type="currency"/>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                                <div class="dropcart__totals">
                                                    <table>
                                                        <tr>
                                                            <th>Tạm tính</th>
                                                            <td>
                                                                <fmt:setLocale value="vi_VN"/>
                                                                <fmt:formatNumber value="${cart.total()}" type="currency"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Phí vận chuyển</th>
                                                            <td>
                                                                <fmt:setLocale value="vi_VN"/>
                                                                <fmt:formatNumber value="${cart.total()*0.02}" type="currency"/>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <th>Tổng</th>
                                                            <td>
                                                                <fmt:setLocale value="vi_VN"/>
                                                                <fmt:formatNumber value="${cart.total() - cart.total()*0.02}" type="currency"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                    <div class="dropcart__buttons">
                                                        <a class="btn btn-primary" href="cart.jsp">Đến giỏ hàng</a>
                                                    </div>
                                            </div>
                                            <!-- .dropcart / end -->
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="indicator indicator--trigger--click">
                                        <a href="cart.jsp" class="indicator__button">
                                            <span class="indicator__area">
                                                <svg width="20px" height="20px">
                                                    <use xlink:href="images/sprite.svg#cart-20"></use>
                                                </svg>
                                                <span class="indicator__value">0</span>
                                            </span>
                                        </a>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

