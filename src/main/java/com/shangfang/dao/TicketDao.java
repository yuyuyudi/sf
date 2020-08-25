package com.shangfang.dao;

import com.shangfang.domain.Ticket;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TicketDao {
    List<Ticket> selectTickes();
    int updateNum(@Param(("id")) String id, @Param("num") String num);
    int updateNumBuy(@Param("id")String id,@Param("num") String num);
}
