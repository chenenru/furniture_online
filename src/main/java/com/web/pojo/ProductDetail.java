package com.web.pojo;

public class ProductDetail extends TbProduct{
    private TbProperty tbProperty;

    public TbProperty getTbProperty() {
        return tbProperty;
    }

    @Override
    public String toString() {
        return "ProductDetail{" +
                "tbProperty=" + tbProperty +
                '}';
    }

    public void setTbProperty(TbProperty tbProperty) {
        this.tbProperty = tbProperty;
    }
}
