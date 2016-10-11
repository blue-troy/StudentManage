package com.studentmanage.blue.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.studentmanage.blue.model.User;
import com.studentmanage.blue.service.UserService;

import java.util.Map;

/**
 * Created by heyixin on 2016/9/8.
 */
public class LoginAction extends ActionSupport {
    private User user;
    private UserService userService = new UserService();
    private String email;
    private String telephone;
    private String status;//存在0 不存在1




    public LoginAction() {
    }

    public String login() throws Exception {
        if (this.userService.sinup(this.user)) {
            ActionContext actionContext = ActionContext.getContext();
            Map session = actionContext.getSession();
            session.put("user_id", user.getId());
            session.put("user_name", user.getName());
            session.put("user_email", user.getEmail());
            session.put("user_qq", user.getQq());
            session.put("uer_major", user.getMajor());
            session.put("user_sex", user.getSex());
            session.put("user_info", user.getInfo());
            return "success";
        }
        return "error";
    }

    public String register() throws Exception {
        this.userService.register(this.user);
        return "success";
    }

    public String registerto() throws Exception {
        this.userService.registerto(this.user);
        return "success";
    }

    public String loginout() throws Exception {
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        session.clear();
        return "success";
    }

    public String email() throws Exception {
        System.out.println(email);
        return "success";
    }
    public String checkuser() throws Exception {
        System.out.println(telephone);
        if (this.userService.checkuser(this.telephone)){
            status="0";
            }else {
            status="1";
        }
        System.out.println(status);
        return "success";
    }

    @Override
    public String execute() throws Exception {
        return "index";
    }




    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
