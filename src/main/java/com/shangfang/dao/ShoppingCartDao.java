package com.shangfang.dao;

import com.shangfang.domain.ShoppingCart;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface ShoppingCartDao {
    int insertTicket(@Param("tickettype") String ticketType, @Param("ticketnum") Integer ticketnum);
    List<ShoppingCart> selectTicket();
    int deleteShoppingcart();
}
