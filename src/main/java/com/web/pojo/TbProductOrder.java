package com.web.pojo;

public class TbProductOrder {
    private Integer id;

    private Integer prId;

    private Integer oId;

    private Integer cId;

    private Integer proNumber;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPrId() {
        return prId;
    }

    public void setPrId(Integer prId) {
        this.prId = prId;
    }

    public Integer getoId() {
        return oId;
    }

    public void setoId(Integer oId) {
        this.oId = oId;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getProNumber() {
        return proNumber;
    }

    public void setProNumber(Integer proNumber) {
        this.proNumber = proNumber;
    }

    @Override
    public String toString() {
        return "TbProductOrder{" +
                "id=" + id +
                ", prId=" + prId +
                ", oId=" + oId +
                ", cId=" + cId +
                ", proNumber=" + proNumber +
                '}';
    }
}