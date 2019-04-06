package com.web.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TbOrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbOrderExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andPrIdIsNull() {
            addCriterion("pr_id is null");
            return (Criteria) this;
        }

        public Criteria andPrIdIsNotNull() {
            addCriterion("pr_id is not null");
            return (Criteria) this;
        }

        public Criteria andPrIdEqualTo(Integer value) {
            addCriterion("pr_id =", value, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdNotEqualTo(Integer value) {
            addCriterion("pr_id <>", value, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdGreaterThan(Integer value) {
            addCriterion("pr_id >", value, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("pr_id >=", value, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdLessThan(Integer value) {
            addCriterion("pr_id <", value, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdLessThanOrEqualTo(Integer value) {
            addCriterion("pr_id <=", value, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdIn(List<Integer> values) {
            addCriterion("pr_id in", values, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdNotIn(List<Integer> values) {
            addCriterion("pr_id not in", values, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdBetween(Integer value1, Integer value2) {
            addCriterion("pr_id between", value1, value2, "prId");
            return (Criteria) this;
        }

        public Criteria andPrIdNotBetween(Integer value1, Integer value2) {
            addCriterion("pr_id not between", value1, value2, "prId");
            return (Criteria) this;
        }

        public Criteria andONumIsNull() {
            addCriterion("o_num is null");
            return (Criteria) this;
        }

        public Criteria andONumIsNotNull() {
            addCriterion("o_num is not null");
            return (Criteria) this;
        }

        public Criteria andONumEqualTo(Integer value) {
            addCriterion("o_num =", value, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumNotEqualTo(Integer value) {
            addCriterion("o_num <>", value, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumGreaterThan(Integer value) {
            addCriterion("o_num >", value, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumGreaterThanOrEqualTo(Integer value) {
            addCriterion("o_num >=", value, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumLessThan(Integer value) {
            addCriterion("o_num <", value, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumLessThanOrEqualTo(Integer value) {
            addCriterion("o_num <=", value, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumIn(List<Integer> values) {
            addCriterion("o_num in", values, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumNotIn(List<Integer> values) {
            addCriterion("o_num not in", values, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumBetween(Integer value1, Integer value2) {
            addCriterion("o_num between", value1, value2, "oNum");
            return (Criteria) this;
        }

        public Criteria andONumNotBetween(Integer value1, Integer value2) {
            addCriterion("o_num not between", value1, value2, "oNum");
            return (Criteria) this;
        }

        public Criteria andOTotalIsNull() {
            addCriterion("o_total is null");
            return (Criteria) this;
        }

        public Criteria andOTotalIsNotNull() {
            addCriterion("o_total is not null");
            return (Criteria) this;
        }

        public Criteria andOTotalEqualTo(Integer value) {
            addCriterion("o_total =", value, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalNotEqualTo(Integer value) {
            addCriterion("o_total <>", value, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalGreaterThan(Integer value) {
            addCriterion("o_total >", value, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalGreaterThanOrEqualTo(Integer value) {
            addCriterion("o_total >=", value, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalLessThan(Integer value) {
            addCriterion("o_total <", value, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalLessThanOrEqualTo(Integer value) {
            addCriterion("o_total <=", value, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalIn(List<Integer> values) {
            addCriterion("o_total in", values, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalNotIn(List<Integer> values) {
            addCriterion("o_total not in", values, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalBetween(Integer value1, Integer value2) {
            addCriterion("o_total between", value1, value2, "oTotal");
            return (Criteria) this;
        }

        public Criteria andOTotalNotBetween(Integer value1, Integer value2) {
            addCriterion("o_total not between", value1, value2, "oTotal");
            return (Criteria) this;
        }

        public Criteria andCIdIsNull() {
            addCriterion("c_id is null");
            return (Criteria) this;
        }

        public Criteria andCIdIsNotNull() {
            addCriterion("c_id is not null");
            return (Criteria) this;
        }

        public Criteria andCIdEqualTo(Integer value) {
            addCriterion("c_id =", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotEqualTo(Integer value) {
            addCriterion("c_id <>", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThan(Integer value) {
            addCriterion("c_id >", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("c_id >=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThan(Integer value) {
            addCriterion("c_id <", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThanOrEqualTo(Integer value) {
            addCriterion("c_id <=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdIn(List<Integer> values) {
            addCriterion("c_id in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotIn(List<Integer> values) {
            addCriterion("c_id not in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdBetween(Integer value1, Integer value2) {
            addCriterion("c_id between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotBetween(Integer value1, Integer value2) {
            addCriterion("c_id not between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andOStatusIsNull() {
            addCriterion("o_status is null");
            return (Criteria) this;
        }

        public Criteria andOStatusIsNotNull() {
            addCriterion("o_status is not null");
            return (Criteria) this;
        }

        public Criteria andOStatusEqualTo(Integer value) {
            addCriterion("o_status =", value, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusNotEqualTo(Integer value) {
            addCriterion("o_status <>", value, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusGreaterThan(Integer value) {
            addCriterion("o_status >", value, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("o_status >=", value, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusLessThan(Integer value) {
            addCriterion("o_status <", value, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusLessThanOrEqualTo(Integer value) {
            addCriterion("o_status <=", value, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusIn(List<Integer> values) {
            addCriterion("o_status in", values, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusNotIn(List<Integer> values) {
            addCriterion("o_status not in", values, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusBetween(Integer value1, Integer value2) {
            addCriterion("o_status between", value1, value2, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("o_status not between", value1, value2, "oStatus");
            return (Criteria) this;
        }

        public Criteria andOCreateIsNull() {
            addCriterion("o_create is null");
            return (Criteria) this;
        }

        public Criteria andOCreateIsNotNull() {
            addCriterion("o_create is not null");
            return (Criteria) this;
        }

        public Criteria andOCreateEqualTo(Date value) {
            addCriterion("o_create =", value, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateNotEqualTo(Date value) {
            addCriterion("o_create <>", value, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateGreaterThan(Date value) {
            addCriterion("o_create >", value, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateGreaterThanOrEqualTo(Date value) {
            addCriterion("o_create >=", value, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateLessThan(Date value) {
            addCriterion("o_create <", value, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateLessThanOrEqualTo(Date value) {
            addCriterion("o_create <=", value, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateIn(List<Date> values) {
            addCriterion("o_create in", values, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateNotIn(List<Date> values) {
            addCriterion("o_create not in", values, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateBetween(Date value1, Date value2) {
            addCriterion("o_create between", value1, value2, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOCreateNotBetween(Date value1, Date value2) {
            addCriterion("o_create not between", value1, value2, "oCreate");
            return (Criteria) this;
        }

        public Criteria andOPayIsNull() {
            addCriterion("o_pay is null");
            return (Criteria) this;
        }

        public Criteria andOPayIsNotNull() {
            addCriterion("o_pay is not null");
            return (Criteria) this;
        }

        public Criteria andOPayEqualTo(Date value) {
            addCriterion("o_pay =", value, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayNotEqualTo(Date value) {
            addCriterion("o_pay <>", value, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayGreaterThan(Date value) {
            addCriterion("o_pay >", value, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayGreaterThanOrEqualTo(Date value) {
            addCriterion("o_pay >=", value, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayLessThan(Date value) {
            addCriterion("o_pay <", value, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayLessThanOrEqualTo(Date value) {
            addCriterion("o_pay <=", value, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayIn(List<Date> values) {
            addCriterion("o_pay in", values, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayNotIn(List<Date> values) {
            addCriterion("o_pay not in", values, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayBetween(Date value1, Date value2) {
            addCriterion("o_pay between", value1, value2, "oPay");
            return (Criteria) this;
        }

        public Criteria andOPayNotBetween(Date value1, Date value2) {
            addCriterion("o_pay not between", value1, value2, "oPay");
            return (Criteria) this;
        }

        public Criteria andODeliverIsNull() {
            addCriterion("o_deliver is null");
            return (Criteria) this;
        }

        public Criteria andODeliverIsNotNull() {
            addCriterion("o_deliver is not null");
            return (Criteria) this;
        }

        public Criteria andODeliverEqualTo(Date value) {
            addCriterion("o_deliver =", value, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverNotEqualTo(Date value) {
            addCriterion("o_deliver <>", value, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverGreaterThan(Date value) {
            addCriterion("o_deliver >", value, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverGreaterThanOrEqualTo(Date value) {
            addCriterion("o_deliver >=", value, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverLessThan(Date value) {
            addCriterion("o_deliver <", value, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverLessThanOrEqualTo(Date value) {
            addCriterion("o_deliver <=", value, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverIn(List<Date> values) {
            addCriterion("o_deliver in", values, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverNotIn(List<Date> values) {
            addCriterion("o_deliver not in", values, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverBetween(Date value1, Date value2) {
            addCriterion("o_deliver between", value1, value2, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andODeliverNotBetween(Date value1, Date value2) {
            addCriterion("o_deliver not between", value1, value2, "oDeliver");
            return (Criteria) this;
        }

        public Criteria andOConfirmIsNull() {
            addCriterion("o_confirm is null");
            return (Criteria) this;
        }

        public Criteria andOConfirmIsNotNull() {
            addCriterion("o_confirm is not null");
            return (Criteria) this;
        }

        public Criteria andOConfirmEqualTo(Date value) {
            addCriterion("o_confirm =", value, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmNotEqualTo(Date value) {
            addCriterion("o_confirm <>", value, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmGreaterThan(Date value) {
            addCriterion("o_confirm >", value, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmGreaterThanOrEqualTo(Date value) {
            addCriterion("o_confirm >=", value, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmLessThan(Date value) {
            addCriterion("o_confirm <", value, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmLessThanOrEqualTo(Date value) {
            addCriterion("o_confirm <=", value, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmIn(List<Date> values) {
            addCriterion("o_confirm in", values, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmNotIn(List<Date> values) {
            addCriterion("o_confirm not in", values, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmBetween(Date value1, Date value2) {
            addCriterion("o_confirm between", value1, value2, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOConfirmNotBetween(Date value1, Date value2) {
            addCriterion("o_confirm not between", value1, value2, "oConfirm");
            return (Criteria) this;
        }

        public Criteria andOAddressIsNull() {
            addCriterion("o_address is null");
            return (Criteria) this;
        }

        public Criteria andOAddressIsNotNull() {
            addCriterion("o_address is not null");
            return (Criteria) this;
        }

        public Criteria andOAddressEqualTo(String value) {
            addCriterion("o_address =", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressNotEqualTo(String value) {
            addCriterion("o_address <>", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressGreaterThan(String value) {
            addCriterion("o_address >", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressGreaterThanOrEqualTo(String value) {
            addCriterion("o_address >=", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressLessThan(String value) {
            addCriterion("o_address <", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressLessThanOrEqualTo(String value) {
            addCriterion("o_address <=", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressLike(String value) {
            addCriterion("o_address like", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressNotLike(String value) {
            addCriterion("o_address not like", value, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressIn(List<String> values) {
            addCriterion("o_address in", values, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressNotIn(List<String> values) {
            addCriterion("o_address not in", values, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressBetween(String value1, String value2) {
            addCriterion("o_address between", value1, value2, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOAddressNotBetween(String value1, String value2) {
            addCriterion("o_address not between", value1, value2, "oAddress");
            return (Criteria) this;
        }

        public Criteria andOPhoneIsNull() {
            addCriterion("o_phone is null");
            return (Criteria) this;
        }

        public Criteria andOPhoneIsNotNull() {
            addCriterion("o_phone is not null");
            return (Criteria) this;
        }

        public Criteria andOPhoneEqualTo(String value) {
            addCriterion("o_phone =", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneNotEqualTo(String value) {
            addCriterion("o_phone <>", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneGreaterThan(String value) {
            addCriterion("o_phone >", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("o_phone >=", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneLessThan(String value) {
            addCriterion("o_phone <", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneLessThanOrEqualTo(String value) {
            addCriterion("o_phone <=", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneLike(String value) {
            addCriterion("o_phone like", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneNotLike(String value) {
            addCriterion("o_phone not like", value, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneIn(List<String> values) {
            addCriterion("o_phone in", values, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneNotIn(List<String> values) {
            addCriterion("o_phone not in", values, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneBetween(String value1, String value2) {
            addCriterion("o_phone between", value1, value2, "oPhone");
            return (Criteria) this;
        }

        public Criteria andOPhoneNotBetween(String value1, String value2) {
            addCriterion("o_phone not between", value1, value2, "oPhone");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }

        @Override
        public String toString() {
            return "Criterion{" +
                    "condition='" + condition + '\'' +
                    ", value=" + value +
                    ", secondValue=" + secondValue +
                    ", noValue=" + noValue +
                    ", singleValue=" + singleValue +
                    ", betweenValue=" + betweenValue +
                    ", listValue=" + listValue +
                    ", typeHandler='" + typeHandler + '\'' +
                    '}';
        }
    }
}