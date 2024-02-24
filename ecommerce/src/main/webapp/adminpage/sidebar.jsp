<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 20/01/2024
  Time: 11:22 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="left-sidebar-pro">
    <nav id="sidebar" class="">
        <div class="sidebar-header">
            <a href="/ecommerce/adminpage/home"
            ><img class="main-logo" src="../images/logo/logo.png" alt=""
            /></a>
            <strong><img src="../images/logo/logosn.png" alt="" /></strong>
        </div>
        <div class="nalika-profile">
            <div class="profile-dtl">
                <a href="/ecommerce/adminpage/home"><img src="../images/notification/4.jpg" alt="" /></a>
                <h2>Lakian <span class="min-dtn">Das</span></h2>
            </div>
            <div class="profile-social-dtl">
                <ul class="dtl-social">
                    <li>
                        <a href="#"><i class="fa-brands fa-facebook"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-brands fa-twitter"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
                <ul class="metismenu" id="menu1">
                    <li class="active">
<%--                        <a class="has-arrow" href="index.html">--%>
<%--                            <i class="fa-solid fa-house"></i>--%>
<%--                            <span class="mini-click-non">Ecommerce</span>--%>
<%--                        </a>--%>
                        <ul class="submenu-angle" aria-expanded="true">
                            <li>
                                <a title="Product List" href="/ecommerce/adminpage/product-list"
                                ><span class="mini-sub-pro">Sản phẩm</span></a
                                >
                            </li>
                            <li>
                                <a title="Product List" href="order-list.jsp"
                                ><span class="mini-sub-pro">Đơn hàng</span></a
                                >
                            </li>
                            <li>
                                <a title="User List" href="user-list.jsp"
                                ><span class="mini-sub-pro">Người dùng</span></a
                                >
                            </li>
                            <li>
                                <a title="Category List" href="/ecommerce/adminpage/category-list"
                                ><span class="mini-sub-pro">Danh mục sản phẩm</span></a
                                >
                            </li>
                            <li>
                                <a title="Product List" href="blog-list.jsp"
                                ><span class="mini-sub-pro">Blog</span></a
                                >
                            </li>
                            <li>
                                <a title="Product List" href="contact.jsp"
                                ><span class="mini-sub-pro">Liên hệ</span></a
                                >
                            </li>
                            <li>
                                <a title="Product List" href="feedback.jsp"
                                ><span class="mini-sub-pro">Lời nhắn từ người dùng</span></a
                                >
                            </li>
                            <li>
                                <a title="Product List" href="/ecommerce/adminpage/img-slide-list"
                                ><span class="mini-sub-pro">Slide hình ảnh</span></a
                            >
                        </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </nav>
</div>

