package com.shangfang.controller;

import com.shangfang.domain.ShoppingCart;
import com.shangfang.service.ShoppingCartService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/shopping")
public class ShoppingCartController {
    @Resource
    private ShoppingCartService shoppingCartService;

    @RequestMapping("/cart")
    @ResponseBody
    public List<ShoppingCart> myShoppingCart(){
        List<ShoppingCart> shoppingCarts = shoppingCartService.queryTicket();
        return shoppingCarts;
    }

    @RequestMapping("/insert")
    public int Shopping(String ticketType,Integer ticketnum){
        return shoppingCartService.insert(ticketType,ticketnum);
    }

    @RequestMapping("/display")
    public String display(){
        return "shoppingcart";
    }

    @RequestMapping("/delete")
    public String clear(){
        shoppingCartService.clearShoppingcart();
        return "redirect:/index.jsp";
    }

    @RequestMapping("/mall")
    public String buyTicket(){
        return "loginsuccess";
    }
}
