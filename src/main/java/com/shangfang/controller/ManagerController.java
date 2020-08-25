package com.shangfang.controller;

import com.shangfang.domain.Manager;
import com.shangfang.service.ManagerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/manager")
public class ManagerController {
    @Resource
    private ManagerService managerService;

    @RequestMapping("/login")
    public String managerLoginStorehouse(String name,String password){
        String view = "manageLoginFail";
        List<Manager> managers = managerService.managerLogin(name,password);
        if (managers.size() != 0){
           view = "ticketstore";
        }
        return view;
    }

    @RequestMapping("/logout")
    public String clear(){
        return "redirect:/index.jsp";
    }
}
