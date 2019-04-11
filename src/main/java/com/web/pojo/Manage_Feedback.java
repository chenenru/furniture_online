package com.web.pojo;

import java.util.Date;

/**
 * @ClassName Manage_Feedback
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/11 20:25
 * @Version 1.0
 **/
public class Manage_Feedback {

    private Integer id;

    private String fInfo;

    private Date fDate;

    private String fName;

    private String fEmail;

    @Override
    public String toString() {
        return "Manage_Feedback{" +
                "id=" + id +
                ", fInfo='" + fInfo + '\'' +
                ", fDate=" + fDate +
                ", fName='" + fName + '\'' +
                ", fEmail='" + fEmail + '\'' +
                ", start=" + start +
                ", rows=" + rows +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getfInfo() {
        return fInfo;
    }

    public void setfInfo(String fInfo) {
        this.fInfo = fInfo;
    }

    public Date getfDate() {
        return fDate;
    }

    public void setfDate(Date fDate) {
        this.fDate = fDate;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getfEmail() {
        return fEmail;
    }

    public void setfEmail(String fEmail) {
        this.fEmail = fEmail;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Manage_Feedback() {
    }

    public Manage_Feedback(Integer id, String fInfo, Date fDate, String fName, String fEmail, Integer start, Integer rows) {
        this.id = id;
        this.fInfo = fInfo;
        this.fDate = fDate;
        this.fName = fName;
        this.fEmail = fEmail;
        this.start = start;
        this.rows = rows;
    }

    private Integer start;
    private Integer rows;
}
