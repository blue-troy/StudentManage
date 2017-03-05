package com.studentmanage.controller;

import com.studentmanage.dao.entity.Relation;
import com.studentmanage.service.JoinGroupService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by blue on 2016/11/30.
 */
@Controller
@RequestMapping(value = "/joinGroup")
public class  JoinGroupController {
    private static final Logger logger = LoggerFactory.getLogger(JoinGroupController.class);
    @Autowired
    private JoinGroupService joinGroupService;

    @RequestMapping(value = "/groupInfo")
    Object groupInfo(){
        return "group_info";
    }

    @RequestMapping(value = "/searchDepartment")
    ModelAndView SearchDepartment(@RequestParam Integer groupId){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("departments", joinGroupService.listDepartment(groupId));
        modelAndView.setViewName("department_list");
        return modelAndView;
    }

    @RequestMapping(value = "/joinDepartment")
    ModelAndView JoinDepartment(@RequestParam Integer departmentId,@RequestParam Integer groupId,HttpSession httpSession){
        ModelAndView modelAndView = new ModelAndView();
        Relation relation =new Relation();
        relation.setUid((Integer) httpSession.getAttribute("user.id"));
        relation.setDepartment(departmentId);
        relation.setGid(groupId);
        joinGroupService.joinGroup(relation);
        modelAndView.setViewName("group_list");
        return modelAndView;
    }

}
