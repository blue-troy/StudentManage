package com.studentmanage.blue.service;

import com.studentmanage.blue.model.Department;
import com.studentmanage.blue.util.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by heyixin on 2016/9/8.
 */
public class DepartmentService {
    public DepartmentService() {
    }

    public ArrayList<Department> getById(int id) {
        System.out.println("传入社团id查询社团部门");
        Connection conn = DB.createConn();
        String sql="SELECT * FROM department WHERE gid="+ id+"";
        PreparedStatement ps = DB.prepare(conn,sql);
        ArrayList<Department> departments =new ArrayList<Department>();
        try {
            ResultSet e =ps.executeQuery();
            Department d =null;
            while (e.next()){
                d=new Department();
                d.setId(e.getInt("id"));
                d.setGid(e.getInt("gid"));
                d.setName(e.getString("name"));
                departments.add(d);
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        DB.close(ps);
        DB.close(conn);
        return departments;
    }
}

