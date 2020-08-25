package com.shangfang.controller;

import com.shangfang.domain.Ticket;
import com.shangfang.service.ShoppingCartService;
import com.shangfang.service.TicketService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/ticket")
public class TicketController {
    @Resource
    private TicketService ticketService;

    @Resource
    ShoppingCartService shoppingCartService;

    @RequestMapping("/display")
    @ResponseBody
    public List<Ticket> display(){
        List<Ticket> tickets = ticketService.displayTickts();
        return tickets;
    }

    @RequestMapping("/addnum")
    public String addTicketNum(HttpServletRequest request){
        String id = null;
        String num = null;
        for (int i =1; i <5; i++){
            id = request.getParameter("id" + i);
            num = request.getParameter("num" + i);
            ticketService.updateTicketNum(id,num);
        }
        return "ticketstore";
    }

    @RequestMapping("/buy")
    public ModelAndView buyTicket(Ticket ticket,HttpServletRequest request){
        String masg = "购票失败";
        String view = "buyFail";
        String tickettype = request.getParameter("tickettype");
        ModelAndView mv = new ModelAndView();
        int num = ticketService.updateNumBuy(String.valueOf(ticket.getId()),String.valueOf(ticket.getNum()));
        if (num != 0){
            int number = shoppingCartService.insert(tickettype,ticket.getNum());
            masg = "购票成功！";
        }
        mv.addObject("masg",masg);
        mv.setViewName("loginsuccess");
        return mv;
    }

}
