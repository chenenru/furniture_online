package com.web.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TbCommentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbCommentExample() {
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

        public Criteria andCoInfoIsNull() {
            addCriterion("co_info is null");
            return (Criteria) this;
        }

        public Criteria andCoInfoIsNotNull() {
            addCriterion("co_info is not null");
            return (Criteria) this;
        }

        public Criteria andCoInfoEqualTo(String value) {
            addCriterion("co_info =", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoNotEqualTo(String value) {
            addCriterion("co_info <>", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoGreaterThan(String value) {
            addCriterion("co_info >", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoGreaterThanOrEqualTo(String value) {
            addCriterion("co_info >=", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoLessThan(String value) {
            addCriterion("co_info <", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoLessThanOrEqualTo(String value) {
            addCriterion("co_info <=", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoLike(String value) {
            addCriterion("co_info like", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoNotLike(String value) {
            addCriterion("co_info not like", value, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoIn(List<String> values) {
            addCriterion("co_info in", values, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoNotIn(List<String> values) {
            addCriterion("co_info not in", values, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoBetween(String value1, String value2) {
            addCriterion("co_info between", value1, value2, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoInfoNotBetween(String value1, String value2) {
            addCriterion("co_info not between", value1, value2, "coInfo");
            return (Criteria) this;
        }

        public Criteria andCoDateIsNull() {
            addCriterion("co_date is null");
            return (Criteria) this;
        }

        public Criteria andCoDateIsNotNull() {
            addCriterion("co_date is not null");
            return (Criteria) this;
        }

        public Criteria andCoDateEqualTo(Date value) {
            addCriterion("co_date =", value, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateNotEqualTo(Date value) {
            addCriterion("co_date <>", value, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateGreaterThan(Date value) {
            addCriterion("co_date >", value, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateGreaterThanOrEqualTo(Date value) {
            addCriterion("co_date >=", value, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateLessThan(Date value) {
            addCriterion("co_date <", value, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateLessThanOrEqualTo(Date value) {
            addCriterion("co_date <=", value, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateIn(List<Date> values) {
            addCriterion("co_date in", values, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateNotIn(List<Date> values) {
            addCriterion("co_date not in", values, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateBetween(Date value1, Date value2) {
            addCriterion("co_date between", value1, value2, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoDateNotBetween(Date value1, Date value2) {
            addCriterion("co_date not between", value1, value2, "coDate");
            return (Criteria) this;
        }

        public Criteria andCoGradeIsNull() {
            addCriterion("co_grade is null");
            return (Criteria) this;
        }

        public Criteria andCoGradeIsNotNull() {
            addCriterion("co_grade is not null");
            return (Criteria) this;
        }

        public Criteria andCoGradeEqualTo(Integer value) {
            addCriterion("co_grade =", value, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeNotEqualTo(Integer value) {
            addCriterion("co_grade <>", value, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeGreaterThan(Integer value) {
            addCriterion("co_grade >", value, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeGreaterThanOrEqualTo(Integer value) {
            addCriterion("co_grade >=", value, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeLessThan(Integer value) {
            addCriterion("co_grade <", value, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeLessThanOrEqualTo(Integer value) {
            addCriterion("co_grade <=", value, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeIn(List<Integer> values) {
            addCriterion("co_grade in", values, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeNotIn(List<Integer> values) {
            addCriterion("co_grade not in", values, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeBetween(Integer value1, Integer value2) {
            addCriterion("co_grade between", value1, value2, "coGrade");
            return (Criteria) this;
        }

        public Criteria andCoGradeNotBetween(Integer value1, Integer value2) {
            addCriterion("co_grade not between", value1, value2, "coGrade");
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