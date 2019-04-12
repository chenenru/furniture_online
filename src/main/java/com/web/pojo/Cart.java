package com.web.pojo;

public class Cart extends TbProduct{

    private int oid;
    private int proNumber;
    private int cid;
    private TbProperty tbProperty;

    @Override
    public String toString() {
        return "Cart{" +
                "oid=" + oid +
                ", proNumber=" + proNumber +
                ", cid=" + cid +
                ", tbProperty=" + tbProperty +
                '}';
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

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public TbProperty getTbProperty() {
        return tbProperty;
    }

    public void setTbProperty(TbProperty tbProperty) {
        this.tbProperty = tbProperty;
    }

    public Cart() {
    }

    public Cart(int oid, int proNumber, int cid, TbProperty tbProperty) {
        this.oid = oid;
        this.proNumber = proNumber;
        this.cid = cid;
        this.tbProperty = tbProperty;
    }
}
