package com.studentmanage.blue.service;

import com.studentmanage.blue.model.User;
import com.studentmanage.blue.util.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by heyixin on 2016/9/8.
 */
public class UserService {
    public UserService() {
    }

    public boolean sinup(User user) {
        System.out.println("开始 login ser");
        Connection conn = DB.createConn();
        String sql = "select * from user where telephone=" + user.getTelephone() + " and password=" + user.getPassword() + "";
        System.out.println(sql);
        PreparedStatement ps = DB.prepare(conn, sql);
        try {
            ResultSet e = ps.executeQuery();
            if (e.next()) {
                user.setName(e.getString("name"));
                System.out.println("用户名称：" + user.getName());
                user.setSex(e.getString("sex"));
                user.setId(e.getInt("id"));
                user.setInfo(e.getString("info"));
                user.setMajor(e.getString("major"));
                DB.close(ps);
                DB.close(conn);
                System.out.println("成功关闭数据库");
                return true;
            }
            DB.close(ps);
            DB.close(conn);
            System.out.println("成功关闭数据库");
            return false;
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        return false;

    }

    public void register(User user) {
        System.out.println("开始 register ser");
        Connection conn = DB.createConn();
        String sql = "insert into user values (NULL,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = DB.prepare(conn, sql);
        try {
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getQq());
            ps.setString(4, user.getMajor());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getSex());
            ps.setString(7, user.getInfo());
            ps.setString(8, user.getTelephone());
            System.out.println(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        DB.close(ps);
        DB.close(conn);
        System.out.println("成功关闭数据库");
    }

    public void registerto(User user) {
        register(user);
        System.out.println("开始 registerto ser");
        Connection conn = DB.createConn();
        String sql = "insert into relation values (?,?,?,?)";
        PreparedStatement ps = DB.prepare(conn, sql);
        try {
            ps.setString(1, "999");
            ps.setString(2, "2");
            ps.setString(3, user.getName());
            ps.setString(4, "海风商创");
            System.out.println(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        DB.close(ps);
        DB.close(conn);
        System.out.println("成功关闭数据库");
    }

    public boolean checkuser(String telephone) {
        System.out.println("开始checkuser");
        Connection conn = DB.createConn();
        String sql = "select * from user where telephone="+ telephone+"";
        System.out.println(sql);
        PreparedStatement ps = DB.prepare(conn, sql);
        try {
            ResultSet e = ps.executeQuery();
            if (e.next()) {
                DB.close(ps);
                DB.close(conn);
                System.out.println("找到了 成功关闭数据库");
                return true;
            }
            DB.close(ps);
            DB.close(conn);
            System.out.println("成功关闭数据库");
            return false;
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        return false;
    }

}
