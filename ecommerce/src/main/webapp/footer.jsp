<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<footer class="site__footer">
    <div class="site-footer">
        <div class="container">
            <div class="site-footer__widgets">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="site-footer__widget footer-contacts">
                            <h5 class="footer-contacts__title">Liên hệ</h5>
                            <div class="footer-contacts__text">
                                Luôn đem lại cho khách hàng những sản phẩm có chất lượng
                                tốt nhất.
                            </div>
                            <ul class="footer-contacts__contacts" id="contactInfoList">
                                <!-- Dữ liệu sẽ được thêm vào đây bằng JavaScript -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-6 col-md-3 col-lg-2">
                        <div class="site-footer__widget footer-links">
                            <h5 class="footer-links__title">Thông tin</h5>
                            <ul class="footer-links__list">
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link">Giới thiệu</a>
                                </li>
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link"
                                    >Thông tin vận chuyển</a
                                    >
                                </li>
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link">Chính sách</a>
                                </li>

                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link">Liên hệ</a>
                                </li>
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link">Hoàn đơn</a>
                                </li>
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link">Vị trị</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-6 col-md-3 col-lg-2">
                        <div class="site-footer__widget footer-links">
                            <h5 class="footer-links__title">Tài khoản</h5>
                            <ul class="footer-links__list">
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link"
                                    >Lịch sử đặt hàng</a
                                    >
                                </li>
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link"
                                    >Sản phẩm yêu thích</a
                                    >
                                </li>
                                <li class="footer-links__item">
                                    <a href="#" class="footer-links__link">Bản tin</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="site-footer__widget footer-newsletter">
                            <h5 class="footer-newsletter__title">Bản tin</h5>
                            <div class="footer-newsletter__text">
                                Theo dõi chúng tôi để nhận thêm nhiều thông tin mới nhất.
                            </div>
                            <form action="#" class="footer-newsletter__form">
                                <label class="sr-only" for="footer-newsletter-address"
                                >Địa chỉ email</label
                                >
                                <input
                                        type="text"
                                        class="footer-newsletter__form-input form-control"
                                        id="footer-newsletter-address"
                                        placeholder="Địa chỉ email..."
                                />
                                <button
                                        class="footer-newsletter__form-button btn btn-primary"
                                >
                                    Subcribe
                                </button>
                            </form>
                            <div
                                    class="footer-newsletter__text footer-newsletter__text--social"
                            >
                                Theo dõi chúng tôi trên các nền tảng xã hội
                            </div>
                            <ul class="footer-newsletter__social-links">
                                <li
                                        class="footer-newsletter__social-link footer-newsletter__social-link--facebook"
                                >
                                    <a
                                            href="https://themeforest.net/user/kos9"
                                            target="_blank"
                                    ><i class="fab fa-facebook-f"></i
                                    ></a>
                                </li>
                                <li
                                        class="footer-newsletter__social-link footer-newsletter__social-link--twitter"
                                >
                                    <a
                                            href="https://themeforest.net/user/kos9"
                                            target="_blank"
                                    ><i class="fab fa-twitter"></i
                                    ></a>
                                </li>
                                <li
                                        class="footer-newsletter__social-link footer-newsletter__social-link--youtube"
                                >
                                    <a
                                            href="https://themeforest.net/user/kos9"
                                            target="_blank"
                                    ><i class="fab fa-youtube"></i
                                    ></a>
                                </li>
                                <li
                                        class="footer-newsletter__social-link footer-newsletter__social-link--instagram"
                                >
                                    <a
                                            href="https://themeforest.net/user/kos9"
                                            target="_blank"
                                    ><i class="fab fa-instagram"></i
                                    ></a>
                                </li>
                                <li
                                        class="footer-newsletter__social-link footer-newsletter__social-link--rss"
                                >
                                    <a
                                            href="https://themeforest.net/user/kos9"
                                            target="_blank"
                                    ><i class="fas fa-rss"></i
                                    ></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="site-footer__bottom">
                <div class="site-footer__copyright">
                    <a target="_blank" href="https://www.templateshub.net"
                    >Templates Hub</a
                    >
                </div>
                <div class="site-footer__payments">
                    <img src="images/payments.png" alt="" />
                </div>
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript">
    $(document).ready(function () {
        // Gửi yêu cầu đến servlet khi trang được tải
        $.ajax({
            type: 'GET',
            url: '/ecommerce/contact-us',
            dataType: 'json',
            success: function (data) {
                // Hiển thị thông tin liên hệ trên trang
                var contactInfoList = $('#contactInfoList');
                // Xóa mọi nội dung cũ trong ul
                contactInfoList.empty();
                // Thêm các mục thông tin liên hệ mới
                contactInfoList.append('<li><i class="footer-contacts__icon fas fa-globe-americas"></i>' + data.address + '</li>');
                contactInfoList.append('<li><i class="footer-contacts__icon far fa-envelope"></i>' + data.email + '</li>');
                contactInfoList.append('<li><i class="footer-contacts__icon fas fa-mobile-alt"></i>' + data.phone + '</li>');
                contactInfoList.append('<li>Thứ 2-6<i class="footer-contacts__icon far fa-clock"></i>' + data.workingTimeMF + '</li>');
                contactInfoList.append('<li>Thứ 7<i class="footer-contacts__icon far fa-clock"></i>' + data.workingTimeSA + '</li>');
                contactInfoList.append('<li>Thứ chủ nhật<i class="footer-contacts__icon far fa-clock"></i>' + data.workingTimeSU + '</li>');
            },
            error: function (xhr, status, error) {
                console.error('Error fetching contact info:', status, error);
            }
        });
    });
</script>