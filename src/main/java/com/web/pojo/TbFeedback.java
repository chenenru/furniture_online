package com.web.pojo;

import java.util.Date;

public class TbFeedback {
    private Integer id;

    private String fInfo;

    private Date fDate;

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
}