package com.web.pojo;

import java.util.ArrayList;
import java.util.List;

public class TbPropertyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbPropertyExample() {
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

        public Criteria andPIdIsNull() {
            addCriterion("p_id is null");
            return (Criteria) this;
        }

        public Criteria andPIdIsNotNull() {
            addCriterion("p_id is not null");
            return (Criteria) this;
        }

        public Criteria andPIdEqualTo(Integer value) {
            addCriterion("p_id =", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotEqualTo(Integer value) {
            addCriterion("p_id <>", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThan(Integer value) {
            addCriterion("p_id >", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("p_id >=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThan(Integer value) {
            addCriterion("p_id <", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThanOrEqualTo(Integer value) {
            addCriterion("p_id <=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdIn(List<Integer> values) {
            addCriterion("p_id in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotIn(List<Integer> values) {
            addCriterion("p_id not in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdBetween(Integer value1, Integer value2) {
            addCriterion("p_id between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotBetween(Integer value1, Integer value2) {
            addCriterion("p_id not between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPrImageIsNull() {
            addCriterion("pr_image is null");
            return (Criteria) this;
        }

        public Criteria andPrImageIsNotNull() {
            addCriterion("pr_image is not null");
            return (Criteria) this;
        }

        public Criteria andPrImageEqualTo(String value) {
            addCriterion("pr_image =", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageNotEqualTo(String value) {
            addCriterion("pr_image <>", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageGreaterThan(String value) {
            addCriterion("pr_image >", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageGreaterThanOrEqualTo(String value) {
            addCriterion("pr_image >=", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageLessThan(String value) {
            addCriterion("pr_image <", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageLessThanOrEqualTo(String value) {
            addCriterion("pr_image <=", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageLike(String value) {
            addCriterion("pr_image like", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageNotLike(String value) {
            addCriterion("pr_image not like", value, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageIn(List<String> values) {
            addCriterion("pr_image in", values, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageNotIn(List<String> values) {
            addCriterion("pr_image not in", values, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageBetween(String value1, String value2) {
            addCriterion("pr_image between", value1, value2, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrImageNotBetween(String value1, String value2) {
            addCriterion("pr_image not between", value1, value2, "prImage");
            return (Criteria) this;
        }

        public Criteria andPrColorIsNull() {
            addCriterion("pr_color is null");
            return (Criteria) this;
        }

        public Criteria andPrColorIsNotNull() {
            addCriterion("pr_color is not null");
            return (Criteria) this;
        }

        public Criteria andPrColorEqualTo(String value) {
            addCriterion("pr_color =", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorNotEqualTo(String value) {
            addCriterion("pr_color <>", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorGreaterThan(String value) {
            addCriterion("pr_color >", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorGreaterThanOrEqualTo(String value) {
            addCriterion("pr_color >=", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorLessThan(String value) {
            addCriterion("pr_color <", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorLessThanOrEqualTo(String value) {
            addCriterion("pr_color <=", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorLike(String value) {
            addCriterion("pr_color like", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorNotLike(String value) {
            addCriterion("pr_color not like", value, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorIn(List<String> values) {
            addCriterion("pr_color in", values, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorNotIn(List<String> values) {
            addCriterion("pr_color not in", values, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorBetween(String value1, String value2) {
            addCriterion("pr_color between", value1, value2, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrColorNotBetween(String value1, String value2) {
            addCriterion("pr_color not between", value1, value2, "prColor");
            return (Criteria) this;
        }

        public Criteria andPrSizeIsNull() {
            addCriterion("pr_size is null");
            return (Criteria) this;
        }

        public Criteria andPrSizeIsNotNull() {
            addCriterion("pr_size is not null");
            return (Criteria) this;
        }

        public Criteria andPrSizeEqualTo(String value) {
            addCriterion("pr_size =", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeNotEqualTo(String value) {
            addCriterion("pr_size <>", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeGreaterThan(String value) {
            addCriterion("pr_size >", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeGreaterThanOrEqualTo(String value) {
            addCriterion("pr_size >=", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeLessThan(String value) {
            addCriterion("pr_size <", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeLessThanOrEqualTo(String value) {
            addCriterion("pr_size <=", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeLike(String value) {
            addCriterion("pr_size like", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeNotLike(String value) {
            addCriterion("pr_size not like", value, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeIn(List<String> values) {
            addCriterion("pr_size in", values, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeNotIn(List<String> values) {
            addCriterion("pr_size not in", values, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeBetween(String value1, String value2) {
            addCriterion("pr_size between", value1, value2, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrSizeNotBetween(String value1, String value2) {
            addCriterion("pr_size not between", value1, value2, "prSize");
            return (Criteria) this;
        }

        public Criteria andPrMaterialIsNull() {
            addCriterion("pr_material is null");
            return (Criteria) this;
        }

        public Criteria andPrMaterialIsNotNull() {
            addCriterion("pr_material is not null");
            return (Criteria) this;
        }

        public Criteria andPrMaterialEqualTo(String value) {
            addCriterion("pr_material =", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialNotEqualTo(String value) {
            addCriterion("pr_material <>", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialGreaterThan(String value) {
            addCriterion("pr_material >", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialGreaterThanOrEqualTo(String value) {
            addCriterion("pr_material >=", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialLessThan(String value) {
            addCriterion("pr_material <", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialLessThanOrEqualTo(String value) {
            addCriterion("pr_material <=", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialLike(String value) {
            addCriterion("pr_material like", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialNotLike(String value) {
            addCriterion("pr_material not like", value, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialIn(List<String> values) {
            addCriterion("pr_material in", values, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialNotIn(List<String> values) {
            addCriterion("pr_material not in", values, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialBetween(String value1, String value2) {
            addCriterion("pr_material between", value1, value2, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrMaterialNotBetween(String value1, String value2) {
            addCriterion("pr_material not between", value1, value2, "prMaterial");
            return (Criteria) this;
        }

        public Criteria andPrStoreIsNull() {
            addCriterion("pr_store is null");
            return (Criteria) this;
        }

        public Criteria andPrStoreIsNotNull() {
            addCriterion("pr_store is not null");
            return (Criteria) this;
        }

        public Criteria andPrStoreEqualTo(Integer value) {
            addCriterion("pr_store =", value, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreNotEqualTo(Integer value) {
            addCriterion("pr_store <>", value, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreGreaterThan(Integer value) {
            addCriterion("pr_store >", value, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("pr_store >=", value, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreLessThan(Integer value) {
            addCriterion("pr_store <", value, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreLessThanOrEqualTo(Integer value) {
            addCriterion("pr_store <=", value, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreIn(List<Integer> values) {
            addCriterion("pr_store in", values, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreNotIn(List<Integer> values) {
            addCriterion("pr_store not in", values, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreBetween(Integer value1, Integer value2) {
            addCriterion("pr_store between", value1, value2, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrStoreNotBetween(Integer value1, Integer value2) {
            addCriterion("pr_store not between", value1, value2, "prStore");
            return (Criteria) this;
        }

        public Criteria andPrInnumIsNull() {
            addCriterion("pr_innum is null");
            return (Criteria) this;
        }

        public Criteria andPrInnumIsNotNull() {
            addCriterion("pr_innum is not null");
            return (Criteria) this;
        }

        public Criteria andPrInnumEqualTo(Integer value) {
            addCriterion("pr_innum =", value, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumNotEqualTo(Integer value) {
            addCriterion("pr_innum <>", value, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumGreaterThan(Integer value) {
            addCriterion("pr_innum >", value, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumGreaterThanOrEqualTo(Integer value) {
            addCriterion("pr_innum >=", value, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumLessThan(Integer value) {
            addCriterion("pr_innum <", value, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumLessThanOrEqualTo(Integer value) {
            addCriterion("pr_innum <=", value, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumIn(List<Integer> values) {
            addCriterion("pr_innum in", values, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumNotIn(List<Integer> values) {
            addCriterion("pr_innum not in", values, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumBetween(Integer value1, Integer value2) {
            addCriterion("pr_innum between", value1, value2, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInnumNotBetween(Integer value1, Integer value2) {
            addCriterion("pr_innum not between", value1, value2, "prInnum");
            return (Criteria) this;
        }

        public Criteria andPrInpriceIsNull() {
            addCriterion("pr_inprice is null");
            return (Criteria) this;
        }

        public Criteria andPrInpriceIsNotNull() {
            addCriterion("pr_inprice is not null");
            return (Criteria) this;
        }

        public Criteria andPrInpriceEqualTo(Integer value) {
            addCriterion("pr_inprice =", value, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceNotEqualTo(Integer value) {
            addCriterion("pr_inprice <>", value, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceGreaterThan(Integer value) {
            addCriterion("pr_inprice >", value, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("pr_inprice >=", value, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceLessThan(Integer value) {
            addCriterion("pr_inprice <", value, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceLessThanOrEqualTo(Integer value) {
            addCriterion("pr_inprice <=", value, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceIn(List<Integer> values) {
            addCriterion("pr_inprice in", values, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceNotIn(List<Integer> values) {
            addCriterion("pr_inprice not in", values, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceBetween(Integer value1, Integer value2) {
            addCriterion("pr_inprice between", value1, value2, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrInpriceNotBetween(Integer value1, Integer value2) {
            addCriterion("pr_inprice not between", value1, value2, "prInprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceIsNull() {
            addCriterion("pr_outprice is null");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceIsNotNull() {
            addCriterion("pr_outprice is not null");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceEqualTo(Integer value) {
            addCriterion("pr_outprice =", value, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceNotEqualTo(Integer value) {
            addCriterion("pr_outprice <>", value, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceGreaterThan(Integer value) {
            addCriterion("pr_outprice >", value, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("pr_outprice >=", value, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceLessThan(Integer value) {
            addCriterion("pr_outprice <", value, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceLessThanOrEqualTo(Integer value) {
            addCriterion("pr_outprice <=", value, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceIn(List<Integer> values) {
            addCriterion("pr_outprice in", values, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceNotIn(List<Integer> values) {
            addCriterion("pr_outprice not in", values, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceBetween(Integer value1, Integer value2) {
            addCriterion("pr_outprice between", value1, value2, "prOutprice");
            return (Criteria) this;
        }

        public Criteria andPrOutpriceNotBetween(Integer value1, Integer value2) {
            addCriterion("pr_outprice not between", value1, value2, "prOutprice");
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