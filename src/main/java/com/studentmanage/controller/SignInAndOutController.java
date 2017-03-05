package com.studentmanage.controller;

import com.studentmanage.dao.entity.User;
import com.studentmanage.dao.mapper.GroupMapper;
import com.studentmanage.service.JoinGroupService;
import com.studentmanage.service.SignInAndOutService;
import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by blue on 2016/11/30.
 */
@Controller
@MapperScan
@RequestMapping(value = "/signInAndOut")
public class SignInAndOutController {
    private static final Logger logger = LoggerFactory.getLogger(SignInAndOutController.class);
    @Autowired
    private SignInAndOutService signInAndOutService;
    @Autowired
    private JoinGroupService joinGroupService;


    @RequestMapping
    String loginIndex(){
        return "loginIndex";
    }

//    登陆
    @RequestMapping(value = "login",method = RequestMethod.POST)
    ModelAndView login(@RequestParam String telephone, @RequestParam String password , HttpSession httpSession){
        ModelAndView modelAndView = new ModelAndView();
        User user= signInAndOutService.login(telephone,password);
        if (user!=null){
//            非共享式session需要修改
            httpSession.setAttribute("user", user);
            modelAndView.addObject("groups",joinGroupService.listGroup(null));
            modelAndView.setViewName("group_list");
        }else {
            modelAndView.setViewName("loginError");
        }
        return modelAndView;
    }

    @RequestMapping(value = "register",method = RequestMethod.POST)
    ModelAndView register(User user1,HttpSession httpSession){
        ModelAndView modelAndView =new ModelAndView();
        System.out.println(user1);
        User user = signInAndOutService.register(user1);
        if (user.getId()!=0){
            httpSession.setAttribute("user",user);
            modelAndView.setViewName("loginSuccess");
        }else {
            modelAndView.setViewName("login        Error");
        }
        return modelAndView;
    }
}
