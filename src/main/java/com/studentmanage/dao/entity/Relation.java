package com.studentmanage.dao.entity;

/**
 * Created by blue on 2016/11/30.
 */
public class Relation {
    private int uid;
    private int gid;
    private String uname;
    private String gname;
    private int grade;
    private int department;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public int getDepartment() {
        return department;
    }

    public void setDepartment(int department) {
        this.department = department;
    }


    @Override
    public String toString() {
        return "Relation{" +
                "uid=" + uid +
                ", gid=" + gid +
                ", uname='" + uname + '\'' +
                ", gname='" + gname + '\'' +
                ", grade=" + grade +
                ", department=" + department +
                '}';
    }
}
