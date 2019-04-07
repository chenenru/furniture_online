package com.web.pojo;

import java.util.ArrayList;
import java.util.List;

public class TbProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbProductExample() {
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

        public Criteria andPNameIsNull() {
            addCriterion("p_name is null");
            return (Criteria) this;
        }

        public Criteria andPNameIsNotNull() {
            addCriterion("p_name is not null");
            return (Criteria) this;
        }

        public Criteria andPNameEqualTo(String value) {
            addCriterion("p_name =", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotEqualTo(String value) {
            addCriterion("p_name <>", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameGreaterThan(String value) {
            addCriterion("p_name >", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameGreaterThanOrEqualTo(String value) {
            addCriterion("p_name >=", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLessThan(String value) {
            addCriterion("p_name <", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLessThanOrEqualTo(String value) {
            addCriterion("p_name <=", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLike(String value) {
            addCriterion("p_name like", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotLike(String value) {
            addCriterion("p_name not like", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameIn(List<String> values) {
            addCriterion("p_name in", values, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotIn(List<String> values) {
            addCriterion("p_name not in", values, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameBetween(String value1, String value2) {
            addCriterion("p_name between", value1, value2, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotBetween(String value1, String value2) {
            addCriterion("p_name not between", value1, value2, "pName");
            return (Criteria) this;
        }

        public Criteria andPTypeIsNull() {
            addCriterion("p_type is null");
            return (Criteria) this;
        }

        public Criteria andPTypeIsNotNull() {
            addCriterion("p_type is not null");
            return (Criteria) this;
        }

        public Criteria andPTypeEqualTo(String value) {
            addCriterion("p_type =", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotEqualTo(String value) {
            addCriterion("p_type <>", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeGreaterThan(String value) {
            addCriterion("p_type >", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeGreaterThanOrEqualTo(String value) {
            addCriterion("p_type >=", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLessThan(String value) {
            addCriterion("p_type <", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLessThanOrEqualTo(String value) {
            addCriterion("p_type <=", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeLike(String value) {
            addCriterion("p_type like", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotLike(String value) {
            addCriterion("p_type not like", value, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeIn(List<String> values) {
            addCriterion("p_type in", values, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotIn(List<String> values) {
            addCriterion("p_type not in", values, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeBetween(String value1, String value2) {
            addCriterion("p_type between", value1, value2, "pType");
            return (Criteria) this;
        }

        public Criteria andPTypeNotBetween(String value1, String value2) {
            addCriterion("p_type not between", value1, value2, "pType");
            return (Criteria) this;
        }

        public Criteria andPIntroIsNull() {
            addCriterion("p_intro is null");
            return (Criteria) this;
        }

        public Criteria andPIntroIsNotNull() {
            addCriterion("p_intro is not null");
            return (Criteria) this;
        }

        public Criteria andPIntroEqualTo(String value) {
            addCriterion("p_intro =", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroNotEqualTo(String value) {
            addCriterion("p_intro <>", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroGreaterThan(String value) {
            addCriterion("p_intro >", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroGreaterThanOrEqualTo(String value) {
            addCriterion("p_intro >=", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroLessThan(String value) {
            addCriterion("p_intro <", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroLessThanOrEqualTo(String value) {
            addCriterion("p_intro <=", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroLike(String value) {
            addCriterion("p_intro like", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroNotLike(String value) {
            addCriterion("p_intro not like", value, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroIn(List<String> values) {
            addCriterion("p_intro in", values, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroNotIn(List<String> values) {
            addCriterion("p_intro not in", values, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroBetween(String value1, String value2) {
            addCriterion("p_intro between", value1, value2, "pIntro");
            return (Criteria) this;
        }

        public Criteria andPIntroNotBetween(String value1, String value2) {
            addCriterion("p_intro not between", value1, value2, "pIntro");
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