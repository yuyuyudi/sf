package com.shangfang.service;

import com.shangfang.domain.Ticket;

import java.util.List;

public interface TicketService {
    List<Ticket> displayTickts();
    int updateTicketNum(String id,String num);
    int updateNumBuy(String id,String num);
}
