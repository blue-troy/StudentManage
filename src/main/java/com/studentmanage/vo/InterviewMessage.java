package com.studentmanage.vo;

/**
 * Created by heyixin on 2016/9/20.
 */
public class InterviewMessage {
    private String gname;
    private String time;
    private String place;

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    @Override
    public String toString() {
        return "InterviewMessage{" +
                "gname='" + gname + '\'' +
                ", time='" + time + '\'' +
                ", place='" + place + '\'' +
                '}';
    }
}
