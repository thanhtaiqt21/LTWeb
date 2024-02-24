<%@ page import="com.example.ecommerce.model.User" %>
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
    <style type="text/css">
        label.error {
            display: inline-block;
            color:red;
            width: 200px;
        }
    </style>
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
                                    <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                                </svg>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Cập nhật thông tin cá nhân</li>
                        </ol>
                    </nav>
                </div>
                <div class="page-header__title">
                    <h1>Tài Khoản</h1>
                </div>
            </div>
        </div>

        <%
            Object obj = session.getAttribute("user");
            User user = null;
            if (obj!=null)
                user = (User) obj;
            if(user==null){
        %>
        <center><h1>Bạn chưa đăng nhập vào hệ thống. Vui lòng quay lại trang chủ!</h1></center>
        <%
        }else {

        %>
        <div class="container">
            <%
                String baoLoi = request.getAttribute("error")+"";
                baoLoi = (baoLoi.equals("null"))?"":baoLoi;

                String fullname = user.getFullname();

                String email = user.getEmail();

                String phone = user.getPhone();

            %>

        <div class="block">
            <div class="container">
                <div class="row" style="justify-content: center; align-items: center;">
                    <div class="col-md-6 d-flex mt-4 mt-md-0">
                        <div class="card flex-grow-1 mb-0">
                            <div class="card-body">
                                <h3 class="card-title">Cập Nhật Thông Tin Cá Nhân</h3>
                                <div class="red" id="error">
                                    <%
                                        if (error != null){
                                    %>
                                    <div class="alert alert-danger" role="alert">
                                        <%= error %>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                                <form id="form_update" action="updateInfor" method="post">
                                    <div class="form-group">
                                        <label>Họ và Tên</label>
                                        <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Nhập Họ và Tên"
                                                name="fullname"
                                                value="<%=fullname%>"/>

                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input
                                                type="email"
                                                class="form-control"
                                                placeholder="Nhập Email"
                                                name="email"
                                                value="<%=email%>"/>

                                    </div>
                                    <div class="form-group">
                                        <label>Số Điện Thoại</label>
                                        <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Nhập Số Điện Thoại"
                                                name="phone"
                                                value="<%=phone%>"/>
                                    </div>
                                    <button type="submit" class="btn btn-primary mt-4" name="submit" id="submit" >
                                        Cập Nhật
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <%} %>
        </div>

    </div>
    <!-- site__body / end -->
    <!-- site__footer -->
    <jsp:include page="footer.jsp"/>
    <!-- site__footer / end -->
</div>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#form_update").validate({
            rules:{
                username: {
                    required:true,
                    minlength:6
                },
                password: {
                    required:true,
                    minlength:8
                },
                confirmPassword: {
                    required:true,
                    equalTo: "#password",
                    minlength:8
                },
                fullname: "required",
                email: {
                    required: true,
                    email: true
                },
                phone: {
                    required:true,
                    number:true
                }
            },
            messages: {
                fullname: "Vui lòng nhập họ tên",
                username: {
                    required: "Vui lòng nhập tên đăng nhập",
                    minlength: "Tên đăng nhập tối thiểu 6 kí tự"
                },
                password: {
                    required: "Vui lòng nhập mật khẩu",
                    minlength: "Mật khẩu tối thiểu 8 kí tự"
                },
                confirmPassword: {
                    required: "Vui lòng nhập mật khẩu",
                    minlength: "Mật khẩu tối thiểu 8 kí tự",
                    equalTo: "Mật khẩu không trùng khớp"
                },
                email: {
                    required: "Vui lòng nhập email",
                    email: "Vui lòng nhập đúng định dạng email"
                },
                phone: {
                    required: "Vui lòng nhập số điện thoại",
                    number: "Vui lòng nhập đúng định dạng"
                }
            }
        });
    });
</script>


<!-- site / end -->
</body>
</html>
