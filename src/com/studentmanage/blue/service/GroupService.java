package com.studentmanage.blue.service;

import com.studentmanage.blue.model.Group;
import com.studentmanage.blue.util.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by heyixin on 2016/9/8.
 */
public class GroupService {
    public GroupService() {
    }

    public String creat(Group group) {
        System.out.println("开始 register ser");
        Connection conn = DB.createConn();
        String sql = "insert into groups values (NULL,?,?,?,?,?,?)";
        PreparedStatement ps = DB.prepare(conn, sql);
        try {
            ps.setString(1, group.getName());
            ps.setString(2, group.getTeacher());
            ps.setString(3, group.getDate());
            ps.setString(4, group.getOrganization());
            ps.setString(5, group.getInfo());
            ps.setInt(6, group.getCreatid());
            System.out.println(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        DB.close(ps);
        DB.close(conn);
        System.out.println("成功关闭数据库");
        return "success";
    }

    public List<Group> list(String gname) throws SQLException {
        System.out.println("开始 list sev");
        Connection conn = DB.createConn();
        String sql;
        if (gname == null || gname.isEmpty()) {
            sql = "select * from groups";
        } else {
            StringBuffer tb = new StringBuffer();
            tb.append("%");
            for (int i = 0; i < gname.length(); i++) {
                if (gname.charAt(i) != ' ') {
                    tb.append(gname.charAt(i));
                    if (i < gname.length()) {
                        tb.append("%");
                    }
                }
            }
            gname = "\"" + tb.toString() + "\"";
            sql = "select * from groups where name like " + gname + "";
        }
        System.out.println(sql);
        PreparedStatement ps = DB.prepare(conn, sql);
        ArrayList groups = new ArrayList();

        try {
            ResultSet e = ps.executeQuery();
            Group g = null;

            while (e.next()) {
                g = new Group();
                g.setId(e.getInt("id"));
                g.setName(e.getString("name"));
                g.setTeacher(e.getString("teacher"));
                g.setDate(e.getString("date"));
                g.setOrganization(e.getString("organization"));
                g.setInfo(e.getString("info"));
                g.setCreatid(e.getInt("creatid"));
                groups.add(g);
            }
        } catch (SQLException var7) {
            var7.printStackTrace();
            throw var7;
        }

        DB.close(ps);
        DB.close(conn);
        System.out.println("关闭数据库");
        return groups;
    }


    public void join(int uid, String uname, int gid, String gname) {
        System.out.println("开始 join sev");
        Connection conn = DB.createConn();
        String sql = "insert into relation values (" + uid + "," + gid + ",?,?)";
        PreparedStatement ps = DB.prepare(conn, sql);
        try {
            ps.setString(1, uname);
            ps.setString(2, gname);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        DB.close(ps);
        DB.close(conn);
        System.out.println("成功关闭数据库");
    }
}

