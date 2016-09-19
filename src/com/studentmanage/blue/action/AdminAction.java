package com.studentmanage.blue.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.studentmanage.blue.model.User;
import com.studentmanage.blue.service.AdminService;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by heyixin on 2016/9/19.
 */
public class AdminAction extends ActionSupport {
    private User user;
    private List<User> users;
    private AdminService adminService =new AdminService();
    public AdminAction(){}

    public  String list() throws SQLException {
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        this.users = this.adminService.list(((Integer) session.get("user_id")).intValue());
        return "success";
    }


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public AdminService getAdminService() {
        return adminService;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

}
