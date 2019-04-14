<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/" %>
<%--<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>订单列表-BootCRM</title>
    <%--<link rel="stylesheet" type="text/css" href="<c:url value='/css'/>/default.css" media="screen">--%>

    <script src="https://cdn.highcharts.com.cn/highcharts/highcharts.js"></script>
    <script src="https://img.highcharts.com.cn/highcharts/modules/exporting.js"></script>
    <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
    <script src="https://img.highcharts.com.cn/highcharts/highcharts-3d.js"></script>


    <%--<link rel="stylesheet" type="text/css" href="docs/assets/css/normalize.css" media="screen">--%>
    <%--<link rel="stylesheet" type="text/css" href="docs/assets/css/bootstrap.min.css" media="screen">--%>
    <%--<link rel="stylesheet" type="text/css" href="docs/assets/css/frappe_theme.css" media="screen">--%>
    <%--<link rel="stylesheet" type="text/css" href="docs/assets/css/index.css" media="screen">--%>
    <%--<link rel="stylesheet" type="text/css" href="docs/assets/css/default.css" media="screen">--%>
    <%--<script src="docs/assets/js/highlight.pack.js"></script>--%>
    <%--<script src="docs/assets/js/frappe-charts.min.js"></script>--%>


    <style>
        td{ text-align: center;}
    </style>

</head>

<body>

<div id="container" style="min-width:800px;height:800px"></div>

<%--<script type="text/javascript"--%>
<%--src="<c:url value='/js'/>/myfrappe_bar.js"></script>--%>


<script type="text/javascript">
    var chart = Highcharts.chart('container', {
        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
        },
        title: {
            text: '风之商城各类别家具利润占比'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                depth: 35,
                dataLabels: {
                    enabled: true,
                    format: '{point.name}'
                }
            }
        },
        series: [{
            type: 'pie',
            name: '利润占比',
            data: [
                ['餐厅', ${productData.get(0).allPrice}],
                ['儿童', ${productData.get(1).allPrice}],
                ['客厅', ${productData.get(2).allPrice}],
                ['书房', ${productData.get(3).allPrice}],
                ['卧室', ${productData.get(4).allPrice}],
                ['阳台户外',${productData.get(5).allPrice}]
            ]
        }]
    });


</script>


</body>

</html>
