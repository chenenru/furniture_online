package com.web.pojo;

import java.util.Date;

/**
 * @ClassName TbOrderProperty
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/4 14:58
 * @Version 1.0
 **/
public class TbOrderProperty extends TbOrder {

    private TbProduct tbProduct;
    private TbProperty tbProperty;

    public String getOrderStatus(Integer status){
        if( status == 1 )
            return "未支付";
        if( status == 2)
            return "已支付";
        if( status == 3)
            return "已发货";
        if( status == 4)
            return "已收货";
        if( status == 5)
            return "已评论";
        return "不详";
    }

    public TbProduct getTbProduct() {
        return tbProduct;
    }

    @Override
    public String toString() {
        return "TbOrderProperty{" +
                "tbProduct=" + tbProduct +
                ", tbProperty=" + tbProperty +
                '}';
    }

    public void setTbProduct(TbProduct tbProduct) {
        this.tbProduct = tbProduct;
    }

    public TbProperty getTbProperty() {
        return tbProperty;
    }

    public void setTbProperty(TbProperty tbProperty) {
        this.tbProperty = tbProperty;
    }
}
