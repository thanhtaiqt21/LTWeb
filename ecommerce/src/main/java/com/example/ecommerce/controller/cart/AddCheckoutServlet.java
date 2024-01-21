package com.example.ecommerce.controller.cart;

import com.example.ecommerce.dao.OrderDao;
import com.example.ecommerce.model.Cart;
import com.example.ecommerce.model.CartItem;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.OrderItemsService;
import com.example.ecommerce.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/addcheckout")
public class AddCheckoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        Cart cart = (Cart) request.getSession().getAttribute("cart");
        User user = (User) request.getSession().getAttribute("user");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        int id = user.getId();

        Orders order = new Orders();
        order.setFullname(fullname);
        order.setEmail(email);
        order.setPhone(phone);
        order.setIdUser(id);

        StringBuilder fullAddress = new StringBuilder();
        fullAddress.append(address);
        fullAddress.append(", ");
        fullAddress.append(ward);
        fullAddress.append(", ");
        fullAddress.append(district);
        fullAddress.append(", ");
        fullAddress.append(city);

        order.setAddress(fullAddress.toString());
        order.setNote(note);

        int shippingFee = (int) Math.round(cart.total() * 0.02);
        order.setShippingFee(shippingFee);

        order.setTotalPrice(cart.total() + shippingFee);

        int addSuccess = OrderService.getInstance().addOrder(order);
        System.out.println("id cua don hang" + addSuccess);
        if (addSuccess > 0) {
            for (CartItem cartItem : cart.getItems()) {
                OrderItemsService.getInstance().addOrderItem(cartItem.getQuantity(), cartItem.price(), cartItem.getProduct().getId(), addSuccess);
            }
        }

        // Chuyển hướng yêu cầu đến trang xác nhận đặt hàng
        response.sendRedirect("confirmation.jsp");
        session.invalidate();
    }
}