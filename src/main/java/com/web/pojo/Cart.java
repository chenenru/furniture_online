package com.web.pojo;

public class Cart extends TbProduct{
    private int id;
    private int oid;
    private int proNumber;
    private int cid;
    private TbProperty tbProperty;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public Integer getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getProNumber() {
        return proNumber;
    }

    public void setProNumber(int proNumber) {
        this.proNumber = proNumber;
    }

    public TbProperty getTbProperty() {
        return tbProperty;
    }

    public void setTbProperty(TbProperty tbProperty) {
        this.tbProperty = tbProperty;
    }

}
