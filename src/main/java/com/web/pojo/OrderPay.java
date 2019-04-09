package com.web.pojo;

/**
 * @ClassName OrderPay
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/9 20:39
 * @Version 1.0
 **/
public class OrderPay {

    Integer id;
    Integer num;

    @Override
    public String toString() {
        return "OrderPay{" +
                "id=" + id +
                ", num=" + num +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public OrderPay() {
    }

    public OrderPay(Integer id, Integer num) {
        this.id = id;
        this.num = num;
    }
}
