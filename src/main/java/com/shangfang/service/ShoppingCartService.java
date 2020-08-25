package com.shangfang.service;

import com.shangfang.domain.ShoppingCart;

import java.util.List;

public interface ShoppingCartService {
    int insert(String ticketType,Integer ticketnum);
    List<ShoppingCart> queryTicket();
    int clearShoppingcart();
}
