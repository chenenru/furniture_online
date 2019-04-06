package com.web.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TbFeedback {
    private Integer id;

    private String fInfo;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date fDate;

    private String fName;

    private String fEmail;

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
        this.fInfo = fInfo == null ? null : fInfo.trim();
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
        this.fName = fName == null ? null : fName.trim();
    }

    public String getfEmail() {
        return fEmail;
    }

    public void setfEmail(String fEmail) {
        this.fEmail = fEmail == null ? null : fEmail.trim();
    }
}