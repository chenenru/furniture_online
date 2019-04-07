package com.web.pojo;

import java.util.Date;

public class TbComment {
    private Integer id;

    private Integer cId;

    private Integer prId;

    private String coInfo;

    private Date coDate;

    private Integer coGrade;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getPrId() {
        return prId;
    }

    public void setPrId(Integer prId) {
        this.prId = prId;
    }

    public String getCoInfo() {
        return coInfo;
    }

    public void setCoInfo(String coInfo) {
        this.coInfo = coInfo == null ? null : coInfo.trim();
    }

    public Date getCoDate() {
        return coDate;
    }

    public void setCoDate(Date coDate) {
        this.coDate = coDate;
    }

    public Integer getCoGrade() {
        return coGrade;
    }

    public void setCoGrade(Integer coGrade) {
        this.coGrade = coGrade;
    }

    @Override
    public String toString() {
        return "TbComment{" +
                "id=" + id +
                ", cId=" + cId +
                ", prId=" + prId +
                ", coInfo='" + coInfo + '\'' +
                ", coDate=" + coDate +
                ", coGrade=" + coGrade +
                '}';
    }
}