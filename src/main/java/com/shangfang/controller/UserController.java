package com.shangfang.controller;

import com.shangfang.dao.UserDao;
import com.shangfang.domain.User;
import com.shangfang.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("/addUser")
    public ModelAndView addUser(User user){
        String tips = "注册失败！请重新注册";
        ModelAndView mv = new ModelAndView();
        int num = userService.addUser(user);
        if (num > 0){
            tips = "用户【" + user.getUsername() + "】注册成功，请登录";
            mv.setViewName("loginNewUser");
        }
        else {
           mv.setViewName("registerAgain");
        }
        mv.addObject("tips", tips);
        return mv;
    }

    @RequestMapping(value = "/login", produces = "text/plain;charset=utf-8")
    public ModelAndView login(User user){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("loginfail");
        List<User> users = userService.findUser(user.getTelephone(),user.getPassword());
        if (users.size() != 0){
               mv.setViewName("loginsuccess");
        }
        return mv;
    }
}
