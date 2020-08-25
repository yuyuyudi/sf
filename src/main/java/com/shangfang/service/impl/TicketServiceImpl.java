package com.shangfang.service.impl;

import com.shangfang.dao.TicketDao;
import com.shangfang.domain.Ticket;
import com.shangfang.service.TicketService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TicketServiceImpl implements TicketService {
    @Resource
    private TicketDao ticketDao;

    @Override
    public List<Ticket> displayTickts() {
        List<Ticket> tickets = ticketDao.selectTickes();
        return tickets;
    }

    @Override
    public int updateTicketNum(String id,String num) {
        return ticketDao.updateNum(id,num);
    }

    @Override
    public int updateNumBuy(String id, String num) {
        return ticketDao.updateNumBuy(id,num);
    }


}
