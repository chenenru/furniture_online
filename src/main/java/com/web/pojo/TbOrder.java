package com.web.pojo;

public class TbOrder{
    private Integer id;

    private Integer prId;

    private Integer oNum;

    private Integer oTotal;

    private Integer cId;

    private Integer oStatus;

    private String oCreate;

    private String oPay;

    private String oDeliver;

    private String oConfirm;

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

    public String getoCreate() {
        return oCreate;
    }

    public void setoCreate(String oCreate) {
        this.oCreate = oCreate;
    }

    public String getoPay() {
        return oPay;
    }

    public void setoPay(String oPay) {
        this.oPay = oPay;
    }

    public String getoDeliver() {
        return oDeliver;
    }

    public void setoDeliver(String oDeliver) {
        this.oDeliver = oDeliver;
    }

    public String getoConfirm() {
        return oConfirm;
    }

    public void setoConfirm(String oConfirm) {
        this.oConfirm = oConfirm;
    }

    public String getoAddress() {
        return oAddress;
    }

    public void setoAddress(String oAddress) {
        this.oAddress = oAddress;
    }

    public String getoPhone() {
        return oPhone;
    }

    public void setoPhone(String oPhone) {
        this.oPhone = oPhone;
    }

    public TbOrder() {
    }

    public TbOrder(Integer id, Integer prId, Integer oNum, Integer oTotal, Integer cId, Integer oStatus, String oCreate, String oPay, String oDeliver, String oConfirm, String oAddress, String oPhone) {
        this.id = id;
        this.prId = prId;
        this.oNum = oNum;
        this.oTotal = oTotal;
        this.cId = cId;
        this.oStatus = oStatus;
        this.oCreate = oCreate;
        this.oPay = oPay;
        this.oDeliver = oDeliver;
        this.oConfirm = oConfirm;
        this.oAddress = oAddress;
        this.oPhone = oPhone;
    }

    @Override
    public String toString() {
        return "TbOrder{" +
                "id=" + id +
                ", prId=" + prId +
                ", oNum=" + oNum +
                ", oTotal=" + oTotal +
                ", cId=" + cId +
                ", oStatus=" + oStatus +
                ", oCreate=" + oCreate +
                ", oPay=" + oPay +
                ", oDeliver=" + oDeliver +
                ", oConfirm=" + oConfirm +
                ", oAddress='" + oAddress + '\'' +
                ", oPhone='" + oPhone + '\'' +
                '}';
    }

}