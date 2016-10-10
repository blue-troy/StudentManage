package com.studentmanage.blue.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by heyixin on 2016/10/10.
 */
public class JsonAction extends ActionSupport{
    public String email;
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public JsonAction() {

    }

    @Override
    public String execute() throws Exception {
        return "index";
    }

    public String emailcheck() throws Exception {
        System.out.println(email);
        return "success";
    }
}
