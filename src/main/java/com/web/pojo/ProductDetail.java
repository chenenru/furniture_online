package com.web.pojo;

public class ProductDetail extends TbProduct{
    private Integer start;
    private Integer rows;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    private TbProperty tbProperty;

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
