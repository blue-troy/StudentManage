package com.studentmanage.blue.service;

import com.opensymphony.xwork2.ActionContext;
import com.studentmanage.blue.model.User;
import com.studentmanage.blue.util.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by heyixin on 2016/9/8.
 */
public class AdminService {
    public AdminService() {
    }

    public List<User> list(int creatid) throws SQLException {
        System.out.println("开始 list sev");
        Connection conn = DB.createConn();
//        连接关系表和用户表查询
        String sql = "select * from relation RIGHT JOIN user ON relation.uid=user.id where relation.gid IN (SELECT id FROM groups WHERE creatid="+creatid+")";
        System.out.println(sql);
        PreparedStatement ps = DB.prepare(conn, sql);
        ArrayList users = new ArrayList();
        try {
            ResultSet e = ps.executeQuery();
            User user = null;
            while (e.next()) {
                user = new User();
                user.setId(e.getInt("id"));
                user.setName(e.getString("name"));
                user.setEmail(e.getString("email"));
                user.setQq(e.getString("qq"));
                user.setMajor(e.getString("major"));
                user.setSex(e.getString("sex"));
                user.setTelephone(e.getString("telephone"));
                user.setInfo(e.getString("info"));
                users.add(user);
            }
        } catch (SQLException var7) {
            var7.printStackTrace();
            throw var7;
        }

        DB.close(ps);
        DB.close(conn);
        System.out.println("关闭数据库");
        return users;
    }
    public void getgname(int user_id){
        Connection conn = DB.createConn();
        String sql = "select gname from relation where uid="+user_id+"";
        System.out.println(sql);
        PreparedStatement ps = DB.prepare(conn, sql);
        try {
            ResultSet e = ps.executeQuery();
            String gname = null;
            if (e.next()){
                gname=e.getString("gname");
            }
            if (gname != null) {
                ActionContext actionContext = ActionContext.getContext();
                Map session = actionContext.getSession();
                session.put("group_name",gname);
            }

        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        DB.close(ps);
        DB.close(conn);
        System.out.println("关闭数据库");
    }

}

