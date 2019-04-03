package com.web.pojo;

import java.util.Date;

public class TbOrder {
    private Integer id;

    private Integer prId;

    private Integer oNum;

    private Integer oTotal;

    private Integer cId;

    private Integer oStatus;

    private Date oCreate;

    private Date oPay;

    private Date oDeliver;

    private Date oConfirm;

    private String oAddress;

    private String oPhone;

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

    public Integer getoNum() {
        return oNum;
    }

    public void setoNum(Integer oNum) {
        this.oNum = oNum;
    }

    public Integer getoTotal() {
        return oTotal;
    }

    public void setoTotal(Integer oTotal) {
        this.oTotal = oTotal;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getoStatus() {
        return oStatus;
    }

    public void setoStatus(Integer oStatus) {
        this.oStatus = oStatus;
    }

    public Date getoCreate() {
        return oCreate;
    }

    public void setoCreate(Date oCreate) {
        this.oCreate = oCreate;
    }

    public Date getoPay() {
        return oPay;
    }

    public void setoPay(Date oPay) {
        this.oPay = oPay;
    }

    public Date getoDeliver() {
        return oDeliver;
    }

    public void setoDeliver(Date oDeliver) {
        this.oDeliver = oDeliver;
    }

    public Date getoConfirm() {
        return oConfirm;
    }

    public void setoConfirm(Date oConfirm) {
        this.oConfirm = oConfirm;
    }

    public String getoAddress() {
        return oAddress;
    }

    public void setoAddress(String oAddress) {
        this.oAddress = oAddress == null ? null : oAddress.trim();
    }

    public String getoPhone() {
        return oPhone;
    }

    public void setoPhone(String oPhone) {
        this.oPhone = oPhone == null ? null : oPhone.trim();
    }
}