package com.web.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TbFeedbackExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbFeedbackExample() {
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

        public Criteria andFInfoIsNull() {
            addCriterion("f_info is null");
            return (Criteria) this;
        }

        public Criteria andFInfoIsNotNull() {
            addCriterion("f_info is not null");
            return (Criteria) this;
        }

        public Criteria andFInfoEqualTo(String value) {
            addCriterion("f_info =", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotEqualTo(String value) {
            addCriterion("f_info <>", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoGreaterThan(String value) {
            addCriterion("f_info >", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoGreaterThanOrEqualTo(String value) {
            addCriterion("f_info >=", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoLessThan(String value) {
            addCriterion("f_info <", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoLessThanOrEqualTo(String value) {
            addCriterion("f_info <=", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoLike(String value) {
            addCriterion("f_info like", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotLike(String value) {
            addCriterion("f_info not like", value, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoIn(List<String> values) {
            addCriterion("f_info in", values, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotIn(List<String> values) {
            addCriterion("f_info not in", values, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoBetween(String value1, String value2) {
            addCriterion("f_info between", value1, value2, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFInfoNotBetween(String value1, String value2) {
            addCriterion("f_info not between", value1, value2, "fInfo");
            return (Criteria) this;
        }

        public Criteria andFDateIsNull() {
            addCriterion("f_date is null");
            return (Criteria) this;
        }

        public Criteria andFDateIsNotNull() {
            addCriterion("f_date is not null");
            return (Criteria) this;
        }

        public Criteria andFDateEqualTo(Date value) {
            addCriterion("f_date =", value, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateNotEqualTo(Date value) {
            addCriterion("f_date <>", value, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateGreaterThan(Date value) {
            addCriterion("f_date >", value, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateGreaterThanOrEqualTo(Date value) {
            addCriterion("f_date >=", value, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateLessThan(Date value) {
            addCriterion("f_date <", value, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateLessThanOrEqualTo(Date value) {
            addCriterion("f_date <=", value, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateIn(List<Date> values) {
            addCriterion("f_date in", values, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateNotIn(List<Date> values) {
            addCriterion("f_date not in", values, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateBetween(Date value1, Date value2) {
            addCriterion("f_date between", value1, value2, "fDate");
            return (Criteria) this;
        }

        public Criteria andFDateNotBetween(Date value1, Date value2) {
            addCriterion("f_date not between", value1, value2, "fDate");
            return (Criteria) this;
        }

        public Criteria andFNameIsNull() {
            addCriterion("f_name is null");
            return (Criteria) this;
        }

        public Criteria andFNameIsNotNull() {
            addCriterion("f_name is not null");
            return (Criteria) this;
        }

        public Criteria andFNameEqualTo(String value) {
            addCriterion("f_name =", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotEqualTo(String value) {
            addCriterion("f_name <>", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameGreaterThan(String value) {
            addCriterion("f_name >", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameGreaterThanOrEqualTo(String value) {
            addCriterion("f_name >=", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameLessThan(String value) {
            addCriterion("f_name <", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameLessThanOrEqualTo(String value) {
            addCriterion("f_name <=", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameLike(String value) {
            addCriterion("f_name like", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotLike(String value) {
            addCriterion("f_name not like", value, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameIn(List<String> values) {
            addCriterion("f_name in", values, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotIn(List<String> values) {
            addCriterion("f_name not in", values, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameBetween(String value1, String value2) {
            addCriterion("f_name between", value1, value2, "fName");
            return (Criteria) this;
        }

        public Criteria andFNameNotBetween(String value1, String value2) {
            addCriterion("f_name not between", value1, value2, "fName");
            return (Criteria) this;
        }

        public Criteria andFEmailIsNull() {
            addCriterion("f_email is null");
            return (Criteria) this;
        }

        public Criteria andFEmailIsNotNull() {
            addCriterion("f_email is not null");
            return (Criteria) this;
        }

        public Criteria andFEmailEqualTo(String value) {
            addCriterion("f_email =", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailNotEqualTo(String value) {
            addCriterion("f_email <>", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailGreaterThan(String value) {
            addCriterion("f_email >", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailGreaterThanOrEqualTo(String value) {
            addCriterion("f_email >=", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailLessThan(String value) {
            addCriterion("f_email <", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailLessThanOrEqualTo(String value) {
            addCriterion("f_email <=", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailLike(String value) {
            addCriterion("f_email like", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailNotLike(String value) {
            addCriterion("f_email not like", value, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailIn(List<String> values) {
            addCriterion("f_email in", values, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailNotIn(List<String> values) {
            addCriterion("f_email not in", values, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailBetween(String value1, String value2) {
            addCriterion("f_email between", value1, value2, "fEmail");
            return (Criteria) this;
        }

        public Criteria andFEmailNotBetween(String value1, String value2) {
            addCriterion("f_email not between", value1, value2, "fEmail");
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
    }
}