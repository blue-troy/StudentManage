package com.studentmanage.blue.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.studentmanage.blue.model.Sms;
import com.studentmanage.blue.model.User;
import com.studentmanage.blue.service.AdminService;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by heyixin on 2016/9/19.
 */
public class AdminAction extends ActionSupport {
    private User user;
    private List<User> users;
    private AdminService adminService = new AdminService();
    private Sms sms;

    public AdminAction() {
    }

    public String list() throws SQLException {
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        this.users = this.adminService.list(((Integer) session.get("user_id")).intValue());
        getgname();
        return "success";
    }

    public String alllist() throws SQLException {
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        this.users = this.adminService.list(((Integer) session.get("user_id")).intValue());
        return "success";
    }

    public int smssent() {
//        获得users对象 方法太笨需要优化
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        try {
            this.users = this.adminService.list(((Integer) session.get("user_id")).intValue());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String url = "http://gw.api.taobao.com/router/rest";
        String appkey = "23462456";
        String secret = "1770bc2331c26bb8467ff91285a8aba3";
        String json = "{\"uname\":\" \",\"time\":\"" + sms.getTime() + "\",\"place\":\"" + sms.getPlace() + "\",\"gname\":\"" + sms.getGname() + "\"}";
        System.out.println("短信信息" + json);
        TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
        AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
        req.setExtend("123456");
        req.setSmsType("normal");
        req.setSmsFreeSignName("by海风商创");
//        req.setSmsParamString("{uname:' ',time:'9月20日，星期三下午3点',place:'学汇楼203',gname:'海风商创'}");
        req.setSmsParamString(json);
        StringBuffer num = new StringBuffer();
        for (int i = 0; i < users.size(); i++) {
            num.append(users.get(i).getTelephone());
            if (i < (users.size() - 1)) num.append(",");
        }
        req.setRecNum(num.toString());
//        用一个电话号码做测试
//        req.setRecNum(users.get(0).getTelephone());这样获取不到user
//        使用静态号码测试
//        req.setRecNum("18504255932");
//        静态号码测试成功
//        疑问？如何获取user

        System.out.println("电话号码为" + req.getRecNum());
        req.setSmsTemplateCode("SMS_15515008");
        try {
            AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
            System.out.println(rsp.getBody());
            return 1;
        } catch (Exception e) {
            // TODO: handle exception
            return -1;
        }
    }

    public void getgname() throws SQLException {
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        adminService.getgname(((Integer) session.get("user_id")).intValue());
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

    public Sms getSms() {
        return sms;
    }

    public void setSms(Sms sms) {
        this.sms = sms;
    }

}
