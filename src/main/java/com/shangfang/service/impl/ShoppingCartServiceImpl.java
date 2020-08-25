package com.shangfang.service.impl;

import com.shangfang.dao.ShoppingCartDao;
import com.shangfang.domain.ShoppingCart;
import com.shangfang.service.ShoppingCartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
    @Resource
    private ShoppingCartDao shoppingCartDao;

    @Override
    public int insert(String ticketType,Integer ticketnum) {
        return shoppingCartDao.insertTicket(ticketType,ticketnum);
    }

    @Override
    public List<ShoppingCart> queryTicket() {
        List<ShoppingCart> shoppingCarts = shoppingCartDao.selectTicket();
        return shoppingCarts;
    }

    @Override
    public int clearShoppingcart() {
        return shoppingCartDao.deleteShoppingcart();
    }
}
